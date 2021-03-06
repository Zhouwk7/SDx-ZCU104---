// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="a0_madd,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu7ev-ffvc1156-2-e,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.454000,HLS_SYN_LAT=1035,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=2,HLS_SYN_FF=482,HLS_SYN_LUT=387,HLS_VERSION=2018_3}" *)

module a0_madd (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        A_dout,
        A_empty_n,
        A_read,
        B_dout,
        B_empty_n,
        B_read,
        C_din,
        C_full_n,
        C_write
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state13 = 3'd4;

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_dout;
input   A_empty_n;
output   A_read;
input  [31:0] B_dout;
input   B_empty_n;
output   B_read;
output  [31:0] C_din;
input   C_full_n;
output   C_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg A_read;
reg B_read;
reg C_write;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    A_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_flatten_reg_90;
reg    B_blk_n;
reg    C_blk_n;
reg    ap_enable_reg_pp0_iter10;
reg   [0:0] exitcond_flatten_reg_90_pp0_iter9_reg;
reg   [10:0] indvar_flatten_reg_63;
wire   [0:0] exitcond_flatten_fu_78_p2;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_state5_pp0_stage0_iter3;
wire    ap_block_state6_pp0_stage0_iter4;
wire    ap_block_state7_pp0_stage0_iter5;
wire    ap_block_state8_pp0_stage0_iter6;
wire    ap_block_state9_pp0_stage0_iter7;
wire    ap_block_state10_pp0_stage0_iter8;
wire    ap_block_state11_pp0_stage0_iter9;
reg    ap_block_state12_pp0_stage0_iter10;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] exitcond_flatten_reg_90_pp0_iter1_reg;
reg   [0:0] exitcond_flatten_reg_90_pp0_iter2_reg;
reg   [0:0] exitcond_flatten_reg_90_pp0_iter3_reg;
reg   [0:0] exitcond_flatten_reg_90_pp0_iter4_reg;
reg   [0:0] exitcond_flatten_reg_90_pp0_iter5_reg;
reg   [0:0] exitcond_flatten_reg_90_pp0_iter6_reg;
reg   [0:0] exitcond_flatten_reg_90_pp0_iter7_reg;
reg   [0:0] exitcond_flatten_reg_90_pp0_iter8_reg;
wire   [10:0] indvar_flatten_next_fu_84_p2;
reg    ap_enable_reg_pp0_iter0;
reg   [31:0] A_read_reg_99;
reg   [31:0] B_read_reg_104;
wire   [31:0] grp_fu_74_p2;
reg   [31:0] tmp_4_reg_109;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_block_pp0_stage0_01001;
reg    grp_fu_74_ce;
wire    ap_CS_fsm_state13;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
end

a0_madd_fadd_32ns_32bkb #(
    .ID( 1 ),
    .NUM_STAGE( 8 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
madd_fadd_32ns_32bkb_U1(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(A_read_reg_99),
    .din1(B_read_reg_104),
    .ce(grp_fu_74_ce),
    .dout(grp_fu_74_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter10 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_fu_78_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        indvar_flatten_reg_63 <= indvar_flatten_next_fu_84_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvar_flatten_reg_63 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_90 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_read_reg_99 <= A_dout;
        B_read_reg_104 <= B_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond_flatten_reg_90 <= exitcond_flatten_fu_78_p2;
        exitcond_flatten_reg_90_pp0_iter1_reg <= exitcond_flatten_reg_90;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        exitcond_flatten_reg_90_pp0_iter2_reg <= exitcond_flatten_reg_90_pp0_iter1_reg;
        exitcond_flatten_reg_90_pp0_iter3_reg <= exitcond_flatten_reg_90_pp0_iter2_reg;
        exitcond_flatten_reg_90_pp0_iter4_reg <= exitcond_flatten_reg_90_pp0_iter3_reg;
        exitcond_flatten_reg_90_pp0_iter5_reg <= exitcond_flatten_reg_90_pp0_iter4_reg;
        exitcond_flatten_reg_90_pp0_iter6_reg <= exitcond_flatten_reg_90_pp0_iter5_reg;
        exitcond_flatten_reg_90_pp0_iter7_reg <= exitcond_flatten_reg_90_pp0_iter6_reg;
        exitcond_flatten_reg_90_pp0_iter8_reg <= exitcond_flatten_reg_90_pp0_iter7_reg;
        exitcond_flatten_reg_90_pp0_iter9_reg <= exitcond_flatten_reg_90_pp0_iter8_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_90_pp0_iter8_reg == 1'd0))) begin
        tmp_4_reg_109 <= grp_fu_74_p2;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_90 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_blk_n = A_empty_n;
    end else begin
        A_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_90 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_read = 1'b1;
    end else begin
        A_read = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_90 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_blk_n = B_empty_n;
    end else begin
        B_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_90 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_read = 1'b1;
    end else begin
        B_read = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_90_pp0_iter9_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        C_blk_n = C_full_n;
    end else begin
        C_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_90_pp0_iter9_reg == 1'd0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        C_write = 1'b1;
    end else begin
        C_write = 1'b0;
    end
end

always @ (*) begin
    if ((exitcond_flatten_fu_78_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_74_ce = 1'b1;
    end else begin
        grp_fu_74_ce = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((exitcond_flatten_fu_78_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter10 == 1'b1) & (ap_enable_reg_pp0_iter9 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter10 == 1'b1) & (ap_enable_reg_pp0_iter9 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((exitcond_flatten_fu_78_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign C_din = tmp_4_reg_109;

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((exitcond_flatten_reg_90_pp0_iter9_reg == 1'd0) & (1'b0 == C_full_n) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((exitcond_flatten_reg_90 == 1'd0) & (1'b0 == B_empty_n)) | ((exitcond_flatten_reg_90 == 1'd0) & (1'b0 == A_empty_n)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((exitcond_flatten_reg_90_pp0_iter9_reg == 1'd0) & (1'b0 == C_full_n) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((exitcond_flatten_reg_90 == 1'd0) & (1'b0 == B_empty_n)) | ((exitcond_flatten_reg_90 == 1'd0) & (1'b0 == A_empty_n)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((exitcond_flatten_reg_90_pp0_iter9_reg == 1'd0) & (1'b0 == C_full_n) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((exitcond_flatten_reg_90 == 1'd0) & (1'b0 == B_empty_n)) | ((exitcond_flatten_reg_90 == 1'd0) & (1'b0 == A_empty_n)))));
end

assign ap_block_state10_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state12_pp0_stage0_iter10 = ((exitcond_flatten_reg_90_pp0_iter9_reg == 1'd0) & (1'b0 == C_full_n));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = (((exitcond_flatten_reg_90 == 1'd0) & (1'b0 == B_empty_n)) | ((exitcond_flatten_reg_90 == 1'd0) & (1'b0 == A_empty_n)));
end

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign exitcond_flatten_fu_78_p2 = ((indvar_flatten_reg_63 == 11'd1024) ? 1'b1 : 1'b0);

assign indvar_flatten_next_fu_84_p2 = (indvar_flatten_reg_63 + 11'd1);

endmodule //a0_madd
