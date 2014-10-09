# -*- coding: utf-8 -*-
"""
------------------------------------------------------------------------------
WLAN Experiment Node - IBSS Node
------------------------------------------------------------------------------
Authors:   Chris Hunter (chunter [at] mangocomm.com)
           Patrick Murphy (murphpo [at] mangocomm.com)
           Erik Welsh (welsh [at] mangocomm.com)
License:   Copyright 2014, Mango Communications. All rights reserved.
           Distributed under the WARP license (http://warpproject.org/license)
------------------------------------------------------------------------------
MODIFICATION HISTORY:

Ver   Who  Date     Changes
----- ---- -------- -----------------------------------------------------
1.00a ejw  8/01/14  Initial release

------------------------------------------------------------------------------

This module provides class definition for the IBSS WLAN Exp Node

Functions (see below for more information):
    WlanExpNodeIBSS() -- Class for WLAN Exp IBSS node

"""

import wlan_exp.defaults as defaults
import wlan_exp.node as node
import wlan_exp.cmds as cmds


__all__ = ['WlanExpNodeIBSS']


class WlanExpNodeIBSS(node.WlanExpNode):
    """802.11 IBSS Node for WLAN Experiment node."""
    
    def __init__(self, network_config=None, mac_type=None):
        super(WlanExpNodeIBSS, self).__init__(network_config, mac_type)

        # Set the correct WARPNet node type
        self.node_type = self.node_type + defaults.WLAN_EXP_HIGH_AP
        self.node_type = self.node_type + defaults.WLAN_EXP_LOW_DCF

        self.device_type = self.node_type


    def configure_node(self, jumbo_frame_support=False):
        """Get remaining information from the node and set remaining parameters."""
        # Call WarpNetNode apply_configuration method
        super(WlanExpNodeIBSS, self).configure_node(jumbo_frame_support)
        
        # Set description
        self.description = str("IBSS " + self.description)


    #-------------------------------------------------------------------------
    # WLAN Exp Commands for the IBSS
    #-------------------------------------------------------------------------
    def ibss_configure(self, beacon_ts_update=None, beacon_transmit=None ):
        """Configure the STA behavior.

        By default all attributes are set to None.  Only attributes that 
        are given values will be updated on the node.  If an attribute is
        not specified, then that attribute will retain the same value on
        the node.

        Attributes (default state on the node is in CAPS):
            beacon_ts_update    -- Enable timestamp updates from beacons (TRUE/False)
            beacon_transmit     -- Enable beacon transmission (TRUE/False)
        
        NOTE:
            Allowed values of the (beacon_ts_update, beacon_transmit) are: 
                (True, True), (True, False), (False, False)
            (ie you must update your timestamps if you want to send beacons)
        """
        self.send_cmd(cmds.NodeIBSSConfigure(beacon_ts_update, beacon_transmit))


    def disassociate(self, device_list=None):
        """Remove associations of devices within the device_list from the association table
        
        Attributes:
            device_list -- List of 802.11 devices to remove from the association table (ignored)
        """
        print("Error:  disassociate(device_list) is not supported for IBSS nodes.  Please use disassociate_all().")
        raise NotImplementedError


    def scan_start(self, time_per_channel=0.1, channel_list=None, ssid=None, bssid=None):
        """Scan the channel list once for BSS networks.
        
        Attributes:
            time_per_channel -- Time (in float sec) to spend on each channel (optional)
            channel_list     -- Channels to scan (optional)
                                  Defaults to all channels in util.py wlan_channel array
                                  Can provide either an entry or list of entries from 
                                      wlan_channel array or a channel number or list of 
                                      channel numbers
            ssid             -- SSID to scan for as part of probe request (optional)
                                  A value of None means that the node will scan for all SSIDs
            bssid            -- BSSID to scan for as part of probe request (optional)
                                  A value of None means that the node will scan for all BSSIDs
        
        Returns:
            List of bss_infos
        """
        import time
        import wlan_exp.util as util

        wait_time = 0
        idle_time_per_loop = 1.0

        if channel_list is None:
            wait_time = time_per_channel * (len(util.wlan_channel) + 1)
        else:
            wait_time = time_per_channel * (len(channel_list) + 1)
        
        self.set_scan_parameters(time_per_channel, idle_time_per_loop, channel_list)
        self.scan_enable(ssid, bssid)
        time.sleep(wait_time)
        self.scan_disable()

        return self.get_bss_info('ASSOCIATED_BSS')        
    
       
    def set_scan_parameters(self, time_per_channel=0.1, idle_time_per_loop=1.0, channel_list=None):
        """Set the scan parameters.
        
        Attributes:
            time_per_channel   -- Time (in float sec) to spend on each channel (defaults to 0.1 sec)
            idle_time_per_loop -- Time (in float sec) to wait between each scan loop (defaults to 1 sec)
            channel_list       -- Channels to scan (optional)
                                    Defaults to all channels in util.py wlan_channel array
                                    Can provide either an entry or list of entries from 
                                      wlan_channel array or a channel number or list of 
                                      channel numbers
        
        NOTE:  If the channel list is not specified, then it will not be updated on the node.
        """
        self.send_cmd(cmds.NodeProcScanParam(cmds.CMD_PARAM_WRITE, time_per_channel, idle_time_per_loop, channel_list))
    
    
    def scan_enable(self, ssid=None, bssid=None):
        """Enables the scan utilizing the current scan parameters.
        
        Attributes:
            ssid   -- SSID to scan for as part of probe request (optional)
                          A value of None means that the node will scan for all SSIDs
            bssid  -- BSSID to scan for as part of probe request (optional)
                          A value of None means that the node will scan for all BSSIDs
        """
        self.send_cmd(cmds.NodeProcScan(enable=True, ssid=ssid, bssid=bssid))
    
    
    def scan_disable(self):
        """Disables the current scan."""
        self.send_cmd(cmds.NodeProcScan(enable=False, ssid=None, bssid=None))


    def join(self, bss_info):
        """Join the provided BSS.
        
        Attributes:
            bss_info -- Dictionary discribing the BSS to join
            
        Returns:
            True -- Replaces "my_bss_info" so you always "join" the BSS.
        """
        return self.send_cmd(cmds.NodeProcJoin(bss_info))
    
            
    def scan_and_join(self, ssid, timeout=5.0):
        """Scan for the given network and try to join.
        
        Attributes:
            ssid      -- SSID to scan for as part of probe request
            timeout   -- Number of seconds to scan for the network before timing out

        Returns:
            True      -- Inidcates you successfully joined the BSS
            False     -- Indicates that you were not able to find the BSS
        """
        return self.send_cmd(cmd=cmds.NodeProcScanAndJoin(ssid=ssid, bssid=None, timeout=timeout), timeout=timeout)



    #-------------------------------------------------------------------------
    # Misc methods for the Node
    #-------------------------------------------------------------------------
    def __str__(self):
        """Pretty print WlanExpNodeAp object"""
        msg = super(WlanExpNodeIBSS, self).__str__()
        msg = "WLAN Exp IBSS: \n" + msg
        return msg

    def __repr__(self):
        """Return node name and description"""
        msg = super(WlanExpNodeIBSS, self).__repr__()
        msg = "WLAN EXP IBSS " + msg
        return msg

# End Class WlanExpNodeAp
