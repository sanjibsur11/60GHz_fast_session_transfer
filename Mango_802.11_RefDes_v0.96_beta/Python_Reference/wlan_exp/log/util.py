"""
log_util.py
==============

This module provides utility functions for handling WLAN Exp log data.

Naming convention:

  log_data       -- The binary data from a WLAN Exp node's log.

  raw_log_index  -- This is an index that has not been interpreted / filtered
                    and corresponds 1-to-1 with what is in given log_data.
                    The defining characteristic of a raw_log_index is that
                    the dictionary keys are all integers:
                      { <int> : [<offsets>] }

  log_index      -- A log_index is any index that is not a raw_log_index.  In
                    general, this will be a interpreted / filtered version of
                    a raw_log_index.

  numpy          -- A python package that allows easy and fast manipulation of
                    large data sets.  You can find more documentaiton on numpy at:
                        http://www.numpy.org/
----
"""

__all__ = ['gen_raw_log_index',
           'filter_log_index',
           'log_data_to_np_arrays']


#-----------------------------------------------------------------------------
# Top level check for memory configuration
#-----------------------------------------------------------------------------
import sys
import numpy as np

if (sys.maxsize <= 2**32):
    print("\n" + ("-" * 75))
    print("WARNING: Processing large log files requires 64-bit python.")
    print(("-" * 75) + "\n")


# Fix to support Python 2.x and 3.x
if sys.version[0]=="3": long=None


#-----------------------------------------------------------------------------
# Log Container base class
#-----------------------------------------------------------------------------
class LogContainer(object):
    """Base class to define a log container."""
    file_handle = None

    def __init__(self, file_handle=None):
        self.file_handle = file_handle

    def set_file_handle(self, file_handle):
        self.file_handle = file_handle

    def is_valid(self):                               raise NotImplementedError

    def write_log_data(self, log_data, append=True):  raise NotImplementedError
    def write_log_index(self, log_index=None):        raise NotImplementedError
    def write_attr_dict(self, attr_dict):             raise NotImplementedError

    def replace_log_data(self, log_data):             raise NotImplementedError

    def get_log_data_size(self):                      raise NotImplementedError
    def get_log_data(self):                           raise NotImplementedError
    def get_log_index(self, gen_index=True):          raise NotImplementedError
    def get_attr_dict(self):                          raise NotImplementedError

    def trim_log_data(self):                          raise NotImplementedError

# End class()



#-----------------------------------------------------------------------------
# WLAN Exp Log Utilities
#-----------------------------------------------------------------------------
def gen_raw_log_index(log_data):
    """Parses binary WLAN Exp log data by recording the byte index of each
    entry. The byte indexes are returned in a dictionary with the entry
    type IDs as keys. This method does not unpack or interpret each log
    entry and does not change any values in the log file itself (the
    log_data array argument can be read-only).

    Format of log entry header:

        typedef struct{
            u32 delimiter;
            u16 entry_type;
            u16 entry_length;
        } entry_header;

    fmt_log_hdr = 'I H H' #if we were using struct.unpack
    """

    offset         = 0
    hdr_size       = 8
    log_len        = len(log_data)
    log_index      = dict()
    use_byte_array = 0

    # Need to determine if we are using byte arrays or strings for the
    # log_bytes b/c we need to handle the data differently
    try:
        byte_array_test = log_data[offset:offset+hdr_size]
        byte_array_test = ord(byte_array_test[0])
    except TypeError:
        use_byte_array  = 1


    while True:
        # Stop here if the next log entry header is incomplete
        if( (offset + hdr_size) > log_len):
            break

        # Check if entry starts with valid header.  struct.unpack is the
        # natural way to interpret the entry header, but it's slower
        # than accessing the bytes directly.

        # hdr = unpack(fmt_log_hdr, log_bytes[offset:offset+hdr_size])
        # ltk = hdr[1]
        # if( (hdr[0] & wn_entries.WN_LOG_DELIM) != wn_entries.WN_LOG_DELIM):
        #     raise Exception("ERROR: Log file didn't start with valid entry header!")

        # Use raw byte slicing for better performance
        # Values below are hard coded to match current WLAN Exp log entry formats
        hdr_b = log_data[offset:offset+hdr_size]

        if (use_byte_array):
            if( (bytearray(hdr_b[2:4]) != b'\xed\xac') ):
                raise Exception("ERROR: Log file didn't start with valid entry header (offset %d)!" % (offset))

            entry_type_id = (hdr_b[4] + (hdr_b[5] * 256))
            entry_size = (hdr_b[6] + (hdr_b[7] * 256))
        else:
            if( (hdr_b[2:4] != b'\xed\xac') ):
                raise Exception("ERROR: Log file didn't start with valid entry header (offset %d)!" % (offset))

            entry_type_id = (ord(hdr_b[4]) + (ord(hdr_b[5]) * 256))
            entry_size = (ord(hdr_b[6]) + (ord(hdr_b[7]) * 256))

        offset += hdr_size

        # Stop here if the last log entry is incomplete
        if( (offset + entry_size) > log_len):
            break

        #Try/except slightly faster than "if(entry_type_id in log_index.keys()):"
        # ~3 seconds faster (13s -> 10s) for ~1GB log file
        try:
            log_index[entry_type_id].append(offset)
        except KeyError:
            log_index[entry_type_id] = [offset]

        # Increment the byte offset for the next iteration
        offset += entry_size

    # Remove all NULL entries from the log_index
    try:
        del log_index[0]
    except KeyError:
        pass

    return log_index

