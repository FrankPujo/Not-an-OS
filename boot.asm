call greet					; run greet

jmp $						; loop					(?)

greet:						; greet subroutine
	mov ah, 0x0e			; set print mode		(?)
	mov al, "H"				; keep "H" letter 
	int 0x10				; print					(?)

times 510-($-$$) db 0		; fill 510 bytes
dw 0xaa55					; bootloader