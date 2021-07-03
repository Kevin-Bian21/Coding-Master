mov cx, 100 ;设定循环次数
mov ax, 0x0000
;循环部分，每循环一次cx减一，为0退出循环
sum:
    add ax, cx
    loop sum
jmp $
times 510-($-$$) db 0
db 0x55, 0xaa