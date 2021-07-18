;8位乘法
mov al, 0x02
mov ah, 0xf1
mul ah

;16位乘法
mov ax, 0x0002
mov dx, 0xf000
mul dx

;16位除法
mov ax, 0x0004
mov bl, 0x02
div bl

;32位除法
mov dx, 0x0008
mov ax, 0x0006
mov cx, 0x0002
div cx

jmp $
times 510-($-$$) db 0
db 0x55, 0xaa