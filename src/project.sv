`ifdef COCOTB_SIM
    `define COCOTB_CODE(name) \
        string __top_module; \
        string __vcd_file; \
        initial begin \
            if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == `"name`" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin \
                $dumpfile (__vcd_file); \
                $dumpvars (0, \name ); \
            end \
        end
`else
    `define COCOTB_CODE(name)
`endif


module \std::cdc::sync2[971]  (
        input clk_i,
        input input_i,
        output output__
    );
    `COCOTB_CODE( std::cdc::sync2[971] )
    logic \clk ;
    assign \clk  = clk_i;
    logic \input ;
    assign \input  = input_i;
    (* src = "<compiler dir>/stdlib/cdc.spade:16,14" *)
    reg \sync1 ;
    (* src = "<compiler dir>/stdlib/cdc.spade:17,14" *)
    reg \sync2 ;
    always @(posedge \clk ) begin
        \sync1  <= \input ;
    end
    always @(posedge \clk ) begin
        \sync2  <= \sync1 ;
    end
    assign output__ = \sync2 ;
endmodule


module \std::cdc::sync2_bool  (
        input clk_i,
        input input_i,
        output output__
    );
    `COCOTB_CODE( std::cdc::sync2_bool )
    logic \clk ;
    assign \clk  = clk_i;
    logic \input ;
    assign \input  = input_i;
    (* src = "<compiler dir>/stdlib/cdc.spade:34,9" *)
    logic _e_137;
    (* src = "<compiler dir>/stdlib/cdc.spade:34,9" *)
    
    \std::cdc::sync2[971]  \sync2_0 (.clk_i(\clk ), .input_i(\input ), .output__(_e_137));
    assign output__ = _e_137;
endmodule


module \std::conv::concat_arrays[988]  (
        input[7:0] l_i,
        output[7:0] output__
    );
    `COCOTB_CODE( std::conv::concat_arrays[988] )
    logic[7:0] \l ;
    assign \l  = l_i;
    (* src = "<compiler dir>/stdlib/conv.spade:26,30" *)
    logic[7:0] _e_428;
    logic[7:0] _e_427;
    assign _e_428 = {\l };
    assign _e_427 = _e_428;
    assign output__ = _e_427;
endmodule


module \std::conv::concat_arrays[983]  (
        input[7:0] l_i,
        input[7:0] r_i,
        output[15:0] output__
    );
    `COCOTB_CODE( std::conv::concat_arrays[983] )
    logic[7:0] \l ;
    assign \l  = l_i;
    logic[7:0] \r ;
    assign \r  = r_i;
    (* src = "<compiler dir>/stdlib/conv.spade:26,30" *)
    logic[15:0] _e_428;
    logic[15:0] _e_427;
    assign _e_428 = {\r , \l };
    assign _e_427 = _e_428;
    assign output__ = _e_427;
endmodule


module \std::conv::concat_arrays[984]  (
        input[7:0] l_i,
        input[15:0] r_i,
        output[23:0] output__
    );
    `COCOTB_CODE( std::conv::concat_arrays[984] )
    logic[7:0] \l ;
    assign \l  = l_i;
    logic[15:0] \r ;
    assign \r  = r_i;
    (* src = "<compiler dir>/stdlib/conv.spade:26,30" *)
    logic[23:0] _e_428;
    logic[23:0] _e_427;
    assign _e_428 = {\r , \l };
    assign _e_427 = _e_428;
    assign output__ = _e_427;
endmodule


module \std::conv::concat_arrays[985]  (
        input[7:0] l_i,
        input[23:0] r_i,
        output[31:0] output__
    );
    `COCOTB_CODE( std::conv::concat_arrays[985] )
    logic[7:0] \l ;
    assign \l  = l_i;
    logic[23:0] \r ;
    assign \r  = r_i;
    (* src = "<compiler dir>/stdlib/conv.spade:26,30" *)
    logic[31:0] _e_428;
    logic[31:0] _e_427;
    assign _e_428 = {\r , \l };
    assign _e_427 = _e_428;
    assign output__ = _e_427;
endmodule


module \std::conv::tri_to_bool  (
        input b_i,
        output output__
    );
    `COCOTB_CODE( std::conv::tri_to_bool )
    logic \b ;
    assign \b  = b_i;
    logic _e_433;
    assign _e_433 = \b ;
    assign output__ = _e_433;
endmodule


module \std::conv::clock_to_bool  (
        input c_i,
        output output__
    );
    `COCOTB_CODE( std::conv::clock_to_bool )
    logic \c ;
    assign \c  = c_i;
    logic _e_487;
    assign _e_487 = \c ;
    assign output__ = _e_487;
endmodule


module \std::conv::bool_to_clock  (
        input c_i,
        output output__
    );
    `COCOTB_CODE( std::conv::bool_to_clock )
    logic \c ;
    assign \c  = c_i;
    logic _e_491;
    assign _e_491 = \c ;
    assign output__ = _e_491;
endmodule


module \std::io::rising_edge  (
        input clk_i,
        input sync1_i,
        output output__
    );
    `COCOTB_CODE( std::io::rising_edge )
    logic \clk ;
    assign \clk  = clk_i;
    logic \sync1 ;
    assign \sync1  = sync1_i;
    (* src = "<compiler dir>/stdlib/io.spade:3,14" *)
    reg \sync2 ;
    (* src = "<compiler dir>/core/ops.spade:192,29" *)
    logic _e_1688;
    (* src = "<compiler dir>/core/ops.spade:192,9" *)
    logic _e_1687;
    (* src = "<compiler dir>/core/ops.spade:192,9" *)
    logic _e_583;
    (* src = "<compiler dir>/core/ops.spade:234,29" *)
    logic _e_1696;
    (* src = "<compiler dir>/core/ops.spade:234,37" *)
    logic _e_1697;
    (* src = "<compiler dir>/core/ops.spade:234,9" *)
    logic _e_1695;
    (* src = "<compiler dir>/core/ops.spade:234,9" *)
    logic _e_581;
    always @(posedge \clk ) begin
        \sync2  <= \sync1 ;
    end
    assign _e_1688 = {\sync2 };
    assign _e_1687 = ~_e_1688;
    assign _e_583 = _e_1687;
    assign _e_1696 = {\sync1 };
    assign _e_1697 = {_e_583};
    assign _e_1695 = _e_1696 & _e_1697;
    assign _e_581 = _e_1695;
    assign output__ = _e_581;
endmodule


module \std::io::falling_edge  (
        input clk_i,
        input sync1_i,
        output output__
    );
    `COCOTB_CODE( std::io::falling_edge )
    logic \clk ;
    assign \clk  = clk_i;
    logic \sync1 ;
    assign \sync1  = sync1_i;
    (* src = "<compiler dir>/stdlib/io.spade:9,14" *)
    reg \sync2 ;
    (* src = "<compiler dir>/core/ops.spade:192,29" *)
    logic _e_1706;
    (* src = "<compiler dir>/core/ops.spade:192,9" *)
    logic _e_1705;
    (* src = "<compiler dir>/core/ops.spade:192,9" *)
    logic _e_1704;
    (* src = "<compiler dir>/core/ops.spade:234,29" *)
    logic _e_1714;
    (* src = "<compiler dir>/core/ops.spade:234,37" *)
    logic _e_1715;
    (* src = "<compiler dir>/core/ops.spade:234,9" *)
    logic _e_1713;
    (* src = "<compiler dir>/core/ops.spade:234,9" *)
    logic _e_1712;
    always @(posedge \clk ) begin
        \sync2  <= \sync1 ;
    end
    assign _e_1706 = {\sync1 };
    assign _e_1705 = ~_e_1706;
    assign _e_1704 = _e_1705;
    assign _e_1714 = {\sync2 };
    assign _e_1715 = {_e_1704};
    assign _e_1713 = _e_1714 & _e_1715;
    assign _e_1712 = _e_1713;
    assign output__ = _e_1712;
endmodule


module \spade_demoscene_vga::vga_sync  (
        input clk_i,
        input rst_i,
        output[22:0] output__
    );
    `COCOTB_CODE( spade_demoscene_vga::vga_sync )
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    localparam[0:0] _e_1137 = 0;
    (* src = "<compiler dir>/core/ops.spade:192,29" *)
    logic _e_1724;
    (* src = "<compiler dir>/core/ops.spade:192,9" *)
    logic _e_1723;
    (* src = "<compiler dir>/core/ops.spade:192,9" *)
    logic _e_1138;
    (* src = "src/main.spade:9,14" *)
    reg \pixel_en ;
    localparam[9:0] _e_1143 = 0;
    localparam[9:0] _e_1150 = 799;
    (* src = "<compiler dir>/core/ops.spade:53,9" *)
    logic _e_1148;
    localparam[9:0] _e_1152 = 0;
    localparam[9:0] _e_1156 = 1;
    (* src = "src/main.spade:13,40" *)
    logic[9:0] _e_1154;
    (* src = "src/main.spade:13,9" *)
    logic[9:0] _e_1147;
    (* src = "src/main.spade:12,38" *)
    logic[9:0] _e_1144;
    (* src = "src/main.spade:12,14" *)
    reg[9:0] \h_count ;
    localparam[9:0] _e_1162 = 0;
    localparam[9:0] _e_1169 = 799;
    (* src = "<compiler dir>/core/ops.spade:53,9" *)
    logic _e_1167;
    localparam[9:0] _e_1174 = 524;
    (* src = "<compiler dir>/core/ops.spade:53,9" *)
    logic _e_1172;
    localparam[9:0] _e_1176 = 0;
    localparam[9:0] _e_1180 = 1;
    (* src = "src/main.spade:21,44" *)
    logic[9:0] _e_1178;
    (* src = "src/main.spade:21,13" *)
    logic[9:0] _e_1171;
    (* src = "src/main.spade:20,9" *)
    logic[9:0] _e_1166;
    (* src = "src/main.spade:19,38" *)
    logic[9:0] _e_1163;
    (* src = "src/main.spade:19,14" *)
    reg[9:0] \v_count ;
    localparam[9:0] _e_1189 = 656;
    (* src = "<compiler dir>/core/ops.spade:406,9" *)
    logic _e_1187;
    localparam[9:0] _e_1192 = 752;
    (* src = "<compiler dir>/core/ops.spade:391,9" *)
    logic _e_1738;
    (* src = "<compiler dir>/core/ops.spade:234,29" *)
    logic _e_1742;
    (* src = "<compiler dir>/core/ops.spade:234,37" *)
    logic _e_1743;
    (* src = "<compiler dir>/core/ops.spade:234,9" *)
    logic _e_1741;
    (* src = "<compiler dir>/core/ops.spade:234,9" *)
    logic _e_1186;
    (* src = "<compiler dir>/core/ops.spade:192,29" *)
    logic _e_1752;
    (* src = "<compiler dir>/core/ops.spade:192,9" *)
    logic _e_1751;
    (* src = "<compiler dir>/core/ops.spade:192,9" *)
    logic \hsync ;
    localparam[9:0] _e_1198 = 490;
    (* src = "<compiler dir>/core/ops.spade:406,9" *)
    logic _e_1196;
    localparam[9:0] _e_1201 = 492;
    (* src = "<compiler dir>/core/ops.spade:391,9" *)
    logic _e_1760;
    (* src = "<compiler dir>/core/ops.spade:234,29" *)
    logic _e_1764;
    (* src = "<compiler dir>/core/ops.spade:234,37" *)
    logic _e_1765;
    (* src = "<compiler dir>/core/ops.spade:234,9" *)
    logic _e_1763;
    (* src = "<compiler dir>/core/ops.spade:234,9" *)
    logic _e_1762;
    (* src = "<compiler dir>/core/ops.spade:192,29" *)
    logic _e_1774;
    (* src = "<compiler dir>/core/ops.spade:192,9" *)
    logic _e_1773;
    (* src = "<compiler dir>/core/ops.spade:192,9" *)
    logic \vsync ;
    localparam[9:0] _e_1206 = 640;
    (* src = "<compiler dir>/core/ops.spade:391,9" *)
    logic _e_1780;
    localparam[9:0] _e_1209 = 480;
    (* src = "<compiler dir>/core/ops.spade:391,9" *)
    logic _e_1207;
    (* src = "<compiler dir>/core/ops.spade:234,29" *)
    logic _e_1786;
    (* src = "<compiler dir>/core/ops.spade:234,37" *)
    logic _e_1787;
    (* src = "<compiler dir>/core/ops.spade:234,9" *)
    logic _e_1785;
    (* src = "<compiler dir>/core/ops.spade:234,9" *)
    logic \visible ;
    (* src = "src/main.spade:34,5" *)
    logic[22:0] _e_1211;
    assign _e_1724 = {\pixel_en };
    assign _e_1723 = ~_e_1724;
    assign _e_1138 = _e_1723;
    always @(posedge \clk ) begin
        if (\rst ) begin
            \pixel_en  <= _e_1137;
        end
        else begin
            \pixel_en  <= _e_1138;
        end
    end
    assign _e_1148 = \h_count  == _e_1150;
    (* src = "src/main.spade:13,40" *)
    
    \core::ops::impl#23::wrapping_add[975]  \wrapping_add_0 (.self_i(\h_count ), .rhs_i(_e_1156), .output__(_e_1154));
    assign _e_1147 = _e_1148 ? _e_1152 : _e_1154;
    assign _e_1144 = \pixel_en  ? _e_1147 : \h_count ;
    always @(posedge \clk ) begin
        if (\rst ) begin
            \h_count  <= _e_1143;
        end
        else begin
            \h_count  <= _e_1144;
        end
    end
    assign _e_1167 = \h_count  == _e_1169;
    assign _e_1172 = \v_count  == _e_1174;
    (* src = "src/main.spade:21,44" *)
    
    \core::ops::impl#23::wrapping_add[975]  \wrapping_add_1 (.self_i(\v_count ), .rhs_i(_e_1180), .output__(_e_1178));
    assign _e_1171 = _e_1172 ? _e_1176 : _e_1178;
    assign _e_1166 = _e_1167 ? _e_1171 : \v_count ;
    assign _e_1163 = \pixel_en  ? _e_1166 : \v_count ;
    always @(posedge \clk ) begin
        if (\rst ) begin
            \v_count  <= _e_1162;
        end
        else begin
            \v_count  <= _e_1163;
        end
    end
    assign _e_1187 = \h_count  >= _e_1189;
    assign _e_1738 = \h_count  < _e_1192;
    assign _e_1742 = {_e_1187};
    assign _e_1743 = {_e_1738};
    assign _e_1741 = _e_1742 & _e_1743;
    assign _e_1186 = _e_1741;
    assign _e_1752 = {_e_1186};
    assign _e_1751 = ~_e_1752;
    assign \hsync  = _e_1751;
    assign _e_1196 = \v_count  >= _e_1198;
    assign _e_1760 = \v_count  < _e_1201;
    assign _e_1764 = {_e_1196};
    assign _e_1765 = {_e_1760};
    assign _e_1763 = _e_1764 & _e_1765;
    assign _e_1762 = _e_1763;
    assign _e_1774 = {_e_1762};
    assign _e_1773 = ~_e_1774;
    assign \vsync  = _e_1773;
    assign _e_1780 = \h_count  < _e_1206;
    assign _e_1207 = \v_count  < _e_1209;
    assign _e_1786 = {_e_1780};
    assign _e_1787 = {_e_1207};
    assign _e_1785 = _e_1786 & _e_1787;
    assign \visible  = _e_1785;
    assign _e_1211 = {\h_count , \v_count , \hsync , \vsync , \visible };
    assign output__ = _e_1211;
endmodule


module \spade_demoscene_vga::pixel_color  (
        input[9:0] x_i,
        input[9:0] y_i,
        input visible_i,
        output[5:0] output__
    );
    `COCOTB_CODE( spade_demoscene_vga::pixel_color )
    logic[9:0] \x ;
    assign \x  = x_i;
    logic[9:0] \y ;
    assign \y  = y_i;
    logic \visible ;
    assign \visible  = visible_i;
    localparam[9:0] _e_1224 = 213;
    (* src = "<compiler dir>/core/ops.spade:391,9" *)
    logic _e_1222;
    localparam[0:0] _e_1227 = 1;
    localparam[0:0] _e_1228 = 1;
    localparam[0:0] _e_1229 = 0;
    localparam[0:0] _e_1230 = 0;
    localparam[0:0] _e_1231 = 0;
    localparam[0:0] _e_1232 = 0;
    (* src = "src/main.spade:43,13" *)
    logic[5:0] _e_1226;
    localparam[9:0] _e_1236 = 426;
    (* src = "<compiler dir>/core/ops.spade:391,9" *)
    logic _e_1234;
    localparam[0:0] _e_1239 = 0;
    localparam[0:0] _e_1240 = 0;
    localparam[0:0] _e_1241 = 1;
    localparam[0:0] _e_1242 = 1;
    localparam[0:0] _e_1243 = 0;
    localparam[0:0] _e_1244 = 0;
    (* src = "src/main.spade:45,13" *)
    logic[5:0] _e_1238;
    localparam[0:0] _e_1247 = 0;
    localparam[0:0] _e_1248 = 0;
    localparam[0:0] _e_1249 = 0;
    localparam[0:0] _e_1250 = 0;
    localparam[0:0] _e_1251 = 1;
    localparam[0:0] _e_1252 = 1;
    (* src = "src/main.spade:47,13" *)
    logic[5:0] _e_1246;
    (* src = "src/main.spade:44,16" *)
    logic[5:0] _e_1233;
    (* src = "src/main.spade:42,9" *)
    logic[5:0] _e_1221;
    localparam[0:0] _e_1255 = 0;
    localparam[0:0] _e_1256 = 0;
    localparam[0:0] _e_1257 = 0;
    localparam[0:0] _e_1258 = 0;
    localparam[0:0] _e_1259 = 0;
    localparam[0:0] _e_1260 = 0;
    (* src = "src/main.spade:50,9" *)
    logic[5:0] _e_1254;
    (* src = "src/main.spade:40,5" *)
    logic[5:0] _e_1218;
    assign _e_1222 = \x  < _e_1224;
    assign _e_1226 = {_e_1227, _e_1228, _e_1229, _e_1230, _e_1231, _e_1232};
    assign _e_1234 = \x  < _e_1236;
    assign _e_1238 = {_e_1239, _e_1240, _e_1241, _e_1242, _e_1243, _e_1244};
    assign _e_1246 = {_e_1247, _e_1248, _e_1249, _e_1250, _e_1251, _e_1252};
    assign _e_1233 = _e_1234 ? _e_1238 : _e_1246;
    assign _e_1221 = _e_1222 ? _e_1226 : _e_1233;
    assign _e_1254 = {_e_1255, _e_1256, _e_1257, _e_1258, _e_1259, _e_1260};
    assign _e_1218 = \visible  ? _e_1221 : _e_1254;
    assign output__ = _e_1218;
endmodule


module tt_um_zufallsgenerat0r_demo (
        input clk,
        input rst_n,
        input[7:0] ui_in,
        output[7:0] uo_out,
        input[7:0] uio_in,
        output[7:0] uio_out,
        output[7:0] uio_oe,
        input ena
    );
    `COCOTB_CODE( tt_um_zufallsgenerat0r_demo )
    logic[7:0] \uo_out_mut ;
    assign uo_out = \uo_out_mut ;
    logic[7:0] \uio_out_mut ;
    assign uio_out = \uio_out_mut ;
    logic[7:0] \uio_oe_mut ;
    assign uio_oe = \uio_oe_mut ;
    (* src = "<compiler dir>/core/ops.spade:192,29" *)
    logic _e_1800;
    (* src = "<compiler dir>/core/ops.spade:192,9" *)
    logic _e_1799;
    (* src = "<compiler dir>/core/ops.spade:192,9" *)
    logic \rst ;
    localparam[0:0] _e_1268 = 0;
    (* src = "src/main.spade:70,20" *)
    logic[7:0] _e_1267;
    localparam[0:0] _e_1273 = 0;
    (* src = "src/main.spade:71,19" *)
    logic[7:0] _e_1272;
    (* src = "src/main.spade:74,41" *)
    logic[22:0] _e_1275;
    (* src = "src/main.spade:74,9" *)
    logic[9:0] \h ;
    (* src = "src/main.spade:74,9" *)
    logic[9:0] \v ;
    (* src = "src/main.spade:74,9" *)
    logic \hsync ;
    (* src = "src/main.spade:74,9" *)
    logic \vsync ;
    (* src = "src/main.spade:74,9" *)
    logic \visible ;
    (* src = "src/main.spade:75,36" *)
    logic[5:0] _e_1284;
    (* src = "src/main.spade:75,9" *)
    logic \r1 ;
    (* src = "src/main.spade:75,9" *)
    logic \r0 ;
    (* src = "src/main.spade:75,9" *)
    logic \g1 ;
    (* src = "src/main.spade:75,9" *)
    logic \g0 ;
    (* src = "src/main.spade:75,9" *)
    logic \b1 ;
    (* src = "src/main.spade:75,9" *)
    logic \b0 ;
    (* src = "src/main.spade:78,19" *)
    logic[7:0] _e_1296;
    assign _e_1800 = {\rst_n };
    assign _e_1799 = ~_e_1800;
    assign \rst  = _e_1799;
    assign _e_1267 = {_e_1268, _e_1268, _e_1268, _e_1268, _e_1268, _e_1268, _e_1268, _e_1268};
    assign \uio_out_mut  = _e_1267;
    assign _e_1272 = {_e_1273, _e_1273, _e_1273, _e_1273, _e_1273, _e_1273, _e_1273, _e_1273};
    assign \uio_oe_mut  = _e_1272;
    (* src = "src/main.spade:74,41" *)
    
    \spade_demoscene_vga::vga_sync  \vga_sync_0 (.clk_i(\clk ), .rst_i(\rst ), .output__(_e_1275));
    assign \h  = _e_1275[22:13];
    assign \v  = _e_1275[12:3];
    assign \hsync  = _e_1275[2];
    assign \vsync  = _e_1275[1];
    assign \visible  = _e_1275[0];
    (* src = "src/main.spade:75,36" *)
    
    \spade_demoscene_vga::pixel_color  \pixel_color_0 (.x_i(\h ), .y_i(\v ), .visible_i(\visible ), .output__(_e_1284));
    assign \r1  = _e_1284[5];
    assign \r0  = _e_1284[4];
    assign \g1  = _e_1284[3];
    assign \g0  = _e_1284[2];
    assign \b1  = _e_1284[1];
    assign \b0  = _e_1284[0];
    assign _e_1296 = {\vsync , \hsync , \b0 , \b1 , \g0 , \g1 , \r0 , \r1 };
    assign \uo_out_mut  = _e_1296;
    
endmodule


module \std::conv::impl#2::to_uint  (
        input self_i,
        output output__
    );
    `COCOTB_CODE( std::conv::impl#2::to_uint )
    logic \self ;
    assign \self  = self_i;
    logic _e_501;
    assign _e_501 = \self ;
    assign output__ = _e_501;
endmodule


module \std::conv::impl#2::to_int  (
        input self_i,
        output output__
    );
    `COCOTB_CODE( std::conv::impl#2::to_int )
    logic \self ;
    assign \self  = self_i;
    logic _e_505;
    assign _e_505 = \self ;
    assign output__ = _e_505;
endmodule


module \std::conv::impl#5::to_be_bytes  (
        input[15:0] self_i,
        output[15:0] output__
    );
    `COCOTB_CODE( std::conv::impl#5::to_be_bytes )
    logic[15:0] \self ;
    assign \self  = self_i;
    localparam[15:0] _e_524 = 8;
    (* src = "<compiler dir>/stdlib/conv.spade:176,16" *)
    logic[15:0] _e_522;
    (* src = "<compiler dir>/stdlib/conv.spade:176,10" *)
    logic[7:0] _e_521;
    (* src = "<compiler dir>/stdlib/conv.spade:176,28" *)
    logic[7:0] _e_525;
    (* src = "<compiler dir>/stdlib/conv.spade:176,9" *)
    logic[15:0] _e_520;
    assign _e_522 = \self  >> _e_524;
    assign _e_521 = _e_522[7:0];
    assign _e_525 = \self [7:0];
    assign _e_520 = {_e_525, _e_521};
    assign output__ = _e_520;
endmodule


module \std::conv::impl#5::to_le_bytes  (
        input[15:0] self_i,
        output[15:0] output__
    );
    `COCOTB_CODE( std::conv::impl#5::to_le_bytes )
    logic[15:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/conv.spade:182,31" *)
    logic[15:0] _e_529;
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    logic[7:0] _e_1809;
    (* src = "<compiler dir>/stdlib/conv.spade:44,50" *)
    logic[7:0] _e_1811;
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    logic[7:0] _e_1835;
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    logic[7:0] result_n1;
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    logic[15:0] result_n2;
    (* src = "<compiler dir>/stdlib/conv.spade:182,31" *)
    
    \std::conv::impl#5::to_be_bytes  \to_be_bytes_0 (.self_i(\self ), .output__(_e_529));
    assign _e_1809 = _e_529[15-:8];
    assign _e_1811 = _e_529[7-:8];
    assign _e_1835 = _e_1811;
    
    
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    
    \std::conv::concat_arrays[988]  \concat_arrays_0 (.l_i(_e_1835), .output__(result_n1));
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    
    \std::conv::concat_arrays[983]  \concat_arrays_1 (.l_i(_e_1809), .r_i(result_n1), .output__(result_n2));
    assign output__ = result_n2;
endmodule


module \std::conv::impl#6::to_be_bytes  (
        input[23:0] self_i,
        output[23:0] output__
    );
    `COCOTB_CODE( std::conv::impl#6::to_be_bytes )
    logic[23:0] \self ;
    assign \self  = self_i;
    localparam[23:0] _e_536 = 16;
    (* src = "<compiler dir>/stdlib/conv.spade:190,16" *)
    logic[23:0] _e_534;
    (* src = "<compiler dir>/stdlib/conv.spade:190,10" *)
    logic[7:0] _e_533;
    localparam[23:0] _e_540 = 8;
    (* src = "<compiler dir>/stdlib/conv.spade:190,35" *)
    logic[23:0] _e_538;
    (* src = "<compiler dir>/stdlib/conv.spade:190,29" *)
    logic[7:0] _e_537;
    (* src = "<compiler dir>/stdlib/conv.spade:190,47" *)
    logic[7:0] _e_541;
    (* src = "<compiler dir>/stdlib/conv.spade:190,9" *)
    logic[23:0] _e_532;
    assign _e_534 = \self  >> _e_536;
    assign _e_533 = _e_534[7:0];
    assign _e_538 = \self  >> _e_540;
    assign _e_537 = _e_538[7:0];
    assign _e_541 = \self [7:0];
    assign _e_532 = {_e_541, _e_537, _e_533};
    assign output__ = _e_532;
endmodule


module \std::conv::impl#6::to_le_bytes  (
        input[23:0] self_i,
        output[23:0] output__
    );
    `COCOTB_CODE( std::conv::impl#6::to_le_bytes )
    logic[23:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/conv.spade:196,31" *)
    logic[23:0] _e_545;
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    logic[7:0] _e_1888;
    (* src = "<compiler dir>/stdlib/conv.spade:44,50" *)
    logic[15:0] _e_1890;
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    logic[7:0] _e_1914;
    (* src = "<compiler dir>/stdlib/conv.spade:44,50" *)
    logic[7:0] _e_1916;
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    logic[7:0] _e_1950;
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    logic[7:0] result_n1;
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    logic[15:0] result_n2;
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    logic[23:0] result_n3;
    (* src = "<compiler dir>/stdlib/conv.spade:196,31" *)
    
    \std::conv::impl#6::to_be_bytes  \to_be_bytes_0 (.self_i(\self ), .output__(_e_545));
    assign _e_1888 = _e_545[23-:8];
    assign _e_1890 = _e_545[15-:16];
    assign _e_1914 = _e_1890[15-:8];
    assign _e_1916 = _e_1890[7-:8];
    assign _e_1950 = _e_1916;
    
    
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    
    \std::conv::concat_arrays[988]  \concat_arrays_0 (.l_i(_e_1950), .output__(result_n1));
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    
    \std::conv::concat_arrays[983]  \concat_arrays_1 (.l_i(_e_1914), .r_i(result_n1), .output__(result_n2));
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    
    \std::conv::concat_arrays[984]  \concat_arrays_2 (.l_i(_e_1888), .r_i(result_n2), .output__(result_n3));
    assign output__ = result_n3;
endmodule


module \std::conv::impl#7::to_be_bytes  (
        input[31:0] self_i,
        output[31:0] output__
    );
    `COCOTB_CODE( std::conv::impl#7::to_be_bytes )
    logic[31:0] \self ;
    assign \self  = self_i;
    localparam[31:0] _e_552 = 32'd24;
    (* src = "<compiler dir>/stdlib/conv.spade:204,16" *)
    logic[31:0] _e_550;
    (* src = "<compiler dir>/stdlib/conv.spade:204,10" *)
    logic[7:0] _e_549;
    localparam[31:0] _e_556 = 32'd16;
    (* src = "<compiler dir>/stdlib/conv.spade:204,35" *)
    logic[31:0] _e_554;
    (* src = "<compiler dir>/stdlib/conv.spade:204,29" *)
    logic[7:0] _e_553;
    localparam[31:0] _e_560 = 32'd8;
    (* src = "<compiler dir>/stdlib/conv.spade:204,54" *)
    logic[31:0] _e_558;
    (* src = "<compiler dir>/stdlib/conv.spade:204,48" *)
    logic[7:0] _e_557;
    (* src = "<compiler dir>/stdlib/conv.spade:204,66" *)
    logic[7:0] _e_561;
    (* src = "<compiler dir>/stdlib/conv.spade:204,9" *)
    logic[31:0] _e_548;
    assign _e_550 = \self  >> _e_552;
    assign _e_549 = _e_550[7:0];
    assign _e_554 = \self  >> _e_556;
    assign _e_553 = _e_554[7:0];
    assign _e_558 = \self  >> _e_560;
    assign _e_557 = _e_558[7:0];
    assign _e_561 = \self [7:0];
    assign _e_548 = {_e_561, _e_557, _e_553, _e_549};
    assign output__ = _e_548;
endmodule


module \std::conv::impl#7::to_le_bytes  (
        input[31:0] self_i,
        output[31:0] output__
    );
    `COCOTB_CODE( std::conv::impl#7::to_le_bytes )
    logic[31:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/conv.spade:210,31" *)
    logic[31:0] _e_565;
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    logic[7:0] _e_2018;
    (* src = "<compiler dir>/stdlib/conv.spade:44,50" *)
    logic[23:0] _e_2020;
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    logic[7:0] _e_2044;
    (* src = "<compiler dir>/stdlib/conv.spade:44,50" *)
    logic[15:0] _e_2046;
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    logic[7:0] _e_2080;
    (* src = "<compiler dir>/stdlib/conv.spade:44,50" *)
    logic[7:0] _e_2082;
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    logic[7:0] _e_2126;
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    logic[7:0] result_n1;
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    logic[15:0] result_n2;
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    logic[23:0] result_n3;
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    logic[31:0] result_n4;
    (* src = "<compiler dir>/stdlib/conv.spade:210,31" *)
    
    \std::conv::impl#7::to_be_bytes  \to_be_bytes_0 (.self_i(\self ), .output__(_e_565));
    assign _e_2018 = _e_565[31-:8];
    assign _e_2020 = _e_565[23-:24];
    assign _e_2044 = _e_2020[23-:8];
    assign _e_2046 = _e_2020[15-:16];
    assign _e_2080 = _e_2046[15-:8];
    assign _e_2082 = _e_2046[7-:8];
    assign _e_2126 = _e_2082;
    
    
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    
    \std::conv::concat_arrays[988]  \concat_arrays_0 (.l_i(_e_2126), .output__(result_n1));
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    
    \std::conv::concat_arrays[983]  \concat_arrays_1 (.l_i(_e_2080), .r_i(result_n1), .output__(result_n2));
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    
    \std::conv::concat_arrays[984]  \concat_arrays_2 (.l_i(_e_2044), .r_i(result_n2), .output__(result_n3));
    (* src = "<compiler dir>/stdlib/conv.spade:44,9" *)
    
    \std::conv::concat_arrays[985]  \concat_arrays_3 (.l_i(_e_2018), .r_i(result_n3), .output__(result_n4));
    assign output__ = result_n4;
endmodule


module \core::ops::impl#23::wrapping_add[975]  (
        input[9:0] self_i,
        input[9:0] rhs_i,
        output[9:0] output__
    );
    `COCOTB_CODE( core::ops::impl#23::wrapping_add[975] )
    logic[9:0] \self ;
    assign \self  = self_i;
    logic[9:0] \rhs ;
    assign \rhs  = rhs_i;
    (* src = "<compiler dir>/core/ops.spade:103,62" *)
    logic[10:0] _e_1364;
    logic[10:0] \bits ;
    (* src = "<compiler dir>/core/ops.spade:104,34" *)
    logic[9:0] _e_1369;
    logic[9:0] _e_1368;
    assign _e_1364 = \self  + \rhs ;
    assign \bits  = _e_1364;
    assign _e_1369 = \bits [9-:10];
    assign _e_1368 = _e_1369;
    assign output__ = _e_1368;
endmodule

`default_nettype none