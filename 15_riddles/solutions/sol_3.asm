%define LOC 0x1234
%define JMP_LOC 0x1212

add ax, zombie_code
push ax

push ds
pop es

mov bx, [LOC]
add bx, 11

mov ax, [bx]
mov dx, [bx+2]

mov di, bx

mov bx, 0x26FF
mov cx, JMP_LOC

pop word [JMP_LOC]
int 0x87

mov word [JMP_LOC], 0xCCCC


; done with trapping the zombie, continue with our code
code:
jmp $

; zombie code
zombie_code:
jmp $