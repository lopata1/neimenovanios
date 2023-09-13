; function fill_screen
; param1 = color
fill_screen:
    push ebp
    mov ebp, esp

    mov ecx, video_width*video_height
    mov al, [ebp+8]
    mov edi, video_mem

    rep stosb

    mov esp, ebp
    pop ebp
    ret