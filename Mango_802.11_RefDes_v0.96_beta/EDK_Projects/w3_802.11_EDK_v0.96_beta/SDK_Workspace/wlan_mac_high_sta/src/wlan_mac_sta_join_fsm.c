/** @file wlan_mac_sta_join_fsm.c
 *  @brief Join FSM
 *
 *  This contains code for the STA join process.
 *
 *  @copyright Copyright 2014, Mango Communications. All rights reserved.
 *          Distributed under the Mango Communications Reference Design License
 *				See LICENSE.txt included in the design archive or
 *				at http://mangocomm.com/802.11/license
 *
 *  @author Chris Hunter (chunter [at] mangocomm.com)
 *  @author Patrick Murphy (murphpo [at] mangocomm.com)
 *  @author Erik Welsh (welsh [at] mangocomm.com)
 */


//Xilinx SDK includes
#include "xparameters.h"
#include "stdio.h"
#include "stdlib.h"
#include "xtmrctr.h"
#include "xio.h"
#include "string.h"
#include "xintc.h"

//WARP includes
#include "wlan_mac_802_11_defs.h"
#include "wlan_mac_high.h"
#include "wlan_mac_packet_types.h"
#include "wlan_mac_scan_fsm.h"
#include "wlan_mac_schedule.h"
#include "wlan_mac_dl_list.h"
#include "wlan_mac_bss_info.h"
#include "wlan_mac_sta_join_fsm.h"
#include "wlan_mac_sta.h"

typedef enum {JOIN_IDLE, JOIN_SEARCHING, JOIN_ATTEMPTING} join_state_t;
static join_state_t join_state = JOIN_IDLE;

static function_ptr_t  join_success_callback = (function_ptr_t)nullCallback;

//External Global Variables:
extern u8 pause_data_queue;
extern u32 mac_param_chan; ///< This is the "home" channel
extern mac_header_80211_common tx_header_common;
extern tx_params default_unicast_mgmt_tx_params;

//JOIN_SEARCHING Global Variables:
static u32 search_sched_id = SCHEDULE_FAILURE;
static u32 search_kill_sched_id = SCHEDULE_FAILURE;
static char search_ssid[SSID_LEN_MAX + 1];
static u32 search_timeout;

//JOIN_ATTEMPTING Global Variables:
static bss_info* attempt_bss_info;
static u32 attempt_sched_id = SCHEDULE_FAILURE;
static u32 attempt_kill_sched_id = SCHEDULE_FAILURE;
static u32 attempt_timeout;


void wlan_mac_sta_set_join_success_callback(function_ptr_t callback){
	join_success_callback = callback;
}

/**
 * @brief Attempt Scan and Join to AP
 *
 * This function will scan for a particular SSID and attempt to join it. The second
 * argument to the function is a timeout for the process. This function is non-blocking.
 *
 * @param char* ssid
 *  - SSID string of AP to find and join
 * @param u32 to_usec
 * 	- Timeout (seconds) for process.

 */
void wlan_mac_sta_scan_and_join(char* ssid_str, u32 to_sec){

	if(strlen(ssid_str) != 0){
		switch(join_state){
			case JOIN_IDLE:
				join_state = JOIN_SEARCHING;
				strcpy(search_ssid, ssid_str);
				search_timeout = to_sec;
				wlan_mac_scan_enable((u8*)bcast_addr, ssid_str);
				if(to_sec != 0){
					search_kill_sched_id = wlan_mac_schedule_event_repeated(SCHEDULE_COARSE, (to_sec*1000000), 1, (void*)wlan_mac_sta_return_to_idle);
				}
				search_sched_id = wlan_mac_schedule_event_repeated(SCHEDULE_COARSE, BSS_SEARCH_POLL_INTERVAL_USEC, SCHEDULE_REPEAT_FOREVER, (void*)wlan_mac_sta_bss_search_poll);

			break;
			case JOIN_SEARCHING:
			case JOIN_ATTEMPTING:
				wlan_mac_sta_return_to_idle();
				wlan_mac_sta_scan_and_join(ssid_str, to_sec);
			break;
		}
	} else {
		xil_printf("Error: SSID string must be non-null\n");
	}
}

