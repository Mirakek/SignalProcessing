__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
delay:
        push r28
        push r29
        in r28,__SP_L__
        in r29,__SP_H__
        sbiw r28,16
        in __tmp_reg__,__SREG__
        cli
        out __SP_H__,r29
        out __SREG__,__tmp_reg__
        out __SP_L__,r28
        std Y+8,r25
        std Y+7,r24
        ldd r18,Y+7
        ldd r19,Y+8
        mov r24,r18
        mov r25,r19
        lsl r24
        rol r25
        swap r24
        swap r25
        andi r25,0xf0
        eor r25,r24
        andi r24,0xf0
        eor r25,r24
        sub r24,r18
        sbc r25,r19
        lsl r24
        rol r25
        lsl r24
        rol r25
        add r24,r18
        adc r25,r19
        lsl r24
        rol r25
        lsl r24
        rol r25
        lsl r24
        rol r25
        std Y+2,r25
        std Y+1,r24
        rcall clock
        std Y+13,r22
        std Y+14,r23
        std Y+15,r24
        std Y+16,r25
        ldd r18,Y+13
        ldd r19,Y+14
        ldd r20,Y+15
        ldd r21,Y+16
        std Y+3,r18
        std Y+4,r19
        std Y+5,r20
        std Y+6,r21
        nop
.L2:
        rcall clock
        std Y+9,r22
        std Y+10,r23
        std Y+11,r24
        std Y+12,r25
        ldd r24,Y+1
        ldd r25,Y+2
        mov r21,r25
        mov r20,r24
        lsl r25
        sbc r22,r22
        sbc r23,r23
        ldd r24,Y+3
        ldd r25,Y+4
        ldd r26,Y+5
        ldd r27,Y+6
        add r24,r20
        adc r25,r21
        adc r26,r22
        adc r27,r23
        ldd r18,Y+9
        ldd r19,Y+10
        ldd r20,Y+11
        ldd r21,Y+12
        cp r18,r24
        cpc r19,r25
        cpc r20,r26
        cpc r21,r27
        brlo .L2
        nop
        nop
adiw r28,16
        in __tmp_reg__,__SREG__
        cli
        out __SP_H__,r29
        out __SREG__,__tmp_reg__
        out __SP_L__,r28
        pop r29
        pop r28
        ret
.LC2:
        .string "%f"
.LC0:
        .byte   -40
        .byte   10
        .byte   125
        .byte   57
        .byte   -40
        .byte   10
        .byte   -3
        .byte   57
        .byte   -40
        .byte   10
        .byte   125
        .byte   57
.LC1:
        .byte   -126
        .byte   80
        .byte   -6
        .byte   63
        .byte   70
        .byte   -32
        .byte   116
        .byte   -65
main:
        push r28
        push r29
        in r28,__SP_L__
        in r29,__SP_H__
        subi r28,-82
        sbc r29,__zero_reg__
        in __tmp_reg__,__SREG__
        cli
        out __SP_H__,r29
        out __SREG__,__tmp_reg__
        out __SP_L__,r28
        std Y+11,__zero_reg__
        std Y+12,__zero_reg__
        std Y+13,__zero_reg__
        std Y+14,__zero_reg__
        std Y+15,__zero_reg__
        std Y+16,__zero_reg__
        std Y+17,__zero_reg__
        std Y+18,__zero_reg__
        std Y+19,__zero_reg__
        std Y+20,__zero_reg__
        std Y+21,__zero_reg__
        std Y+22,__zero_reg__
        std Y+23,__zero_reg__
        std Y+24,__zero_reg__
        std Y+25,__zero_reg__
        std Y+26,__zero_reg__
        std Y+27,__zero_reg__
        std Y+28,__zero_reg__
        std Y+29,__zero_reg__
        std Y+30,__zero_reg__
        std Y+31,__zero_reg__
        std Y+32,__zero_reg__
        std Y+33,__zero_reg__
        std Y+34,__zero_reg__
        std Y+2,__zero_reg__
        std Y+1,__zero_reg__
        std Y+4,__zero_reg__
        std Y+3,__zero_reg__
        rjmp .L4
