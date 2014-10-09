/** @file wlan_mac_bss_info.c
 *  @brief BSS Info Subsystem
 *
 *  This contains code tracking BSS information. It also contains code for managing
 *  the active scan state machine.
 *
 *  @copyright Copyright 2014, Mango Communications. All rights reserved.
 *          Distributed under the Mango Communications Reference Design License
 *				See LICENSE.txt included in the design archive or
 *				at http://mangocomm.com/802.11/license
 *
 *  @author Chris Hunter (chunter [at] mangocomm.com)
 *  @author Patrick Murphy (murphpo [at] mangocomm.com)
 *  @author Erik Welsh (welsh [at] mangocomm.com)
 *  @bug No known bugs.
 */

#include "xil_types.h"
#include "stdlib.h"
#include "stdio.h"
#include "xparameters.h"
#include "string.h"

#include "wlan_mac_high.h"
#include "wlan_mac_bss_info.h"
#include "wlan_mac_dl_list.h"
#include "wlan_mac_802_11_defs.h"
#include "wlan_mac_schedule.h"

extern	u8	dram_present;			///< Indication variable for whether DRAM SODIMM is present on this hardware

static dl_list bss_info_free;	///< Free BSS info

/// The bss_info_list is stored chronologically from .first being oldest
/// and .last being newest. The "find" function search from last to first
/// to minimize search time for new BSSes you hear from often.
dl_list bss_info_list;			///< Filled BSS info



dl_entry* wlan_mac_high_find_bss_info_oldest_unowned();



void bss_info_init(){

	u32 num_bss_info;
	u32 i;

	if(dram_present){
		dl_list_init(&bss_info_free);
		dl_list_init(&bss_info_list);
		bzero((void*)DDR3_BSS_INFO_MEM_BASEADDR, DDR3_BSS_INFO_MEM_SIZE);

		//Unlike the transmit queue, where each dl_entry actually lived in an AUX BRAM,
		//Here we will partition the DRAM space for BSS_INFO into two pieces
		//	(1) dl_entry
		//	(2) bss_info structs pointed to by dl_entry from (1)

		//Determine the maximum number of bss_info structs we can store in memory
		num_bss_info = DDR3_BSS_INFO_MEM_SIZE / (sizeof(dl_entry)+sizeof(bss_info));

		if(MAX_NUM_BSS_INFO != -1){
			num_bss_info = min(num_bss_info,MAX_NUM_BSS_INFO);
		}

		//At boot, every dl_entry buffer descriptor is free
		//To set up the doubly linked list, we exploit the fact that we know the starting state is sequential.
		//This matrix addressing is not safe once the queue is used. The insert/remove helper functions should be used
		dl_entry* dl_entry_base;
		dl_entry_base = (dl_entry*)(DDR3_BSS_INFO_MEM_BASEADDR);

		for(i=0;i<num_bss_info;i++){
			dl_entry_base[i].data = (void*)((DDR3_BSS_INFO_MEM_BASEADDR + (num_bss_info * sizeof(dl_entry))) + (i*sizeof(bss_info)));
			dl_entry_insertEnd(&bss_info_free,&(dl_entry_base[i]));
		}

	} else {
		xil_printf("Error initializing BSS info subsystem\n");
	}
}


void bss_info_init_finish(){
	//Will be called after interrupts have been started. Safe to use scheduler now.
	wlan_mac_schedule_event_repeated(SCHEDULE_COARSE, 10000000, SCHEDULE_REPEAT_FOREVER, (void*)bss_info_timestamp_check);
}


