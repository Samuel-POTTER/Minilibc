	section .text
	global strncmp

strncmp:
_my_strncmp:
    xor rax, rax
_begin:
    mov cl, [rdi + rax]
    cmp cl, 0
    je _end
    cmp cl, [rsi + rax]
    jne _end
    cmp rdx, 0
    je _end
    inc rax
    dec rdx
    jmp _begin
_end:
    mov dl, [rsi + rax]
    xor rax, rax
    mov al, cl
    sub al, dl
    ret
