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


















# CRT Assembly Video Memory Manipulator

This repository contains an assembly script demonstrating a fundamental understanding of video memory manipulation in a 16-bit environment. By executing direct instructions on the screen, this code replicates the functionality of old CRT monitors and gaming consoles.

## Features

- **16-bit Mode**: The script is designed to work specifically in a 16-bit environment, reminiscent of older computing systems.
  
- **Direct Screen Writing**: Utilizes BIOS interrupts to write directly to the screen.

- **Color Cycling**: Once the entire screen is filled, the script transitions through 16 distinct colors, creating a visual representation similar to the 'color cycling' seen in older gaming consoles and CRT monitors.

- **Pixel-level Manipulation**: The script provides pixel-by-pixel control to fill the screen line by line.

## Usage

1. Assemble the provided code for a 16-bit environment.
2. Execute the assembled binary.
3. Witness the CRT-style video memory manipulation as the script fills the screen line by line and transitions through different colors.

## How It Works

- The script begins by displaying the message "Boot Loader Stage 2 loaded".
  
- It then switches the video mode and begins to print pixels onto the screen.

- The pixels are printed left to right, filling up one line before moving to the next.

- Upon filling the screen, the script alters the color of the pixels and starts the fill process again.

- This color alteration cycles through 16 distinct colors, generating a visually pleasing effect that emulates older CRT screens or game consoles.

## Fun Fact

Direct memory access and manipulation, as demonstrated here, were common in older computing systems, especially before advanced graphics libraries were available. It's a testament to the intricate low-level operations those systems used to perform!

## Conclusion

Whether you're reminiscing about the good old days of computing or just curious about low-level graphics programming, this script offers a fun dive into the world of video memory. Dive in, experiment, and perhaps adapt it into a more comprehensive project!