# End gen_log_index_raw()


def filter_log_index(log_index, include_only=None, exclude=None, merge=None, verbose=False):
    """Parses a log index to generate a filtered log index.

    Consumers, in general, cannot operate on a raw log index since that has
    not been converted in to log entry types.  The besides filtering a log
    index, this method will also convert any raw index entries (ie entries
    with keys of type int) in to the corresponding WlanExpLogEntryTypes.

    Attributes:
        include_only -- List of WlanExpLogEntryTypes to include in the output
                        log index.  This takes precedence over 'exclude'.
        exclude      -- List of WlanExpLogEntryTypes to exclude in the output
                        log index.  This will not be used if include != None.
        merge        -- A dictionary of the form:

    {'WlanExpLogEntryType name': [List of 'WlanExpLogEntryTypes name' to merge]}

    By using the 'merge', we are able to combine the indexes of
    WlanExpLogEntryTypes to create super-sets of entries.  For example,
    we could create a log index that contains all the receive events:
        {'RX_ALL': ['RX_OFDM', 'RX_DSSS']}
    as long as the names 'RX_ALL', 'RX_OFDM', and 'RX_DSSS' are valid
    WlanExpLogEntryTypes.

    The filter follows the following basic rules:
        1) Every requested output (either through 'include_only' or 'merge')
             has a key in the output dictionary
        2) All input and output keys must refer to the 'name' property of
             valid WlanExpLogEntryType instances

    For example, assume:
      - 'A', 'B', 'C', 'D', 'M' are valid WlanExpLogEntryType instance names
      - The log_index = {'A': [A0, A1, A2], 'B': [B0, B1], 'C': []}

    'include_only' behavior:

        x = filter_log_index(log_index, include_only=['A'])
        x == {'A': [A0, A1, A2]}

        x = filter_log_index(log_index, include_only=['A',B'])
        x == {'A': [A0, A1, A2], 'B': [B0, B1]}

        x = filter_log_index(log_index, include_only=['C'])
        x == {'C': []]}

        x = filter_log_index(log_index, include_only=['D'])
        x == {'D': []]}

    All names specified in 'include_only' are included as part of the
    output dictionary.  It is then up to the consumer to check if the
    number of entries for a given 'name' is zero (ie the list is empty).

    'exclude' behavior:

        x = filter_log_index(log_index, exclude=['B'])
        x == {'A': [A0, A1, A2]}, 'C': []}

        x = filter_log_index(log_index, exclude=['D'])
        WARNING:  D does not exist in log index.  Ignoring for exclude.
        x == {'A': [A0, A1, A2]}, 'B': [B0, B1], 'C': []}

    All names specified in 'exclude' are removed from the output dictionary.
    However, there is no guarentee what other WlanExpLogEntryTypes are in
    the output dictionary.  That depends on the entries in the input log index.

    'merge' behavior:

        x = filter_log_index(log_index, merge={'D': ['A', 'B']}
        x == {'A': [A0, A1, A2],
              'B': [B0, B1],
              'C': [],
              'D': [A0, A1, A2, B0, B1]}

        x = filter_log_index(log_index, merge={'M': ['C', 'D']}
        x == {'A': [A0,A1,A2]},
              'B': [B0,B1],
              'C': [],
              'M': []}

    All names specified in the 'merge' are included as part of the output
    dictionary.  It is then up to the consumer to check if the number of
    entries for a given 'name' is zero (ie the list is empty).

    Combined behavior:

        x = filter_log_index(log_index, include_only=['M'], merge={'M': ['A','C']}
        x == {'M': [A0, A1, A2]}

        x = filter_log_index(log_index, include_only=['M'], merge={'M': ['A','D']}
        WARNING:  D does not exist in log index.  Ignoring for merge.
        x == {'M': [A0, A1, A2]}

        x = filter_log_index(log_index, include_only=['M'], merge={'M': ['C','D']}
        WARNING:  D does not exist in log index.  Ignoring for merge.
        x == {'M': []}
    """
    from .entry_types import log_entry_types

    ret_log_index = {}
    summary       = "-" * 50 + "\n"
    summary      += "Log Index Filter Summary:\n"

    if (include_only is not None) and (type(include_only) is not list):
        raise TypeError("Parameter 'include' must be a list.\n")

    if (exclude is not None) and (type(exclude) is not list):
        raise TypeError("Parameter 'exclude' must be a list.\n")

    if (merge is not None) and (type(merge) is not dict):
        raise TypeError("Parameter 'merge' must be a dictionary.\n")

    # Copy the log_index to initially populate the return log index
    ret_log_index = dict(log_index)

    # Filter the log_index

    # Create any new log indexes through the merge dictionary
    if merge is not None:
        summary  += "\nMERGE:"
        
        # For each new merged index output
        for k in merge.keys():
            new_index = []
            merge_tmp = ""

            for v in merge[k]:
                # Try to merge indexes.  ret_log_index could have keys of either
                # type <int> or type <WlanExpLogEntryType>.  Also, the value of
                # v in the merge list could be either a <str> or <int>.  Therefore,
                # we need to try both cases before we ignore the item in the list
                # since <str> hashes to the appropriate <WlanExpLogEntryType> but
                # <int> does not.
                index = []            
            
                try:
                    index      = ret_log_index[v]
                    merge_tmp += "        {0} ({1} entries)\n".format(log_entry_types[v], len(index))
                except KeyError:
                    try:
                        index      = ret_log_index[log_entry_types[v].entry_type_id]
                        merge_tmp += "        {0} ({1} entries)\n".format(log_entry_types[v], len(index))
                    except KeyError:
                        merge_tmp += "        {0} had no entries in log index.  Ignored for merge.\n".format(v)

                new_index += index


            # If this merge is going to replace one of the entry types in the current
            # index, then we need to delete the previous entry.  This is necessary
            # because at this point, we have a mixture of keys, some are entry type 
            # ids and some are log entry types.
            try:
                del ret_log_index[log_entry_types[k].entry_type_id]
            except KeyError:
                pass

            # Add the new merged index lists to the output dictionary
            # Use the type instance corresponding to the user-supplied string as the key
            ret_log_index[log_entry_types[k]] = sorted(new_index)

            summary += "\n    {0} ({1} entries) contains:\n".format(log_entry_types[k], len(new_index))                
            summary += merge_tmp

    # Filter the resulting log index by 'include' / 'exclude' lists
    if include_only is not None:
        summary += "\nINCLUDE ONLY:\n"
        
        new_log_index = {}

        for entry_name in include_only:
            try:
                new_log_index[log_entry_types[entry_name]] = []

                for k in ret_log_index.keys():
                    # Need to handle the case when the keys are <int> vs <WlanExpLogEntryType>
                    if (type(k) is int) or (type(k) is long):
                        if k == log_entry_types[entry_name].entry_type_id:
                            new_log_index[log_entry_types[entry_name]] = ret_log_index[k]
                    else:
                        if k == entry_name:
                            new_log_index[k] = ret_log_index[k]

                summary += "    {0} added to output.\n".format(log_entry_types[entry_name])
            except:
                summary += "    {0} ignored for include.  Could not find entry type with that name.\n".format(entry_name)

        ret_log_index = new_log_index
    else:
        if exclude is not None:
            summary += "\nEXCLUDE:\n"
            
            for unwanted_key in exclude:
                try:
                    del ret_log_index[unwanted_key]
                    summary += "    {0} removed from index.\n".format(unwanted_key)
                except:
                    summary += "    {0} does not exist in log index.  Ignored for exclude.\n".format(unwanted_key)


    # Translate the keys in the return log index to WlanExpLogEntryType
    new_log_index = {}

    for k in ret_log_index.keys():
        try:
            new_log_index[log_entry_types[k]] = ret_log_index[k]
        except KeyError as err:
            msg  = "Issue generating log_index:\n"
            msg += "    Could not find entry type with name:  {0}".format(err)
            raise AttributeError(msg)

    ret_log_index = new_log_index

    if verbose:
        summary += "-" * 50 + "\n"
        print(summary)

    return ret_log_index

