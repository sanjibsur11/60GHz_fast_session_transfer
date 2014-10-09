//********************************************************************************************
// File:    fec_decoder
// Author:  Yang Sun (ysun@rice.edu)
// Birth:   $ 4/26/07
// Des:     This module integreated a Viterbi decoder
// History: $ 04/26/07: Init coding for QPSK CC coding
//          $ 11/25/07: Updated for uncodede system
//          $ 04/16/08: Added 16-QAM support
//          $ 09/27/08: Added dec-puncture  
//          $ 09/27/08: Added dec-puncture 
//          $ 10/11/08, Added uncodeded and BPSK
//          $ 10/10/10, OFDM reference design v15.0
//********************************************************************************************
module fec_decoder_top (
        clk         , // I, clock
        ce          , // I, clock enable
        nrst        , // I, n reset 
        fec_reg     , // I, controll register
        start       , // I, packet start pulse
        vin         , // I, data valid input
        xk_index    , // I, FFT index
        mod_level   , // I, 0=Invalid, 1=BPSK, 2=QPSK, 4=16-QAM
        rx_i        , // I, RX I 
        rx_q        , // I, RX Q
        rx_we       , // O, buffer write enable
        rx_addr     , // O, buffer write address 
        rx_data     , // O, buffer write data
        rx_done     , // O, RX done pulse
        rx_we_2     , // O, buffer write enable in clk/2 domain
        rx_addr_2   , // O, buffer write address in clk/2 domain
        rx_data_2   , // O, buffer write data in clk/2 domain
        rx_done_2     // O, RX done pulse in clk/2 domain
        ) ;
        
input           clk ;
input           ce ;
input           nrst ;
input   [31:0]  fec_reg ;
input           start ;
input           vin ;
input   [5:0]   xk_index ;
input   [3:0]   mod_level ;     
input   [15:0]  rx_i ;
input   [15:0]  rx_q ;
output          rx_we ;
output  [13:0]  rx_addr ;
output  [7:0]   rx_data ;
output          rx_done ;
output          rx_we_2 ;
output  [13:0]  rx_addr_2 ;
output  [7:0]   rx_data_2 ;
output          rx_done_2 ;

//==============================
//Internal signal
//==============================
wire            sym_start ;
wire    [3:0]   llr_a ;
wire    [3:0]   llr_b ;
wire            dec_vout ;

wire    [7:0]   dec_dout ;

wire    [13:0]  nbyte ;
wire    [13:0]  byte_cnt ;
wire            rx_packet_done ;
reg             rx_packet_done_s0 ;
reg             rx_packet_done_s1 ;

wire            demapper_vld ;
wire            coding_en ;
wire            zero_tail ;
wire            soft_decoding ;
wire    [3:0]   scale_qpsk ;
wire    [4:0]   scale_16qam ;

wire            depunct_dav ;
wire    [7:0]   iq_data ;
wire    [7:0]   iq_data_buf ;
wire            llr_buf_empty ;
wire            buf_full ;
wire    [3:0]   llr_i_depunc ;
wire    [3:0]   llr_q_depunc ;
wire            llr_valid ;
wire            llr_buf_rd ;

wire            ack_pkt ;

wire    [1:0]   cc_rate ;

reg     [23:0]  timeout_reg ;
reg             in_dec ;
wire            timeout ;
reg             timeout_s1 ;
wire            timeout_pls ;
wire            depunt_buf_rd ;
wire            in_fullrate ;
wire            unc_buf_rd ;
wire            data_coded ;
wire    [3:0]   hdr_mod_level ;

wire            we_1x ;
wire    [7:0]   data_1x ;

wire            we_down2 ;
wire    [7:0]   data_down2 ;
wire    [13:0]  addr_down2 ;
reg             rx_done_d ;
wire            rx_done_i ;
reg     [15:0]   rx_done_dly ;

//=========================================
// Main body of code
//=========================================
assign rx_done = (rx_packet_done_s0 & ~rx_packet_done_s1) | timeout_pls ;
assign rx_addr = byte_cnt ;
assign rx_data = dec_dout ;
assign rx_we = dec_vout & ~rx_packet_done ;

assign rx_addr_2 = addr_down2 ;
assign rx_we_2 = we_down2 ;
assign rx_data_2 = data_down2 ;
assign rx_done_2 = rx_done_dly[15] ;


assign we_1x = dec_vout & ~rx_packet_done ;
assign data_1x = dec_dout ;

assign coding_en = fec_reg [0] ;
assign soft_decoding = fec_reg [1] ;
assign zero_tail = fec_reg [2] ;
assign scale_qpsk = fec_reg [7:4] ;
assign scale_16qam = fec_reg [12:8] ;


always @(posedge clk or negedge nrst)
  if(~nrst)
    rx_done_d <= 1'b0 ;
  else
    rx_done_d <= rx_done ;

assign rx_done_i = rx_done | rx_done_d ;

always @(posedge clk or negedge nrst)
  if(~nrst)
    rx_done_dly <= 0 ;
  else
    rx_done_dly <= {rx_done_dly[14:0], rx_done_i} ;

