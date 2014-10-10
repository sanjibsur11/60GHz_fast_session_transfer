addpath('./util');
addpath('./mcode_blocks');

wifi_permute_calc
PLCP_Preamble = PLCP_Preamble_gen;

%Decimation-by-2 filter
hb_filt2 = zeros(1,43);
hb_filt2([1 3 5 7 9 11 13 15 17 19 21]) = [12 -32 72 -140 252 -422 682 -1086 1778 -3284 10364];
hb_filt2([23 25 27 29 31 33 35 37 39 41 43]) = hb_filt2(fliplr([1 3 5 7 9 11 13 15 17 19 21]));
hb_filt2(22) = 16384;
hb_filt2 = hb_filt2./32768;


%%
MAX_NUM_BYTES = 4096;
MAX_NUM_SC = 64;
MAX_CP_LEN = 32;
MAX_NUM_SAMPS = 50e3;
MAX_NUM_SYMS = 600;
PHY_CONFIG_NUM_SC = 64;
PHY_CONFIG_CP_LEN = 16;
PHY_CONFIG_FFT_SCALING = bin2dec('101010');
PHY_TX_ACTIVE_EXTENSION = 120;


%Payload for simulation
%Tx_Payload = [1:24];
Tx_Payload = [1:72];%+24 simulates MAC header
Tx_Payload = mod(Tx_Payload, 256); %total bytes in pkt will be len(Tx_Payload)+3+2+4 (SIGNAL, SERVICE, FCS)

Tx_Payload_len = length(Tx_Payload) + 4; %LENGTH incldues FCS

