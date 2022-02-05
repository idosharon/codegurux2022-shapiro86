%define LOC 0x1234
%define JMP_LOC 0x1212

; setting cx to zombie_code
mov cx, ax
add cx, zombie_code

; moving bx to start of zombie code
mov bx, [LOC]

; moving ax to [bx] and dx to [bx+2]
mov ax, [bx]
mov dx, [bx+2]

; setting es to ds
push ds
pop es

; moving di to start of zombie code
mov di, bx

; set JMP_LOC value to zombie_code
mov [JMP_LOC], cx

; moving bx to JMP [___] opcode
mov bx, 0x26FF
; moving cx to JMP_LOC
mov cx, JMP_LOC

; searching for ax:dx (starting from es:di) 
; and replacing with bx:cx, meaning with opcode of JMP [JMP_LOC]
; in other words: putting in zombie code JMP to our zombie_code
int 0x87

; putting bomb in JMP_LOC so others won't find our code
mov word [JMP_LOC], 0xCCCC

; done with trapping the zombie, continue with our code
code:
jmp $

; zombie code
zombie_code:
jmp $