inline void bss_info_rx_process(void* pkt_buf_addr, u8 rate, u16 length) {

	rx_frame_info*      mpdu_info                = (rx_frame_info*)pkt_buf_addr;
	void*               mpdu                     = (u8*)pkt_buf_addr + PHY_RX_PKT_BUF_MPDU_OFFSET;
	u8*                 mpdu_ptr_u8              = (u8*)mpdu;
	char*               ssid;
	u8                  ssid_length;
	mac_header_80211*   rx_80211_header          = (mac_header_80211*)((void *)mpdu_ptr_u8);
	dl_entry*			curr_dl_entry;
	bss_info*			curr_bss_info;
	u32 				i;


	if( (mpdu_info->state == RX_MPDU_STATE_FCS_GOOD)){
		switch(rx_80211_header->frame_control_1) {
			case (MAC_FRAME_CTRL1_SUBTYPE_BEACON):
			case (MAC_FRAME_CTRL1_SUBTYPE_PROBE_RESP):

				curr_dl_entry = wlan_mac_high_find_bss_info_BSSID(rx_80211_header->address_3);

				if(curr_dl_entry != NULL){
					curr_bss_info = (bss_info*)(curr_dl_entry->data);
					dl_entry_remove(&bss_info_list, curr_dl_entry);
				} else {
					// We haven't seen this BSS ID before, so we'll attempt to grab a new dl_entry
					// struct from the free pool
					curr_dl_entry = bss_info_checkout();

					if (curr_dl_entry == NULL){
						// No free dl_entry!
						// We'll have to reallocate the oldest unowned entry in the filled list
						curr_dl_entry = wlan_mac_high_find_bss_info_oldest_unowned();

						if (curr_dl_entry != NULL) {
							dl_entry_remove(&bss_info_list, curr_dl_entry);
						} else {
							xil_printf("Cannot create bss_info.  No unowned bss_info entries.\n");
							return;
						}
					}

					curr_bss_info = (bss_info*)(curr_dl_entry->data);

					// Clear any old information from the BSS info
					wlan_mac_high_clear_bss_info(curr_bss_info);

					// Initialize the associated stations list
					dl_list_init(&(curr_bss_info->associated_stations));

					// Copy BSSID into bss_info struct
					memcpy(curr_bss_info->bssid, rx_80211_header->address_3, 6);

					// Set the state to BSS_STATE_UNAUTHENTICATED since we have not seen this BSS info before
				    curr_bss_info->state     = BSS_STATE_UNAUTHENTICATED;
				}

				// Update the AP information
				curr_bss_info->num_basic_rates = 0;

				// Move the packet pointer to after the header
				mpdu_ptr_u8 += sizeof(mac_header_80211);

				// Copy capabilities into bss_info struct
				curr_bss_info->capabilities = ((beacon_probe_frame*)mpdu_ptr_u8)->capabilities;

				// Copy beacon interval into bss_info struct
				curr_bss_info->beacon_interval = ((beacon_probe_frame*)mpdu_ptr_u8)->beacon_interval;

				// Move the packet pointer to after the beacon/probe frame
				mpdu_ptr_u8 += sizeof(beacon_probe_frame);

				// Parse the tagged parameters
				while( (((u32)mpdu_ptr_u8) - ((u32)mpdu)) < length ) {

					// Parse each of the tags
					switch(mpdu_ptr_u8[0]){

						//-------------------------------------------------
						case TAG_SSID_PARAMS:
							// SSID parameter set
							//
							ssid        = (char*)(&(mpdu_ptr_u8[2]));
							ssid_length = min(mpdu_ptr_u8[1],SSID_LEN_MAX);

							memcpy(curr_bss_info->ssid, ssid, ssid_length);

							// Terminate the string
							(curr_bss_info->ssid)[ssid_length] = 0;
						break;

						//-------------------------------------------------
						case TAG_SUPPORTED_RATES:
						case TAG_EXT_SUPPORTED_RATES:
							// Supported rates / Extended supported rates
							//
							for( i = 0; i < mpdu_ptr_u8[1]; i++){
								if( (mpdu_ptr_u8[2+i] & RATE_BASIC) == RATE_BASIC ) {

									// This is a basic rate. It is required by the AP in order to associate.
									if((curr_bss_info->num_basic_rates) < NUM_BASIC_RATES_MAX){
										if( wlan_mac_high_valid_tagged_rate(mpdu_ptr_u8[2+i]) ){
											(curr_bss_info->basic_rates)[(curr_bss_info->num_basic_rates)] = mpdu_ptr_u8[2+i];
											(curr_bss_info->num_basic_rates)++;
										} else {
											// xil_printf("Invalid Tag Parameter rate: %d\n", mpdu_ptr_u8[2+i]);
										}
									} else {
										// xil_printf("Number of basic rates exceeded.\n");
									}
								}
							}
						break;

						//-------------------------------------------------
						case TAG_DS_PARAMS:
							// DS Parameter set (e.g. channel)
							//
							curr_bss_info->chan = mpdu_ptr_u8[2];
						break;
					}

					// Increment packet pointer to the next tag
					mpdu_ptr_u8 += mpdu_ptr_u8[1]+2;
				}

				curr_bss_info->timestamp = get_usec_timestamp();
				dl_entry_insertEnd(&bss_info_list,curr_dl_entry);

			break;


			//---------------------------------------------------------------------
			default:
                // Only need to process MAC_FRAME_CTRL1_SUBTYPE_BEACON, MAC_FRAME_CTRL1_SUBTYPE_PROBE_RESP
				// to update BSS information.
			break;
		}
	}
}

