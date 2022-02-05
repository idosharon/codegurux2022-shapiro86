%define LOC 0x07FE
%define JMP_LOC 0x1212

add ax, zombie_code
push ax

push ds
pop es

mov di, [LOC]
sub di, 0x3

mov ax, [di]
mov dx, [di+2]

mov bx, 0x26FF
mov cx, JMP_LOC

pop word [JMP_LOC]
int 0x87

mov word[JMP_LOC], 0xCCCC

code:
jmp $

zombie_code:
jmp $