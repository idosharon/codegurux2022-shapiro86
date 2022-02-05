; NOTE: only possible to kill.
%define LOC 0x1234
%define JMP_LOC 0x0000

push ds
pop es

mov bx, 0x26FF

mov ax, 0xCCC3
mov dx, 0xCCCC

int 0x87

mov word [0], 0xCCCC

code:
jmp $