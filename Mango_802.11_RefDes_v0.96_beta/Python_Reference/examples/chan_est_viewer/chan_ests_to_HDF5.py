import sys
import os
import datetime
import numpy as np
import wlan_exp.util as wlan_exp_util
import wlan_exp.log.util as log_util
import wlan_exp.log.util_hdf as hdf_util
import wlan_exp.log.util_sample_data as sample_data_util

#Use log file given as command line argument, if present
if(len(sys.argv) == 1):
    #No filename on command line
    LOGFILE_IN = 'raw_log_one_flow.hdf5'
    HDF5_FILE_OUT = 'np_rx_ofdm_entries.hdf5'
elif(len(sys.argv) == 2):
    LOGFILE_IN = str(sys.argv[1])
    HDF5_FILE_OUT = 'np_rx_ofdm_entries.hdf5'
elif(len(sys.argv) == 3):
    LOGFILE_IN = str(sys.argv[1])
    HDF5_FILE_OUT = str(sys.argv[2])

print("WLAN Exp Log Example: OFDM Rx Entry Exporter")

#Interpret the supplied file name:
# (1) Try filename as full path to actual file
# (2) If (1) does not exist, try file name as sample data file
# (3) If (1) and (2) don't exist, exit with error
if(not os.path.isfile(LOGFILE_IN)):
    try:
        LOGFILE = sample_data_util.get_sample_data_file(LOGFILE_IN)
        print("Reading sample log file '{0}' ({1:5.1f} MB)\n".format(
            os.path.split(LOGFILE)[1],
            os.path.getsize(LOGFILE)/1E6))
    except:
        print("ERROR: Logfile {0} not found".format(LOGFILE_IN))
        sys.exit()
else:
    LOGFILE = LOGFILE_IN
    print("Reading log file '{0}' ({1:5.1f} MB)\n".format(
        os.path.split(LOGFILE)[1],
        os.path.getsize(LOGFILE)/1E6))

#Extract the raw log data and log index from the HDF5 file
log_data      = hdf_util.hdf5_to_log_data(filename=LOGFILE)
raw_log_index = hdf_util.hdf5_to_log_index(filename=LOGFILE)

#Generate indexes with only Rx_OFDM events
log_index_rx = log_util.filter_log_index(raw_log_index, include_only=['RX_OFDM'],
                                         merge={'RX_OFDM': ['RX_OFDM', 'RX_OFDM_LTG']})

# Generate numpy array of all OFDM Rx entries
log_np = log_util.log_data_to_np_arrays(log_data, log_index_rx)
log_rx_ofdm = log_np['RX_OFDM']

#################################################################
# Filter the OFDM Rx Entries
#  Find the source address for which we have the most receptions

#Extract unique values for address 2 (transmitting address in received MAC headers)
uniq_addrs = np.unique(log_rx_ofdm['addr2'])

#Count the number of receptions per source address
num_rx = list()
for ii,ua in enumerate(uniq_addrs):
    num_rx.append(np.sum(log_rx_ofdm['addr2'] == ua))

#Find the source address responsible for the most receptions
most_rx = max(num_rx)
most_common_addr = uniq_addrs[num_rx.index(most_rx)]

print("Found {0} receptions from {1}".format(most_rx, wlan_exp_util.mac_addr_to_str(most_common_addr)))

#Create new numpy array of all receptions from most-common source
arr_rx_one_src = np.empty(most_rx, dtype=log_rx_ofdm.dtype)
arr_rx_one_src[:] = log_rx_ofdm[(log_rx_ofdm['addr2'] == most_common_addr)]

#Create some strings to use as attributes in the HDF5 file
# attributes are only for convenience - they aren't required for writing or reading HDF5 files
root_desc = 'Source Log file: {0}\n'.format(LOGFILE)
root_desc += 'HDF5 file written at {0}\n'.format(datetime.datetime.now())

ds_desc = 'All Rx OFDM entries from addr {0}\n'.format(wlan_exp_util.mac_addr_to_str(most_common_addr))

#Construct dictionaries to feed the HDF5 exporter
# The dict key names are used as HDF5 dataset names
log_dict = {'RX_OFDM': arr_rx_one_src}
attr_dict = {'/': root_desc, 'RX_OFDM': ds_desc}

print('Genereating HDF5 file {0}'.format(HDF5_FILE_OUT))
hdf_util.np_arrays_to_hdf5(HDF5_FILE_OUT, np_log_dict=log_dict, attr_dict=attr_dict)
