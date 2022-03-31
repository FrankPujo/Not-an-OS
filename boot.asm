; "cat" program

mov ah, 0
int 0x16				; receive input in al

mov ah, 0x0e			; initialize output
int 0x10				; output

jmp $
times 510-($-$$) db 0
db 0x55, 0xaa			; final bytes for booting