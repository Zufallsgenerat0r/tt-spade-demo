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

    # Run for a few cycles to verify simulation works
    [await FallingEdge(clk) for _ in range(0, 10)]

    # Basic smoke test: verify uo_out is not X after reset
    uo = dut.uo_out.value
    assert uo.is_resolvable, f"uo_out contains X/Z values: {uo}"
