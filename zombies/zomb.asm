00000000  EB3B              jmp short 0x3d
00000002  CC                int3
00000003  CC                int3
00000004  CC                int3
00000005  1E                push ds
00000006  07                pop es
00000007  BBBF11            mov bx,0x11bf
0000000A  B135              mov cl,0x35
0000000C  EBFA              jmp short 0x8
0000000E  51                push cx
0000000F  F7E3              mul bx
00000011  054347            add ax,0x4743
00000014  E2F9              loop 0xf
00000016  81C7FE06          add di,0x6fe
0000001A  AB                stosw
0000001B  59                pop cx
0000001C  EBF0              jmp short 0xe
0000001E  CC                int3
0000001F  CC                int3
00000020  CC                int3
00000021  1E                push ds
00000022  07                pop es
00000023  BBBF11            mov bx,0x11bf
00000026  B135              mov cl,0x35
00000028  EBFA              jmp short 0x24
0000002A  51                push cx
0000002B  F7E3              mul bx
0000002D  054347            add ax,0x4743
00000030  E2F9              loop 0x2b
00000032  81C7FE06          add di,0x6fe
00000036  AB                stosw
00000037  59                pop cx
00000038  EBF0              jmp short 0x2a
0000003A  CC                int3
0000003B  CC                int3
0000003C  CC                int3
0000003D  1E                push ds
0000003E  07                pop es
0000003F  BBBF11            mov bx,0x11bf
00000042  B135              mov cl,0x35
00000044  EBFA              jmp short 0x40
00000046  51                push cx
00000047  F7E3              mul bx
00000049  054347            add ax,0x4743
0000004C  E2F9              loop 0x47
0000004E  81C7FE06          add di,0x6fe
00000052  AB                stosw
00000053  59                pop cx
00000054  EBF0              jmp short 0x46
00000056  CC                int3
00000057  CC                int3
00000058  CC                int3
00000059  1E                push ds
0000005A  07                pop es
0000005B  BBBF11            mov bx,0x11bf
0000005E  B135              mov cl,0x35
00000060  EBFA              jmp short 0x5c
00000062  51                push cx
00000063  F7E3              mul bx
00000065  054347            add ax,0x4743
00000068  E2F9              loop 0x63
0000006A  81C7FE06          add di,0x6fe
0000006E  AB                stosw
0000006F  59                pop cx
00000070  EBF0              jmp short 0x62
00000072  CC                int3
00000073  CC                int3
00000074  CC                int3
00000075  1E                push ds
00000076  07                pop es
00000077  BBBF11            mov bx,0x11bf
0000007A  B135              mov cl,0x35
0000007C  EBFA              jmp short 0x78
0000007E  51                push cx
0000007F  F7E3              mul bx
00000081  054347            add ax,0x4743
00000084  E2F9              loop 0x7f
00000086  81C7FE06          add di,0x6fe
0000008A  AB                stosw
0000008B  59                pop cx
0000008C  EBF0              jmp short 0x7e