.L8:
        ldi r24,lo8(-67)
        ldi r25,lo8(55)
        ldi r26,lo8(-122)
        ldi r27,lo8(53)
        std Y+7,r24
        std Y+8,r25
        std Y+9,r26
        std Y+10,r27
        ldi r18,lo8(-48)
        ldi r19,lo8(15)
        ldi r20,lo8(73)
        ldi r21,lo8(65)
        ldd r22,Y+7
        ldd r23,Y+8
        ldd r24,Y+9
        ldd r25,Y+10
        rcall __mulsf3
        adiw r28,115-60
        std Y+60,r22
        std Y+61,r23
        std Y+62,r24
        std Y+63,r25
        sbiw r28,115-60
        adiw r28,115-60
        ldd r24,Y+60
        ldd r25,Y+61
        ldd r26,Y+62
        ldd r27,Y+63
        sbiw r28,115-60
        std Y+55,r24
        std Y+56,r25
        std Y+57,r26
        std Y+58,r27
        ldd r22,Y+55
        ldd r23,Y+56
        ldd r24,Y+57
        ldd r25,Y+58
        rcall sin
        std Y+59,r22
        std Y+60,r23
        std Y+61,r24
        std Y+62,r25
        ldi r18,lo8(90)
        ldi r19,lo8(20)
        ldi r20,lo8(29)
        ldi r21,lo8(67)
        ldd r22,Y+7
        ldd r23,Y+8
        ldd r24,Y+9
        ldd r25,Y+10
        rcall __mulsf3
        adiw r28,119-60
        std Y+60,r22
        std Y+61,r23
        std Y+62,r24
        std Y+63,r25
        sbiw r28,119-60
        adiw r28,119-60
        ldd r24,Y+60
        ldd r25,Y+61
        ldd r26,Y+62
        ldd r27,Y+63
        sbiw r28,119-60
        adiw r28,63-60
        std Y+60,r24
        std Y+61,r25
        std Y+62,r26
        std Y+63,r27
        sbiw r28,63-60
        adiw r28,63-60
        ldd r22,Y+60
        ldd r23,Y+61
        ldd r24,Y+62
        ldd r25,Y+63
        sbiw r28,63-60
        rcall sin
        adiw r28,67-60
        std Y+60,r22
        std Y+61,r23
        std Y+62,r24
        std Y+63,r25
        sbiw r28,67-60
        ldi r18,0
        ldi r19,0
        ldi r20,0
        ldi r21,lo8(63)
        adiw r28,67-60
        ldd r22,Y+60
        ldd r23,Y+61
        ldd r24,Y+62
        ldd r25,Y+63
        sbiw r28,67-60
        rcall __mulsf3
        adiw r28,123-60
        std Y+60,r22
        std Y+61,r23
        std Y+62,r24
        std Y+63,r25
        sbiw r28,123-60
        adiw r28,123-60
        ldd r24,Y+60
        ldd r25,Y+61
        ldd r26,Y+62
        ldd r27,Y+63
        sbiw r28,123-60
        mov r18,r24
        mov r19,r25
        mov r20,r26
        mov r21,r27
        ldd r22,Y+59
        ldd r23,Y+60
        ldd r24,Y+61
        ldd r25,Y+62
        rcall __addsf3
        subi r28,lo8(-127)
        sbci r29,hi8(-127)
        st Y,r22
        std Y+1,r23
        std Y+2,r24
        std Y+3,r25
        subi r28,lo8(127)
        sbci r29,hi8(127)
        subi r28,lo8(-127)
        sbci r29,hi8(-127)
        ld r24,Y
        ldd r25,Y+1
        ldd r26,Y+2
        ldd r27,Y+3
        subi r28,lo8(127)
        sbci r29,hi8(127)
        std Y+11,r24
        std Y+12,r25
        std Y+13,r26
        std Y+14,r27
        ldi r24,lo8(12)
        ldi r30,lo8(.LC0)
        ldi r31,hi8(.LC0)
        mov r26,r28
        mov r27,r29
        adiw r26,35
        0:
        ld r0,Z+
        st X+,r0
        dec r24
        brne 0b
        ldi r24,lo8(8)
        ldi r30,lo8(.LC1)
        ldi r31,hi8(.LC1)
        mov r26,r28
        mov r27,r29
        adiw r26,47
        0:
        ld r0,Z+
        st X+,r0
        dec r24
        brne 0b
        ldd r24,Y+47
        ldd r25,Y+48
        ldd r26,Y+49
        ldd r27,Y+50
        adiw r28,71-60
        std Y+60,r24
        std Y+61,r25
        std Y+62,r26
        std Y+63,r27
        sbiw r28,71-60
        ldd r24,Y+27
        ldd r25,Y+28
        ldd r26,Y+29
        ldd r27,Y+30
        mov r18,r24
        mov r19,r25
        mov r20,r26
        mov r21,r27
        adiw r28,71-60
        ldd r22,Y+60
        ldd r23,Y+61
        ldd r24,Y+62
        ldd r25,Y+63
        sbiw r28,71-60
        rcall __mulsf3
        subi r28,lo8(-131)
        sbci r29,hi8(-131)
        st Y,r22
        std Y+1,r23
        std Y+2,r24
        std Y+3,r25
        subi r28,lo8(131)
        sbci r29,hi8(131)
        subi r28,lo8(-131)
        sbci r29,hi8(-131)
        ld r24,Y
        ldd r25,Y+1
        ldd r26,Y+2
        ldd r27,Y+3
        subi r28,lo8(131)
        sbci r29,hi8(131)
        adiw r28,75-60
        std Y+60,r24
        std Y+61,r25
        std Y+62,r26
        std Y+63,r27
        sbiw r28,75-60
        ldd r24,Y+51
        ldd r25,Y+52
        ldd r26,Y+53
        ldd r27,Y+54
        adiw r28,79-60
        std Y+60,r24
        std Y+61,r25
        std Y+62,r26
        std Y+63,r27
        sbiw r28,79-60
        ldd r24,Y+31
        ldd r25,Y+32
        ldd r26,Y+33
        ldd r27,Y+34
        mov r18,r24
        mov r19,r25
        mov r20,r26
        mov r21,r27
        adiw r28,79-60
        ldd r22,Y+60
        ldd r23,Y+61
        ldd r24,Y+62
        ldd r25,Y+63
        sbiw r28,79-60
        rcall __mulsf3
        subi r28,lo8(-135)
        sbci r29,hi8(-135)
        st Y,r22
        std Y+1,r23
        std Y+2,r24
        std Y+3,r25
        subi r28,lo8(135)
        sbci r29,hi8(135)
        subi r28,lo8(-135)
        sbci r29,hi8(-135)
        ld r24,Y
        ldd r25,Y+1
        ldd r26,Y+2
        ldd r27,Y+3
        subi r28,lo8(135)
        sbci r29,hi8(135)
        mov r18,r24
        mov r19,r25
        mov r20,r26
        mov r21,r27
        adiw r28,75-60
        ldd r22,Y+60
        ldd r23,Y+61
        ldd r24,Y+62
        ldd r25,Y+63
        sbiw r28,75-60
        rcall __addsf3
        subi r28,lo8(-139)
        sbci r29,hi8(-139)
        st Y,r22
        std Y+1,r23
        std Y+2,r24
        std Y+3,r25
        subi r28,lo8(139)
        sbci r29,hi8(139)
        subi r28,lo8(-139)
        sbci r29,hi8(-139)
        ld r24,Y
        ldd r25,Y+1
        ldd r26,Y+2
        ldd r27,Y+3
        subi r28,lo8(139)
        sbci r29,hi8(139)
        adiw r28,83-60
        std Y+60,r24
        std Y+61,r25
        std Y+62,r26
        std Y+63,r27
        sbiw r28,83-60
        ldd r24,Y+35
        ldd r25,Y+36
        ldd r26,Y+37
        ldd r27,Y+38
        adiw r28,87-60
        std Y+60,r24
        std Y+61,r25
        std Y+62,r26
        std Y+63,r27
        sbiw r28,87-60
        ldd r24,Y+11
        ldd r25,Y+12
        ldd r26,Y+13
        ldd r27,Y+14
        mov r18,r24
        mov r19,r25
        mov r20,r26
        mov r21,r27
        adiw r28,87-60
        ldd r22,Y+60
        ldd r23,Y+61
        ldd r24,Y+62
        ldd r25,Y+63
        sbiw r28,87-60
        rcall __mulsf3
        subi r28,lo8(-143)
        sbci r29,hi8(-143)
        st Y,r22
        std Y+1,r23
        std Y+2,r24
        std Y+3,r25
        subi r28,lo8(143)
        sbci r29,hi8(143)
        subi r28,lo8(-143)
        sbci r29,hi8(-143)
        ld r24,Y
        ldd r25,Y+1
        ldd r26,Y+2
        ldd r27,Y+3
        subi r28,lo8(143)
        sbci r29,hi8(143)
        mov r18,r24
        mov r19,r25
        mov r20,r26
        mov r21,r27
        adiw r28,83-60
        ldd r22,Y+60
        ldd r23,Y+61
        ldd r24,Y+62
        ldd r25,Y+63
        sbiw r28,83-60
        rcall __addsf3
        subi r28,lo8(-147)
        sbci r29,hi8(-147)
        st Y,r22
        std Y+1,r23
        std Y+2,r24
        std Y+3,r25
        subi r28,lo8(147)
        sbci r29,hi8(147)
        subi r28,lo8(-147)
        sbci r29,hi8(-147)
        ld r24,Y
        ldd r25,Y+1
        ldd r26,Y+2
        ldd r27,Y+3
        subi r28,lo8(147)
        sbci r29,hi8(147)
        adiw r28,91-60
        std Y+60,r24
        std Y+61,r25
        std Y+62,r26
        std Y+63,r27
        sbiw r28,91-60
        ldd r24,Y+39
        ldd r25,Y+40
        ldd r26,Y+41
        ldd r27,Y+42
        adiw r28,95-60
        std Y+60,r24
        std Y+61,r25
        std Y+62,r26
        std Y+63,r27
        sbiw r28,95-60
        ldd r24,Y+15
        ldd r25,Y+16
        ldd r26,Y+17
        ldd r27,Y+18
        mov r18,r24
        mov r19,r25
        mov r20,r26
        mov r21,r27
        adiw r28,95-60
        ldd r22,Y+60
        ldd r23,Y+61
        ldd r24,Y+62
        ldd r25,Y+63
        sbiw r28,95-60
        rcall __mulsf3
        subi r28,lo8(-151)
        sbci r29,hi8(-151)
        st Y,r22
        std Y+1,r23
        std Y+2,r24
        std Y+3,r25
        subi r28,lo8(151)
        sbci r29,hi8(151)
        subi r28,lo8(-151)
        sbci r29,hi8(-151)
        ld r24,Y
        ldd r25,Y+1
        ldd r26,Y+2
        ldd r27,Y+3
        subi r28,lo8(151)
        sbci r29,hi8(151)
        mov r18,r24
        mov r19,r25
        mov r20,r26
        mov r21,r27
        adiw r28,91-60
        ldd r22,Y+60
        ldd r23,Y+61
        ldd r24,Y+62
        ldd r25,Y+63
        sbiw r28,91-60
        rcall __addsf3
        subi r28,lo8(-155)
        sbci r29,hi8(-155)
        st Y,r22
        std Y+1,r23
        std Y+2,r24
        std Y+3,r25
        subi r28,lo8(155)
        sbci r29,hi8(155)
        subi r28,lo8(-155)
        sbci r29,hi8(-155)
        ld r24,Y
        ldd r25,Y+1
        ldd r26,Y+2
        ldd r27,Y+3
        subi r28,lo8(155)
        sbci r29,hi8(155)
        adiw r28,99-60
        std Y+60,r24
        std Y+61,r25
        std Y+62,r26
        std Y+63,r27
        sbiw r28,99-60
        ldd r24,Y+43
        ldd r25,Y+44
        ldd r26,Y+45
        ldd r27,Y+46
        adiw r28,103-60
        std Y+60,r24
        std Y+61,r25
        std Y+62,r26
        std Y+63,r27
        sbiw r28,103-60
        ldd r24,Y+19
        ldd r25,Y+20
        ldd r26,Y+21
        ldd r27,Y+22
        mov r18,r24
        mov r19,r25
        mov r20,r26
        mov r21,r27
        adiw r28,103-60
        ldd r22,Y+60
        ldd r23,Y+61
        ldd r24,Y+62
        ldd r25,Y+63
        sbiw r28,103-60
        rcall __mulsf3
        subi r28,lo8(-159)
        sbci r29,hi8(-159)
        st Y,r22
        std Y+1,r23
        std Y+2,r24
        std Y+3,r25
        subi r28,lo8(159)
        sbci r29,hi8(159)
        subi r28,lo8(-159)
        sbci r29,hi8(-159)
        ld r24,Y
        ldd r25,Y+1
        ldd r26,Y+2
        ldd r27,Y+3
        subi r28,lo8(159)
        sbci r29,hi8(159)
        mov r18,r24
        mov r19,r25
        mov r20,r26
        mov r21,r27
        adiw r28,99-60
        ldd r22,Y+60
        ldd r23,Y+61
        ldd r24,Y+62
        ldd r25,Y+63
        sbiw r28,99-60
        rcall __addsf3
        subi r28,lo8(-163)
        sbci r29,hi8(-163)
        st Y,r22
        std Y+1,r23
        std Y+2,r24
        std Y+3,r25
        subi r28,lo8(163)
        sbci r29,hi8(163)
        subi r28,lo8(-163)
        sbci r29,hi8(-163)
        ld r24,Y
        ldd r25,Y+1
        ldd r26,Y+2
        ldd r27,Y+3
        subi r28,lo8(163)
        sbci r29,hi8(163)
        std Y+23,r24
        std Y+24,r25
        std Y+25,r26
        std Y+26,r27
        ldd r24,Y+1
        ldd r25,Y+2
        ldi r18,lo8(3)
        ldi r19,0
        mov r22,r18
        mov r23,r19
        rcall __divmodhi4
        or r24,r25
        breq .+2
        rjmp .L5
        ldd r24,Y+23
        ldd r25,Y+24
        ldd r26,Y+25
        ldd r27,Y+26
        adiw r28,107-60
        std Y+60,r24
        std Y+61,r25
        std Y+62,r26
        std Y+63,r27
        sbiw r28,107-60
        adiw r28,107-60
        ldd r18,Y+60
        ldd r19,Y+61
        ldd r20,Y+62
        ldd r21,Y+63
        sbiw r28,107-60
        adiw r28,107-60
        ldd r22,Y+60
        ldd r23,Y+61
        ldd r24,Y+62
        ldd r25,Y+63
        sbiw r28,107-60
        rcall __addsf3
        subi r28,lo8(-167)
        sbci r29,hi8(-167)
        st Y,r22
        std Y+1,r23
        std Y+2,r24
        std Y+3,r25
        subi r28,lo8(167)
        sbci r29,hi8(167)
        subi r28,lo8(-167)
        sbci r29,hi8(-167)
        ld r24,Y
        ldd r25,Y+1
        ldd r26,Y+2
        ldd r27,Y+3
        subi r28,lo8(167)
        sbci r29,hi8(167)
        mov r18,r27
        push r18
        mov r18,r26
        push r18
        mov r18,r25
        push r18
        push r24
        ldi r24,lo8(.LC2)
        ldi r25,hi8(.LC2)
        mov r24,r25
        push r24
        ldi r24,lo8(.LC2)
        ldi r25,hi8(.LC2)
        push r24
        rcall printf
        pop __tmp_reg__
        pop __tmp_reg__
        pop __tmp_reg__
        pop __tmp_reg__
        pop __tmp_reg__
        pop __tmp_reg__
        ldd r24,Y+11
        ldd r25,Y+12
        ldd r26,Y+13
        ldd r27,Y+14
        adiw r28,111-60
        std Y+60,r24
        std Y+61,r25
        std Y+62,r26
        std Y+63,r27
        sbiw r28,111-60
        adiw r28,111-60
        ldd r18,Y+60
        ldd r19,Y+61
        ldd r20,Y+62
        ldd r21,Y+63
        sbiw r28,111-60
        adiw r28,111-60
        ldd r22,Y+60
        ldd r23,Y+61
        ldd r24,Y+62
        ldd r25,Y+63
        sbiw r28,111-60
        rcall __addsf3
        subi r28,lo8(-171)
        sbci r29,hi8(-171)
        st Y,r22
        std Y+1,r23
        std Y+2,r24
        std Y+3,r25
        subi r28,lo8(171)
        sbci r29,hi8(171)
        subi r28,lo8(-171)
        sbci r29,hi8(-171)
        ld r24,Y
        ldd r25,Y+1
        ldd r26,Y+2
        ldd r27,Y+3
        subi r28,lo8(171)
        sbci r29,hi8(171)
        mov r18,r27
        push r18
        mov r18,r26
        push r18
        mov r18,r25
        push r18
        push r24
        ldi r24,lo8(.LC2)
        ldi r25,hi8(.LC2)
        mov r24,r25
        push r24
        ldi r24,lo8(.LC2)
        ldi r25,hi8(.LC2)
        push r24
        rcall printf
        pop __tmp_reg__
        pop __tmp_reg__
        pop __tmp_reg__
        pop __tmp_reg__
        pop __tmp_reg__
        pop __tmp_reg__
