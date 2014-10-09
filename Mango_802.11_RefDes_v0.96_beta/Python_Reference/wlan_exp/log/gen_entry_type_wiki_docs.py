"""
Create wiki documentation from entry types
"""

if __name__ == '__main__':
    from wlan_exp.log.entry_types import log_entry_types as log_entry_types
    
    for tid in log_entry_types.keys():
        if(type(tid) is int and tid != 0):
            print(log_entry_types[tid].generate_entry_doc(fmt='wiki'))

