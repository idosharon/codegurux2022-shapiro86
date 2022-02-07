jmp short 0x3d
int3
int3
int3
push ds
pop es
mov bx,0x11bf
mov cl,0x35
jmp short 0x8
push cx
mul bx
add ax,0x4743
loop 0xf
add di,0x4fe
stosw
pop cx
jmp short 0xe
int3
int3
int3
push ds
pop es
mov bx,0x11bf
mov cl,0x35
jmp short 0x24
push cx
mul bx
add ax,0x4743
loop 0x2b
add di,0x4fe
stosw
pop cx
jmp short 0x2a
int3
int3
int3
push ds
pop es
mov bx,0x11bf
mov cl,0x35
jmp short 0x40
push cx
mul bx
add ax,0x4743
loop 0x47
add di,0x4fe
stosw
pop cx
jmp short 0x46
int3
int3
int3
push ds
pop es
mov bx,0x11bf
mov cl,0x35
jmp short 0x5c
push cx
mul bx
add ax,0x4743
loop 0x63
add di,0x4fe
stosw
pop cx
jmp short 0x62
int3
int3
int3
push ds
pop es
mov bx,0x11bf
mov cl,0x35
jmp short 0x78
push cx
mul bx
add ax,0x4743
loop 0x7f
add di,0x4fe
stosw
pop cx
jmp short 0x7e