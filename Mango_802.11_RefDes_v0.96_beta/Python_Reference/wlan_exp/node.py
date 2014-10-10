# -*- coding: utf-8 -*-
"""
------------------------------------------------------------------------------
WLAN Experiment Node
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
1.00a ejw  1/23/14  Initial release

------------------------------------------------------------------------------

This module provides class definition for WLAN Exp Node.

Functions (see below for more information):
    WlanExpNode() -- Base class for WLAN Exp node
    WlanExpNodeFactory() -- Base class for creating WLAN Exp nodes

Integer constants:
    NODE_WLAN_MAX_ASSN, NODE_WLAN_EVENT_LOG_SIZE, NODE_WLAN_MAX_STATS
        -- Node hardware parameter constants 

If additional hardware parameters are needed for sub-classes of WlanExpNode, 
pleasemake sure that the values of these hardware parameters are not reused.

"""
import sys

import wlan_exp.warpnet.node as wn_node
import wlan_exp.warpnet.exception as wn_ex

import wlan_exp.version as version
import wlan_exp.defaults as defaults
import wlan_exp.cmds as cmds
import wlan_exp.device as device


__all__ = ['WlanExpNode', 'WlanExpNodeFactory']


# Fix to support Python 2.x and 3.x
if sys.version[0]=="3": long=None


# WLAN Exp Node Parameter Identifiers (Extension of WARPNet Parameter Identifiers)
#   NOTE:  The C counterparts are found in *_node.h
NODE_WLAN_EXP_DESIGN_VER               = 6
NODE_WLAN_MAC_ADDR                     = 7
NODE_WLAN_SCHEDULER_RESOLUTION         = 8


