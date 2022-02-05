%define JMP_LOC 0x1212

mov si, ax
add si, zombie_code

mov cx, 0x8

push ds
pop es

loop:
dec cx
mov ax, 0x1111
mul cx

mov di, ax

mov ax, 0xE3FF
mov dx, 0xCCCC

mov bx, 0x26FF
push cx
mov cx, JMP_LOC

mov word [JMP_LOC], si

int 0x87

mov word [JMP_LOC], 0xCCCC
pop cx

jnz loop

code:
jmp $


zombie_code:
jmp $