;不产生进位
mov ax, 0x0001
mov bx, 0x0002
add ax, bx
;产生进位
mov ax, 0xf000
mov bx, 0x1000
add ax, bx
;不产生借位的减法
mov cx, 0x0002
mov dx, 0x0001
sub cx, dx
;产生借位的减法
mov cx, 0x0001
mov dx, 0x0002
sub cx, dx

jmp $
times 510-($-$$) db 0
db 0x55, 0xaa