class WlanExpNode(wn_node.WnNode, device.WlanDevice):
    """Base Class for WLAN Experiment node.
    
    The WLAN experiment node represents one node in a WLAN experiment network.  
    This class is the primary interface for interacting with nodes by 
    providing method for sending commands and checking status of nodes.
    
    The base WLAN experiment nodes builds off the WARPNet node and utilizes
    the attributes of the WARPNet node.
    
    Attributes (inherited from WnNode):
        node_type                      -- Unique type of the WARPNet node
        node_id                        -- Unique identification for this node
        name                           -- User specified name for this node (supplied by user scripts)
        description                    -- String description of this node (auto-generated)
        serial_number                  -- Node's serial number, read from EEPROM on hardware
        fpga_dna                       -- Node's FPGA'a unique identification (on select hardware)
        hw_ver                         -- WARP hardware version of this node
        wn_ver_major                   -- WARPNet version running on this node
        wn_ver_minor
        wn_ver_revision
        transport                      -- Node's transport object
        transport_bcast                -- Node's broadcast transport object

    Attributes (inherited from WlanDevice):
        device_type                    -- Unique type of the Wlan Device
        wlan_mac_address               -- Wireless MAC address of the node

    New Attributes:
        wlan_scheduler_resolution      -- Minimum resolution (in us) of the LTG

        log_max_size                   -- Maximum size of event log (in bytes)
        log_total_bytes_read           -- Number of bytes read from the event log
        log_num_wraps                  -- Number of times the event log has wrapped
        log_next_read_index            -- Index in to event log of next read

        wlan_exp_ver_major             -- WLAN Exp version running on this node
        wlan_exp_ver_minor
        wlan_exp_ver_revision

        mac_type                       -- Value of the MAC type (see defaults.py for values)        
    """
    wlan_scheduler_resolution          = None
    
    log_max_size                       = None
    log_total_bytes_read               = None
    log_num_wraps                      = None
    log_next_read_index                = None

    wlan_exp_ver_major                 = None
    wlan_exp_ver_minor                 = None
    wlan_exp_ver_revision              = None

    mac_type                           = None
    
    def __init__(self, network_config=None, mac_type=None):
        super(WlanExpNode, self).__init__(network_config)
        
        (self.wlan_exp_ver_major, self.wlan_exp_ver_minor, 
                self.wlan_exp_ver_revision) = version.wlan_exp_ver()
        
        self.node_type                      = defaults.WLAN_EXP_BASE
        self.device_type                    = self.node_type
        self.wlan_scheduler_resolution      = 1

        self.log_total_bytes_read           = 0
        self.log_num_wraps                  = 0
        self.log_next_read_index            = 0

        self.mac_type                       = mac_type
        

    def configure_node(self, jumbo_frame_support=False):
        """Get remaining information from the node and set remaining parameters."""
        # Call WarpNetNode apply_configuration method
        super(WlanExpNode, self).configure_node(jumbo_frame_support)
        
        # Set description
        self.description = str("WLAN EXP " + self.description)


    #-------------------------------------------------------------------------
    # WLAN Exp Commands for the Node
    #-------------------------------------------------------------------------


    #--------------------------------------------
    # Log Commands
    #--------------------------------------------
    def log_configure(self, log_enable=None, log_wrap_enable=None, 
                            log_full_payloads=None, log_warpnet_commands=None):
        """Configure log with the given flags.

        By default all attributes are set to None.  Only attributes that 
        are given values will be updated on the node.  If an attribute is
        not specified, then that attribute will retain the same value on
        the node.

        Attributes (default state on the node is in CAPS):
            log_enable           -- Enable the event log (TRUE/False)
            log_warp_enable      -- Enable event log wrapping (True/FALSE)
            log_full_payloads    -- Record full Tx/Rx payloads in event log (True/FALSE)
            log_warpnet_commands -- Record WARPNet commands in event log (True/FALSE)        
        """
        self.send_cmd(cmds.LogConfigure(log_enable, log_wrap_enable, 
                                        log_full_payloads, log_warpnet_commands))


    def log_get(self, size, offset=0, max_req_size=None):
        """Low level method to get part of the log file as a WnBuffer.
        
        Attributes:
            size         -- Number of bytes to read from the log
            offset       -- Starting byte to read from the log (optional)
            max_req_size -- Max request size that the transport will fragment
                            the request into.
        
        NOTE:  There is no guarentee that this will return data aligned to 
        event boundaries.  Use log_get_start() and log_get_end() to get 
        event aligned boundaries.
        
        NOTE:  Log reads are not destructive.  Log entries will only be
        destroyed by a log reset or if the log wraps.
        
        NOTE:  During a given log_get command, the Ethernet interface of
        the node will not be able to respond to any other Ethernet packets
        that are sent to the node.  This could cause the node to drop 
        incoming packets and cause contention among multiple log consumers.
        Therefore, for large requests, having a smaller max_req_size
        will allow the transport to fragement the command and allow the 
        node to be responsive to multiple hosts.
        
        NOTE:  Some basic analysis shows that fragment sizes of 2**23 (8 MB)
        add about 2% overhead to the receive time and each command takes less
        than 1 second (~0.9 sec), which is the default WARPNet transport 
        timeout.
        """
        return self.send_cmd(cmds.LogGetEvents(size, offset), max_req_size=max_req_size)


    def log_get_all_new(self, log_tail_pad=500, max_req_size=2**23):
        """Get all "new" entries in the log.

        Attributes:
            log_tail_pad  -- Number of bytes from the current end of the 
                               "new" entries that will not be read during 
                               the call.  This is to deal with the case that
                               the node is processing the last log entry so 
                               it contains incomplete data and should not be
                               read.
        
        Returns:
           WARPNet Buffer that contains all entries since the last time the 
             log was read.
        """
        import wlan_exp.warpnet.message as wn_message
        
        return_val = wn_message.Buffer()
        (next_index, oldest_index, num_wraps) = self.log_get_indexes()

        if ((self.log_next_read_index == 0) and (self.log_num_wraps == 0)):
            # This is the first read of the log by this python object
            if (num_wraps != 0):
                # Need to advance the num_wraps to the current num_wraps so 
                # that we don't get into a bad state with log reading.
                msg  = "\nWARNING:  On first read, the log on the node has already wrapped.\n"
                msg += "    Skipping the first {0} wraps of log data.\n".format(num_wraps)
                print(msg)
                self.log_num_wraps = num_wraps

        if (num_wraps == self.log_num_wraps):
            if (next_index > (self.log_next_read_index + log_tail_pad)):
                # Get Log data from the node
                return_val = self.log_get(offset=self.log_next_read_index, 
                                          size=(next_index - self.log_next_read_index - log_tail_pad),
                                          max_req_size=max_req_size)
                                          
                # Only increment index by how much was actually read
                read_size  = return_val.get_buffer_size()
                if (read_size > 0):
                    self.log_next_read_index += read_size
                else:
                    print("WARNING:  Not able to read data from node.")
        else:
            if ((next_index != 0) or self.log_is_full()):
                # Get Log data from the node
                return_val = self.log_get(offset=self.log_next_read_index, 
                                          size=cmds.CMD_PARAM_LOG_GET_ALL_ENTRIES, 
                                          max_req_size=max_req_size)

                # Unfortunately, we do not know how much data should have
                # been returned from the node, but it should not be zero
                read_size  = return_val.get_buffer_size()
                if (read_size > 0):
                    self.log_next_read_index = 0
                    self.log_num_wraps       = num_wraps
                else:
                    print("WARNING:  Not able to read data from node.")                

        return return_val


    def log_get_size(self):
        """Get the size of the log (in bytes)."""
        (capacity, size)  = self.send_cmd(cmds.LogGetCapacity())

        # Check the maximum size of the log and update the node state
        if self.log_max_size is None:
            self.log_max_size = capacity
        else:
            if (self.log_max_size != capacity):
                msg  = "EVENT LOG WARNING:  Log capacity changed.\n"
                msg += "    Went from {0} bytes to ".format(self.log_max_size)
                msg += "{0} bytes.\n".format(capacity)
                print(msg)
                self.log_max_size = capacity

        return size


    def log_get_capacity(self):
        """Get the capacity of the log (in bytes)."""
        return self.log_max_size


    def log_get_indexes(self):
        """Get the indexes that describe the state of the event log.
        
        Returns a tuple:
            (oldest_index, next_index, num_wraps)        
        """
        (next_index, oldest_index, num_wraps, _) = self.send_cmd(cmds.LogGetStatus())
        
        # Check that the log is in a good state
        if ((num_wraps < self.log_num_wraps) or 
            ((num_wraps == self.log_num_wraps) and 
             (next_index < self.log_next_read_index))):
            msg  = "\n!!! Event Log Corrupted.  Please reset the log. !!!\n"
            print(msg)
        
        return (next_index, oldest_index, num_wraps)


    def log_get_flags(self):
        """Get the flags that describe the event log configuration."""
        (_, _, _, flags) = self.send_cmd(cmds.LogGetStatus())

        return flags        


    def log_is_full(self):
        """Return whether the log is full or not."""
        (next_index, oldest_index, num_wraps, flags) = self.send_cmd(cmds.LogGetStatus())
        
        if (((flags & cmds.CMD_PARAM_LOG_CONFIG_FLAG_WRAP) != cmds.CMD_PARAM_LOG_CONFIG_FLAG_WRAP) and
            ((next_index == 0) and (oldest_index == 0) and (num_wraps == (self.log_num_wraps + 1)))):
            return True
        else:
            return False


    def log_enable_stream(self, port, ip_address=None, host_id=None):
        """Configure the node to stream log entries to the given port."""

        if (ip_address is None):
            import wlan_exp.warpnet.util as wn_util
            ip_address = wn_util._get_host_ip_addr_for_network(self.network_config)
            
        if (host_id is None):
            host_id = self.network_config.get_param('host_id')
        
        self.send_cmd(cmds.LogStreamEntries(1, host_id, ip_address, port))
        msg  = "{0}:".format(self.name) 
        msg += "Streaming Log Entries to {0} ({1}) with host ID {2}".format(ip_address, port, host_id)
        print(msg)


    def log_disable_stream(self):
        """Configure the node to disable log entries stream."""
        self.send_cmd(cmds.LogStreamEntries(0, 0, 0, 0))
        msg  = "{0}:".format(self.name) 
        msg += "Disable log entry stream."
        print(msg)


    def log_write_exp_info(self, info_type, message=None):
        """Write the experiment information provided to the log.
        
        Attributes:
            info_type -- Type of the experiment info.  This is an 
                         arbitrary 16 bit number chosen by the experimentor
            message   -- Information to be placed in the event log
        """
        self.send_cmd(cmds.LogAddExpInfoEntry(info_type, message))


    def log_write_time(self, time_id=None):
        """Adds the current time in microseconds to the log."""
        return self.send_cmd(cmds.NodeProcTime(cmds.CMD_PARAM_TIME_ADD_TO_LOG, cmds.CMD_PARAM_RSVD_TIME, time_id))


    def log_write_txrx_stats(self):
        """Write the current statistics to the log."""
        return self.send_cmd(cmds.LogAddStatsTxRx())


    #--------------------------------------------
    # Statistics Commands
    #--------------------------------------------
    def stats_configure_txrx(self, promisc_stats=None):
        """Configure statistics collection on the node.

        By default all attributes are set to None.  Only attributes that 
        are given values will be updated on the node.  If an attribute is
        not specified, then that attribute will retain the same value on
        the node.

        Attributes (default state on the node is in CAPS):
            promisc_stats        -- Enable promiscuous statistics collection (TRUE/False)
        """
        self.send_cmd(cmds.StatsConfigure(promisc_stats))


    def stats_get_txrx(self, device_list=None):
        """Get the statistics from the node.
        
        Returns a list of statistic dictionaries or a single dictionary.  
        
        If the device_list is a single device, then a single dictionary or 
        None is returned.  If the device_list is a list of devices, then a 
        list of dictionaries will be returned in the same order as the 
        devices in the list.  If any of the staistics are not there, 
        None will be inserted in the list.  If the device_list is not 
        specified, then all the statistics on the node will be returned.
        """
        ret_val = []
        if not device_list is None:
            if (type(device_list) is list):
                for device in device_list:
                    stats = self.send_cmd(cmds.StatsGetTxRx(device))
                    if (len(stats) == 1):
                        ret_val.append(stats)
                    else:
                        ret_val.append(None)
            else:
                ret_val = self.send_cmd(cmds.StatsGetTxRx(device_list))
                if (len(ret_val) == 1):
                    ret_val = ret_val[0]
                else:
                    ret_val = None
        else:
            ret_val = self.send_cmd(cmds.StatsGetTxRx())
        
        return ret_val
    

    #--------------------------------------------
    # Local Traffic Generation (LTG) Commands
    #--------------------------------------------
    def ltg_configure(self, traffic_flow, auto_start=False):
        """Configure the node for the given traffic flow.
        
        Attributes:
            traffic_flow -- This is a traffic flow class (subclass of FlowConfig)
                            that describes the parameters of the LTG.  You can 
                            find the defined traffic flows in ltg.py
            auto_start   -- Automatically start the LTG or wait until it is 
                            explictly started.
        
        Returns:
            LTG ID of the flow        
        """
        traffic_flow.enforce_min_resolution(self.wlan_scheduler_resolution)
        return self.send_cmd(cmds.LTGConfigure(traffic_flow, auto_start))


    def ltg_get_status(self, ltg_id_list):
        """Get the status of the LTG flows."""
        ret_val = []
        if (type(ltg_id_list) is list):
            for ltg_id in ltg_id_list:
                result = self.send_cmd(cmds.LTGStatus(ltg_id))
                if not result[0]:
                    self._print_ltg_error(cmds.CMD_PARAM_LTG_ERROR, "get status for LTG {0}".format(ltg_id))
                ret_val.append(result)
        else:
            result = self.send_cmd(cmds.LTGStatus(ltg_id_list))
            if not result[0]:
                self._print_ltg_error(cmds.CMD_PARAM_LTG_ERROR, "get status for LTG {0}".format(ltg_id_list))
            ret_val.append(result)
        
        return ret_val


    def ltg_remove(self, ltg_id_list):
        """Remove the LTG flows."""
        if (type(ltg_id_list) is list):
            for ltg_id in ltg_id_list:
                status = self.send_cmd(cmds.LTGRemove(ltg_id))
                self._print_ltg_error(status, "remove LTG {0}".format(ltg_id))
        else:
            status = self.send_cmd(cmds.LTGRemove(ltg_id_list))
            self._print_ltg_error(status, "remove LTG {0}".format(ltg_id_list))
        

    def ltg_start(self, ltg_id_list):
        """Start the LTG flow."""
        if (type(ltg_id_list) is list):
            for ltg_id in ltg_id_list:
                status = self.send_cmd(cmds.LTGStart(ltg_id))
                self._print_ltg_error(status, "start LTG {0}".format(ltg_id))
        else:
            status = self.send_cmd(cmds.LTGStart(ltg_id_list))
            self._print_ltg_error(status, "start LTG {0}".format(ltg_id_list))


    def ltg_stop(self, ltg_id_list):
        """Stop the LTG flow to the given nodes."""
        if (type(ltg_id_list) is list):
            for ltg_id in ltg_id_list:
                status = self.send_cmd(cmds.LTGStop(ltg_id))
                self._print_ltg_error(status, "stop LTG {0}".format(ltg_id))
        else:
            status = self.send_cmd(cmds.LTGStop(ltg_id_list))
            self._print_ltg_error(status, "stop LTG {0}".format(ltg_id_list))


    def ltg_remove_all(self):
        """Stops and removes all LTG flows on the node."""
        status = self.send_cmd(cmds.LTGRemove())
        self._print_ltg_error(status, "remove all LTGs")
        

    def ltg_start_all(self):
        """Start all LTG flows on the node."""
        status = self.send_cmd(cmds.LTGStart())
        self._print_ltg_error(status, "start all LTGs")


    def ltg_stop_all(self):
        """Stop all LTG flows on the node."""
        status = self.send_cmd(cmds.LTGStop())
        self._print_ltg_error(status, "stop all LTGs")


    def _print_ltg_error(self, status, msg):
        """Print an LTG error message."""
        if (status == cmds.CMD_PARAM_LTG_ERROR):
            print("LTG ERROR: Could not {0} on {1}".format(msg, self.name))


    #--------------------------------------------
    # Configure Node Attribute Commands
    #--------------------------------------------
    def reset_all(self):
        """Resets all portions of a node.
        
        This includes:  Log, Statistics, LTG, Queues, Association State        
        """
        status = self.reset(log=True, 
                            txrx_stats=True, 
                            ltg=True, 
                            queue_data=True, 
                            associations=True,
                            bss_info=True)

        if (status == cmds.CMD_PARAM_LTG_ERROR):
            print("LTG ERROR: Could not stop all LTGs on {0}".format(self.name))
    

    def reset(self, log=False, txrx_stats=False, ltg=False, queue_data=False, 
                   associations=False, bss_info=False ):
        """Resets the state of node depending on the attributes.
        
        Attributes:
            log          -- Reset the log
            txrx_stats   -- Reset the TX/RX Statistics
            ltg          -- Remove all LTGs
            queue_data   -- Purge all TX queue data
            associations -- Remove all associations
            bss_info     -- Remove all BSS info
        """
        flags = 0;
        
        if log:
            flags += cmds.CMD_PARAM_NODE_RESET_FLAG_LOG
            self.log_total_bytes_read = 0
            self.log_num_wraps        = 0
            self.log_next_read_index  = 0

        if txrx_stats:       flags += cmds.CMD_PARAM_NODE_RESET_FLAG_TXRX_STATS        
        if ltg:              flags += cmds.CMD_PARAM_NODE_RESET_FLAG_LTG        
        if queue_data:       flags += cmds.CMD_PARAM_NODE_RESET_FLAG_TX_DATA_QUEUE
        if associations:     flags += cmds.CMD_PARAM_NODE_RESET_FLAG_ASSOCIATIONS
        if bss_info:         flags += cmds.CMD_PARAM_NODE_RESET_FLAG_BSS_INFO
        
        # Send the reset command
        self.send_cmd(cmds.NodeResetState(flags))


    def set_wlan_mac_address(self, mac_address=None):
        """Set the WLAN MAC Address of the node.
        
        This will allow a user to spoof the wireless MAC address of the node.  If
        the mac_address is not provided, then the node will set the wirelss MAC
        address back to the default for the node (ie the Eth A MAC address stored in 
        the EEPROM).  This will perform a "reset_all()" command on the node to 
        remove any existing state to limit any corner cases that might arise from
        changing the wireless MAC address.        
        """
        raise NotImplementedError
        
        # NOTE: We have not worked out all of the reset issues with changing the
        # underlying MAC address; leaving this not implemented for now.
        # 
        # addr = self.send_cmd(cmds.NodeProcWLANMACAddr(cmds.CMD_PARAM_WRITE, mac_address))
        # self.wlan_mac_address = addr


    def get_wlan_mac_address(self):
        """Get the WLAN MAC Address of the node."""
        addr = self.send_cmd(cmds.NodeProcWLANMACAddr(cmds.CMD_PARAM_READ))

        if (addr != self.wlan_mac_address):
            import wlan_exp.util as util
            
            msg  = "WARNING:  WLAN MAC address mismatch.\n"
            msg += "    Received MAC Address:  {0}".format(util.mac_addr_to_str(addr))
            msg += "    Original MAC Address:  {0}".format(util.mac_addr_to_str(self.wlan_mac_address))

        return addr


    def set_time(self, time, time_id=None):
        """Sets the time in microseconds on the node.
        
        Attributes:
            time -- Time to send to the board (either float in sec or int in us)
        """
        self.send_cmd(cmds.NodeProcTime(cmds.CMD_PARAM_WRITE, time, time_id))
    

    def get_time(self):
        """Gets the time in microseconds from the node."""
        return self.send_cmd(cmds.NodeProcTime(cmds.CMD_PARAM_READ, cmds.CMD_PARAM_RSVD_TIME))


    def set_low_to_high_rx_filter(self, mac_header=None, fcs=None):
        """Sets the filter on the packets that are passed from the low MAC to the high MAC.
        
        Attributes:
            mac_header -- MAC header filter.  Values can be:
                            'MPDU_TO_ME' -- Pass any unicast-to-me or multicast data or 
                                            management packet
                            'ALL_MPDU'   -- Pass any data or management packet (no address filter)
                            'ALL'        -- Pass any packet (no type or address filters)
            FCS        -- FCS status filter.  Values can be:
                            'GOOD'       -- Pass only packets with good checksum result
                            'ALL'        -- Pass packets with any checksum result
        
        NOTE:  One thing to note is that even though all packets are passed in the 'ALL' case 
        of the mac_header filter, the high MAC does not necessarily get to decide the node's 
        response to all packets.  For example, ACKs will still be transmitted for receptions
        by the low MAC since there is not enough time in the 802.11 protocol for the high MAC 
        to decide on the response.  Default behavior like this can only be modified in the 
        low MAC.
        """
        self.send_cmd(cmds.NodeSetLowToHighFilter(mac_header, fcs))        
        

    def set_channel(self, channel):
        """Sets the channel of the node and returns the channel that was set."""
        return self.send_cmd(cmds.NodeProcChannel(cmds.CMD_PARAM_WRITE, channel))


    def get_channel(self):
        """Gets the current channel of the node."""
        return self.send_cmd(cmds.NodeProcChannel(cmds.CMD_PARAM_READ))


    def set_tx_rate_unicast(self, rate, device_list=None, curr_assoc=False, new_assoc=False):
        """Sets the unicast transmit rate of the node.
        
        One of device_list, curr_assoc or new_assoc must be set.  The device_list
        and curr_assoc are mutually exclusive with curr_assoc having precedence
        (ie if curr_assoc is True, then device_list will be ignored).

        Attributes:
            rate        -- Entry from the wlan_rates list in wlan_exp.util
            device_list -- List of 802.11 devices for which to set the Tx unicast rate to 'rate'
            curr_assoc  -- All current assocations will have Tx unicast rate set to 'rate'
            new_assoc   -- All new associations will have Tx unicast rate set to 'rate'
        """
        self._node_set_tx_param_unicast(cmds.NodeProcTxRate, rate, 'rate', device_list, curr_assoc, new_assoc)
        

    def get_tx_rate_unicast(self, device_list=None, new_assoc=False):
        """Gets the unicast transmit rate of the node.

        Attributes:
            device_list -- List of 802.11 devices for which to get the Tx unicast rate
            new_assoc   -- Get the Tx unicast rate for all new associations 
        
        Returns:
            A list of entries from the wlan_rates list in wlan_exp.util

        If both new_assoc and device_list are specified, the return list will always have 
        the Tx unicast rate for all new associations as the first item in the list.
        """
        return self._node_get_tx_param_unicast(cmds.NodeProcTxRate, 'rate', device_list, new_assoc)


    def set_tx_rate_multicast_data(self, rate):
        """Sets the multicast transmit rate for a node.

        Attributes:
            rate      -- Entry from the wlan_rates list in wlan_exp.util 
        """
        return self.send_cmd(cmds.NodeProcTxRate(cmds.CMD_PARAM_WRITE, cmds.CMD_PARAM_MULTICAST, rate))


    def get_tx_rate_multicast_data(self):
        """Gets the current multicast transmit rate for a node.

        Returns:
            An entry from the wlan_rates list in wlan_exp.util
        """
        return self.send_cmd(cmds.NodeProcTxRate(cmds.CMD_PARAM_READ, cmds.CMD_PARAM_MULTICAST))


    def set_tx_ant_mode_unicast(self, ant_mode, device_list=None, curr_assoc=False, new_assoc=False):
        """Sets the unicast transmit antenna mode of the node.
        
        One of device_list, curr_assoc or new_assoc must be set.  The device_list
        and curr_assoc are mutually exclusive with curr_assoc having precedence
        (ie if curr_assoc is True, then device_list will be ignored).

        Attributes:
            ant_mode    -- Entry from the wlan_tx_ant_mode list in wlan_exp.util
            device_list -- List of 802.11 devices for which to set the Tx unicast rate to 'rate'
            curr_assoc  -- All current assocations will have Tx unicast rate set to 'rate'
            new_assoc   -- All new associations will have Tx unicast rate set to 'rate'
        """
        self._node_set_tx_param_unicast(cmds.NodeProcTxAntMode, ant_mode, 'antenna mode', 
                                        device_list, curr_assoc, new_assoc)


    def get_tx_ant_mode_unicast(self, device_list=None, new_assoc=False):
        """Gets the unicast transmit antenna mode of the node.

        Attributes:
            device_list -- List of 802.11 devices for which to get the Tx unicast rate
            new_assoc   -- Get the Tx unicast rate for all new associations 
        
        Returns:
            A list of antenna modes

        If both new_assoc and device_list are specified, the return list will always have 
        the Tx unicast antenna mode for all new associations as the first item in the list.
        """
        return self._node_get_tx_param_unicast(cmds.NodeProcTxAntMode, 'antenna mode', device_list, new_assoc)


    def set_tx_ant_mode_multicast(self, ant_mode):
        """Sets the multicast transmit antenna mode for a node and returns the 
        antenna mode that was set.
        """
        return self.send_cmd(cmds.NodeProcTxAntMode(cmds.CMD_PARAM_WRITE, cmds.CMD_PARAM_MULTICAST, ant_mode))


    def get_tx_ant_mode_multicast(self):
        """Gets the current multicast transmit antenna mode for a node.
        
        Returns:
          A list of antenna modes:  [<multicast management tx antenna mode>,
                                     <multicast data tx antenna mode>]
        
        """
        return self.send_cmd(cmds.NodeProcTxAntMode(cmds.CMD_PARAM_READ, cmds.CMD_PARAM_MULTICAST))


    def set_rx_ant_mode(self, ant_mode):
        """Sets the receive antenna mode for a node and returns the 
        antenna mode that was set.
        """
        return self.send_cmd(cmds.NodeProcRxAntMode(cmds.CMD_PARAM_WRITE, ant_mode))


    def get_rx_ant_mode(self):
        """Gets the current receive antenna mode for a node."""
        return self.send_cmd(cmds.NodeProcRxAntMode(cmds.CMD_PARAM_READ))


    def set_tx_power(self, power):
        """Sets the transmit power of the node and returns the power that was set."""
        return self.send_cmd(cmds.NodeProcTxPower(cmds.CMD_PARAM_WRITE, power))


    def get_tx_power(self):
        """Gets the current transmit power of the node.
        
        Returns:
          A list of tx powers:  [<unicast management tx power>,
                                 <unicast data tx power>,
                                 <multicast management tx power>,
                                 <multicast data tx power>]
        """
        return self.send_cmd(cmds.NodeProcTxPower(cmds.CMD_PARAM_READ))


    def set_phy_cs_thresh(self, val):
        """Sets the physical carrier sense threshold of the node."""
        self._set_low_param(cmds.CMD_PARAM_LOW_PARAM_PHYSICAL_CS_THRESH, val)


    def get_phy_cs_thresh(self):
        """Gets the physical carrier sense threshold of the node."""
        ret_val = self.send_cmd(cmds.NodeLowParam(cmds.CMD_PARAM_READ, param=cmds.CMD_PARAM_LOW_PARAM_PHYSICAL_CS_THRESH))
        
        if ret_val is not None:
            if ((ret_val[0] == 1) and (ret_val[1] == cmds.CMD_PARAM_LOW_PARAM_PHYSICAL_CS_THRESH)):
                return ret_val[2]
            else:
                print("WARNING:  CS Thresh:  Unexpected return value: {0}".format(ret_val))
                return None
        else:
            return None
        

    def set_timestamp_offset(self, val):
        """Sets a usec offset that will be applied to beacon timestamps."""
        self._set_low_param(cmds.CMD_PARAM_LOW_PARAM_TS_OFFSET, val)      


    def get_timestamp_offset(self):
        """Gets a usec offset that will be applied to beacon timestamps."""
        ret_val = self.send_cmd(cmds.NodeLowParam(cmds.CMD_PARAM_READ, param=cmds.CMD_PARAM_LOW_PARAM_TS_OFFSET))
        
        if ret_val is not None:
            if ((ret_val[0] == 1) and (ret_val[1] == cmds.CMD_PARAM_LOW_PARAM_TS_OFFSET)):
                return ret_val[2]
            else:
                print("WARNING:  Timestamp offset:  Unexpected return value: {0}".format(ret_val))
                return None
        else:
            return None


    def set_cw_exp_min(self, val):
        """Sets the the minimum contention window:
           
           Attributes:
               val  -- Sets the contention window to [0, 2^(val)]
                       For example, 1 -- [0,1]; 10 -- [0,1023]
        """
        self._set_low_param(cmds.CMD_PARAM_LOW_PARAM_CW_EXP_MIN, val)       

        
    def set_cw_exp_max(self, val):
        """Sets the the maximum contention window:

           Attributes:
               val  -- Sets the contention window to [0, 2^(val)]
                       For example, 1 -- [0,1]; 10 -- [0,1023]
        """
        self._set_low_param(cmds.CMD_PARAM_LOW_PARAM_CW_EXP_MAX, val)               


    def get_cw_exp_range(self):
        """Gets the contention window range.
        
        Returns a tuple containing the (min, max) contention window
        """
        cw_max = self.send_cmd(cmds.NodeLowParam(cmds.CMD_PARAM_READ, param=cmds.CMD_PARAM_LOW_PARAM_CW_EXP_MAX))
        
        if cw_max is not None:
            if ((cw_max[0] == 1) and (cw_max[1] == cmds.CMD_PARAM_LOW_PARAM_CW_EXP_MAX)):
                cw_max = cw_max[2]
            else:
                print("WARNING:  CW Max:  Unexpected return value: {0}".format(cw_max))
                cw_max = None
        else:
            cw_max = None

        cw_min = self.send_cmd(cmds.NodeLowParam(cmds.CMD_PARAM_READ, param=cmds.CMD_PARAM_LOW_PARAM_CW_EXP_MIN))

        if cw_min is not None:
            if ((cw_min[0] == 1) and (cw_min[1] == cmds.CMD_PARAM_LOW_PARAM_CW_EXP_MIN)):
                cw_min = cw_min[2]
            else:
                print("WARNING:  CW Min:  Unexpected return value: {0}".format(cw_min))
                cw_min = None
        else:
            cw_min = None

        return (cw_min, cw_max)


    def set_random_seed(self, high_seed=None, low_seed=None, gen_random=False):
        """Sets the random number generator seed on the node.
        
        Attributes:
            high_seed  -- Set the random number generator seed on CPU high
            low_seed   -- Set the random number generator seed on CPU low
            gen_random -- If high_seed or low_seed is not provided, then generate
                          a random seed for the generator.
        """
        import random
        max_seed = 2**32 - 1 
        min_seed = 0        
        
        if (high_seed is None):
            if gen_random:
                high_seed = random.randint(min_seed, max_seed)
        else:
            if (high_seed > max_seed) or (high_seed < min_seed):
                msg  = "Seed must be an integer between [{0}, {1}]".format(min_seed, max_seed)
                raise AttributeError(msg)
        
        if (low_seed is None):
            if gen_random:
                low_seed  = random.randint(min_seed, max_seed)
        else:
            if (low_seed > max_seed) or (low_seed < min_seed):
                msg  = "Seed must be an integer between [{0}, {1}]".format(min_seed, max_seed)
                raise AttributeError(msg)
        
        self.send_cmd(cmds.NodeProcRandomSeed(cmds.CMD_PARAM_WRITE, high_seed, low_seed))


    def enable_dsss(self):
        """Enables DSSS receptions on the node."""
        self.send_cmd(cmds.NodeConfigure(dsss_enable=True))
    
    
    def disable_dsss(self):
        """Disable DSSS receptions on the node."""
        self.send_cmd(cmds.NodeConfigure(dsss_enable=False))



    #--------------------------------------------
    # Internal helper methods to configure node attributes
    #--------------------------------------------
    def _node_set_tx_param_unicast(self, cmd, param, param_name, 
                                         device_list=None, curr_assoc=False, new_assoc=False):
        """Sets the unicast transmit param of the node.
        
        One of device_list, curr_assoc or new_assoc must be set.  The device_list
        and curr_assoc are mutually exclusive with curr_assoc having precedence
        (ie if curr_assoc is True, then device_list will be ignored).

        Attributes:
            cmd         -- WnCmd to be used to set param
            param       -- Parameter to be set
            param_name  -- Name of parameter for error messages
            device_list -- List of 802.11 devices for which to set the Tx unicast param
            curr_assoc  -- All current assocations will have Tx unicast param set
            new_assoc   -- All new associations will have Tx unicast param set
        """
        if (device_list is None) and (not curr_assoc) and (not new_assoc):
            msg  = "\nCannot set the unicast transmit {0}:\n".format(param_name)
            msg += "    Must specify either a list of devices, all current associations,\n"
            msg += "    or all new assocations on which to set the {0}.".format(param_name)
            raise ValueError(msg)
        
        if new_assoc:
            self.send_cmd(cmd(cmds.CMD_PARAM_WRITE_DEFAULT, cmds.CMD_PARAM_UNICAST, param))
            
        if curr_assoc:
            self.send_cmd(cmd(cmds.CMD_PARAM_WRITE, cmds.CMD_PARAM_UNICAST, param))
        else:
            if (device_list is not None):
                try:
                    for device in device_list:
                        self.send_cmd(cmd(cmds.CMD_PARAM_WRITE, cmds.CMD_PARAM_UNICAST, param, device))
                except TypeError:
                    self.send_cmd(cmd(cmds.CMD_PARAM_WRITE, cmds.CMD_PARAM_UNICAST, param, device_list))


    def _node_get_tx_param_unicast(self, cmd, param_name, device_list=None, new_assoc=False):
        """Gets the unicast transmit param of the node.

        Attributes:
            cmd         -- WnCmd to be used to get param
            param_name  -- Name of parameter for error messages
            device_list -- List of 802.11 devices for which to get the Tx unicast rate
            new_assoc   -- Get the Tx unicast rate for all new associations 
        
        Returns:
            A list of params

        If both new_assoc and device_list are specified, the return list will always have 
        the param for all new associations as the first item in the list.
        """
        ret_val = []

        if (device_list is None) and (not new_assoc):
            msg  = "\nCannot get the unicast transmit {0}:\n".format(param_name)
            msg += "    Must specify either a list of devices or all new associations\n"
            msg += "    for which to get the {0}.".format(param_name)
            raise ValueError(msg)
        
        if new_assoc:
            val = self.send_cmd(cmd(cmds.CMD_PARAM_READ_DEFAULT, cmds.CMD_PARAM_UNICAST))
            ret_val.append(val)
            
        if (device_list is not None):
            try:
                for device in device_list:
                    val = self.send_cmd(cmd(cmds.CMD_PARAM_READ, cmds.CMD_PARAM_UNICAST, device=device))
                    ret_val.append(val)
            except TypeError:
                val = self.send_cmd(cmd(cmds.CMD_PARAM_READ, cmds.CMD_PARAM_UNICAST, device=device_list))
                ret_val.append(val)        

        return ret_val


    def _set_low_param(self, param, values):
        """Sets any number of CPU Low parameters"""
        
        if(values is not None):
            try:
                v0 = values[0]
            except TypeError:
                v0 = values
            
            if((type(v0) is not int) and (type(v0) is not long)) or (v0 >= 2**32):
                raise Exception('ERROR: values must be scalar or iterable of ints in [0,2^32-1]!')  
                
        try:
            vals = list(values)
        except TypeError:
            vals = [values]

        return self.send_cmd(cmds.NodeLowParam(cmds.CMD_PARAM_WRITE, param=param, values=vals))



    #--------------------------------------------
    # Association Commands
    #   NOTE:  Some commands are implemented in sub-classes
    #--------------------------------------------
    def get_ssid(self):
        """Command to get the SSID of the AP."""
        return self.send_cmd(cmds.NodeGetSSID())


    def disassociate(self, device_list):
        """Remove associations of devices within the device_list from the association table
        
        Attributes:
            device_list -- List of 802.11 devices to remove from the association table
        """
        try:
            for device in device_list:
                self.send_cmd(cmds.NodeDisassociate(device))
        except TypeError:
            self.send_cmd(cmds.NodeDisassociate(device_list))


    def disassociate_all(self):
        """Remove all associations from the association table"""
        self.send_cmd(cmds.NodeDisassociate())


    def is_associated(self, device_list):
        """Is the node associated with the devices in the device list.
        
        Returns:
            A boolean or list of booleans.  
            
        If the device_list is a single device, then only a boolean is 
        returned.  If the device_list is a list of devices, then a list of
        booleans will be returned in the same order as the devices in the
        list.
        
        For is_associated to return True, one of the following conditions 
        must be met:
          1) If the device is a wlan_exp node, then both the node and the 
             device must be associated.
          2) If the device is a 802.11 device, then only the node must be 
             associated with the device, since we cannot know the state of
             the 802.11 device.
        """
        ret_val  = [] 
        ret_list = True
        my_info  = self.get_bss_info()           # Get node's BSS info
        my_bssid = my_info['bssid']

        if device_list is not None:            
            # Convert device_list to a list if it is not already one; set flag to not return a list
            if type(device_list) is not list:
                device_list = [device_list]
                ret_list    = False
            
            for idx, device in enumerate(device_list):
                try:
                    dev_info  = device.get_bss_info()
                    dev_bssid = dev_info['bssid']
                except (AttributeError, KeyError, TypeError):
                    # Cannot get bss_info from device
                    # Need to check the station info of caller to see if device is there
                    my_station_info = self.get_station_info(device)

                    if my_station_info is not None:
                        # Device is in the station info list of the caller; good enough to 
                        # say the two devices are associated.
                        dev_bssid = my_bssid
                    else:
                        # Device is not in the station info list of the caller
                        dev_bssid = None

                # If the bssids are the same, then the nodes are associated
                if (my_bssid == dev_bssid):
                    ret_val.append(True)
                else:
                    ret_val.append(False)
        else:
            ret_val = False

        # Need to return a single value and not a list
        if not ret_list:
            ret_val = ret_val[0]
        
        return ret_val


    def get_station_info(self, device_list=None):
        """Get the station info from the node.
        
        Returns:
            A station info dictionary or list of station info dictionaries.

        If the device_list is a single device, then only a station info or 
        None is returned.  If the device_list is a list of devices, then a 
        list of station infos will be returned in the same order as the 
        devices in the list.  If any of the station info are not there, 
        None will be inserted in the list.  If the device_list is not 
        specified, then all the station infos on the node will be returned.
        """
        ret_val = []
        if not device_list is None:
            if (type(device_list) is list):
                for device in device_list:
                    info = self.send_cmd(cmds.NodeGetStationInfo(device))
                    if (len(info) == 1):
                        ret_val.append(info)
                    else:
                        ret_val.append(None)
            else:
                ret_val = self.send_cmd(cmds.NodeGetStationInfo(device_list))
                if (len(ret_val) == 1):
                    ret_val = ret_val[0]
                else:
                    ret_val = None
        else:
            ret_val = self.send_cmd(cmds.NodeGetStationInfo())

        return ret_val
    

    def get_bss_info(self, bssid_list=None):
        """Get the BSS info from the node.
        
        Returns:
            A BSS info dictionary or list of BSS info dictionaries.

        If the bssid_list is a single BSS ID, then only a single BSS info or 
        None is returned.  If the bssid_list is a list of BSS IDs, then a 
        list of BSS infos will be returned in the same order as the 
        BSS IDs in the list.  If any of the BSS infos are not there, 
        None will be inserted in the list.  If the bssid_list is not 
        specified, then "my_bss_info" on the node will be returned.  If the
        the bssid_list is the string "ASSOCIATED_BSS", then all of the BSS infos
        on the node will be returned.
        """
        ret_val = []
        if not bssid_list is None:
            if (type(bssid_list) is list):
                # Get all BSS infos in the list
                for bssid in bssid_list:
                    info = self.send_cmd(cmds.NodeGetBSSInfo(bssid))
                    if (len(info) == 1):
                        ret_val.append(info)
                    else:
                        ret_val.append(None)
            elif (type(bssid_list) is str):
                # Get all BSS infos on the node
                ret_val = self.send_cmd(cmds.NodeGetBSSInfo("ALL"))
            else:
                # Get single BSS info or return None
                ret_val = self.send_cmd(cmds.NodeGetBSSInfo(bssid_list))
                if (len(ret_val) == 1):
                    ret_val = ret_val[0]
                else:
                    ret_val = None
        else:
            # Get "my_bss_info"
            ret_val = self.send_cmd(cmds.NodeGetBSSInfo())
            if (len(ret_val) == 1):
                ret_val = ret_val[0]
            else:
                ret_val = None

        return ret_val
    


    #--------------------------------------------
    # Queue Commands
    #--------------------------------------------
    def queue_tx_data_purge_all(self):
        """Purges all data transmit queues on the node."""
        self.send_cmd(cmds.QueueTxDataPurgeAll())



    #--------------------------------------------
    # Braodcast Commands can be found in util.py
    #--------------------------------------------



    #--------------------------------------------
    # Memory Access Commands - For developer use only
    #--------------------------------------------
    def _mem_write_high(self, address, values):
        """Writes 'values' directly to CPU High memory starting at 'address'"""
        if(self._check_mem_access_args(address, values)):
            try:
                vals = list(values)
            except TypeError:
                vals = [values]

            return self.send_cmd(cmds.NodeMemAccess(cmds.CMD_PARAM_WRITE, high=True, address=address, length=len(vals), values=vals))


    def _mem_read_high(self, address, length):
        """Reads 'length' values directly CPU High memory starting at 'address'"""
        if(self._check_mem_access_args(address, values=None)):
            return self.send_cmd(cmds.NodeMemAccess(cmds.CMD_PARAM_READ, high=True, address=address, length=length))


    def _mem_write_low(self, address, values):
        """Writes 'values' directly to CPU High memory starting at 'address'"""
        if(self._check_mem_access_args(address, values)):
            try:
                vals = list(values)
            except TypeError:
                vals = [values]

            return self.send_cmd(cmds.NodeMemAccess(cmds.CMD_PARAM_WRITE, high=False, address=address, length=len(vals), values=vals))


    def _mem_read_low(self, address, length):
        """Reads 'length' values directly CPU High memory starting at 'address'"""
        if(self._check_mem_access_args(address, values=None)):
            return self.send_cmd(cmds.NodeMemAccess(cmds.CMD_PARAM_READ, high=False, address=address, length=length))


    def _check_mem_access_args(self, address, values=None, length=None):
        if(int(address) != address) or (address >= 2**32):
            raise Exception('ERROR: address must be integer value in [0,2^32-1]!')
        
        if(values is not None):
            try:
                v0 = values[0]
            except TypeError:
                v0 = values
            
            if((type(v0) is not int) and (type(v0) is not long)) or (v0 >= 2**32):
                raise Exception('ERROR: values must be scalar or iterable of ints in [0,2^32-1]!')

        return True



    #-------------------------------------------------------------------------
    # WARPNet Parameter Framework
    #   Allows for processing of hardware parameters
    #-------------------------------------------------------------------------
    def process_parameter(self, identifier, length, values):
        """Extract values from the parameters"""
        if (identifier == NODE_WLAN_EXP_DESIGN_VER):
            if (length == 1):                
                self.wlan_exp_ver_major = (values[0] & 0xFF000000) >> 24
                self.wlan_exp_ver_minor = (values[0] & 0x00FF0000) >> 16
                self.wlan_exp_ver_revision = (values[0] & 0x0000FFFF)                
                
                # Check to see if there is a version mismatch
                self.check_wlan_exp_ver()
            else:
                raise wn_ex.ParameterError("NODE_DESIGN_VER", "Incorrect length")

        elif   (identifier == NODE_WLAN_MAC_ADDR):
            if (length == 2):
                self.wlan_mac_address = ((2**32) * (values[1] & 0xFFFF) + values[0])
            else:
                raise wn_ex.ParameterError("NODE_WLAN_MAC_ADDR", "Incorrect length")

        elif   (identifier == NODE_WLAN_SCHEDULER_RESOLUTION):
            if (length == 1):
                self.wlan_scheduler_resolution = values[0]
            else:
                raise wn_ex.ParameterError("NODE_LTG_RESOLUTION", "Incorrect length")

        else:
            super(WlanExpNode, self).process_parameter(identifier, length, values)


    #-------------------------------------------------------------------------
    # Misc methods for the Node
    #-------------------------------------------------------------------------
    def check_wlan_exp_ver(self):
        """Check the WLAN Exp version of the node against the current WLAN Exp version."""        
        ver_str     = version.wlan_exp_ver_str(self.wlan_exp_ver_major, 
                                               self.wlan_exp_ver_minor, 
                                               self.wlan_exp_ver_revision)

        caller_desc = "During node initialization {0} returned version {1}".format(self.name, ver_str)
        
        version.wlan_exp_ver_check(major=self.wlan_exp_ver_major,
                                   minor=self.wlan_exp_ver_minor,
                                   revision=self.wlan_exp_ver_revision,
                                   caller_desc=caller_desc)

