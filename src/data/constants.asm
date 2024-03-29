video_width equ 320
video_height equ 200
video_mem equ 0xA0000

scancode_table:
    ; padding
    db 0
    ; start
    db 0, '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '-', '=', 0x08, 0, 'Q',
    db 'W', 'E', 'R', 'T', 'Z', 'U', 'I', 'O', 'P', '[', ']', 0x0a, 'C', 'A', 'S', 'D'
    db 'F', 'G', 'H', 'J', 'K', 'L', ';', 0, 0, 0, '\', 'Y', 'X', 'C', 'V', 'B'
    db 'N', 'M', ',', '.', '/', 0, 0, 0, ' ', 0, 0x80, 0x81, 0, 0, 0, 0
    db 0, 0, 0, 0, 0, 0, 0, 0x82, 0, 0, 0, 0, 0, 0, 0, 0

scancode_table_size equ $-scancode_table