void print_bss_info(){
	dl_entry* curr_dl_entry;
	bss_info* curr_bss_info;
	char str[4];
	u32 i,j;


	i = 0;
	curr_dl_entry = bss_info_list.last;

	// Print the header
	xil_printf("************************ BSS Info *************************\n");

	while(curr_dl_entry != NULL){
		curr_bss_info = (bss_info*)(curr_dl_entry->data);

		xil_printf("[%d] SSID:     %s ", i, curr_bss_info->ssid);

		if(curr_bss_info->capabilities & CAPABILITIES_PRIVACY){
			xil_printf("(*)");
		}
		if(curr_bss_info->capabilities & CAPABILITIES_IBSS){
			xil_printf("(I)");
		}
		xil_printf("\n");

		xil_printf("    BSSID:         %02x-%02x-%02x-%02x-%02x-%02x\n", curr_bss_info->bssid[0],curr_bss_info->bssid[1],curr_bss_info->bssid[2],curr_bss_info->bssid[3],curr_bss_info->bssid[4],curr_bss_info->bssid[5]);
		xil_printf("    Channel:       %d\n",curr_bss_info->chan);
		xil_printf("    Last update:   %d msec ago\n", (u32)((get_usec_timestamp()-curr_bss_info->timestamp)/1000));
		xil_printf("    Basic Rates:   ");

		for(j = 0; j < (curr_bss_info->num_basic_rates); j++ ){
			wlan_mac_high_tagged_rate_to_readable_rate(curr_bss_info->basic_rates[j], str);
			xil_printf("%s, ",str);
		}
		xil_printf("\b\b \n");
		xil_printf("    Capabilities:  0x%04x\n", curr_bss_info->capabilities);
		curr_dl_entry = dl_entry_prev(curr_dl_entry);
		i++;
	}
}


void bss_info_timestamp_check(){
	dl_entry* curr_dl_entry;
	bss_info* curr_bss_info;

	curr_dl_entry = bss_info_list.first;

	while(curr_dl_entry != NULL){
		curr_bss_info = (bss_info*)(curr_dl_entry->data);

		if((get_usec_timestamp() - curr_bss_info->timestamp) > BSS_INFO_TIMEOUT_USEC){
			// We won't remove this BSS info if we are associated with it or if we are trying to associate with it.
			if(curr_bss_info->state == BSS_STATE_UNAUTHENTICATED){
				wlan_mac_high_clear_bss_info(curr_bss_info);
				dl_entry_remove(&bss_info_list, curr_dl_entry);
				bss_info_checkin(curr_dl_entry);
			}
		} else {
			// Nothing after this entry is older, so it's safe to quit
			return;
		}

		curr_dl_entry = dl_entry_next(curr_dl_entry);
	}
}


dl_entry* bss_info_checkout(){
	dl_entry* bsi;
	bss_info* curr_bss_info;

	if(bss_info_free.length > 0){
		bsi = ((dl_entry*)(bss_info_free.first));
		dl_entry_remove(&bss_info_free,bss_info_free.first);

		curr_bss_info = (bss_info*)(bsi->data);
		dl_list_init(&(curr_bss_info->associated_stations));
		return bsi;
	} else {
		return NULL;
	}
}


void bss_info_checkin(dl_entry* bsi){
	dl_entry_insertEnd(&bss_info_free,(dl_entry*)bsi);
	return;
}


dl_entry* wlan_mac_high_find_bss_info_SSID(char* ssid){
	//FIXME: SSIDs are not guaranteed to be unique. This function should be refactored
	//to return a dl_list of multiple bss_info, all of which have the matching SSID string.

	dl_entry* curr_dl_entry;
	bss_info* curr_bss_info;

	curr_dl_entry = bss_info_list.last;
	while(curr_dl_entry != NULL){
		curr_bss_info = (bss_info*)(curr_dl_entry->data);

		if(strcmp(ssid,curr_bss_info->ssid)==0){
			return curr_dl_entry;
		}

		curr_dl_entry = dl_entry_prev(curr_dl_entry);
	}
	return NULL;
}


