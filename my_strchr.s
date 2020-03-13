	global strchr
	section .text

strchr:
_my_strchr:
    xor rax, rax
_begin:
    mov cl, [rdi + rax]
    cmp cl, 0
    je _end
    cmp cl, sil
    jne _pend
    add rax, rdi
_pend:  
    inc rax
    jmp _begin
_end:
    xor rax, rax
    ret