void wlan_mac_sta_join(bss_info* bss_description, u32 to_sec){
	switch(join_state){
		case JOIN_IDLE:
			join_state = JOIN_ATTEMPTING;
			attempt_timeout = to_sec;
			attempt_bss_info = bss_description;
			switch(attempt_bss_info->state){
				case BSS_STATE_UNAUTHENTICATED:
					pause_data_queue = 1;
					mac_param_chan = attempt_bss_info->chan;
					wlan_mac_high_set_channel(mac_param_chan);
					wlan_mac_sta_scan_auth_transmit();

					if(to_sec != 0){
						if(to_sec != 0){
							attempt_kill_sched_id = wlan_mac_schedule_event_repeated(SCHEDULE_COARSE, (to_sec*1000000), 1, (void*)wlan_mac_sta_return_to_idle);
						}
					}
					attempt_sched_id = wlan_mac_schedule_event_repeated(SCHEDULE_FINE, BSS_ATTEMPT_POLL_INTERVAL_USEC, SCHEDULE_REPEAT_FOREVER, (void*)wlan_mac_sta_bss_attempt_poll);
				break;

				case BSS_STATE_AUTHENTICATED:
					pause_data_queue = 1;
					mac_param_chan = attempt_bss_info->chan;
					wlan_mac_high_set_channel(mac_param_chan);
					wlan_mac_sta_scan_assoc_req_transmit();

					if(to_sec != 0){
						if(to_sec != 0){
							attempt_kill_sched_id = wlan_mac_schedule_event_repeated(SCHEDULE_COARSE, (to_sec*1000000), 1, (void*)wlan_mac_sta_return_to_idle);
						}
					}
					attempt_sched_id = wlan_mac_schedule_event_repeated(SCHEDULE_FINE, BSS_ATTEMPT_POLL_INTERVAL_USEC, SCHEDULE_REPEAT_FOREVER, (void*)wlan_mac_sta_bss_attempt_poll);
				break;

				case BSS_STATE_ASSOCIATED:
					xil_printf("Error: told to join %s but already associated\n");
				break;

				default:
					xil_printf("Error: STA join: Unknown state %d for BSS info %s\n",attempt_bss_info->state, attempt_bss_info->ssid);
				break;
			}

		break;
		case JOIN_SEARCHING:
		case JOIN_ATTEMPTING:
			wlan_mac_sta_return_to_idle();
			wlan_mac_sta_join(bss_description, to_sec);
		break;

	}
}

//Low-Level functions

void wlan_mac_sta_return_to_idle(){
	switch(join_state){
		case JOIN_IDLE:
			//Nothing to do, we are already idle.
		break;
		case JOIN_SEARCHING:
			wlan_mac_scan_disable();
			//We should kill the search_sched_id and search_kill_sched_id schedules (if they are running)
			wlan_mac_high_interrupt_stop();
			join_state = JOIN_IDLE;
			wlan_mac_remove_schedule(SCHEDULE_COARSE, search_sched_id);
			search_sched_id = SCHEDULE_FAILURE;
			if(search_kill_sched_id != SCHEDULE_FAILURE){
				wlan_mac_remove_schedule(SCHEDULE_COARSE, search_kill_sched_id);
				search_kill_sched_id = SCHEDULE_FAILURE;
			}
			wlan_mac_high_interrupt_start();
		break;
		case JOIN_ATTEMPTING:
			//We should kill the attempt_sched_id and attempt_kill_sched_id schedules (if they are running)
			wlan_mac_high_interrupt_stop();
			join_state = JOIN_IDLE;
			wlan_mac_remove_schedule(SCHEDULE_FINE, attempt_sched_id);
			attempt_sched_id = SCHEDULE_FAILURE;
			if(attempt_kill_sched_id != SCHEDULE_FAILURE){
				wlan_mac_remove_schedule(SCHEDULE_COARSE, attempt_kill_sched_id);
				attempt_kill_sched_id = SCHEDULE_FAILURE;
			}
			wlan_mac_high_interrupt_start();
		break;
	}

	attempt_bss_info = NULL;

}

void wlan_mac_sta_bss_search_poll(u32 schedule_id){
	dl_entry* curr_dl_entry = NULL;
	bss_info* curr_bss_info;

    if (search_sched_id == SCHEDULE_FAILURE) {
    	xil_printf("WARNING:  BSS search poll called after schedule has been removed.\n");
    	return;
    }

	switch(join_state){
		case JOIN_IDLE:
			xil_printf("JOIN FSM Error: Searching/Idle mismatch\n");
		break;
		case JOIN_SEARCHING:
			curr_dl_entry = wlan_mac_high_find_bss_info_SSID(search_ssid);
			if(curr_dl_entry != NULL){
				wlan_mac_sta_return_to_idle();
				curr_bss_info = (bss_info*)(curr_dl_entry->data);
				wlan_mac_sta_join(curr_bss_info, search_timeout);
			}
		break;
		case JOIN_ATTEMPTING:
			xil_printf("JOIN FSM Error: Searching/Attempting mismatch\n");
		break;
	}
}

