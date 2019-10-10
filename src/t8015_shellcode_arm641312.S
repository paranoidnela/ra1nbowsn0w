.text

.pool
.set JUMP_BACK,   0x180018004
.set P1, 0x36000040
.set A1, 0x18001EFD8
.set P2, 0x35000068
.set A2, 0x18001EFF4
.set P3, 0xD2800000
.set A3, 0x18002FD28
.set P4, 0xD65F03C0
.set A4, 0x18002FD2C
.set P5, 0xD2800020
.set A5, 0x180031a04
.set P6, 0x35000040
.set A6, 0x18001F454
.set P7, 0x340000c0
.set A7, 0x18001F468
.set P8, 0x370000a0
.set A8, 0x18001F484

.globl _main
_main:
  MSR DAIFSET, #0xF

  LDR X5, =A1
  LDR W6, =P1
  STR W6, [X5]

  LDR X5, =A2
  LDR W6, =P2
  STR W6, [X5]
				 
  LDR X5, =A3                                                                                                                                                             
  LDR W6, =P3
  STR W6, [X5]

  LDR X5, =A4
  LDR W6, =P4
  STR W6, [X5]

  LDR X5, =A5
  LDR W6, =P5
  STR W6, [X5]

  LDR X5, =A6
  LDR W6, =P6
  STR W6, [X5]

  LDR X5, =A7
  LDR W6, =P7
  STR W6, [X5]

  LDR X5, =A8
  LDR W6, =P8
  STR W6, [X5]

  LDR X5, =JUMP_BACK
  BR  X5
