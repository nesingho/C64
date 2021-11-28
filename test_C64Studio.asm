;Hello World for 6502 CPU (C64)
;Assembler used: win2c64
    *=$7000        ;Startadresse $7000
    LDY #$00      ;init loop counter
L0
    LDA L1,Y      ;load a byte of the text
    BEQ L2        ;if zero -> end
    JSR $FFD2     ;call CHROUT
    INY           ;inc loop counter
    JMP L0        ;thanks to paul nicholls
L1
    .byte "hello world",0
L2
    RTS