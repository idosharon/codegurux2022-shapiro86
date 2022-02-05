%define LOC 0x1234
%define XOR_KEY 0xDEAD
%define KEY 0xBEEF

%define READ_LOC (LOC+0x10)
%define JMP_LOC 0x1212

mov word [READ_LOC], 0x6042

add ax, zombie_code
push ax

push ds
pop es

mov bx, 0x26FF
mov cx, JMP_LOC

mov di, [LOC]
mov ax, [di]
mov dx, [di+2]

pop word [JMP_LOC]
int 0x87

mov word [LOC], 0xCCCC

code:
jmp $

zombie_code:
jmp $