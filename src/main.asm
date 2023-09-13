[bits 32]
[org 0x10000]
kmain:
    call enable_interrupts

    call screen_rgb_loop



screen_rgb_loop:
    push ebp
    mov ebp, esp
    sub esp, 4

    mov dword [ebp-4], 0

    xor eax, eax

.loop:
    push eax
    call fill_screen

    push 50
    call sleep

    mov eax, [ebp-4]
    inc eax
    mov [ebp-4], eax

    jmp .loop

    mov esp, ebp
    pop ebp
    ret


%include "src/sys/timer.asm"
%include "src/sys/interrupts.asm"
%include "src/sys/input.asm"
%include "src/sys/output.asm"

%include "src/data/interrupt.asm"
%include "src/data/globals.asm"
%include "src/data/constants.asm"
%include "src/data/string_constants.asm"
