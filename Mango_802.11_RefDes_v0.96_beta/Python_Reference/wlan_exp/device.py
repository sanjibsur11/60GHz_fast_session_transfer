# -*- coding: utf-8 -*-
"""
------------------------------------------------------------------------------
WLAN Device
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

This module provides class definition for WLAN Device.

Functions (see below for more information):
    WlanDevice()        -- Base class for WLAN Devices

Integer constants:
    TBD

"""
import sys

__all__ = ['WlanDevice']


# Fix to support Python 2.x and 3.x
if sys.version[0]=="3": long=None


class WlanDevice(object):
    """Base Class for WLAN Device.
    
    The WLAN device represents one 802.11 device in a WLAN network.  
    
    Attributes:
        device_type       -- Unique type of the Wlan Device
        name              -- String description of this node (user generated)

        wlan_mac_address  -- MAC Address of WLAN Device
    """
    device_type           = None
    name                  = None
    
    wlan_mac_address      = None
    
    def __init__(self, mac_address, name=None):
        self.name             = name
        
        if mac_address is not None:        
            if type(mac_address) in [int, long]:
                self.wlan_mac_address = mac_address
            elif type(mac_address) is str:
                try:
                    mac_addr_int = mac_address
                    mac_addr_int = ''.join('{0:02X}:'.format(ord(x)) for x in mac_addr_int)[:-1]
                    mac_addr_int = '0x' + mac_addr_int.replace(':', '')                
                    mac_addr_int = int(mac_addr_int, 0)
                    
                    self.wlan_mac_address = mac_addr_int
                except:
                    raise TypeError("MAC address is not valid")
            else:
                raise TypeError("MAC address is not valid")
        else:
            raise TypeError("MAC address is not valid")


    #-------------------------------------------------------------------------
    # WLAN Commands for the Device
    #-------------------------------------------------------------------------


# End Class WlanDevice


