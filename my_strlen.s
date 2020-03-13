	section .text
	global strlen

strlen:
_my_strlen:
    xor rax, rax
_begin:
    mov cl, [rdi + rax]
    cmp cl, 0
    je _end
    inc rax
    jmp _begin
_end:
    ret
