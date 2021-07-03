;0x0001f000 + 0x00101000
;adc ax,bx : ax+bx+cf -> ax
mov ax, 0xf000
mov bx, 0x0001
mov cx, 0x1000
mov dx, 0x0010
add ax, cx  ;低位相加
adc bx, dx  ;高位相加
; 和将放在 bx:ax 中
jmp $
times 510-($-$$) db 0
db 0x55, 0xaa