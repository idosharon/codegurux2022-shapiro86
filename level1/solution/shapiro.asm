%define LOC 0x1212

start:


; fu*k surv 3 by us

push ds
pop es

add ax, kill_surv_1
push ax

mov ax, 0xCCAB
mov dx, 0xCCCC

mov bx, 0x26FF
mov cx, LOC

pop word [LOC]

int 0x87

jmp end_kill_surv_1

kill_surv_1:

; fu*k surv 1 by surv 3

push ds
pop es

mov ax, 0xD7FF
mov dx, 0xCCCC

mov bx, 0x26FF
mov cx, LOC

add word [LOC], kill_surv_2-kill_surv_1

int 0x87

dw 0xCCCC

kill_surv_2:

; fu*k surv 2 by surv 1

push ds
pop es

mov ax, 0x1000
mov dx, 0x1FFF

mov bx, 0xCCCC
mov cx, 0xCCCC

nop
nop

int 0x87

dw 0xCCCC


end_kill_surv_1:


jmp $