# End Class WlanExpNode




class WlanExpNodeFactory(wn_node.WnNodeFactory):
    """Sub-class of WARPNet node factory used to help with node configuration 
    and setup.
        
    Attributes (inherited):
        wn_dict -- Dictionary of WARPNet Node Types to class names
    """
    def __init__(self, network_config=None):
        super(WlanExpNodeFactory, self).__init__(network_config)
        
        # Add default classes to the factory
        self.node_add_class(defaults.WLAN_EXP_AP_DCF_TYPE, 
                            defaults.WLAN_EXP_AP_DCF_CLASS_INST,
                            defaults.WLAN_EXP_AP_DCF_DESCRIPTION)

        self.node_add_class(defaults.WLAN_EXP_STA_DCF_TYPE, 
                            defaults.WLAN_EXP_STA_DCF_CLASS_INST, 
                            defaults.WLAN_EXP_STA_DCF_DESCRIPTION)

        self.node_add_class(defaults.WLAN_EXP_IBSS_DCF_TYPE, 
                            defaults.WLAN_EXP_IBSS_DCF_CLASS_INST, 
                            defaults.WLAN_EXP_IBSS_DCF_DESCRIPTION)
        
        self.node_add_class(defaults.WLAN_EXP_AP_NOMAC_TYPE, 
                            defaults.WLAN_EXP_AP_NOMAC_CLASS_INST,
                            defaults.WLAN_EXP_AP_NOMAC_DESCRIPTION)

        self.node_add_class(defaults.WLAN_EXP_STA_NOMAC_TYPE, 
                            defaults.WLAN_EXP_STA_NOMAC_CLASS_INST, 
                            defaults.WLAN_EXP_STA_NOMAC_DESCRIPTION)

        self.node_add_class(defaults.WLAN_EXP_IBSS_NOMAC_TYPE, 
                            defaults.WLAN_EXP_IBSS_NOMAC_CLASS_INST, 
                            defaults.WLAN_EXP_IBSS_NOMAC_DESCRIPTION)

    
    def node_eval_class(self, node_class, network_config):
        """Evaluate the node_class string to create a node.  
        
        NOTE:  This should be overridden in each sub-class with the same
        overall structure but a different import.  Please call the super
        class so that the calls will propagate to catch all node types.
        """
        import wlan_exp.defaults as defaults
        import wlan_exp.node_ap as node_ap
        import wlan_exp.node_sta as node_sta
        import wlan_exp.node_ibss as node_ibss
        
        node = None

        try:
            node = eval(node_class, globals(), locals())
        except:
            pass
        
        if node is None:
            return super(WlanExpNodeFactory, self).node_eval_class(node_class, 
                                                                   network_config)
        else:
            return node


# End Class WlanExpNodeFactory
