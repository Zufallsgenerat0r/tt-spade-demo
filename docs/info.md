## How it works

Generates a 640x480@60Hz VGA signal using the TinyVGA PMOD. The 50 MHz input clock is divided by 2 internally to produce a 25 MHz pixel clock. A VGA timing generator produces horizontal and vertical sync signals along with pixel coordinates, which are fed to a color generator that outputs 2-bit-per-channel RGB (64 colors total).

## How to test

Connect the TinyVGA PMOD to the output pins and attach a VGA monitor. After reset, the display should show a color bar test pattern.

## External hardware

TinyVGA PMOD connected to the output pins, VGA monitor.
