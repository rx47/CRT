# Second stage of the boot loader

.code16                         # Assemble for 16-bit mode
.globl start
start:
    jmp     real_start

# Write to the console using BIOS.
#
# Input: SI contains the address of the null-terminated string to be displayed

cons_write:
    movb    $0x0e, %ah           # 0x0e is the INT 10h BIOS call to output the value contained in AL to screen

cons_write_rpt:
    movb    (%si), %al          # Load the byte at the location contained in the SI register into AL
    inc     %si                 # Add 1 to the value in SI
    cmp     $0, %al             # Compare the value in AL with 0
    jz      cons_write_done     # If it is zero, then we are done
    int     $0x10               # Output the character in AL to the screen
    jmp     cons_write_rpt      # and continue

cons_write_done:                # Something that is called will never return
    ret                         # until a 'ret' instruction is encountered.  Labels do
                                # not give a program any structure.  They just give a
                                # memory location a name that we can use in our code.

cons_write_crlf:
    movb    $0x0e, %ah          # Output CR
    movb    $0x0d, %al
    int     $0x10
    movb    $0x0a, %al          # Output LF
    int     $0x10
    ret

cons_writeline:
    call    cons_write
    call    cons_write_crlf
    ret

real_start:
    movw    $boot_message, %si  # Display our boot message
    call    cons_writeline

# CRT screen
switch_to_videomode:
    movb $0x00, %ah
    movb $0x13, %al
    int $0x10

print_pixel:
    movb $0x0C, %ah
    movb $10, %al           # al contains the pixel color
    call change_pixel_color
    movb $0, %bh
    movw $0, %cx
    call fill_loop_pixel
    movw $0, %dx
    call fill_loop_pixel
    int  $0x10

reset_color:
    movb $0, %al
change_pixel_color:
    inc %al
    int $0x10
    cmp $16, %al
    je  reset_color
    jmp increment_x

increment_x:                # you can use x and y using define as well like 320 can be pun into x
    inc %cx                 # increament %cx which is x
    int $0x10
    cmp $320, %cx           # 320 is y axis of screen (number of pixels)
    je  increment_y
    jmp increment_x

increment_y:
    inc %dx                 # increament %cx which is y
    int $0x10
    cmp $200, %dx           # 200 is y axis of screen (number of pixels)
    je  change_pixel_color
    jmp increment_y

fill_loop_pixel:
    inc %dx
    int $0x10
    jmp fill_loop_pixel
# CRT screen

string_buffer:
    .string "      "

endless_loop:                   # Loop forever more
    jmp     endless_loop

# Program data

boot_message:
    .string "Boot Loader Stage 2 loaded"

