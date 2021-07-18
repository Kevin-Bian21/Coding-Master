;在32位除法运算中中可能会产生溢出的问题
;为此我们可以使用堆栈来解决该问题
;这里我们先连了解一下堆栈

;设置ss寄存器
mov bx, 0x0000
mov ss, bx
;设置sp寄存器
mov sp, 0x0000
;将ax压入栈中
push ax
;ax弹出栈
pop ax

jmp $
times 510-($-$$) db 0
db 0x55, 0xaa