# End filter_log_index()


def log_data_to_np_arrays(log_data, log_index):
    """Generate numpy structured arrays using log_data and a log_index."""
    entries_nd = dict()

    for k in log_index.keys():
        # Build a structured array with one element for each byte range enumerated above
        # Store each array in a dictionary indexed by the log entry type
        entries_nd[k] = k.generate_numpy_array(log_data, log_index[k])

    return entries_nd

# End log_data_to_np_arrays()



#-----------------------------------------------------------------------------
# WLAN Exp Log Misc Utilities
#-----------------------------------------------------------------------------
def merge_log_indexes(dest_index, src_index, offset):
    """Merge log indexes.

    Attributes:
        dest_index      -- Destination index to merge src_index into
        src_index       -- Source index to merge into destination index
        offset          -- Offset of src_index into dest_index

    NOTE:  Both the dest_index and src_index have log entry offsets that are
    relative to the beginning of the log data from which they were generated.
    If the log data used to generate the log indexes are being merged, then
    we need to move the log entry offsets in the src_index to their absolute
    offset in the merged log index.  For each of the log entry offsets in
    the src_index, the following translation will occur:

      <Offset in merged log index> = <Offset in src_index> + offset

    """
    return_val = dest_index

    for key in src_index.keys():
        new_offsets = [x + offset for x in src_index[key]]

        try:
            return_val[key].append(new_offsets)
        except KeyError:
            return_val[key] = new_offsets

    return return_val

