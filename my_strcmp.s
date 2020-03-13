	section .text
	global strcmp

strcmp:
_my_strcmp:
    xor rax, rax
_begin:
    mov cl, [rdi + rax]
    cmp cl, 0
    je _end
    cmp cl, [rsi + rax]
    jne _end
    inc rax
    jmp _begin
_end:
    mov dl, [rsi + rax]
    xor rax, rax
    mov al, cl
    sub al, dl
    ret