dl_entry* wlan_mac_high_find_bss_info_BSSID(u8* bssid){
	dl_entry* curr_dl_entry;
	bss_info* curr_bss_info;

	curr_dl_entry = bss_info_list.last;
	while(curr_dl_entry != NULL){
		curr_bss_info = (bss_info*)(curr_dl_entry->data);

		if(wlan_addr_eq(bssid,curr_bss_info->bssid)){
			return curr_dl_entry;
		}

		curr_dl_entry = dl_entry_prev(curr_dl_entry);
	}
	return NULL;
}


dl_entry* wlan_mac_high_find_bss_info_oldest_unowned(){
	dl_entry* curr_dl_entry;
	bss_info* curr_bss_info;

	curr_dl_entry = bss_info_list.first;
	while(curr_dl_entry != NULL){
		curr_bss_info = (bss_info*)(curr_dl_entry->data);

		if(curr_bss_info->state != BSS_STATE_OWNED){
			return curr_dl_entry;
		}

		curr_dl_entry = dl_entry_next(curr_dl_entry);
	}
	return NULL;
}



// Function will create a bss_info and make sure that the BSS ID is unique
// in the bss_info list.
//
bss_info* wlan_mac_high_create_bss_info(u8* bssid, char* ssid, u8 chan){
	dl_entry * curr_dl_entry;
	bss_info * curr_bss_info = NULL;

	curr_dl_entry = wlan_mac_high_find_bss_info_BSSID(bssid);

	if (curr_dl_entry != NULL){
		curr_bss_info = (bss_info*)(curr_dl_entry->data);
		dl_entry_remove(&bss_info_list, curr_dl_entry);
	} else {
		// We haven't seen this BSS ID before, so we'll attempt to grab a new dl_entry
		// struct from the free pool
		curr_dl_entry = bss_info_checkout();

		if (curr_dl_entry == NULL){
			// No free dl_entry!
			// We'll have to reallocate the oldest unowned entry in the filled list
			curr_dl_entry = wlan_mac_high_find_bss_info_oldest_unowned();

			if (curr_dl_entry != NULL) {
				dl_entry_remove(&bss_info_list, curr_dl_entry);
			} else {
				xil_printf("Cannot create bss_info.  No unowned bss_info entries.\n");
				return NULL;
			}
		}

		curr_bss_info = (bss_info*)(curr_dl_entry->data);

		// Clear any old information from the BSS info
		wlan_mac_high_clear_bss_info(curr_bss_info);

		// Initialize the associated stations list
		dl_list_init(&(curr_bss_info->associated_stations));

		// Copy the BSS ID to the entry
		memcpy(curr_bss_info->bssid,bssid,6);
	}

	// Update the fields of the BSS Info
	strcpy(curr_bss_info->ssid,ssid);
	curr_bss_info->chan      = chan;
	curr_bss_info->timestamp = get_usec_timestamp();
    curr_bss_info->state     = BSS_STATE_UNAUTHENTICATED;

	dl_entry_insertEnd(&bss_info_list, curr_dl_entry);

	return curr_bss_info;
}



void wlan_mac_high_clear_bss_info(bss_info * info){
	station_info * curr_station_info;
	dl_entry     * next_station_info_entry;
	dl_entry     * curr_station_info_entry;

	if(info != NULL){
        // Remove any station infos
		next_station_info_entry = info->associated_stations.first;

		if ((info->state != BSS_STATE_OWNED) && (next_station_info_entry != NULL)) {
            xil_printf("WARNING:  BSS info was unowned but had station info entries.\n");
		}

		while(next_station_info_entry != NULL){
			curr_station_info_entry = next_station_info_entry;
			next_station_info_entry = dl_entry_next(curr_station_info_entry);
			curr_station_info       = (station_info*)(curr_station_info_entry->data);
			wlan_mac_high_remove_association( &info->associated_stations, get_statistics(), curr_station_info->addr );
		}

		// Clear the bss_info
        bzero(info, sizeof(bss_info));
	}
}


inline dl_list* wlan_mac_high_get_bss_info_list(){
	return &bss_info_list;
}