# End merge_raw_log_indexes()



def calc_next_entry_offset(log_data, raw_log_index):
    """Calculates the offset of the next log entry given the log data and
    the raw log index.

    Attributes:
        log_data        -- Binary WLAN Exp log data to append
        raw_log_index   -- Raw log index of the log data

    Returns:
        offset of next log entry

    NOTE:  The log data does not necessarily end on a log entry boundary.
    Therefore, it is necessary to be able to calculate the offset of the
    next log entry so that it is possible to continue index generation
    when reading the log in multiple pieces.
    """
    # See documentation above on header format
    hdr_size             = 8

    max_entry_offset_key = max(raw_log_index, key=raw_log_index.get)
    max_entry_offset     = raw_log_index[max_entry_offset_key][-1]

    hdr_b = log_data[max_entry_offset - hdr_size : max_entry_offset]

    if( (bytearray(hdr_b[2:4]) != b'\xed\xac') ):
        raise Exception("ERROR: Offset not a valid entry header (offset {0})!".format(max_entry_offset))

    entry_size = (hdr_b[6] + (hdr_b[7] * 256))

    next_entry_header_offset = max_entry_offset + entry_size
    next_entry_offset        = next_entry_header_offset + hdr_size

    return next_entry_offset

# End calc_next_entry_offset()



def overwrite_entries_with_null_entry(log_data, byte_offsets):
    """Overwrite the entries in byte_offsets with NULL entries."""
    # See documentation above on header format
    hdr_size         = 8

    for offset in byte_offsets:
        hdr_b = log_data[offset - hdr_size : offset]

        if( (bytearray(hdr_b[2:4]) != b'\xed\xac') ):
            raise Exception("ERROR: Offset not a valid entry header (offset {0})!".format(offset))

        hdr_b[4:6] = bytearray([0] * 2)
        entry_size = (hdr_b[6] + (hdr_b[7] * 256))

        # Write over the log entry with zeros
        log_data[offset : offset + entry_size] = bytearray([0] * entry_size)

