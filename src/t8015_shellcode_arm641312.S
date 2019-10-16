.text

.pool
.set JUMP_BACK,   0x180018004
.set P1, 0x36000040 ; force recovery
.set A1, 0x18001EFD8 ; force recovery
.set P2, 0x35000068 ; force recovery
.set A2, 0x18001EFF4 ; force recovery
.set P3, 0x52800014 ; data W20, 0xFFFFFFFF
.set A3, 0x18002FA98 ; address 1
.set P4, 0xD65F03C0 ; data return
.set A4, 0x18002FD5C ; address panic
.set P5, 0xD2800020 ; data debug mode
.set A5, 0x180031a04 ; address debug mode
.set P6, 0x35000040 ; force recovery
.set A6, 0x18001F454 ; force recovery
.set P7, 0x340000c0 ; force recovery
.set A7, 0x18001F468 ; force recovery
.set P8, 0x370000a0 ; force recovery
.set A8, 0x18001F484 ; force recovery
.set P9, 0x6E777000 ; data pwnle
.set A9, 0x18008E2E8 ; address apple mobile device
.set P10, 0x52800014 ; data W20, 0xFFFFFFFF
.set A10, 0x180073EAC ; address 2

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

  LDR X5, =A10
  LDR W6, =P10
  STR W6, [X5]

  LDR X5, =JUMP_BACK
  BR  X5
