.text

.pool
.set JUMP_BACK,   0x180018004
.set P1, 0x36000040
.set A1, 0x18001F5EC
.set P2, 0x35000068
.set A2, 0x18001F600
.set P3, 0x35000040
.set A3, 0x18001f844
.set P4, 0x34000140
.set A4, 0x18001F858
.set P5, 0x370000a0
.set A5, 0x18001F884
.set P6, 0xd2800000
.set A6, 0x18002facc
.set P7, 0xd65f03c0
.set A7, 0x18002FAD0
.set P8, 0xd2800020
.set A8, 0x1800315d0
.set P9, 0x6E777000
.set A9, 0x180087212

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

  LDR X5, =A9
  LDR W6, =P9
  STR W6, [X5]

  LDR X5, =JUMP_BACK
  BR  X5
