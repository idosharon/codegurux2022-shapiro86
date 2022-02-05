%define LOC 0x1234
%define JMP_LOC 0x1212

add ax, zombie_code
push ax

push ds
pop es

mov di, LOC

mov ax, [LOC]
mov dx, [LOC+2]

mov bx, 0x26FF
mov cx, JMP_LOC

pop word [JMP_LOC]
int 0x87

code:
jmp $

zombie_code:
jmp $