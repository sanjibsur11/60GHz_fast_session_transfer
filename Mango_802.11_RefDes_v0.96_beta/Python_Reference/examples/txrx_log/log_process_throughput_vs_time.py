"""
------------------------------------------------------------------------------
WARPNet Example
------------------------------------------------------------------------------
License:   Copyright 2014, Mango Communications. All rights reserved.
           Distributed under the WARP license (http://warpproject.org/license)
------------------------------------------------------------------------------
This script uses the WLAN Exp Log utilities to parse raw log data and
plot the throughput vs time using the pandas framework.

Hardware Setup:
    - None.  Parsing log data can be done completely off-line

Required Script Changes:
    - Set *_LOGFILE to the file name of your WLAN Exp log HDF5 file

------------------------------------------------------------------------------
"""
import os
import sys
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

import wlan_exp.log.util as log_util
import wlan_exp.log.util_hdf as hdf_util
import wlan_exp.log.util_sample_data as sample_data_util

#-----------------------------------------------------------------------------
# Top level script variables
#-----------------------------------------------------------------------------

AP_LOGFILE  = 'raw_log_dual_flow_ap.hdf5'
STA_LOGFILE = 'raw_log_dual_flow_sta.hdf5'


#-----------------------------------------------------------------------------
# Process filenames
#-----------------------------------------------------------------------------
ap_logfile_error  = False
sta_logfile_error = False

# Use log file given as command line argument, if present
if(len(sys.argv) != 1):
    AP_LOGFILE  = str(sys.argv[1])
    STA_LOGFILE = str(sys.argv[2])

# See if the log file name is for a sample data file
try:
    AP_LOGFILE  = sample_data_util.get_sample_data_file(AP_LOGFILE)
except:
    ap_logfile_error = True

# Ensure the log file actually exists - quit immediately if not
if ((not os.path.isfile(AP_LOGFILE)) and ap_logfile_error):
    print("ERROR: Logfile {0} not found".format(AP_LOGFILE))
    sys.exit()
else:
    print("Reading log file '{0}' ({1:5.1f} MB)\n".format(os.path.split(AP_LOGFILE)[1], (os.path.getsize(AP_LOGFILE)/1E6)))


# See if the log file name is for a sample data file
try:
    STA_LOGFILE = sample_data_util.get_sample_data_file(STA_LOGFILE)
except:
    sta_logfile_error = True

# Ensure the log file actually exists - quit immediately if not
if ((not os.path.isfile(STA_LOGFILE)) and sta_logfile_error):
    print("ERROR: Logfile {0} not found".format(STA_LOGFILE))
    sys.exit()
else:
    print("Reading log file '{0}' ({1:5.1f} MB)\n".format(os.path.split(STA_LOGFILE)[1], (os.path.getsize(STA_LOGFILE)/1E6)))


#-----------------------------------------------------------------------------
# Main script 
#-----------------------------------------------------------------------------

#Extract the log data and index from the log files
log_data_ap       = hdf_util.hdf5_to_log_data(filename=AP_LOGFILE)
raw_log_index_ap  = hdf_util.hdf5_to_log_index(filename=AP_LOGFILE)

log_data_sta      = hdf_util.hdf5_to_log_data(filename=STA_LOGFILE)
raw_log_index_sta = hdf_util.hdf5_to_log_index(filename=STA_LOGFILE)

#Generate indexes with just Tx and Rx events
entries_filt  = ['NODE_INFO', 'RX_OFDM', 'TX', 'TX_LOW']
entries_merge = {'RX_OFDM': ['RX_OFDM', 'RX_OFDM_LTG'], 
                 'TX'     : ['TX', 'TX_LTG'],
                 'TX_LOW' : ['TX_LOW', 'TX_LOW_LTG']}

log_index_txrx_ap  = log_util.filter_log_index(raw_log_index_ap,  include_only=entries_filt, merge=entries_merge)
log_index_txrx_sta = log_util.filter_log_index(raw_log_index_sta, include_only=entries_filt, merge=entries_merge)

#Generate numpy arrays
log_np_ap  = log_util.log_data_to_np_arrays(log_data_ap,  log_index_txrx_ap)
log_np_sta = log_util.log_data_to_np_arrays(log_data_sta, log_index_txrx_sta)