//==============================
// soft_demapper
//==============================
soft_demapper soft_demapper (
        .clk            (clk            ), 
        .nrst           (nrst           ),
        .start          (start          ), 
        .coding_en      (coding_en      ),
        .vin            (vin            ), 
        .xk_index       (xk_index       ), 
        .mod_level      (mod_level      ),
        .rx_i           (rx_i           ), 
        .rx_q           (rx_q           ),
        .scale_qpsk     (scale_qpsk     ),
        .scale_16qam    (scale_16qam    ),
        .in_fullrate    (in_fullrate    ),
        .sym_start      (sym_start      ),
        .hdr_mod_level  (hdr_mod_level  ),
        .vout           (demapper_vld   ),
        .soft_decoding  (soft_decoding  ),
        .llr_a          (llr_a          ), 
        .llr_b          (llr_b          ) 
        ) ;

assign iq_data = {llr_a, llr_b} ;
assign llr_buf_rd = (in_fullrate & ~data_coded) ? unc_buf_rd : depunt_buf_rd ;

//==============================
// LLR buffer
//==============================
llr_buffer llr_buffer (
        .clk    (clk            ),  
        .nrst   (nrst           ),  
        .reset  (start          ),  
        .din    (iq_data        ),  
        .dout   (iq_data_buf    ),  
        .wr     (demapper_vld   ),  
        .rd     (llr_buf_rd     ),  
        .empty  (llr_buf_empty  ),  
        .full   (buf_full       )   
        ) ;

assign depunct_dav = ~llr_buf_empty ;
//==============================
// depuncture
//==============================
depunc depunc (
        .clk        (clk            ), 
        .nrst       (nrst           ), 
        .start      (start          ), 
        .dav        (depunct_dav    ), 
        .rate       (cc_rate        ), 
        .din        (iq_data_buf    ), 
        .vout       (llr_valid      ), 
        .dout_a     (llr_i_depunc   ), 
        .dout_b     (llr_q_depunc   ), 
        .buf_rd     (depunt_buf_rd  )  
        ) ;

//==============================
// decoder_system
//==============================
decoder_system decoder_system (
        .clk            (clk            ),  // I, clock
        .nrst           (nrst           ),  // I, n reset
        .start          (start          ),  // I, start pulse
        .in_dec         (in_dec         ),
        .coding_en      (coding_en      ),
        .zero_tail      (zero_tail      ),
        .sym_start      (sym_start      ),  // I, sym start
        .hdr_mod_level  (hdr_mod_level  ),
        .unc_buf_rd     (unc_buf_rd     ),  // I, LLR buffer read by unc
        .vin            (llr_valid      ),  // I, data valid input
        .llr_buf_empty  (llr_buf_empty  ),  // I, LLR buffer empty
        .llr_a          (llr_i_depunc   ),  // I, LLR I channel
        .llr_b          (llr_q_depunc   ),  // I, LLR Q channel
        .vout           (dec_vout       ),  // O, data valid output
        .dout           (dec_dout       ),  // O, byte data output
        .nbyte          (nbyte          ),  // O, num of bytes
        .byte_cnt       (byte_cnt       ),  // O, byte cnt
        .cc_rate        (cc_rate        ),  // O, code rate
        .data_coded     (data_coded     ),  // O, coded system
        .in_fullrate    (in_fullrate    )   // O, in full rate
        ) ;

out_ctrl out_ctrl (
        .clk        (clk        ),
        .nrst       (nrst       ),
        .start      (start      ),
        .vin        (we_1x      ),
        .din        (data_1x    ),
        .vout       (we_down2   ),
        .dout       (data_down2 ),
        .idx_out    (addr_down2 )
    ) ;



assign rx_packet_done = byte_cnt >= nbyte ;
always @ (posedge clk or negedge nrst)
  if (~nrst)
  begin
    rx_packet_done_s0 <= 1'b0 ;
    rx_packet_done_s1 <= 1'b0 ;    
  end
  else
  begin
    rx_packet_done_s0 <= rx_packet_done ;
    rx_packet_done_s1 <= rx_packet_done_s0 ;
  end
  

assign ack_pkt = (nbyte == 24) ;

always @(posedge clk or negedge nrst)
  if (~nrst)
    in_dec <= 1'b0 ;
  else if (start)
    in_dec <= 1'b1 ;
  else if (rx_done)
    in_dec <= 1'b0 ;

assign timeout = timeout_reg == 24'h40000 ;
always @(posedge clk or negedge nrst)
  if (~nrst)
    timeout_reg <= 0 ;
  else if (start)
    timeout_reg <= 0 ;
  else if (in_dec)
  begin
    if (~timeout)
      timeout_reg <= timeout_reg +1 ;
  end    
  
assign timeout_pls = ~timeout_s1 & timeout ;
always @(posedge clk or negedge nrst)
  if (~nrst)
    timeout_s1 <= 1'b0 ;
  else
    timeout_s1 <= timeout ;  
      
endmodule
