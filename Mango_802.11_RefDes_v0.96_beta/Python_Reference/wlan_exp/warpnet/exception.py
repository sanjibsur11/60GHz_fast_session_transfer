# -*- coding: utf-8 -*-
"""
------------------------------------------------------------------------------
WARPNet Exceptions
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

This module provides class definitions for all WARPNet exceptions.

Functions (see below for more information):
    VersionError()
    ConfigError()
    ParameterError()
    NodeError()
    TransportError()

"""

__all__ = ['VersionError', 'ConfigError', 'ParameterError',
           'NodeError', 'TransportError']

class Error(Exception):
    """Base class for Wn exceptions."""
    pass

# End Class


class VersionError(Error):
    """Exception for version errors.
    
    Attributes:
        message -- explanation message of the error
    """
    def __init__(self, message):
        self.message = message

    def __str__(self):
        msg  = "Version Error:"
        msg += "    {0} \n".format(self.message)
        return msg
        
# End Class


class ConfigError(Error):
    """Exception for configuration file errors.
    
    Attributes:
        message -- explanation message of the error
    """    
    def __init__(self, message):
        self.message = message

    def __str__(self):
        msg  = "Config Error:"
        msg += "    {0} \n".format(self.message)
        return msg
        
# End Class


class ParameterError(Error):
    """Exception for parameter errors.
    
    Attributes:
        name -- name of the parameter
        message -- explanation message of the error
    """
    def __init__(self, parameter, message):
        self.parameter = parameter
        self.message = message

    def __str__(self):
        msg = ""
        if not self.parameter is None:
            msg += "Parameter {0} \n".format(self.parameter)
        msg += "    Error: {0} \n".format(self.message)
        return msg

# End Class


class NodeError(Error):
    """Exception for WARPNet nodes.
    
    Attributes:
        node -- WARPNet node in which the error occurred.
        message -- explanation message of the error
    """
    def __init__(self, node, message):
        self.node = node
        self.message = message

    def __str__(self):
        msg = ""
        if not self.node is None:        
            msg += "{0} \n".format(self.node.name)
        msg += "    Error: {0} \n".format(self.message)
        return msg

# End Class


class TransportError(Error):
    """Exception for WARPNet transports.
    
    Attributes:
        transport -- WARPNet transport in which the error occurred.
        message -- explanation message of the error
    """
    
    def __init__(self, transport, message):
        self.transport = transport
        self.message = message

    def __str__(self):
        msg = ""
        if not self.transport is None:
            msg += "{0} \n".format(self.transport)
        msg += "    Error: {0} \n".format(self.message)
        return msg

# End Class

