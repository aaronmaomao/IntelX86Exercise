;主引导程序

org 0x7c00

mov ax, 0xb800
mov es, ax

mov byte[es:0000], 'H'
mov byte[es:0x01],0x07
mov byte[es:0002], 'e'
mov byte[es:0x03],0x07

mov cx, cs
mov ds, cx

fin:
	jmp near fin

number:
	db 0,0,0,0,0

times 510-($-$$) db 0
db 0x55,0xaa

times 1474048 db 0
