	global strstr
	section .text

strstr:
_my_strstr:
	jmp _do_loop
_begin:
	cmp al, 0
	je b_end
	inc rdi
_do_loop:
	mov al, [rdi]
	mov al, [rsi]
	xor rcx, rcx
_loop:
	mov al, [rdi + rcx]
	mov dl, [rsi + rcx]
	cmp dl, 0
	jz z_end
	cmp al, dl
	jne _begin
	inc rcx
	jmp _loop
z_end:
	mov rax, rdi
	jmp end
b_end:
	xor rax, rax
end:
	ret
