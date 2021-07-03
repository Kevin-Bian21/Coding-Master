mov ax, 0b800h
mov ds, ax

mov byte [0x00], 'H'
mov byte [0x02], 'e'
mov byte [0x04], 'l'
mov byte [0x06], 'l'
mov byte [0x08], 'o'
mov byte [0x0a], ','
mov byte [0x0c], 'W'
mov byte [0x0e], 'o'
mov byte [0x10], 'r'
mov byte [0x12], 'l'
mov byte [0x14], 'd'
mov byte [0x16], '!'

jmp $  ; $:一个标号，代表当前汇编地址，这行代码是为了让程序不直接退出，等同于:
;label: jmp label

times 510-($-$$) db 0 ;没用到的空间都用0填充
db 0x55, 0xaa ;在最后填充 0x55,和0xaa，刚好占满512个字节。