#Extract tne NODE_INFO's and determine each node's MAC address
addr_ap  = log_np_ap['NODE_INFO']['wlan_mac_addr']
addr_sta = log_np_sta['NODE_INFO']['wlan_mac_addr']

#Extract Tx entry arrays
tx_ap  = log_np_ap['TX']
tx_sta = log_np_sta['TX']

#Extract Rx entry arrays
rx_ap  = log_np_ap['RX_OFDM']
rx_sta = log_np_sta['RX_OFDM']

print('AP Rx: {0}, AP Tx: {1}'.format(len(rx_ap), len(tx_ap)))
print('STA Rx: {0}, STA Tx: {1}'.format(len(rx_sta), len(tx_sta)))

#Resample docs: http://stackoverflow.com/questions/17001389/pandas-resample-documentation
rs_interval = 1 #msec
rolling_winow = 1000 #samples

#Select non-duplicate packets from partner node
rx_ap_idx = (rx_ap['addr2'] == addr_sta) & ((rx_ap['flags'] & 0x1) == 0)
rx_ap_from_sta = rx_ap[rx_ap_idx]

rx_ap_t = rx_ap_from_sta['timestamp']
rx_ap_len = rx_ap_from_sta['length']

#Select non-duplicate packets from partner node
rx_sta_idx = (rx_sta['addr2'] == addr_ap) & ((rx_sta['flags'] & 0x1) == 0)
rx_sta_from_ap = rx_sta[rx_sta_idx]

rx_sta_t = rx_sta_from_ap['timestamp']
rx_sta_len = rx_sta_from_ap['length']


#Convert to Pandas series
rx_ap_t_pd = pd.to_datetime(rx_ap_t, unit='us')
rx_ap_len_pd = pd.Series(rx_ap_len, index=rx_ap_t_pd)

rx_sta_t_pd = pd.to_datetime(rx_sta_t, unit='us')
rx_sta_len_pd = pd.Series(rx_sta_len, index=rx_sta_t_pd)

#Resample
rx_ap_len_rs = rx_ap_len_pd.resample(('%dL' % rs_interval), how='sum').fillna(value=0)
rx_sta_len_rs = rx_sta_len_pd.resample(('%dL' % rs_interval), how='sum').fillna(value=0)

#Merge the indexes
t_idx = rx_ap_len_rs.index.union(rx_sta_len_rs.index)

#Reindex both Series to the common index, filling 0 in empty slots
rx_ap_len_rs = rx_ap_len_rs.reindex(t_idx, fill_value=0)
rx_sta_len_rs = rx_sta_len_rs.reindex(t_idx, fill_value=0)

#Compute rolling means
rx_xput_ap_r = pd.rolling_mean(rx_ap_len_rs, window=rolling_winow, min_periods=1)
rx_xput_sta_r = pd.rolling_mean(rx_sta_len_rs, window=rolling_winow, min_periods=1)

#Set NaN values to 0 (no packets == zero throughput)
rx_xput_ap_r = rx_xput_ap_r.fillna(value=0)
rx_xput_sta_r = rx_xput_sta_r.fillna(value=0)

#Create x axis values
t_sec = t_idx.astype('int64') / 1.0E9
plt_t = np.linspace(0, (max(t_sec) - min(t_sec)), len(t_sec))

#Rescale xputs to bits/sec
plt_xput_ap = rx_xput_ap_r  * (1.0e-6 * 8.0 * (1.0/(rs_interval * 1e-3)))
plt_xput_sta = rx_xput_sta_r  * (1.0e-6 * 8.0 * (1.0/(rs_interval * 1e-3)))


# Create figure to plot data
plt.close('all')
plt.figure(1)
plt.clf()

plt.plot(plt_t, plt_xput_ap, 'r', label='STA -> AP Flow')
plt.plot(plt_t, plt_xput_sta, 'b', label='AP -> STA Flow')
plt.plot(plt_t, plt_xput_ap + plt_xput_sta, 'g', label='Sum of Flows')

plt.grid('on')

plt.legend(loc='lower center')
plt.xlabel('Time (usec)')
plt.ylabel('Throughput (Mb/sec)')