void wlan_mac_sta_bss_attempt_poll(u32 arg){
	// Depending on who is calling this function, the argument means different things
	// When called by the framework, the argument is automatically filled in with the schedule ID
	// There are two other contexts in which this function is called:
	//	(1) STA will call this when it receives an authentication packet that elevates the state
	//		to BSS_AUTHENTICATED. In this context, the argument is meaningless (explicitly 0 valued)
	//	(2) STA will call this when it receives an association response that elevates the state to
	//		BSS_ASSOCIATED. In this context, the argument will be the AID provided by the AP sending
	//		the association response.

	switch(join_state){
		case JOIN_IDLE:
			xil_printf("JOIN FSM Error: Attempting/Idle mismatch\n");
		break;
		case JOIN_SEARCHING:
			xil_printf("JOIN FSM Error: Attempting/Searching mismatch\n");
		break;
		case JOIN_ATTEMPTING:
			switch(attempt_bss_info->state){
				case BSS_STATE_UNAUTHENTICATED:
					wlan_mac_sta_scan_auth_transmit();
				break;

				case BSS_STATE_AUTHENTICATED:
					wlan_mac_sta_scan_assoc_req_transmit();
				break;

				case BSS_STATE_ASSOCIATED:
					if(sta_set_association_state(attempt_bss_info, arg) == 0){
						//Important: return_to_idle will NULL out attempt_bss_info,
						//so it should not be called before actually setting the
						//association state
						join_success_callback(attempt_bss_info);
					}
					wlan_mac_sta_return_to_idle();
				break;

				default:
					xil_printf("Error: STA attempt poll: Unknown state %d for BSS info %s\n",attempt_bss_info->state, attempt_bss_info->ssid);
				break;
			}
		break;
	}

}

void wlan_mac_sta_scan_auth_transmit(){
	u16                 tx_length;
	tx_queue_element*	curr_tx_queue_element;
	tx_queue_buffer* 	curr_tx_queue_buffer;

	if(join_state == JOIN_ATTEMPTING){

		// Send authentication request
		curr_tx_queue_element = queue_checkout();

		if(curr_tx_queue_element != NULL){
			curr_tx_queue_buffer = (tx_queue_buffer*)(curr_tx_queue_element->data);

			// Setup the TX header
			wlan_mac_high_setup_tx_header( &tx_header_common, attempt_bss_info->bssid, attempt_bss_info->bssid );

			// Fill in the data
			tx_length = wlan_create_auth_frame((void*)(curr_tx_queue_buffer->frame), &tx_header_common, AUTH_ALGO_OPEN_SYSTEM, AUTH_SEQ_REQ, STATUS_SUCCESS);

			// Setup the TX frame info
			wlan_mac_high_setup_tx_frame_info (&tx_header_common, curr_tx_queue_element, tx_length, (TX_MPDU_FLAGS_FILL_DURATION | TX_MPDU_FLAGS_REQ_TO), MANAGEMENT_QID );

			// Set the information in the TX queue buffer
			curr_tx_queue_buffer->metadata.metadata_type = QUEUE_METADATA_TYPE_TX_PARAMS;
			curr_tx_queue_buffer->metadata.metadata_ptr  = (u32)(&default_unicast_mgmt_tx_params);
			curr_tx_queue_buffer->frame_info.AID         = 0;

			// Put the packet in the queue
			enqueue_after_tail(MANAGEMENT_QID, curr_tx_queue_element);

			// Poll the TX queues to possibly send the packet
			poll_tx_queues();

		}
	}
}

void wlan_mac_sta_scan_assoc_req_transmit(){
	u16                 tx_length;
	tx_queue_element*	curr_tx_queue_element;
	tx_queue_buffer* 	curr_tx_queue_buffer;

	if(join_state == JOIN_ATTEMPTING){

		// Send authentication request
		curr_tx_queue_element = queue_checkout();

		if(curr_tx_queue_element != NULL){
			curr_tx_queue_buffer = (tx_queue_buffer*)(curr_tx_queue_element->data);

			// Setup the TX header
			wlan_mac_high_setup_tx_header( &tx_header_common, attempt_bss_info->bssid, attempt_bss_info->bssid );

			// Fill in the data
			tx_length = wlan_create_association_req_frame((void*)(curr_tx_queue_buffer->frame), &tx_header_common, (u8)strlen(attempt_bss_info->ssid), (u8*)attempt_bss_info->ssid, attempt_bss_info->num_basic_rates, attempt_bss_info->basic_rates);

			// Setup the TX frame info
			wlan_mac_high_setup_tx_frame_info (&tx_header_common, curr_tx_queue_element, tx_length, (TX_MPDU_FLAGS_FILL_DURATION | TX_MPDU_FLAGS_REQ_TO), MANAGEMENT_QID );

			// Set the information in the TX queue buffer
			curr_tx_queue_buffer->metadata.metadata_type = QUEUE_METADATA_TYPE_TX_PARAMS;
			curr_tx_queue_buffer->metadata.metadata_ptr  = (u32)(&default_unicast_mgmt_tx_params);
			curr_tx_queue_buffer->frame_info.AID         = 0;

			// Put the packet in the queue
			enqueue_after_tail(MANAGEMENT_QID, curr_tx_queue_element);

			// Poll the TX queues to possibly send the packet
			poll_tx_queues();
		}
	}
}


