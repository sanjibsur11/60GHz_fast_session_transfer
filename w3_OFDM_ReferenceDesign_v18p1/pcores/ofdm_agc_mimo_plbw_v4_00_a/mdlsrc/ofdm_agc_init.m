%% Generate a stream of short symbols to test the radio

% Parameters required in the AGC implementation:

G_BB_cal = 62;
RSSI_integral_length = 100;
IQavglen = 8; % MUST be power of 2
longIQavg = 80; % can be anything < 256

% Create the decimation filter

% PID gains (ufix16_14)
dgain = 0.1;
igain = 0.01;
pgain = .3;
int_lag = 100;
vdes = 2; %(ufix8_6)


% Generate the lookup table information

ltbl = 0:2^-10:2;
ltbl = ltbl(2:2049);

% Definition of short symbols:
short_seq_re = zeros (64, 1);   short_seq_im = zeros (64, 1);

short_seq_re(5) = 1.472;        short_seq_im(5) = -1.472;
short_seq_re(9) = -1.472;       short_seq_im(9) = -1.472;
short_seq_re(13) = 1.472;       short_seq_im(13) = -1.472;
short_seq_re(17) = -1.472;      short_seq_im(17) = -1.472;
short_seq_re(21) = -1.472;      short_seq_im(21) = 1.472;
short_seq_re(25) = 1.472;       short_seq_im(25) = 1.472;
short_seq_re(41) = 1.472;       short_seq_im(41) = 1.472;
short_seq_re(45) = -1.472;      short_seq_im(45) = 1.472;
short_seq_re(49) = -1.472;      short_seq_im(49) = -1.472;
short_seq_re(53) = 1.472;       short_seq_im(53) = -1.472;
short_seq_re(57) = -1.472;      short_seq_im(57) = -1.472;
short_seq_re(61) = 1.472;       short_seq_im(61) = -1.472;

time_ss_re = ifft(short_seq_re, 64);
time_ss_im = ifft(short_seq_im, 64);

ss = time_ss_re + j * time_ss_im;

% repeat this sequence numsequences time

% We need four copies of each data sample
% then the board will run at 40 MHz while the
% effective sampling rate is 10 MHz

ssrep = [];
for i = 1 : 16
    ssrep((i-1)*4+1 : (i-1)*4 + 4) = repmat(ss(i), 1, 4);
end

clear short_seq_re short_seq_im time_ss_re time_ss_im m n
