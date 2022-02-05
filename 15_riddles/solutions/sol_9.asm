%define R_READ 0x1234
%define JMP_LOC 0x1212

add ax, zombie_code
push ax

push ds
pop es

mov di, [R_READ+0x2]

mov cl,0x4
shl di,cl
add di,[R_READ]



mov bx, 0x26FF
mov cx, JMP_LOC

nop
nop

mov ax, [di]
mov dx, [di+2]

pop word [JMP_LOC]
int 0x87

mov word[JMP_LOC], 0xCCCC

code:
jmp $

zombie_code:
jmp $