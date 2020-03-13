    global _my_rindex
    section .text

rindex:
_my_rindex:
    xor rax, rax
_begin:
    cmp [rdi + rax], 0
    je _do_inc
    inc rax
    jmp _begin
_do_inc:
    cmp [rdi + rax], sil
    je _getN
    cmp rax, 0
    je _fret
    dec rax
    jmp _do_inc
_getN:
    mov rcx, rdi
    add rax, rcx
_mn:
