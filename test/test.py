# top = tt_um_zufallsgenerat0r_demo

import cocotb
from spade import SpadeExt
from cocotb.clock import Clock
from cocotb.triggers import FallingEdge


@cocotb.test()
async def test_project_gatelevel(dut):
    s = SpadeExt(dut)

    clk = dut.clk
    await cocotb.start(Clock(clk, period=10, units='ns').start())

    await FallingEdge(clk)

    if hasattr(dut, "VGND"):
        dut.VGND = 0
        dut.VPWR = 1

    s.i.ui_in = "[false, false, false, false,  false, false, false, false]"
    s.i.ena = True

    # Reset
    s.i.rst_n = False
    [await FallingEdge(clk) for _ in range(0, 10)]
    s.i.rst_n = True
    await FallingEdge(clk)

    # After reset, outputs should be zero (blanking region starts at 0,0 which is visible
    # but registers just came out of reset)
    await FallingEdge(clk)

    # Run for enough cycles to see hsync and vsync activity
    # One full line = 800 pixels * 2 clocks/pixel = 1600 clock cycles
    hsync_seen_low = False
    hsync_seen_high = False
    for _ in range(0, 1700):
        await FallingEdge(clk)
        uo = dut.uo_out.value
        if uo.is_resolvable:
            hsync_bit = (int(uo) >> 6) & 1
            if hsync_bit == 0:
                hsync_seen_low = True
            else:
                hsync_seen_high = True

    # Verify hsync toggled (not stuck)
    assert hsync_seen_low, "hsync never went low"
    assert hsync_seen_high, "hsync never went high"
