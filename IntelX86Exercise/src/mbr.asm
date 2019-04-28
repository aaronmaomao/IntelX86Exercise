;主引导程序

org 0x7c00

jmp near start

msg db 'H',0x07,'e', 0x07,'l', 0x07,'l', 0x07,'o', 0x07,'!', 0x07,' ', 0x07

start:
	mov ax, cx
	mov ds, ax

	mov ax, 0xb800
	mov es, ax

	cld
	mov si, msg
	mov di, 0
	mov cx, (start-msg)/2
	rep movsw

fin:
	jmp near fin

times 510-($-$$) db 0
db 0x55,0xaa

times 1474048 db 0