# End overwrite_entries_with_null_entry()



def overwrite_payloads(log_data, byte_offsets, payload_offsets=None):
    """Overwrite any payloads with zeros.

    Attributes:
        log_data        -- Binary log data to be modified
        byte_offsets    -- Offsets in the log data that need to be modified
        payload_offsets -- Dictionary of { entry_type_id : <payload offset> }

    By default, if payload_offsets is not specified, the method will iterate through all
    the entry types and calculate the defined size of the entry (ie it will use calcsize
    on the struct format of the entry).  Sometimes, this is not the desired behavior
    and calling code woudl want to specify a different amount of the payload to keep.
    For example, for data transmissions / receptions, it might be desired to also keep
    the SNAP headers and potentially the IP headers.  In this case, the calling code
    would get the appropriate set of byte_offsets and then create a payload_offsets
    dictionary with the desired "size" of the entry for those byte_offsets.  This will
    result in the calling code potentially calling this function multiple times with
    different payload_offsets for a given entry_type_id.

    NOTE:  This method relies on the fact that for variable length log entries, the
    variable length data, ie the payload, is always at the end of the entry.  We also
    know, based on the entry type, the size of the entry without the payload.  Therefore,
    from the entry header, we can determine how many payload bytes are after the defined
    fields and zero them out.
    """
    import struct
    from entry_types import log_entry_types

    # See documentation above on header format
    hdr_size         = 8


    if payload_offsets is None:
        payload_offsets  = {}

        # Create temp data structure:  { entry_type_id : <payload offset>}
        for entry_type_id, entry_type in log_entry_types.items():
            payload_offsets[entry_type_id] = struct.calcsize(entry_type.fields_fmt_struct)


    for offset in byte_offsets:
        hdr_b = log_data[offset - hdr_size : offset]

        if( (bytearray(hdr_b[2:4]) != b'\xed\xac') ):
            raise Exception("ERROR: Offset not a valid entry header (offset {0})!".format(offset))

        entry_type_id = (hdr_b[4] + (hdr_b[5] * 256))
        entry_size    = (hdr_b[6] + (hdr_b[7] * 256))

        try:
            len_offset  = payload_offsets[entry_type_id]

            # Write over the log entry payload with zeros
            if entry_size > len_offset:
                log_data[offset + len_offset : offset + entry_size] = bytearray([0] * (entry_size - len_offset))

        except KeyError:
            print("WARNING:  Unknown entry type id {0} at offset {1}".format(entry_type_id, offset))

# End overwrite_payloads()


def calc_tx_time(rate, payload_length):
    """Calculates the duration of an 802.11 transmission given its rate and payload length.
    This method accounts only for PHY overhead (preamble, SIGNAL field, etc.). It does *not*
    account for MAC overhead. The payload_length argument must include any MAC fields
    (typically a 24-byte MAC header plus 4 byte FCS).

    # TODO: The vector case needs safety checkts (i.e., both rate and payload_length need to
    be the same length)
    """
    from wlan_exp.util import wlan_rates

    #Times in microseconds
    T_PREAMBLE = 16
    T_SIG = 4
    T_SYM = 4
    T_EXT = 6

    try:
        r = np.array([wlan_rates[i]['NDBPS'] for i in (rate-1).tolist()])
    except TypeError :
        r = wlan_rates[rate-1]['NDBPS']

    #Rate entry encodes data bits per symbol
    bytes_per_sym = (r/8.0)

    #6 = LEN_SERVICE (2) + LEN_FCS (4)
    num_syms = np.ceil((6.0 + payload_length) / bytes_per_sym)

    T_TOT = T_PREAMBLE + T_SIG + T_SYM*num_syms + T_EXT

    return T_TOT

# End def


def find_overlapping_tx_low(src_tx_low, int_tx_low):
    """Finds TX_LOW entries in the source that are overlapped by the TX_LOW entries in other flow."""

    import wlan_exp.log.coll_util as collision_utility

    src_ts = src_tx_low['timestamp']
    int_ts = int_tx_low['timestamp']

    src_dur = np.uint64(calc_tx_time(src_tx_low['rate'], src_tx_low['length']))
    int_dur = np.uint64(calc_tx_time(int_tx_low['rate'], int_tx_low['length']))

    src_idx = []
    int_idx = []

    src_idx, int_idx = collision_utility._collision_idx_finder(src_ts, src_dur, int_ts, int_dur)

    src_idx = src_idx[src_idx>0]
    int_idx = int_idx[int_idx>0]

    return (src_idx,int_idx)

