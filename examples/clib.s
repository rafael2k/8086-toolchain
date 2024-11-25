        section .text
callsys:                        ; common routine for ELKS system call
        push    bp
        mov     bp, sp
        push    si
        push    di
        mov     bx, [bp+4]
        mov     cx, [bp+6]
        mov     dx, [bp+8]
        mov     di, [bp+10]
        mov     si, [bp+12]
        int     0x80
        cmp     ax, 0
        jae     L01             ; success
        neg     ax
;        mov     [errno], ax
        mov     ax, -1
L01:
        pop     di
        pop     si
        pop     bp
        ret

        global _exit
        global __exit
_exit:                          ; C exit temp comes here
__exit:                         ; _exit
        mov     ax, 1
        jmp     callsys

        global _fork
_fork:
        mov     ax, 2
        jmp     callsys

        global _read
_read:
        mov     ax, 3
        jmp     callsys

        global _write
_write:
        mov     ax, 4
        jmp     callsys
