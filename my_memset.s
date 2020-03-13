	global memset
	section .text

memset:
_my_memset:
    xor rax, rax
_begin:
    cmp rax, rdx
    je _end
    mov [rdi + rax], sil
    inc rax
    jmp _begin
_end:
    mov rax, rdi
    ret
