	global memcpy
	section .text

memcpy:
_my_memcpy:
    xor rax, rax
_begin:
    cmp rax, rdx
    je _end
    mov dl, [rsi + rax]
    mov [rdi + rax], dl
    inc rax
    jmp _begin
_end:
    mov rax, rdi
    ret
