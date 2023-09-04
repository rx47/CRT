# CRT Assembly Video Memory Visualizer

This repository contains an assembly script that offers a throwback to the early days of computing, replicating the graphics experience of older CRT monitors and gaming consoles using video memory in a 16-bit environment.

## Features

- **16-bit Mode**: Tailored to function in a 16-bit environment, echoing vintage computing systems.
  
- **Direct Screen Writing**: Leverages BIOS interrupts for direct screen output.

- **Color Cycling**: As the screen gets filled, the script iterates through a palette of 16 different colors, reminiscent of the color cycling techniques used in classic gaming consoles and CRT displays.

- **Pixel-level Control**: Provides intricate control, filling the screen pixel-by-pixel, moving line by line.

## Prerequisites

To run this assembly code, ensure you have the following setup:

- A Linux environment.
  
- A 32-bit or 64-bit processor.

- QEMU: An open-source machine emulator and virtualizer, which will be used to display the output.

- Build Essentials: This package provides the essential tools and compilers required to build and run the code.

## Usage

1. Ensure all prerequisites are installed on your machine.

3. To execute and visualize the script, simply type `build qemu` in the terminal.

4. Watch as the script fills the screen, line by line, and cycles through a variety of colors, taking you on a nostalgic journey to the graphics of yesteryears.

## Behind The Scenes

- The script kickstarts by starting: "Boot Loader Stage 2 loaded".
  
- Switching video modes, it starts plotting pixels across the screen.

- Adopting a left-to-right strategy, it fills each line before advancing to the next.

- Once the screen brims, the color palette changes, and the filling recommences.

- This vibrant loop of 16 different colors creates a mesmerizing display reminiscent of old CRT screens or game consoles.

## Fun Fact

Direct memory access and manipulation, as demonstrated here, were common in older computing systems, especially before advanced graphics libraries were available. It's a testament to the intricate low-level operations those systems used to perform!