# End def



#-----------------------------------------------------------------------------
# WLAN Exp Log Printing Utilities
#-----------------------------------------------------------------------------
def print_log_index_summary(log_index, title=None):
    """Prints a summary of the log_index."""
    total_len = 0

    if title is None:
        print('Log Index Summary:\n')
    else:
        print(title)

    for k in sorted(log_index.keys()):
        print('{0:>10,} of Type {1}'.format(len(log_index[k]), k))
        total_len += len(log_index[k])

    print('--------------------------')
    print('{0:>10,} total entries\n'.format(total_len))

# End log_index_print_summary()


def _print_log_entries(log_bytes, log_index, entries_slice=None):
    """Work in progress - built for debugging address issues, some variant of this will be useful
    for creating text version of raw log w/out requiring numpy"""

    from itertools import chain
    from entry_types import log_entry_types
    hdr_size = 8

    if(entries_slice is not None) and (type(entries_slice) is slice):
        log_slice = entries_slice
    else:
        #Use entire log index by default
        tot_entries = sum(map(len(log_index.values())))
        log_slice = slice(0, tot_entries)

    #Create flat list of all byte offsets in log_index, sorted by offset
    # See http://stackoverflow.com/questions/18642428/concatenate-an-arbitrary-number-of-lists-in-a-function-in-python
    log_index_flat = sorted(chain.from_iterable(log_index.values()))

    for ii,entry_offset in enumerate(log_index_flat[log_slice]):

        #Look backwards for the log entry header and extract the entry type ID and size
        hdr_b = log_bytes[entry_offset-hdr_size:entry_offset]
        entry_type_id = (ord(hdr_b[4]) + (ord(hdr_b[5]) * 256))
        entry_size = (ord(hdr_b[6]) + (ord(hdr_b[7]) * 256))

        #Lookup the corresponding entry object instance (KeyError here indicates corrupt log or index)
        entry_type = log_entry_types[entry_type_id]

        #Use the entry_type's class method to string-ify itself
        print(entry_type._entry_as_string(log_bytes[entry_offset : entry_offset+entry_size]))

# End print_log_entries()


def _get_safe_filename(filename, print_warnings=True):
    """Create a 'safe' file name based on the current file name.

    Given the filename <path>/<name>.<ext>, this method first checks if the
    file already exists. If so, a new name is calculated with the form:
    <path>/<name>_<date>_<id>.<ext>, where <date> is a formatted
    string from time and <id> is a unique ID starting at zero if more
    than one file is created in a given second. If the requested filename
    did not already exist, the name is returned unchanged.

    This method is only suitable in environments where it can
    safely assumed that no conflicting files will be created in between the
    os.path.isfile() calls below and the use of the returned safe filename.
    """
    import os
    import time

    if os.path.isfile(filename):
        # Already know it's a file, so fn_file is not ''
        (fn_fldr, fn_file) = os.path.split(filename)

        # Find the last '.' in the file name and classify everything after that as the <ext>
        ext_i = fn_file.rfind('.')
        if (ext_i != -1):
            # Remember the original file extension
            fn_ext  = fn_file[ext_i:]
            fn_base = fn_file[0:ext_i]
        else:
            fn_ext  = ''
            fn_base = fn_file

        # Create a new filename
        i = 0
        while True:
            ext           = '_{0}_{1:02d}'.format(time.strftime("%Y%m%d_%H%M%S"), i)
            new_filename  = fn_base + ext + fn_ext
            safe_filename = os.path.join(fn_fldr, new_filename)
            i            += 1

            # Break the loop if we found a unique file name
            if not os.path.isfile(safe_filename):
                if print_warnings:
                    msg  = 'WARNING: File "{0}" already exists.\n'.format(filename)
                    msg += '    Using replacement file name "{0}"'.format(safe_filename)
                    print(msg)
                break
    else:
        # File didn't exist - use name as provided
        safe_filename = filename

    return safe_filename

# End _get_safe_filename()


