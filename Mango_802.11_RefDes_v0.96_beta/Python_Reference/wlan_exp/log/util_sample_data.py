
_SAMPLE_DATA_DIR = 'sample_data'

_URL_ROOT = 'http://warpproject.org/dl/refdes/802.11/sample_data/0.95/'

_FILES_TO_DL = [
    'raw_log_dual_flow_ap.hdf5',
    'raw_log_dual_flow_sta.hdf5',
    'raw_log_one_flow.hdf5',
    'np_rx_ofdm_entries.hdf5',
]

def get_sample_data_dir():
    import os

    #Find wlan_exp.log directory using this module's location as a reference
    sd_parent = os.path.split(os.path.abspath(__file__))[0]

    #Construct the full path to the sample_data directory
    sd_path = os.path.join(sd_parent, _SAMPLE_DATA_DIR)
#    print("{0} {1}".format(sd_parent, sd_path))

    #Only return successfully if the directory already exists
    if(os.path.isdir(sd_path)):
        return sd_path
    else:
        raise Exception("ERROR: Sample data directory not found in wlan_exp.log package!\n")

def download_sample_data():
    import os, sys

    sample_data_dir = get_sample_data_dir()

    try:
        import requests
    except ImportError:
        print("\nERROR: auto download requires the Python requests package!\n")
        print(" Please download sample data files manually from:")
        print("   http://warpproject.org/w/802.11/wlan_exp/sample_data\n")
        print(" Sample data files should be saved in local folder:")
        print("   {0}".format(os.path.normpath(sample_data_dir)))
        return



    print("Downloading 802.11 Reference Design sample data to local directory:")
    print(" {0}\n".format(os.path.normpath(sample_data_dir)))


    #Progress indicator based on great StackOverflow posts:
    #http://stackoverflow.com/questions/15644964/python-progress-bar-and-downloads

    for ii,fn in enumerate(_FILES_TO_DL):
        fn_full = os.path.join(sample_data_dir, fn)

        if(os.path.isfile(fn_full)):
            print("\rERROR: Local file {0} already exists".format(fn_full))
        else:
            r = requests.get(_URL_ROOT + fn, stream=True)
            len_total = r.headers.get('content-length')

            if(r.status_code != 200):
                print("\rERROR: Failed to download {0}; HTTP status {1}".format(_URL_ROOT + fn, r.status_code))
            else:
                with open(fn_full, "wb") as f:
                    if len_total is None: # no content length header
                        f.write(r.content)
                    else:
                        print("Downloading {0} ({1:5.2f} MB)".format(fn, float(len_total)/2**20))
                        len_done = 0
                        len_total = int(len_total)
                        for data_chunk in r.iter_content(chunk_size=2**17):
                            len_done += len(data_chunk)
                            f.write(data_chunk)
                            done = int(70 * len_done / len_total)
                            sys.stdout.write("\r[%s%s]" % ('=' * done, ' ' * (70-done)) )
                            sys.stdout.flush()
                        print('\r')

def get_sample_data_file(filename):
    import os

    sample_data_dir = get_sample_data_dir()

    file_path = os.path.join(sample_data_dir, filename)

    if(os.path.isfile(file_path)):
        return file_path
    else:
        msg  = "ERROR: sample data file {0} not found in local sample data directory!\n".format(filename)
        msg += "  Please ensure that sample data has been downloaded.  Instructions at:\n"
        msg += "      https://warpproject.org/trac/wiki/802.11/wlan_exp/sample_data"
        raise Exception(msg)