%Pad to multiple of 4
Tx_Payload = [Tx_Payload zeros(1,-mod(Tx_Payload_len, -4))];
Tx_Payload4 = reshape(Tx_Payload, 4, ceil(Tx_Payload_len/4)-1);
Tx_Payload_words = sum(Tx_Payload4 .* repmat(2.^[0:8:24]', 1, size(Tx_Payload4,2)));

payload_words = zeros(1, MAX_NUM_BYTES/4);

%payload_words(1) = tx_signal_calc(Tx_Payload_len, 1, 0); %BPSK 1/2
%payload_words(1) = tx_signal_calc(Tx_Payload_len, 2, 0); %QPSK 1/2
%payload_words(1) = tx_signal_calc(Tx_Payload_len, 2, 1); %QPSK 3/4
%payload_words(1) = tx_signal_calc(Tx_Payload_len, 4, 0); %16QAM 1/2
payload_words(1) = tx_signal_calc(Tx_Payload_len, 4, 1); %16QAM 3/4
%payload_words(1) = tx_signal_calc(Tx_Payload_len, 6, 0); %64QAM 2/3
%payload_words(1) = tx_signal_calc(Tx_Payload_len, 6, 1); %64QAM 3/4

payload_words(2) = 0; %SERVICE is always 0
payload_words(2+[1:length(Tx_Payload_words)]) = Tx_Payload_words;

TX_SIGNAL_INIT_VALUE = sum([0 16 10] .* 2.^[16 8 0]);

%FFT Ctrl config
n_bits_preFFT_sampBuff = ceil(log2(4*MAX_NUM_SC));

%Training symbol ROM
train_sym_f = sign(PLCP_Preamble.LTS_f);

Preamble_IQ = PLCP_Preamble.Preamble_t;
%Preamble_IQ(end) = +1;%HACK for testing preamble->payload transition


%Data-bearing subcarrier map
sc_ind_data = [2:7 9:21 23:27 39:43 45:57 59:64];
sc_data_map = zeros(1,64);
sc_data_map(sc_ind_data) = 1;
sc_data_sym_map = MAX_NUM_SC*ones(1,64);
sc_data_sym_map(sc_ind_data) = fftshift(0:47);

%Register init
PHY_TX_RF_EN_EXTENSION = 50;

REG_Tx_Timing = ...
    2^0  * (PHY_TX_ACTIVE_EXTENSION) + ... %b[7:0]
    2^8  * (PHY_TX_RF_EN_EXTENSION) + ... %b[15:8]
    0;

REG_TX_FFT_Config = ...
    2^0  * (PHY_CONFIG_NUM_SC) +...  %b[7:0]
    2^8  * (PHY_CONFIG_CP_LEN) +...  %b[15:8]
    2^24 * (PHY_CONFIG_FFT_SCALING) + ... b[29:24]
    0;

REG_TX_Config = ...
    2^0  * 1 + ... %Force RxEN to radio_controller
    2^1  * 0 + ... %Reset scrambler per pkt
    2^2  * 1 + ... %Enable Tx on RF A
    2^3  * 0 + ... %Enable Tx on RF B
    2^4  * 0 + ... %Enable Tx on RF C
    2^5  * 0 + ... %Enable Tx on RF D
    2^6  * 1 + ... %Use ant mask from MAC hw port
    2^8  * 2 + ... %Max pkt length (SIGNAL.LENGTH max) in kB (UFix4_0)
    0;

REG_TX_PKT_BUF_SEL = ...
    2^0  * 0  + ... %b[3:0] pkt buf index
    2^4  * 32 + ... %b[9:4] timestamp insert start byte
    2^10 * 31 + ... %b[15:10] timestamp insert end byte
    2^16 * 0  + ... %b[23:16] pkt buf address offset
    0;

REG_TX_Output_Scaling = (2^0 * 2^12) + (2^16 * 2^12); %UFix16_12 values

%%
bit_scrambler_lfsr = ones(1,7);
bit_scrambler_lfsr_states = zeros(127, 7);
scr = zeros(1,127);
for ii=1:127
    bit_scrambler_lfsr_states(ii, :) = bit_scrambler_lfsr;

    x = xor(bit_scrambler_lfsr(4), bit_scrambler_lfsr(7));
    bit_scrambler_lfsr = [x bit_scrambler_lfsr(1:6)];

    scr(ii) = x;
end
bit_scrambler_lfsr_bytes = bi2de(reshape(repmat(scr, 1, 8), 8, 127)', 'left-msb');
%%

scr = [scr scr(1:10)];
scr_ind_rev = zeros(1,128);
for ii=1:127
%    scr_ind(ii) = bi2de(scr(ii:ii+6));
    scr_ind_rev(1 + bi2de(scr(ii:ii+6))) = ii - 1;
end
clear scr x bit_scrambler_lfsr ii

%% Cyclic Redundancy Check parameters
CRCPolynomial32 = hex2dec('04c11db7'); %CRC-32
CRC_Table32 = CRC_table_gen(CRCPolynomial32, 32);

%% Constellation params

Mod_Constellation_BPSK(1) = -1 * 0.95; %Scale down from spec to avoid overflow in FFT
Mod_Constellation_BPSK(2) =  1 * 0.95; %Scale down from spec to avoid overflow in FFT

Mod_Constellation_QPSK(1) = -1/sqrt(2);
Mod_Constellation_QPSK(2) =  1/sqrt(2);

Mod_Constellation_16QAM(1) = -3/sqrt(10);
Mod_Constellation_16QAM(2) = -1/sqrt(10);
Mod_Constellation_16QAM(3) =  3/sqrt(10);
Mod_Constellation_16QAM(4) =  1/sqrt(10);

Mod_Constellation_64QAM(1) = -7/sqrt(42);
Mod_Constellation_64QAM(2) = -5/sqrt(42);
Mod_Constellation_64QAM(3) = -1/sqrt(42);
Mod_Constellation_64QAM(4) = -3/sqrt(42);
Mod_Constellation_64QAM(5) =  7/sqrt(42);
Mod_Constellation_64QAM(6) =  5/sqrt(42);
Mod_Constellation_64QAM(7) =  1/sqrt(42);
Mod_Constellation_64QAM(8) =  3/sqrt(42);

interleave_64QAM_addr = interleave_64QAM + 2*floor(interleave_64QAM/6);
