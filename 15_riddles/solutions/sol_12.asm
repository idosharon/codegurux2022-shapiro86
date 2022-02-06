%define R_READ 0x1234
%define LOC 0xBEEF
%define JMP_LOC 0x1212

mov word [R_READ], 0x4154

add ax, zombie_code
push ax

push ds
pop es

mov cx, 0xC
wait_loop:
nop
nop
nop
loop wait_loop

mov di, [LOC]
add di, 0x1C

mov bx, 0x26FF
mov cx, JMP_LOC

mov ax, [di]
mov dx, [di+2]

pop word [JMP_LOC]

int 0x87

mov word[JMP_LOC], 0xCCCC

code:
jmp $

zombie_code:
jmp $