.L5:
        ldi r24,lo8(1)
        ldi r25,0
        rcall delay
        ldd r24,Y+3
        ldd r25,Y+4
        adiw r24,1
        std Y+4,r25
        std Y+3,r24
        ldi r24,lo8(1)
        ldi r25,0
        std Y+6,r25
        std Y+5,r24
        rjmp .L6
.L7:
        ldd r24,Y+5
        ldd r25,Y+6
        mov r18,r24
        mov r19,r25
        subi r18,-1
        sbci r19,-1
        ldd r24,Y+5
        ldd r25,Y+6
        lsl r24
        rol r25
        lsl r24
        rol r25
        mov r20,r28
        mov r21,r29
        subi r20,-1
        sbci r21,-1
        add r24,r20
        adc r25,r21
        adiw r24,10
        mov r30,r24
        mov r31,r25
        ld r24,Z
        ldd r25,Z+1
        ldd r26,Z+2
        ldd r27,Z+3
        lsl r18
        rol r19
        lsl r18
        rol r19
        mov r20,r28
        mov r21,r29
        subi r20,-1
        sbci r21,-1
        add r18,r20
        adc r19,r21
        subi r18,-10
        sbci r19,-1
        mov r30,r18
        mov r31,r19
        st Z,r24
        std Z+1,r25
        std Z+2,r26
        std Z+3,r27
        ldd r24,Y+5
        ldd r25,Y+6
        mov r18,r24
        mov r19,r25
        subi r18,-1
        sbci r19,-1
        ldd r24,Y+5
        ldd r25,Y+6
        lsl r24
        rol r25
        lsl r24
        rol r25
        mov r20,r28
        mov r21,r29
        subi r20,-1
        sbci r21,-1
        add r24,r20
        adc r25,r21
        adiw r24,22
        mov r30,r24
        mov r31,r25
        ld r24,Z
        ldd r25,Z+1
        ldd r26,Z+2
        ldd r27,Z+3
        lsl r18
        rol r19
        lsl r18
        rol r19
        mov r20,r28
        mov r21,r29
        subi r20,-1
        sbci r21,-1
        add r18,r20
        adc r19,r21
        subi r18,-22
        sbci r19,-1
        mov r30,r18
        mov r31,r19
        st Z,r24
        std Z+1,r25
        std Z+2,r26
        std Z+3,r27
        ldd r24,Y+5
        ldd r25,Y+6
        sbiw r24,1
        std Y+6,r25
        std Y+5,r24
.L6:
        ldd r24,Y+5
        ldd r25,Y+6
        tst r25
        brlt .+2
        rjmp .L7
        ldd r24,Y+1
        ldd r25,Y+2
        adiw r24,1
        std Y+2,r25
        std Y+1,r24
.L4:
        ldd r24,Y+3
        ldd r25,Y+4
        cpi r24,100
        cpc r25,__zero_reg__
        brge .+2
        rjmp .L8
        ldi r24,0
        ldi r25,0
        subi r28,82
        sbci r29,-1
        in __tmp_reg__,__SREG__
        cli
        out __SP_H__,r29
        out __SREG__,__tmp_reg__
        out __SP_L__,r28
        pop r29
        pop r28
        ret
