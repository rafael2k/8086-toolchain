; Disassembly of file: nasm.obj
; Thu Aug 26 20:33:50 2010
; Mode: 16 bits
; Syntax: YASM/NASM
; Instruction set: 80186


global main_
global _tasm_compatible_mode
global _maxbits
global _globalrel
global _ofmt
global _ofile
global _optimizing
global _user_nolist
global _textopts
global _global_offset_changed
global _prev_offset_changed
global _abs_offset
global _abs_seg
global _stall_count
global _dfmt
global _in_abs_seg
global _pass0
global _passn

extern __argc                                           ; byte
extern _big_code_                                       ; byte
extern _cstart_                                         ; byte
extern _maxbits                                         ; byte
extern sscanf_                                          ; byte
extern nasm_strnicmp_                                   ; byte
extern src_get_linnum_                                  ; byte
extern strcpy_                                          ; byte
extern src_set_linnum_                                  ; byte
extern src_set_fname_                                   ; near
extern vsnprintf_                                       ; near
extern find_directive_                                  ; far
extern nasm_skip_word_                                  ; far
extern nasm_zap_spaces_rev_                             ; near
extern _stall_count                                     ; far
extern cleanup_insn_                                    ; byte
extern raa_write_                                       ; far
extern assemble_                                        ; near
extern __I8LS                                           ; far
extern insn_size_                                       ; far
extern saa_wstruct_                                     ; near
extern parse_line_                                      ; byte
extern float_option_                                    ; byte
extern _globalrel                                       ; word
extern _user_nolist                                     ; near
extern reloc_value_                                     ; byte
extern _abs_seg                                         ; byte
extern reloc_seg_                                       ; byte
extern is_reloc_                                        ; byte
extern evaluate_                                        ; byte
extern stdscan_                                         ; byte
extern stdscan_set_                                     ; far
extern stdscan_reset_                                   ; far
extern define_common_                                   ; far
extern readnum_                                         ; word
extern nasm_zap_spaces_fwd_                             ; far
extern seg_alloc_                                       ; byte
extern declare_as_global_                               ; far
extern is_extern_                                       ; far
extern atoi_                                            ; byte
extern raa_read_                                        ; byte
extern _abs_offset                                      ; far
extern memcpy_                                          ; far
extern saa_rstruct_                                     ; word
extern saa_rewind_                                      ; far
extern _global_offset_changed                           ; word
extern _in_abs_seg                                      ; far
extern _globalbits                                      ; near
extern define_label_                                    ; far
extern redefine_label_                                  ; byte
extern _passn                                           ; far
extern _prev_offset_changed                             ; far
extern nasm_strdup_                                     ; far
extern getenv_                                          ; far
extern perror_                                          ; far
extern __IsTable                                        ; far
extern strcspn_                                         ; far
extern nasm_realloc_                                    ; near
extern fgets_                                           ; far
extern _lpostfix                                        ; far
extern _lprefix                                         ; near
extern _textopts                                        ; word
extern _nasm_version                                    ; far
extern _nasm_date                                       ; far
extern _nasm_compile_options                            ; near
extern _tasm_compatible_mode                            ; far
extern dfmt_list_                                       ; word
extern exit_                                            ; byte
extern ofmt_list_                                       ; byte
extern printf_                                          ; far
extern nasm_stricmp_                                    ; byte
extern dfmt_find_                                       ; byte
extern pp_pre_undefine_                                 ; near
extern pp_pre_include_                                  ; far
extern strtoul_                                         ; byte
extern _optimizing                                      ; far
extern ofmt_find_                                       ; word
extern strchr_                                          ; far
extern nasm_malloc_                                     ; byte
extern strncpy_                                         ; word
extern nasm_skip_spaces_                                ; near
extern stdscan_cleanup_                                 ; near
extern eval_cleanup_                                    ; near
extern saa_free_                                        ; far
extern raa_free_                                        ; byte
extern fflush_                                          ; byte
extern cleanup_labels_                                  ; word
extern _dfmt                                            ; word
extern init_labels_                                     ; far
extern remove_                                          ; word
extern src_get_                                         ; far
extern _ofile                                           ; far
extern _nasmlist                                        ; far
extern pp_include_path_                                 ; word
extern eval_global_info_                                ; far
extern lookup_label_                                    ; byte
extern parser_global_info_                              ; byte
extern pp_extra_stdmac_                                 ; byte
extern _null_debug_form                                 ; word
extern seg_init_                                        ; far
extern _nasmpp                                          ; far
extern saa_init_                                        ; far
extern raa_init_                                        ; byte
extern nasm_init_malloc_error_                          ; far
extern tolower_init_                                    ; far
extern nasm_set_verror_                                 ; word
extern _pass0                                           ; byte
extern time_                                            ; far
extern fclose_                                          ; far
extern nasm_free_                                       ; far
extern strlen_                                          ; word
extern fprintf_                                         ; word
extern ___iob                                           ; far
extern nasm_error_                                      ; near
extern fopen_                                           ; far
extern strcmp_                                          ; far
extern _ofmt                                            ; far
extern snprintf_                                        ; far
extern gmtime_                                          ; byte
extern pp_pre_define_                                   ; byte
extern strftime_                                        ; byte
extern localtime_                                       ; far
extern __I8DQE                                          ; far
extern __I8ME                                           ; far
extern puts_                                            ; far
extern fputc_                                           ; byte
extern fputs_                                           ; byte
extern __STK                                            ; byte
extern _of_bin                                          ; byte

ISORTAB3_GROUP GROUP ISORTAB3CONST, ISORTAB3CONST2, ISORTAB3_DATA, ISORTAB3_BSS


SECTION nasm_TEXT align=1 execute                       ; section number 1, code

        push    ax                                      ; 0000 _ 50
        mov     ax, 6                                   ; 0001 _ B8, 0006
        call    far puts_                               ; 0004 _ 9A, 0000 0000(far)
        pop     ax                                      ; 0009 _ 58
        push    si                                      ; 000A _ 56
        push    di                                      ; 000B _ 57
        mov     si, bx                                  ; 000C _ 89. DE
        mov     di, cx                                  ; 000E _ 89. CF
        test    cx, cx                                  ; 0010 _ 85. C9
        jnz     ?_001                                   ; 0012 _ 75, 04
        test    bx, bx                                  ; 0014 _ 85. DB
        jz      ?_004                                   ; 0016 _ 74, 40
?_001:  call    far __I8ME                              ; 0018 _ 9A, 0000 0000(far)
        mov     ds, di                                  ; 001D _ 8E. DF
        test    byte [si+0BH], 04H                      ; 001F _ F6. 44, 0B, 04
        jnz     ?_002                                   ; 0023 _ 75, 0B
        mov     ax, word [si+0EH]                       ; 0025 _ 8B. 44, 0E
        sub     ax, word [si+4H]                        ; 0028 _ 2B. 44, 04
; Note: Immediate operand could be made smaller by sign extension
        cmp     ax, 1                                   ; 002B _ 3D, 0001
        ja      ?_003                                   ; 002E _ 77, 0F
?_002:  mov     bx, si                                  ; 0030 _ 89. F3
        mov     cx, di                                  ; 0032 _ 89. F9
        mov     ax, 10                                  ; 0034 _ B8, 000A
        call    far __I8DQE                             ; 0037 _ 9A, 0000 0000(far)
        pop     di                                      ; 003C _ 5F
        pop     si                                      ; 003D _ 5E
        ret                                             ; 003E _ C3

?_003:  lds     bx, word [si]                           ; 003F _ C5. 1C
        mov     byte [bx], 10                           ; 0041 _ C6. 07, 0A
        mov     al, byte [bx]                           ; 0044 _ 8A. 07
        cmp     al, 10                                  ; 0046 _ 3C, 0A
        jz      ?_002                                   ; 0048 _ 74, E6
        mov     ds, di                                  ; 004A _ 8E. DF
        or      byte [si+0BH], 10H                      ; 004C _ 80. 4C, 0B, 10
        inc     word [si+4H]                            ; 0050 _ FF. 44, 04
        inc     word [si]                               ; 0053 _ FF. 04
        pop     di                                      ; 0055 _ 5F
        pop     si                                      ; 0056 _ 5E
        ret                                             ; 0057 _ C3

?_004:  call    far localtime_                          ; 0058 _ 9A, 0000 0000(far)
        pop     di                                      ; 005D _ 5F
        pop     si                                      ; 005E _ 5E
        ret                                             ; 005F _ C3

?_005:                                                  ; byte
        db 6DH, 01H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0060 _ m.......
?_006:  add     al, 0                                   ; 0068 _ 04, 00
; Error: This is unlikely to be code
;       add     byte [bx+si], al                        ; 006A _ 00. 00
        db 00H, 00H
; Error: This is unlikely to be code
;       add     byte [bx+si], al                        ; 006C _ 00. 00

        db 00H, 00H, 00H, 00H                           ; 006C _ ....
?_007:
; Error: This is unlikely to be code
;       add     byte [fs:bx+si], al                     ; 0070 _ 64: 00. 00
        db 64H, 00H, 00H
; Error: This is unlikely to be code
;       add     byte [bx+si], al                        ; 0073 _ 00. 00

        db 00H, 00H, 00H, 00H, 00H                      ; 0073 _ .....
?_008:  nop                                             ; 0078 _ 90
        add     word [bx+si], ax                        ; 0079 _ 01. 00
; Error: This is unlikely to be code
;       add     byte [bx+si], al                        ; 007B _ 00. 00
        db 00H, 00H
; Error: This is unlikely to be code
;       add     byte [bx+si], al                        ; 007D _ 00. 00

        db 00H, 00H, 00H                                ; 007D _ ...
?_009:  sbb     byte [bx+si], al                        ; 0080 _ 18. 00
; Error: This is unlikely to be code
;       add     byte [bx+si], al                        ; 0082 _ 00. 00
        db 00H, 00H
; Error: This is unlikely to be code
;       add     byte [bx+si], al                        ; 0084 _ 00. 00

        db 00H, 00H, 00H, 00H                           ; 0084 _ ....
?_010:  cmp     al, 0                                   ; 0088 _ 3C, 00
; Error: This is unlikely to be code
;       add     byte [bx+si], al                        ; 008A _ 00. 00
        db 00H, 00H
; Error: This is unlikely to be code
;       add     byte [bx+si], al                        ; 008C _ 00. 00

        db 00H, 00H, 00H, 00H                           ; 008C _ ....
?_011:  cmp     al, 0                                   ; 0090 _ 3C, 00
; Error: This is unlikely to be code
;       add     byte [bx+si], al                        ; 0092 _ 00. 00
        db 00H, 00H
; Error: This is unlikely to be code
;       add     byte [bx+si], al                        ; 0094 _ 00. 00

        db 00H, 00H, 00H, 00H, 50H, 0B8H, 1EH, 00H      ; 0094 _ ....P...
        db 9AH                                          ; 009C _ .
        dd puts_                                        ; 009D _ 00000000 (far)
        dd 55575658H, 0EC83E589H                        ; 00A1 _ 1431787096 -326900343 
        dd 8EC78916H, 0A458BDAH                         ; 00A9 _ -1899525866 172329946 
        dd 0FA468999H, 0B1F85689H                       ; 00B1 _ -96040551 -1309124983 
        dd 89FAD30FH, 5689EE56H                         ; 00B9 _ -1980050673 1451880022 
        dd 83C289F0H, 4E8B46EAH                         ; 00C1 _ -2084402704 1317750506 
        dd 00D983F8H, 83EE5E8BH                         ; 00C9 _ 14255096 -2081530229 
        dd 468B00DBH, 00001DF0H                         ; 00D1 _ 1183514843 7664 
        db 0BEH                                         ; 00D9 _ .
        dw nasm_TEXT:?_005                              ; 00DA _ 0060H (segrel)
        dw 070EH                                        ; 00DC _ 1806 
        db 9AH                                          ; 00DE _ .
        dd strftime_                                    ; 00DF _ 00000000 (far)
        dd 89EA4689H, 4E89FE5EH                         ; 00E3 _ -1981135223 1317666398 
        dd 0F25689FCH, 83FA568BH                        ; 00EB _ -229209604 -2080745845 
        dd 4E8B45EAH, 00D983F8H                         ; 00F3 _ 1317750250 14255096 
        dd 83EE5E8BH, 468B00DBH                         ; 00FB _ -2081530229 1183514843 
        dd 00001DF0H                                    ; 0103 _ 7664 
        db 0BEH                                         ; 0107 _ .
        dw nasm_TEXT:?_006                              ; 0108 _ 0068H (segrel)
        dw 070EH                                        ; 010A _ 1806 
        db 9AH                                          ; 010C _ .
        dd pp_pre_define_                               ; 010D _ 00000000 (far)
        dd 01F2768BH, 0F27689D6H                        ; 0111 _ 32667275 -227112490 
        dd 11FC568BH, 0F45689CAH                        ; 0119 _ 301749899 -195655222 
        dd 11FE568BH, 0FE5689DAH                        ; 0121 _ 301880971 -27883046 
        dd 11EA568BH, 0FC5689C2H                        ; 0129 _ 300570251 -61437502 
        dd 83FA568BH, 4E8B01EAH                         ; 0131 _ -2080745845 1317732842 
        dd 00D983F8H, 83EE5E8BH                         ; 0139 _ 14255096 -2081530229 
        dd 468B00DBH, 00001DF0H                         ; 0141 _ 1183514843 7664 
        db 0BEH                                         ; 0149 _ .
        dw nasm_TEXT:?_007                              ; 014A _ 0070H (segrel)
        dw 070EH                                        ; 014C _ 1806 
        db 9AH                                          ; 014E _ .
        dd pp_pre_define_                               ; 014F _ 00000000 (far)
        dd 29F2768BH, 0F27689D6H                        ; 0153 _ 703755915 -227112490 
        dd 19F4568BH, 0F45689CAH                        ; 015B _ 435443339 -195655222 
        dd 19FE568BH, 0FE5689DAH                        ; 0163 _ 436098699 -27883046 
        dd 19FC568BH, 0FC5689C2H                        ; 016B _ 435967627 -61437502 
        dd 81FA568BH, 8B012BC2H                         ; 0173 _ -2114300277 -1962857534 
        dd 0D183F84EH, 0EE5E8B00H                       ; 017B _ -779880370 -295793920 
        dd 8B00D383H, 0015F046H                         ; 0183 _ -1962880125 1437766 
        db 00H, 0BEH                                    ; 018B _ ..
        dw nasm_TEXT:?_008                              ; 018D _ 0078H (segrel)
        dw 070EH                                        ; 018F _ 1806 
        db 9AH                                          ; 0191 _ .
        dd pp_pre_define_                               ; 0192 _ 00000000 (far)
        dd 01F2768BH, 0F4568BD6H                        ; 0196 _ 32667275 -195654698 
        dd 5689CA11H, 0FE5E13F6H                        ; 019E _ 1451870737 -27388938 
        dd 11FC568BH, 0EC5689C2H                        ; 01A6 _ 301749899 -329872958 
        dd 990E458BH, 0B1FA5689H                        ; 01AE _ -1727117941 -1308993911 
        dd 01FAD30FH, 0FA468BC6H                        ; 01B6 _ 33215247 -96039994 
        dd 11F64611H, 0EC5611D3H                        ; 01BE _ 301352465 -329903661 
        dd 8BEC468BH, 0F289F64EH                        ; 01C6 _ -1947449717 -225839538 
        db 0BEH                                         ; 01CE _ .
        dw nasm_TEXT:?_009                              ; 01CF _ 0080H (segrel)
        dw 070EH                                        ; 01D1 _ 1806 
        db 9AH                                          ; 01D3 _ .
        dd strftime_                                    ; 01D4 _ 00000000 (far)
        dd 89EC4689H, 0D689F64EH                        ; 01D8 _ -1981004151 -695601586 
        dd 9904458BH, 0B1FA5689H                        ; 01E0 _ -1727773301 -1308993911 
        dd 01FAD30FH, 0FA468BC6H                        ; 01E8 _ 33215247 -96039994 
        dd 11F64611H, 0EC5611D3H                        ; 01F0 _ 301352465 -329903661 
        dd 8BEC468BH, 0F289F64EH                        ; 01F8 _ -1947449717 -225839538 
        db 0BEH                                         ; 0200 _ .
        dw nasm_TEXT:?_010                              ; 0201 _ 0088H (segrel)
        dw 070EH                                        ; 0203 _ 1806 
        db 9AH                                          ; 0205 _ .
        dd strftime_                                    ; 0206 _ 00000000 (far)
        dd 89EC4689H, 0D689F64EH                        ; 020A _ -1981004151 -695601586 
        dd 9902458BH, 0B1FA5689H                        ; 0212 _ -1727904373 -1308993911 
        dd 01FAD30FH, 0FA468BC6H                        ; 021A _ 33215247 -96039994 
        dd 11F64611H, 0EC5611D3H                        ; 0222 _ 301352465 -329903661 
        dd 8BEC468BH, 0F289F64EH                        ; 022A _ -1947449717 -225839538 
        db 0BEH                                         ; 0232 _ .
        dw nasm_TEXT:?_011                              ; 0233 _ 0090H (segrel)
        dw 070EH                                        ; 0235 _ 1806 
        db 9AH                                          ; 0237 _ .
        dd strftime_                                    ; 0238 _ 00000000 (far)
        dd 89EC4689H, 0D689F64EH                        ; 023C _ -1981004151 -695601586 
        dd 8999058BH, 0D30FB1D7H                        ; 0244 _ -1986460277 -753946153 
        dd 11C601FAH, 0D311F67EH                        ; 024C _ 298189306 -753797506 
        dd 8BEC5611H, 4E8BEC46H                         ; 0254 _ -1947445743 1317792838 
        db 0F6H, 89H, 0F2H                              ; 025C _ ...
?_012:  mov     sp, bp                                  ; 025F _ 89. EC
        pop     bp                                      ; 0261 _ 5D
        pop     di                                      ; 0262 _ 5F
        pop     si                                      ; 0263 _ 5E
        ret                                             ; 0264 _ C3

; Note: Inaccessible code
        mov     ax, 204                                 ; 0265 _ B8, 00CC
        call    far puts_                               ; 0268 _ 9A, 0000 0000(far)
        push    bx                                      ; 026D _ 53
        push    cx                                      ; 026E _ 51
        push    dx                                      ; 026F _ 52
        push    si                                      ; 0270 _ 56
        push    di                                      ; 0271 _ 57
        push    bp                                      ; 0272 _ 55
        mov     bp, sp                                  ; 0273 _ 89. E5
        sub     sp, 172                                 ; 0275 _ 81. EC, 00AC
        sub     bp, 128                                 ; 0279 _ 81. ED, 0080
        mov     ax, gmtime_                             ; 027D _ B8, 0000(segrel)
        mov     dx, seg gmtime_                         ; 0280 _ BA, 0000(sseg)
        call    far snprintf_                           ; 0283 _ 9A, 0000 0000(far)
        mov     word [bp+7AH], ax                       ; 0288 _ 89. 46, 7A
        mov     word [bp+7CH], dx                       ; 028B _ 89. 56, 7C
        test    dx, dx                                  ; 028E _ 85. D2
        jnz     ?_013                                   ; 0290 _ 75, 07
        test    ax, ax                                  ; 0292 _ 85. C0
        jnz     ?_013                                   ; 0294 _ 75, 03
        jmp     ?_014                                   ; 0296 _ E9, 009E

?_013:  mov     cx, 9                                   ; 0299 _ B9, 0009
        push ss                                         ; 029C _ 16
        pop  es                                         ; 029D _ 07
        lea     di, [bp+54H]                            ; 029E _ 8D. 7E, 54
        mov     ds, dx                                  ; 02A1 _ 8E. DA
        mov     si, ax                                  ; 02A3 _ 89. C6
        rep movsw                                       ; 02A5 _ F3: A5
        lea     dx, [bp+54H]                            ; 02A7 _ 8D. 56, 54
        push ss                                         ; 02AA _ 16
        push    dx                                      ; 02AB _ 52
        mov     ax, ISORTAB3CONST                       ; 02AC _ B8, 0000(seg)
        push    ax                                      ; 02AF _ 50
        mov     ax, ISORTAB3_GROUP:?_331                ; 02B0 _ B8, 0240(segrel)
        push    ax                                      ; 02B3 _ 50
        mov     bx, 128                                 ; 02B4 _ BB, 0080
        mov     dx, ss                                  ; 02B7 _ 8C. D2
        lea     ax, [bp-2CH]                            ; 02B9 _ 8D. 46, D4
        call    far _ofmt                               ; 02BC _ 9A, 0000 0000(far)
        mov     dx, ss                                  ; 02C1 _ 8C. D2
        lea     ax, [bp-2CH]                            ; 02C3 _ 8D. 46, D4
        call    far strcmp_                             ; 02C6 _ 9A, 0000 0000(far)
        lea     dx, [bp+54H]                            ; 02CB _ 8D. 56, 54
        push ss                                         ; 02CE _ 16
        push    dx                                      ; 02CF _ 52
        mov     ax, ISORTAB3CONST                       ; 02D0 _ B8, 0000(seg)
        push    ax                                      ; 02D3 _ 50
        mov     ax, ISORTAB3_GROUP:?_332                ; 02D4 _ B8, 0254(segrel)
        push    ax                                      ; 02D7 _ 50
        mov     bx, 128                                 ; 02D8 _ BB, 0080
        mov     dx, ss                                  ; 02DB _ 8C. D2
        lea     ax, [bp-2CH]                            ; 02DD _ 8D. 46, D4
        call    far _ofmt                               ; 02E0 _ 9A, 0000 0000(far)
        mov     dx, ss                                  ; 02E5 _ 8C. D2
        lea     ax, [bp-2CH]                            ; 02E7 _ 8D. 46, D4
        call    far strcmp_                             ; 02EA _ 9A, 0000 0000(far)
        lea     dx, [bp+54H]                            ; 02EF _ 8D. 56, 54
        push ss                                         ; 02F2 _ 16
        push    dx                                      ; 02F3 _ 52
        mov     ax, ISORTAB3CONST                       ; 02F4 _ B8, 0000(seg)
        push    ax                                      ; 02F7 _ 50
        mov     ax, ISORTAB3_GROUP:?_333                ; 02F8 _ B8, 0268(segrel)
        push    ax                                      ; 02FB _ 50
        mov     bx, 128                                 ; 02FC _ BB, 0080
        mov     dx, ss                                  ; 02FF _ 8C. D2
        lea     ax, [bp-2CH]                            ; 0301 _ 8D. 46, D4
        call    far _ofmt                               ; 0304 _ 9A, 0000 0000(far)
        mov     dx, ss                                  ; 0309 _ 8C. D2
        lea     ax, [bp-2CH]                            ; 030B _ 8D. 46, D4
        call    far strcmp_                             ; 030E _ 9A, 0000 0000(far)
        lea     dx, [bp+54H]                            ; 0313 _ 8D. 56, 54
        push ss                                         ; 0316 _ 16
        push    dx                                      ; 0317 _ 52
        mov     ax, ISORTAB3CONST                       ; 0318 _ B8, 0000(seg)
        push    ax                                      ; 031B _ 50
        mov     ax, ISORTAB3_GROUP:?_334                ; 031C _ B8, 027C(segrel)
        push    ax                                      ; 031F _ 50
        mov     bx, 128                                 ; 0320 _ BB, 0080
        mov     dx, ss                                  ; 0323 _ 8C. D2
        lea     ax, [bp-2CH]                            ; 0325 _ 8D. 46, D4
        call    far _ofmt                               ; 0328 _ 9A, 0000 0000(far)
        mov     dx, ss                                  ; 032D _ 8C. D2
        lea     ax, [bp-2CH]                            ; 032F _ 8D. 46, D4
        call    far strcmp_                             ; 0332 _ 9A, 0000 0000(far)
?_014:  mov     ax, gmtime_                             ; 0337 _ B8, 0000(segrel)
        mov     dx, seg gmtime_                         ; 033A _ BA, 0000(sseg)
        call    far fopen_                              ; 033D _ 9A, 0000 0000(far)
        mov     word [bp+7EH], ax                       ; 0342 _ 89. 46, 7E
        mov     word [bp+78H], dx                       ; 0345 _ 89. 56, 78
        test    dx, dx                                  ; 0348 _ 85. D2
        jnz     ?_015                                   ; 034A _ 75, 07
        test    ax, ax                                  ; 034C _ 85. C0
        jnz     ?_015                                   ; 034E _ 75, 03
        jmp     ?_016                                   ; 0350 _ E9, 009E

?_015:  mov     cx, 9                                   ; 0353 _ B9, 0009
        push ss                                         ; 0356 _ 16
        pop  es                                         ; 0357 _ 07
        lea     di, [bp+66H]                            ; 0358 _ 8D. 7E, 66
        mov     ds, dx                                  ; 035B _ 8E. DA
        mov     si, ax                                  ; 035D _ 89. C6
        rep movsw                                       ; 035F _ F3: A5
        lea     dx, [bp+66H]                            ; 0361 _ 8D. 56, 66
        push ss                                         ; 0364 _ 16
        push    dx                                      ; 0365 _ 52
        mov     ax, ISORTAB3CONST                       ; 0366 _ B8, 0000(seg)
        push    ax                                      ; 0369 _ 50
        mov     ax, ISORTAB3_GROUP:?_335                ; 036A _ B8, 0290(segrel)
        push    ax                                      ; 036D _ 50
        mov     bx, 128                                 ; 036E _ BB, 0080
        mov     dx, ss                                  ; 0371 _ 8C. D2
        lea     ax, [bp-2CH]                            ; 0373 _ 8D. 46, D4
        call    far _ofmt                               ; 0376 _ 9A, 0000 0000(far)
        mov     dx, ss                                  ; 037B _ 8C. D2
        lea     ax, [bp-2CH]                            ; 037D _ 8D. 46, D4
        call    far strcmp_                             ; 0380 _ 9A, 0000 0000(far)
        lea     dx, [bp+66H]                            ; 0385 _ 8D. 56, 66
        push ss                                         ; 0388 _ 16
        push    dx                                      ; 0389 _ 52
        mov     ax, ISORTAB3CONST                       ; 038A _ B8, 0000(seg)
        push    ax                                      ; 038D _ 50
        mov     ax, ISORTAB3_GROUP:?_336                ; 038E _ B8, 02A8(segrel)
        push    ax                                      ; 0391 _ 50
        mov     bx, 128                                 ; 0392 _ BB, 0080
        mov     dx, ss                                  ; 0395 _ 8C. D2
        lea     ax, [bp-2CH]                            ; 0397 _ 8D. 46, D4
        call    far _ofmt                               ; 039A _ 9A, 0000 0000(far)
        mov     dx, ss                                  ; 039F _ 8C. D2
        lea     ax, [bp-2CH]                            ; 03A1 _ 8D. 46, D4
        call    far strcmp_                             ; 03A4 _ 9A, 0000 0000(far)
        lea     dx, [bp+66H]                            ; 03A9 _ 8D. 56, 66
        push ss                                         ; 03AC _ 16
        push    dx                                      ; 03AD _ 52
        mov     ax, ISORTAB3CONST                       ; 03AE _ B8, 0000(seg)
        push    ax                                      ; 03B1 _ 50
        mov     ax, ISORTAB3_GROUP:?_337                ; 03B2 _ B8, 02C0(segrel)
        push    ax                                      ; 03B5 _ 50
        mov     bx, 128                                 ; 03B6 _ BB, 0080
        mov     dx, ss                                  ; 03B9 _ 8C. D2
        lea     ax, [bp-2CH]                            ; 03BB _ 8D. 46, D4
        call    far _ofmt                               ; 03BE _ 9A, 0000 0000(far)
        mov     dx, ss                                  ; 03C3 _ 8C. D2
        lea     ax, [bp-2CH]                            ; 03C5 _ 8D. 46, D4
        call    far strcmp_                             ; 03C8 _ 9A, 0000 0000(far)
        lea     dx, [bp+66H]                            ; 03CD _ 8D. 56, 66
        push ss                                         ; 03D0 _ 16
        push    dx                                      ; 03D1 _ 52
        mov     ax, ISORTAB3CONST                       ; 03D2 _ B8, 0000(seg)
        push    ax                                      ; 03D5 _ 50
        mov     ax, ISORTAB3_GROUP:?_338                ; 03D6 _ B8, 02D8(segrel)
        push    ax                                      ; 03D9 _ 50
        mov     bx, 128                                 ; 03DA _ BB, 0080
        mov     dx, ss                                  ; 03DD _ 8C. D2
        lea     ax, [bp-2CH]                            ; 03DF _ 8D. 46, D4
        call    far _ofmt                               ; 03E2 _ 9A, 0000 0000(far)
        mov     dx, ss                                  ; 03E7 _ 8C. D2
        lea     ax, [bp-2CH]                            ; 03E9 _ 8D. 46, D4
        call    far strcmp_                             ; 03EC _ 9A, 0000 0000(far)
?_016:  cmp     word [bp+78H], 0                        ; 03F1 _ 83. 7E, 78, 00
        jnz     ?_017                                   ; 03F5 _ 75, 06
        cmp     word [bp+7EH], 0                        ; 03F7 _ 83. 7E, 7E, 00
        jz      ?_018                                   ; 03FB _ 74, 07
?_017:  mov     dx, ss                                  ; 03FD _ 8C. D2
        lea     ax, [bp+66H]                            ; 03FF _ 8D. 46, 66
        jmp     ?_020                                   ; 0402 _ EB, 11

?_018:  cmp     word [bp+7CH], 0                        ; 0404 _ 83. 7E, 7C, 00
        jnz     ?_019                                   ; 0408 _ 75, 06
        cmp     word [bp+7AH], 0                        ; 040A _ 83. 7E, 7A, 00
        jz      ?_022                                   ; 040E _ 74, 4B
?_019:  mov     dx, ss                                  ; 0410 _ 8C. D2
        lea     ax, [bp+54H]                            ; 0412 _ 8D. 46, 54
?_020:  call    nasm_error_                             ; 0415 _ E8, 0000(rel)
        mov     di, cx                                  ; 0418 _ 89. CF
        mov     si, dx                                  ; 041A _ 89. D6
        mov     dx, ax                                  ; 041C _ 89. C2
        mov     cx, bx                                  ; 041E _ 89. D9
        mov     ax, di                                  ; 0420 _ 89. F8
        mov     bx, si                                  ; 0422 _ 89. F3
        test    dx, dx                                  ; 0424 _ 85. D2
        jnz     ?_021                                   ; 0426 _ 75, 0C
        test    cx, cx                                  ; 0428 _ 85. C9
        jnz     ?_021                                   ; 042A _ 75, 08
        test    ax, ax                                  ; 042C _ 85. C0
        jnz     ?_021                                   ; 042E _ 75, 04
        test    bx, bx                                  ; 0430 _ 85. DB
        jz      ?_022                                   ; 0432 _ 74, 27
?_021:  push    dx                                      ; 0434 _ 52
        push    cx                                      ; 0435 _ 51
        push    ax                                      ; 0436 _ 50
        push    bx                                      ; 0437 _ 53
        mov     ax, ISORTAB3CONST                       ; 0438 _ B8, 0000(seg)
        push    ax                                      ; 043B _ 50
        mov     ax, ISORTAB3_GROUP:?_339                ; 043C _ B8, 02F0(segrel)
        push    ax                                      ; 043F _ 50
        mov     ax, 128                                 ; 0440 _ B8, 0080
        push    ax                                      ; 0443 _ 50
        lea     dx, [bp-2CH]                            ; 0444 _ 8D. 56, D4
        push ss                                         ; 0447 _ 16
        push    dx                                      ; 0448 _ 52
        call    far ___iob                              ; 0449 _ 9A, 0000 0000(far)
        add     sp, 18                                  ; 044E _ 83. C4, 12
        mov     dx, ss                                  ; 0451 _ 8C. D2
        lea     ax, [bp-2CH]                            ; 0453 _ 8D. 46, D4
        call    far strcmp_                             ; 0456 _ 9A, 0000 0000(far)
?_022:  lea     sp, [bp+80H]                            ; 045B _ 8D. A6, 0080
        pop     bp                                      ; 045F _ 5D
        pop     di                                      ; 0460 _ 5F
        pop     si                                      ; 0461 _ 5E
        pop     dx                                      ; 0462 _ 5A
        pop     cx                                      ; 0463 _ 59
        pop     bx                                      ; 0464 _ 5B
        ret                                             ; 0465 _ C3

; Note: Inaccessible code
        mov     ax, 150                                 ; 0466 _ B8, 0096
        call    far puts_                               ; 0469 _ 9A, 0000 0000(far)
        push    bx                                      ; 046E _ 53
        push    dx                                      ; 046F _ 52
        push    bp                                      ; 0470 _ 55
        mov     bp, sp                                  ; 0471 _ 89. E5
        sub     sp, 128                                 ; 0473 _ 81. EC, 0080
        mov     ax, ISORTAB3CONST                       ; 0477 _ B8, 0000(seg)
        mov     ds, ax                                  ; 047A _ 8E. D8
        lds     bx, word [fprintf_]                     ; 047C _ C5. 1E, 0000(segrel)
        push    word [bx+6H]                            ; 0480 _ FF. 77, 06
        push    word [bx+4H]                            ; 0483 _ FF. 77, 04
        push    ax                                      ; 0486 _ 50
        mov     ax, ISORTAB3_GROUP:?_340                ; 0487 _ B8, 0304(segrel)
        push    ax                                      ; 048A _ 50
        mov     ax, 128                                 ; 048B _ B8, 0080
        push    ax                                      ; 048E _ 50
        lea     dx, [bp-80H]                            ; 048F _ 8D. 56, 80
        push ss                                         ; 0492 _ 16
        push    dx                                      ; 0493 _ 52
        call    far ___iob                              ; 0494 _ 9A, 0000 0000(far)
        add     sp, 14                                  ; 0499 _ 83. C4, 0E
        mov     dx, ss                                  ; 049C _ 8C. D2
        lea     ax, [bp-80H]                            ; 049E _ 8D. 46, 80
        call    far strcmp_                             ; 04A1 _ 9A, 0000 0000(far)
        mov     sp, bp                                  ; 04A6 _ 89. EC
        pop     bp                                      ; 04A8 _ 5D
        pop     dx                                      ; 04A9 _ 5A
        pop     bx                                      ; 04AA _ 5B
        ret                                             ; 04AB _ C3

; Note: Inaccessible code
        push    ax                                      ; 04AC _ 50
        mov     ax, 34                                  ; 04AD _ B8, 0022
        call    far puts_                               ; 04B0 _ 9A, 0000 0000(far)
        pop     ax                                      ; 04B5 _ 58
        push    bx                                      ; 04B6 _ 53
        push    cx                                      ; 04B7 _ 51
        push    si                                      ; 04B8 _ 56
        push    di                                      ; 04B9 _ 57
        push    bp                                      ; 04BA _ 55
        mov     bp, sp                                  ; 04BB _ 89. E5
        sub     sp, 10                                  ; 04BD _ 83. EC, 0A
        mov     si, ax                                  ; 04C0 _ 89. C6
        mov     word [bp-6H], dx                        ; 04C2 _ 89. 56, FA
        mov     ax, ISORTAB3CONST                       ; 04C5 _ B8, 0000(seg)
        mov     ds, ax                                  ; 04C8 _ 8E. D8
        mov     dx, word [strlen_]                      ; 04CA _ 8B. 16, 0000(segrel)
        mov     ax, word [strlen_+2H]                   ; 04CE _ A1, 0002(segrel)
        test    ax, ax                                  ; 04D1 _ 85. C0
        jnz     ?_023                                   ; 04D3 _ 75, 04
        test    dx, dx                                  ; 04D5 _ 85. D2
        jz      ?_024                                   ; 04D7 _ 74, 57
?_023:  mov     ax, dx                                  ; 04D9 _ 89. D0
        mov     dx, word [strlen_+2H]                   ; 04DB _ 8B. 16, 0002(segrel)
        mov     bx, ISORTAB3_GROUP:?_341                ; 04DF _ BB, 0319(segrel)
        mov     cx, ds                                  ; 04E2 _ 8C. D9
        call    far nasm_free_                          ; 04E4 _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 04E9 _ 85. C0
        jz      ?_024                                   ; 04EB _ 74, 43
        mov     ax, ISORTAB3CONST                       ; 04ED _ B8, 0000(seg)
        mov     ds, ax                                  ; 04F0 _ 8E. D8
        mov     ax, word [strlen_]                      ; 04F2 _ A1, 0000(segrel)
        mov     dx, word [strlen_+2H]                   ; 04F5 _ 8B. 16, 0002(segrel)
        mov     bx, ISORTAB3_GROUP:?_342                ; 04F9 _ BB, 031B(segrel)
        mov     cx, ds                                  ; 04FC _ 8C. D9
        call    far fclose_                             ; 04FE _ 9A, 0000 0000(far)
        mov     di, ax                                  ; 0503 _ 89. C7
        mov     cx, dx                                  ; 0505 _ 89. D1
        test    dx, dx                                  ; 0507 _ 85. D2
        jnz     ?_025                                   ; 0509 _ 75, 2B
        test    ax, ax                                  ; 050B _ 85. C0
        jnz     ?_025                                   ; 050D _ 75, 27
        mov     ax, ISORTAB3CONST                       ; 050F _ B8, 0000(seg)
        mov     ds, ax                                  ; 0512 _ 8E. D8
        push    word [strlen_+2H]                       ; 0514 _ FF. 36, 0002(segrel)
        push    word [strlen_]                          ; 0518 _ FF. 36, 0000(segrel)
        push    ax                                      ; 051C _ 50
        mov     ax, ISORTAB3_GROUP:?_343                ; 051D _ B8, 031D(segrel)
        push    ax                                      ; 0520 _ 50
        mov     ax, 49                                  ; 0521 _ B8, 0031
        push    ax                                      ; 0524 _ 50
        call    far time_                               ; 0525 _ 9A, 0000 0000(far)
        add     sp, 10                                  ; 052A _ 83. C4, 0A
        jmp     ?_042                                   ; 052D _ E9, 0138

?_024:  mov     di, _pass0+12H                          ; 0530 _ BF, 0012(segrel)
        mov     cx, seg _pass0                          ; 0533 _ B9, 0000(sseg)
?_025:  mov     ax, ISORTAB3CONST                       ; 0536 _ B8, 0000(seg)
        mov     ds, ax                                  ; 0539 _ 8E. D8
        push    word [nasm_set_verror_+2H]              ; 053B _ FF. 36, 0002(segrel)
        push    word [nasm_set_verror_]                 ; 053F _ FF. 36, 0000(segrel)
        push    ax                                      ; 0543 _ 50
        mov     ax, ISORTAB3_GROUP:?_344                ; 0544 _ B8, 0342(segrel)
        push    ax                                      ; 0547 _ 50
        push    cx                                      ; 0548 _ 51
        push    di                                      ; 0549 _ 57
        call    far tolower_init_                       ; 054A _ 9A, 0000 0000(far)
        add     sp, 12                                  ; 054F _ 83. C4, 0C
        mov     word [bp-8H], ax                        ; 0552 _ 89. 46, F8
        mov     bx, si                                  ; 0555 _ 89. F3
        mov     ax, word [bp-6H]                        ; 0557 _ 8B. 46, FA
        mov     word [bp-2H], ax                        ; 055A _ 89. 46, FE
?_026:  cmp     word [bp-2H], 0                         ; 055D _ 83. 7E, FE, 00
        jnz     ?_027                                   ; 0561 _ 75, 04
        test    bx, bx                                  ; 0563 _ 85. DB
        jz      ?_029                                   ; 0565 _ 74, 5C
?_027:  lea     ax, [bx+4H]                             ; 0567 _ 8D. 47, 04
        mov     dx, word [bp-2H]                        ; 056A _ 8B. 56, FE
        call    far nasm_init_malloc_error_             ; 056D _ 9A, 0000 0000(far)
        mov     word [bp-0AH], ax                       ; 0572 _ 89. 46, F6
        add     ax, word [bp-8H]                        ; 0575 _ 03. 46, F8
; Note: Immediate operand could be made smaller by sign extension
        cmp     ax, 62                                  ; 0578 _ 3D, 003E
        jle     ?_028                                   ; 057B _ 7E, 17
        mov     ax, ISORTAB3CONST                       ; 057D _ B8, 0000(seg)
        push    ax                                      ; 0580 _ 50
        mov     ax, ISORTAB3_GROUP:?_345                ; 0581 _ B8, 0346(segrel)
        push    ax                                      ; 0584 _ 50
        push    cx                                      ; 0585 _ 51
        push    di                                      ; 0586 _ 57
        call    far tolower_init_                       ; 0587 _ 9A, 0000 0000(far)
        add     sp, 8                                   ; 058C _ 83. C4, 08
        mov     word [bp-8H], 1                         ; 058F _ C7. 46, F8, 0001
?_028:  lea     ax, [bx+4H]                             ; 0594 _ 8D. 47, 04
        push    word [bp-2H]                            ; 0597 _ FF. 76, FE
        push    ax                                      ; 059A _ 50
        mov     ax, ISORTAB3CONST                       ; 059B _ B8, 0000(seg)
        push    ax                                      ; 059E _ 50
        mov     ax, ISORTAB3_GROUP:?_346                ; 059F _ B8, 034B(segrel)
        push    ax                                      ; 05A2 _ 50
        push    cx                                      ; 05A3 _ 51
        push    di                                      ; 05A4 _ 57
        call    far tolower_init_                       ; 05A5 _ 9A, 0000 0000(far)
        add     sp, 12                                  ; 05AA _ 83. C4, 0C
        mov     ax, word [bp-0AH]                       ; 05AD _ 8B. 46, F6
        inc     ax                                      ; 05B0 _ 40
        add     word [bp-8H], ax                        ; 05B1 _ 01. 46, F8
        mov     ds, word [bp-2H]                        ; 05B4 _ 8E. 5E, FE
        mov     ax, word [bx]                           ; 05B7 _ 8B. 07
        mov     dx, word [bx+2H]                        ; 05B9 _ 8B. 57, 02
        mov     bx, ax                                  ; 05BC _ 89. C3
        mov     word [bp-2H], dx                        ; 05BE _ 89. 56, FE
        jmp     ?_026                                   ; 05C1 _ EB, 9A

?_029:  mov     ax, ISORTAB3CONST                       ; 05C3 _ B8, 0000(seg)
        push    ax                                      ; 05C6 _ 50
        mov     ax, ISORTAB3_GROUP:?_347                ; 05C7 _ B8, 034F(segrel)
        push    ax                                      ; 05CA _ 50
        push    cx                                      ; 05CB _ 51
        push    di                                      ; 05CC _ 57
        call    far tolower_init_                       ; 05CD _ 9A, 0000 0000(far)
        add     sp, 8                                   ; 05D2 _ 83. C4, 08
        mov     bx, si                                  ; 05D5 _ 89. F3
        mov     ax, word [bp-6H]                        ; 05D7 _ 8B. 46, FA
        mov     word [bp-2H], ax                        ; 05DA _ 89. 46, FE
        test    ax, ax                                  ; 05DD _ 85. C0
        jnz     ?_030                                   ; 05DF _ 75, 04
        test    si, si                                  ; 05E1 _ 85. F6
        jz      ?_031                                   ; 05E3 _ 74, 09
?_030:  mov     ds, ax                                  ; 05E5 _ 8E. D8
        mov     ax, word [si]                           ; 05E7 _ 8B. 04
        mov     dx, word [si+2H]                        ; 05E9 _ 8B. 54, 02
        jmp     ?_032                                   ; 05EC _ EB, 04

?_031:  xor     ax, ax                                  ; 05EE _ 31. C0
        xor     dx, dx                                  ; 05F0 _ 31. D2
?_032:  mov     si, ax                                  ; 05F2 _ 89. C6
        mov     word [bp-4H], dx                        ; 05F4 _ 89. 56, FC
?_033:  cmp     word [bp-2H], 0                         ; 05F7 _ 83. 7E, FE, 00
        jnz     ?_034                                   ; 05FB _ 75, 04
        test    bx, bx                                  ; 05FD _ 85. DB
        jz      ?_039                                   ; 05FF _ 74, 52
?_034:  mov     ax, ISORTAB3CONST                       ; 0601 _ B8, 0000(seg)
        mov     ds, ax                                  ; 0604 _ 8E. D8
        cmp     byte [raa_init_], 0                     ; 0606 _ 80. 3E, 0000(segrel), 00
        jz      ?_035                                   ; 060B _ 74, 18
        lea     ax, [bx+4H]                             ; 060D _ 8D. 47, 04
        push    word [bp-2H]                            ; 0610 _ FF. 76, FE
        push    ax                                      ; 0613 _ 50
        mov     ax, ds                                  ; 0614 _ 8C. D8
        push    ax                                      ; 0616 _ 50
        mov     ax, ISORTAB3_GROUP:?_348                ; 0617 _ B8, 0352(segrel)
        push    ax                                      ; 061A _ 50
        push    cx                                      ; 061B _ 51
        push    di                                      ; 061C _ 57
        call    far tolower_init_                       ; 061D _ 9A, 0000 0000(far)
        add     sp, 12                                  ; 0622 _ 83. C4, 0C
?_035:  mov     ax, bx                                  ; 0625 _ 89. D8
        mov     dx, word [bp-2H]                        ; 0627 _ 8B. 56, FE
        call    far saa_init_                           ; 062A _ 9A, 0000 0000(far)
        mov     bx, si                                  ; 062F _ 89. F3
        mov     ax, word [bp-4H]                        ; 0631 _ 8B. 46, FC
        mov     word [bp-2H], ax                        ; 0634 _ 89. 46, FE
        test    ax, ax                                  ; 0637 _ 85. C0
        jnz     ?_036                                   ; 0639 _ 75, 04
        test    si, si                                  ; 063B _ 85. F6
        jz      ?_037                                   ; 063D _ 74, 09
?_036:  mov     ds, ax                                  ; 063F _ 8E. D8
        mov     dx, word [si]                           ; 0641 _ 8B. 14
        mov     ax, word [si+2H]                        ; 0643 _ 8B. 44, 02
        jmp     ?_038                                   ; 0646 _ EB, 04

?_037:  xor     dx, dx                                  ; 0648 _ 31. D2
        xor     ax, ax                                  ; 064A _ 31. C0
?_038:  mov     si, dx                                  ; 064C _ 89. D6
        mov     word [bp-4H], ax                        ; 064E _ 89. 46, FC
        jmp     ?_033                                   ; 0651 _ EB, A4

?_039:  cmp     cx, seg _pass0                          ; 0653 _ 81. F9, 0000(sseg)
        jnz     ?_040                                   ; 0657 _ 75, 06
        cmp     di, _pass0+12H                          ; 0659 _ 81. FF, 0012(segrel)
        jz      ?_042                                   ; 065D _ 74, 09
?_040:  mov     ax, di                                  ; 065F _ 89. F8
        mov     dx, cx                                  ; 0661 _ 89. CA
?_041:  call    far _nasmpp                             ; 0663 _ 9A, 0000 0000(far)
?_042:  mov     sp, bp                                  ; 0668 _ 89. EC
        pop     bp                                      ; 066A _ 5D
        pop     di                                      ; 066B _ 5F
        pop     si                                      ; 066C _ 5E
        pop     cx                                      ; 066D _ 59
        pop     bx                                      ; 066E _ 5B
        ret                                             ; 066F _ C3

main_:
        push    ax                                      ; 0670 _ 50
        mov     ax, 52                                  ; 0671 _ B8, 0034
        call    far puts_                               ; 0674 _ 9A, 0000 0000(far)
        pop     ax                                      ; 0679 _ 58
        push    dx                                      ; 067A _ 52
        push    si                                      ; 067B _ 56
        push    di                                      ; 067C _ 57
        push    bp                                      ; 067D _ 55
        mov     bp, sp                                  ; 067E _ 89. E5
        sub     sp, 22                                  ; 0680 _ 83. EC, 16
        mov     si, ax                                  ; 0683 _ 89. C6
        xor     ax, ax                                  ; 0685 _ 31. C0
        mov     word [bp-16H], ax                       ; 0687 _ 89. 46, EA
        mov     word [bp-14H], ax                       ; 068A _ 89. 46, EC
        mov     ax, gmtime_                             ; 068D _ B8, 0000(segrel)
        mov     dx, seg gmtime_                         ; 0690 _ BA, 0000(sseg)
        call    far seg_init_                           ; 0693 _ 9A, 0000 0000(far)
        mov     ax, ISORTAB3CONST                       ; 0698 _ B8, 0000(seg)
        mov     ds, ax                                  ; 069B _ 8E. D8
        xor     ax, ax                                  ; 069D _ 31. C0
        mov     word [_null_debug_form], ax             ; 069F _ A3, 0000(segrel)
        xor     al, al                                  ; 06A2 _ 30. C0
        mov     byte [pp_extra_stdmac_], al             ; 06A4 _ A2, 0000(segrel)
        mov     byte [parser_global_info_], al          ; 06A7 _ A2, 0000(segrel)
        mov     ax, lookup_label_                       ; 06AA _ B8, 0000(segrel)
        mov     dx, seg lookup_label_                   ; 06AD _ BA, 0000(sseg)
        call    far eval_global_info_                   ; 06B0 _ 9A, 0000 0000(far)
        mov     ax, ISORTAB3CONST                       ; 06B5 _ B8, 0000(seg)
        mov     ds, ax                                  ; 06B8 _ 8E. D8
        mov     word [pp_include_path_], _pass0+24H     ; 06BA _ C7. 06, 0000(segrel), 0024(segrel)
        mov     word [pp_include_path_+2H], seg _pass0  ; 06C0 _ C7. 06, 0002(segrel), 0000(sseg)
        call    far _nasmlist                           ; 06C6 _ 9A, 0000 0000(far)
        call    far _ofile                              ; 06CB _ 9A, 0000 0000(far)
        call    far src_get_                            ; 06D0 _ 9A, 0000 0000(far)
        mov     di, ISORTAB3CONST                       ; 06D5 _ BF, 0000(seg)
        mov     ds, di                                  ; 06D8 _ 8E. DF
        mov     word [remove_], ax                      ; 06DA _ A3, 0000(segrel)
        mov     word [remove_+2H], dx                   ; 06DD _ 89. 16, 0002(segrel)
        mov     ax, 4                                   ; 06E1 _ B8, 0004
        call    far init_labels_                        ; 06E4 _ 9A, 0000 0000(far)
        mov     ds, di                                  ; 06E9 _ 8E. DF
        mov     word [_dfmt], ax                        ; 06EB _ A3, 0000(segrel)
        mov     word [_dfmt+2H], dx                     ; 06EE _ 89. 16, 0002(segrel)
        mov     word [cleanup_labels_], fflush_         ; 06F2 _ C7. 06, 0000(segrel), 0000(segrel)
        mov     word [cleanup_labels_+2H], di           ; 06F8 _ 89. 3E, 0002(segrel)
        mov     byte [raa_free_], 0                     ; 06FC _ C6. 06, 0000(segrel), 00
        call    far saa_free_                           ; 0701 _ 9A, 0000 0000(far)
        call    eval_cleanup_                           ; 0706 _ E8, 0000(rel)
        mov     ax, si                                  ; 0709 _ 89. F0
        call    stdscan_cleanup_                        ; 070B _ E8, 0000(rel)
        mov     ds, di                                  ; 070E _ 8E. DF
        cmp     byte [pp_extra_stdmac_], 0              ; 0710 _ 80. 3E, 0000(segrel), 00
        jz      ?_044                                   ; 0715 _ 74, 10
        cmp     byte [parser_global_info_], 0           ; 0717 _ 80. 3E, 0000(segrel), 00
        jz      ?_043                                   ; 071C _ 74, 03
        call    nasm_skip_spaces_                       ; 071E _ E8, 0000(rel)
?_043:  mov     ax, 1                                   ; 0721 _ B8, 0001
        jmp     ?_092                                   ; 0724 _ E9, 04A6

?_044:  cmp     word [strncpy_], 0                      ; 0727 _ 83. 3E, 0000(segrel), 00
        jnz     ?_045                                   ; 072C _ 75, 0C
        lds     bx, word [fprintf_]                     ; 072E _ C5. 1E, 0000(segrel)
        mov     word [bx+0EH], nasm_malloc_             ; 0732 _ C7. 47, 0E, 0000(segrel)
        mov     word [bx+10H], di                       ; 0737 _ 89. 7F, 10
?_045:  mov     ax, ISORTAB3CONST                       ; 073A _ B8, 0000(seg)
        mov     ds, ax                                  ; 073D _ 8E. D8
        lds     bx, word [fprintf_]                     ; 073F _ C5. 1E, 0000(segrel)
        mov     ax, word [bx+12H]                       ; 0743 _ 8B. 47, 12
        mov     dx, word [bx+14H]                       ; 0746 _ 8B. 57, 14
        test    dx, dx                                  ; 0749 _ 85. D2
        jnz     ?_046                                   ; 074B _ 75, 04
        test    ax, ax                                  ; 074D _ 85. C0
        jz      ?_047                                   ; 074F _ 74, 05
?_046:  call    far strchr_                             ; 0751 _ 9A, 0000 0000(far)
?_047:  mov     ax, ofmt_find_                          ; 0756 _ B8, 0000(segrel)
        mov     dx, seg ofmt_find_                      ; 0759 _ BA, 0000(sseg)
        call    far _optimizing                         ; 075C _ 9A, 0000 0000(far)
        mov     ax, seg ofmt_find_                      ; 0761 _ B8, 0000(sseg)
        push    ax                                      ; 0764 _ 50
        mov     ax, ofmt_find_                          ; 0765 _ B8, 0000(segrel)
        push    ax                                      ; 0768 _ 50
        mov     ax, ISORTAB3CONST                       ; 0769 _ B8, 0000(seg)
        mov     ds, ax                                  ; 076C _ 8E. D8
        mov     ax, word [fprintf_]                     ; 076E _ A1, 0000(segrel)
        mov     dx, word [fprintf_+2H]                  ; 0771 _ 8B. 16, 0002(segrel)
        mov     bx, strtoul_                            ; 0775 _ BB, 0000(segrel)
        mov     cx, seg strtoul_                        ; 0778 _ B9, 0000(sseg)
        call    far pp_pre_include_                     ; 077B _ 9A, 0000 0000(far)
        call    pp_pre_undefine_                        ; 0780 _ E8, 0000(rel)
        mov     ax, ISORTAB3CONST                       ; 0783 _ B8, 0000(seg)
        mov     ds, ax                                  ; 0786 _ 8E. D8
        mov     dx, word [strlen_]                      ; 0788 _ 8B. 16, 0000(segrel)
        mov     ax, word [strlen_+2H]                   ; 078C _ A1, 0002(segrel)
        test    ax, ax                                  ; 078F _ 85. C0
        jnz     ?_048                                   ; 0791 _ 75, 0B
        test    dx, dx                                  ; 0793 _ 85. D2
        jnz     ?_048                                   ; 0795 _ 75, 07
        cmp     byte [raa_free_], 2                     ; 0797 _ 80. 3E, 0000(segrel), 02
        jnz     ?_049                                   ; 079C _ 75, 07
?_048:  mov     ax, ss                                  ; 079E _ 8C. D0
        lea     dx, [bp-16H]                            ; 07A0 _ 8D. 56, EA
        jmp     ?_050                                   ; 07A3 _ EB, 04

?_049:  xor     dx, dx                                  ; 07A5 _ 31. D2
        xor     ax, ax                                  ; 07A7 _ 31. C0
?_050:  mov     word [bp-8H], dx                        ; 07A9 _ 89. 56, F8
        mov     word [bp-6H], ax                        ; 07AC _ 89. 46, FA
        mov     ax, ISORTAB3CONST                       ; 07AF _ B8, 0000(seg)
        mov     ds, ax                                  ; 07B2 _ 8E. D8
        mov     dx, word [nasm_set_verror_]             ; 07B4 _ 8B. 16, 0000(segrel)
        mov     ax, word [nasm_set_verror_+2H]          ; 07B8 _ A1, 0002(segrel)
        test    ax, ax                                  ; 07BB _ 85. C0
        jnz     ?_051                                   ; 07BD _ 75, 0E
        test    dx, dx                                  ; 07BF _ 85. D2
        jnz     ?_051                                   ; 07C1 _ 75, 0A
        mov     word [nasm_set_verror_], dfmt_find_     ; 07C3 _ C7. 06, 0000(segrel), 0000(segrel)
        mov     word [nasm_set_verror_+2H], ds          ; 07C9 _ 8C. 1E, 0002(segrel)
?_051:  mov     ax, ISORTAB3CONST                       ; 07CD _ B8, 0000(seg)
        mov     ds, ax                                  ; 07D0 _ 8E. D8
        mov     al, byte [raa_free_]                    ; 07D2 _ A0, 0000(segrel)
        cmp     al, 2                                   ; 07D5 _ 3C, 02
        jz      ?_054                                   ; 07D7 _ 74, 11
        cmp     al, 1                                   ; 07D9 _ 3C, 01
        jz      ?_052                                   ; 07DB _ 74, 07
        test    al, al                                  ; 07DD _ 84. C0
        jz      ?_053                                   ; 07DF _ 74, 06
        jmp     ?_088                                   ; 07E1 _ E9, 0384

?_052:  jmp     ?_060                                   ; 07E4 _ E9, 0087

?_053:  jmp     ?_081                                   ; 07E7 _ E9, 024C

?_054:  cmp     byte [nasm_stricmp_], 0                 ; 07EA _ 80. 3E, 0000(segrel), 00
        jz      ?_055                                   ; 07EF _ 74, 09
        xor     ax, ax                                  ; 07F1 _ 31. C0
        xor     dx, dx                                  ; 07F3 _ 31. D2
        call    far printf_                             ; 07F5 _ 9A, 0000 0000(far)
?_055:  mov     ax, ISORTAB3CONST                       ; 07FA _ B8, 0000(seg)
        mov     ds, ax                                  ; 07FD _ 8E. D8
        lds     si, word [cleanup_labels_]              ; 07FF _ C5. 36, 0000(segrel)
        push    word [bp-6H]                            ; 0803 _ FF. 76, FA
        push    word [bp-8H]                            ; 0806 _ FF. 76, F8
        push    ax                                      ; 0809 _ 50
        mov     ax, ofmt_list_                          ; 080A _ B8, 0000(segrel)
        push    ax                                      ; 080D _ 50
        xor     bx, bx                                  ; 080E _ 31. DB
        mov     ax, exit_                               ; 0810 _ B8, 0000(segrel)
        mov     dx, seg exit_                           ; 0813 _ BA, 0000(sseg)
        call    far [si]                                ; 0816 _ FF. 1C
        mov     ax, ISORTAB3CONST                       ; 0818 _ B8, 0000(seg)
        mov     ds, ax                                  ; 081B _ 8E. D8
        cmp     byte [dfmt_find_], 0                    ; 081D _ 80. 3E, 0000(segrel), 00
        jnz     ?_056                                   ; 0822 _ 75, 11
        mov     cx, ax                                  ; 0824 _ 89. C1
        lds     si, word [fprintf_]                     ; 0826 _ C5. 36, 0000(segrel)
        mov     bx, dfmt_find_                          ; 082A _ BB, 0000(segrel)
        mov     ax, exit_                               ; 082D _ B8, 0000(segrel)
        mov     dx, cx                                  ; 0830 _ 89. CA
        call    far [si+36H]                            ; 0832 _ FF. 5C, 36
?_056:  mov     ax, ISORTAB3CONST                       ; 0835 _ B8, 0000(seg)
        mov     ds, ax                                  ; 0838 _ 8E. D8
        xor     ax, ax                                  ; 083A _ 31. C0
        mov     word [dfmt_list_], ax                   ; 083C _ A3, 0000(segrel)
        mov     word [dfmt_list_+2H], ax                ; 083F _ A3, 0002(segrel)
?_057:  mov     ax, ISORTAB3CONST                       ; 0842 _ B8, 0000(seg)
        mov     ds, ax                                  ; 0845 _ 8E. D8
        lds     bx, word [cleanup_labels_]              ; 0847 _ C5. 1E, 0000(segrel)
        call    far [bx+4H]                             ; 084B _ FF. 5F, 04
        test    dx, dx                                  ; 084E _ 85. D2
        jnz     ?_058                                   ; 0850 _ 75, 04
        test    ax, ax                                  ; 0852 _ 85. C0
        jz      ?_059                                   ; 0854 _ 74, 07
?_058:  call    far saa_init_                           ; 0856 _ 9A, 0000 0000(far)
        jmp     ?_057                                   ; 085B _ EB, E5

?_059:  mov     ax, ISORTAB3CONST                       ; 085D _ B8, 0000(seg)
        mov     ds, ax                                  ; 0860 _ 8E. D8
        lds     bx, word [cleanup_labels_]              ; 0862 _ C5. 1E, 0000(segrel)
        xor     ax, ax                                  ; 0866 _ 31. C0
        call    far [bx+8H]                             ; 0868 _ FF. 5F, 08
        jmp     ?_088                                   ; 086B _ E9, 02FA

?_060:  xor     ax, ax                                  ; 086E _ 31. C0
        mov     word [bp-12H], ax                       ; 0870 _ 89. 46, EE
        mov     word [bp-10H], ax                       ; 0873 _ 89. 46, F0
        mov     word [bp-4H], ax                        ; 0876 _ 89. 46, FC
        mov     word [bp-2H], ax                        ; 0879 _ 89. 46, FE
        xor     si, si                                  ; 087C _ 31. F6
        mov     al, byte [dfmt_find_]                   ; 087E _ A0, 0000(segrel)
        test    al, al                                  ; 0881 _ 84. C0
        jz      ?_061                                   ; 0883 _ 74, 3B
        mov     bx, ISORTAB3_GROUP:?_342                ; 0885 _ BB, 031B(segrel)
        mov     cx, ds                                  ; 0888 _ 8C. D9
        mov     ax, dfmt_find_                          ; 088A _ B8, 0000(segrel)
        mov     dx, cx                                  ; 088D _ 89. CA
        call    far fclose_                             ; 088F _ 9A, 0000 0000(far)
        mov     bx, ISORTAB3CONST                       ; 0894 _ BB, 0000(seg)
        mov     ds, bx                                  ; 0897 _ 8E. DB
        mov     word [dfmt_list_], ax                   ; 0899 _ A3, 0000(segrel)
        mov     word [dfmt_list_+2H], dx                ; 089C _ 89. 16, 0002(segrel)
        test    dx, dx                                  ; 08A0 _ 85. D2
        jnz     ?_062                                   ; 08A2 _ 75, 24
        test    ax, ax                                  ; 08A4 _ 85. C0
        jnz     ?_062                                   ; 08A6 _ 75, 20
        push    bx                                      ; 08A8 _ 53
        mov     ax, dfmt_find_                          ; 08A9 _ B8, 0000(segrel)
        push    ax                                      ; 08AC _ 50
        push    bx                                      ; 08AD _ 53
        mov     ax, ISORTAB3_GROUP:?_349                ; 08AE _ B8, 0358(segrel)
        push    ax                                      ; 08B1 _ 50
        mov     ax, 18                                  ; 08B2 _ B8, 0012
        push    ax                                      ; 08B5 _ 50
        call    far time_                               ; 08B6 _ 9A, 0000 0000(far)
        add     sp, 10                                  ; 08BB _ 83. C4, 0A
        jmp     ?_062                                   ; 08BE _ EB, 08

?_061:  xor     ah, ah                                  ; 08C0 _ 30. E4
        mov     word [dfmt_list_], ax                   ; 08C2 _ A3, 0000(segrel)
        mov     word [dfmt_list_+2H], ax                ; 08C5 _ A3, 0002(segrel)
?_062:  mov     ax, ISORTAB3CONST                       ; 08C8 _ B8, 0000(seg)
        mov     ds, ax                                  ; 08CB _ 8E. D8
        xor     ax, ax                                  ; 08CD _ 31. C0
        mov     word [ofmt_find_+0CH], ax               ; 08CF _ A3, 000C(segrel)
        mov     ax, ds                                  ; 08D2 _ 8C. D8
        lds     di, word [cleanup_labels_]              ; 08D4 _ C5. 3E, 0000(segrel)
        push    word [bp-6H]                            ; 08D8 _ FF. 76, FA
        push    word [bp-8H]                            ; 08DB _ FF. 76, F8
        push    ax                                      ; 08DE _ 50
        mov     ax, ofmt_list_                          ; 08DF _ B8, 0000(segrel)
        push    ax                                      ; 08E2 _ 50
        mov     bx, 3                                   ; 08E3 _ BB, 0003
        mov     ax, exit_                               ; 08E6 _ B8, 0000(segrel)
        mov     dx, seg exit_                           ; 08E9 _ BA, 0000(sseg)
        call    far [di]                                ; 08EC _ FF. 1D
?_063:  mov     ax, ISORTAB3CONST                       ; 08EE _ B8, 0000(seg)
        mov     ds, ax                                  ; 08F1 _ 8E. D8
        lds     bx, word [cleanup_labels_]              ; 08F3 _ C5. 1E, 0000(segrel)
        call    far [bx+4H]                             ; 08F7 _ FF. 5F, 04
        mov     word [bp-0AH], ax                       ; 08FA _ 89. 46, F6
        mov     di, dx                                  ; 08FD _ 89. D7
        test    dx, dx                                  ; 08FF _ 85. D2
        jnz     ?_064                                   ; 0901 _ 75, 04
        test    ax, ax                                  ; 0903 _ 85. C0
        jz      ?_067                                   ; 0905 _ 74, 59
?_064:  mov     ax, si                                  ; 0907 _ 89. F0
        cwd                                             ; 0909 _ 99
        add     word [bp-4H], ax                        ; 090A _ 01. 46, FC
        adc     word [bp-2H], dx                        ; 090D _ 11. 56, FE
        mov     ax, word [bp-4H]                        ; 0910 _ 8B. 46, FC
        mov     word [bp-0EH], ax                       ; 0913 _ 89. 46, F2
        mov     ax, word [bp-2H]                        ; 0916 _ 8B. 46, FE
        mov     word [bp-0CH], ax                       ; 0919 _ 89. 46, F4
        mov     cx, ss                                  ; 091C _ 8C. D1
        lea     bx, [bp-12H]                            ; 091E _ 8D. 5E, EE
        mov     dx, ss                                  ; 0921 _ 8C. D2
        lea     ax, [bp-0EH]                            ; 0923 _ 8D. 46, F2
        call    far _tasm_compatible_mode               ; 0926 _ 9A, 0000 0000(far)
        mov     dx, ax                                  ; 092B _ 89. C2
        test    ax, ax                                  ; 092D _ 85. C0
        jz      ?_071                                   ; 092F _ 74, 65
; Note: Immediate operand could be made smaller by sign extension
        cmp     ax, 1                                   ; 0931 _ 3D, 0001
        jnz     ?_065                                   ; 0934 _ 75, 1B
        cmp     si, ax                                  ; 0936 _ 39. C6
        jnz     ?_065                                   ; 0938 _ 75, 17
        mov     ax, ISORTAB3CONST                       ; 093A _ B8, 0000(seg)
        mov     ds, ax                                  ; 093D _ 8E. D8
        mov     bx, word [dfmt_list_]                   ; 093F _ 8B. 1E, 0000(segrel)
        mov     cx, word [dfmt_list_+2H]                ; 0943 _ 8B. 0E, 0002(segrel)
        mov     ax, ISORTAB3_GROUP:?_350                ; 0947 _ B8, 0378(segrel)
        mov     dx, ds                                  ; 094A _ 8C. DA
        call    _nasm_compile_options                   ; 094C _ E8, 0000(rel)
        jmp     ?_074                                   ; 094F _ EB, 57

?_065:  cmp     dx, -1                                  ; 0951 _ 83. FA, FF
        jnz     ?_066                                   ; 0954 _ 75, 05
        cmp     si, 1                                   ; 0956 _ 83. FE, 01
        jz      ?_068                                   ; 0959 _ 74, 07
?_066:  mov     ax, 1                                   ; 095B _ B8, 0001
        jmp     ?_069                                   ; 095E _ EB, 04

?_067:  jmp     ?_076                                   ; 0960 _ EB, 74

?_068:  xor     ax, ax                                  ; 0962 _ 31. C0
?_069:  mov     si, ax                                  ; 0964 _ 89. C6
        push    word [bp-10H]                           ; 0966 _ FF. 76, F0
        push    word [bp-12H]                           ; 0969 _ FF. 76, EE
        push    ax                                      ; 096C _ 50
        push    word [bp-0CH]                           ; 096D _ FF. 76, F4
        push    word [bp-0EH]                           ; 0970 _ FF. 76, F2
        mov     ax, ISORTAB3CONST                       ; 0973 _ B8, 0000(seg)
        push    ax                                      ; 0976 _ 50
        mov     ax, ISORTAB3_GROUP:?_351                ; 0977 _ B8, 0379(segrel)
        push    ax                                      ; 097A _ 50
        mov     ax, ISORTAB3CONST                       ; 097B _ B8, 0000(seg)
        mov     ds, ax                                  ; 097E _ 8E. D8
        mov     ax, word [dfmt_list_]                   ; 0980 _ A1, 0000(segrel)
        mov     dx, word [dfmt_list_+2H]                ; 0983 _ 8B. 16, 0002(segrel)
        test    dx, dx                                  ; 0987 _ 85. D2
        jnz     ?_070                                   ; 0989 _ 75, 04
        test    ax, ax                                  ; 098B _ 85. C0
        jz      ?_072                                   ; 098D _ 74, 09
?_070:  mov     dx, ax                                  ; 098F _ 89. C2
        mov     ax, word [dfmt_list_+2H]                ; 0991 _ A1, 0002(segrel)
        jmp     ?_073                                   ; 0994 _ EB, 08

?_071:  jmp     ?_075                                   ; 0996 _ EB, 1C

?_072:  mov     dx, _pass0+12H                          ; 0998 _ BA, 0012(segrel)
        mov     ax, seg _pass0                          ; 099B _ B8, 0000(sseg)
?_073:  push    ax                                      ; 099E _ 50
        push    dx                                      ; 099F _ 52
        call    far tolower_init_                       ; 09A0 _ 9A, 0000 0000(far)
        add     sp, 18                                  ; 09A5 _ 83. C4, 12
?_074:  mov     ax, word [bp-0EH]                       ; 09A8 _ 8B. 46, F2
        mov     word [bp-4H], ax                        ; 09AB _ 89. 46, FC
        mov     ax, word [bp-0CH]                       ; 09AE _ 8B. 46, F4
        mov     word [bp-2H], ax                        ; 09B1 _ 89. 46, FE
?_075:  mov     ax, ISORTAB3CONST                       ; 09B4 _ B8, 0000(seg)
        mov     ds, ax                                  ; 09B7 _ 8E. D8
        mov     bx, word [dfmt_list_]                   ; 09B9 _ 8B. 1E, 0000(segrel)
        mov     cx, word [dfmt_list_+2H]                ; 09BD _ 8B. 0E, 0002(segrel)
        mov     ax, word [bp-0AH]                       ; 09C1 _ 8B. 46, F6
        mov     dx, di                                  ; 09C4 _ 89. FA
        call    _nasm_compile_options                   ; 09C6 _ E8, 0000(rel)
        mov     ax, word [bp-0AH]                       ; 09C9 _ 8B. 46, F6
        mov     dx, di                                  ; 09CC _ 89. FA
        call    far saa_init_                           ; 09CE _ 9A, 0000 0000(far)
        jmp     ?_063                                   ; 09D3 _ E9, FF18

?_076:  mov     ax, word [bp-12H]                       ; 09D6 _ 8B. 46, EE
        mov     dx, word [bp-10H]                       ; 09D9 _ 8B. 56, F0
        call    far saa_init_                           ; 09DC _ 9A, 0000 0000(far)
        mov     ax, ISORTAB3CONST                       ; 09E1 _ B8, 0000(seg)
        mov     ds, ax                                  ; 09E4 _ 8E. D8
        lds     bx, word [cleanup_labels_]              ; 09E6 _ C5. 1E, 0000(segrel)
        xor     ax, ax                                  ; 09EA _ 31. C0
        call    far [bx+8H]                             ; 09EC _ FF. 5F, 08
        mov     ax, ISORTAB3CONST                       ; 09EF _ B8, 0000(seg)
        mov     ds, ax                                  ; 09F2 _ 8E. D8
        mov     dx, word [dfmt_list_]                   ; 09F4 _ 8B. 16, 0000(segrel)
        mov     ax, word [dfmt_list_+2H]                ; 09F8 _ A1, 0002(segrel)
        test    ax, ax                                  ; 09FB _ 85. C0
        jnz     ?_077                                   ; 09FD _ 75, 04
        test    dx, dx                                  ; 09FF _ 85. D2
        jz      ?_078                                   ; 0A01 _ 74, 0B
?_077:  mov     ax, dx                                  ; 0A03 _ 89. D0
        mov     dx, word [dfmt_list_+2H]                ; 0A05 _ 8B. 16, 0002(segrel)
        call    far _nasmpp                             ; 0A09 _ 9A, 0000 0000(far)
?_078:  mov     ax, ISORTAB3CONST                       ; 0A0E _ B8, 0000(seg)
        mov     ds, ax                                  ; 0A11 _ 8E. D8
        mov     ax, word [dfmt_list_]                   ; 0A13 _ A1, 0000(segrel)
        mov     dx, word [dfmt_list_+2H]                ; 0A16 _ 8B. 16, 0002(segrel)
        test    dx, dx                                  ; 0A1A _ 85. D2
        jnz     ?_079                                   ; 0A1C _ 75, 04
        test    ax, ax                                  ; 0A1E _ 85. C0
        jz      ?_080                                   ; 0A20 _ 74, 11
?_079:  cmp     byte [pp_extra_stdmac_], 0              ; 0A22 _ 80. 3E, 0000(segrel), 00
        jz      ?_080                                   ; 0A27 _ 74, 0A
        mov     ax, dfmt_find_                          ; 0A29 _ B8, 0000(segrel)
        mov     dx, ds                                  ; 0A2C _ 8C. DA
        call    far _nasm_date                          ; 0A2E _ 9A, 0000 0000(far)
?_080:  jmp     ?_087                                   ; 0A33 _ E9, 0125

?_081:  mov     cx, ds                                  ; 0A36 _ 8C. D9
        lds     si, word [fprintf_]                     ; 0A38 _ C5. 36, 0000(segrel)
        mov     bx, dfmt_find_                          ; 0A3C _ BB, 0000(segrel)
        mov     ax, exit_                               ; 0A3F _ B8, 0000(segrel)
        mov     dx, cx                                  ; 0A42 _ 89. CA
        call    far [si+36H]                            ; 0A44 _ FF. 5C, 36
        mov     ax, ISORTAB3CONST                       ; 0A47 _ B8, 0000(seg)
        mov     ds, ax                                  ; 0A4A _ 8E. D8
        lds     bx, word [fprintf_]                     ; 0A4C _ C5. 1E, 0000(segrel)
        test    byte [bx+8H], 01H                       ; 0A50 _ F6. 47, 08, 01
        jz      ?_082                                   ; 0A54 _ 74, 05
        mov     bx, ISORTAB3_GROUP:?_342                ; 0A56 _ BB, 031B(segrel)
        jmp     ?_083                                   ; 0A59 _ EB, 03

?_082:  mov     bx, ISORTAB3_GROUP:?_352                ; 0A5B _ BB, 038B(segrel)
?_083:  mov     cx, ax                                  ; 0A5E _ 89. C1
        mov     ax, dfmt_find_                          ; 0A60 _ B8, 0000(segrel)
        mov     dx, seg dfmt_find_                      ; 0A63 _ BA, 0000(sseg)
        call    far fclose_                             ; 0A66 _ 9A, 0000 0000(far)
        mov     bx, ISORTAB3CONST                       ; 0A6B _ BB, 0000(seg)
        mov     ds, bx                                  ; 0A6E _ 8E. DB
        mov     word [dfmt_list_], ax                   ; 0A70 _ A3, 0000(segrel)
        mov     word [dfmt_list_+2H], dx                ; 0A73 _ 89. 16, 0002(segrel)
        test    dx, dx                                  ; 0A77 _ 85. D2
        jnz     ?_084                                   ; 0A79 _ 75, 1A
        test    ax, ax                                  ; 0A7B _ 85. C0
        jnz     ?_084                                   ; 0A7D _ 75, 16
        push    bx                                      ; 0A7F _ 53
        mov     ax, dfmt_find_                          ; 0A80 _ B8, 0000(segrel)
        push    ax                                      ; 0A83 _ 50
        push    bx                                      ; 0A84 _ 53
        mov     ax, ISORTAB3_GROUP:?_349                ; 0A85 _ B8, 0358(segrel)
        push    ax                                      ; 0A88 _ 50
        mov     ax, 18                                  ; 0A89 _ B8, 0012
        push    ax                                      ; 0A8C _ 50
        call    far time_                               ; 0A8D _ 9A, 0000 0000(far)
        add     sp, 10                                  ; 0A92 _ 83. C4, 0A
?_084:  call    far _nasm_version                       ; 0A95 _ 9A, 0000 0000(far)
        mov     ax, ISORTAB3CONST                       ; 0A9A _ B8, 0000(seg)
        mov     ds, ax                                  ; 0A9D _ 8E. D8
        lds     bx, word [fprintf_]                     ; 0A9F _ C5. 1E, 0000(segrel)
        call    far [bx+16H]                            ; 0AA3 _ FF. 5F, 16
        mov     ax, ISORTAB3CONST                       ; 0AA6 _ B8, 0000(seg)
        mov     ds, ax                                  ; 0AA9 _ 8E. D8
        lds     bx, word [fprintf_]                     ; 0AAB _ C5. 1E, 0000(segrel)
        mov     ax, word [bx+0EH]                       ; 0AAF _ 8B. 47, 0E
        mov     dx, word [bx+10H]                       ; 0AB2 _ 8B. 57, 10
        mov     bx, ISORTAB3CONST                       ; 0AB5 _ BB, 0000(seg)
        mov     ds, bx                                  ; 0AB8 _ 8E. DB
        mov     word [_textopts], ax                    ; 0ABA _ A3, 0000(segrel)
        mov     word [_textopts+2H], dx                 ; 0ABD _ 89. 16, 0002(segrel)
        mov     bx, ax                                  ; 0AC1 _ 89. C3
        mov     ds, dx                                  ; 0AC3 _ 8E. DA
        call    far [bx+8H]                             ; 0AC5 _ FF. 5F, 08
        mov     bx, word [bp-8H]                        ; 0AC8 _ 8B. 5E, F8
        mov     cx, word [bp-6H]                        ; 0ACB _ 8B. 4E, FA
        mov     ax, exit_                               ; 0ACE _ B8, 0000(segrel)
        mov     dx, seg exit_                           ; 0AD1 _ BA, 0000(sseg)
        call    _lprefix                                ; 0AD4 _ E8, 0000(rel)
        mov     ax, ISORTAB3CONST                       ; 0AD7 _ B8, 0000(seg)
        mov     ds, ax                                  ; 0ADA _ 8E. D8
        cmp     byte [pp_extra_stdmac_], 0              ; 0ADC _ 80. 3E, 0000(segrel), 00
        jnz     ?_085                                   ; 0AE1 _ 75, 49
        les     bx, word [fprintf_]                     ; 0AE3 _ C4. 1E, 0000(segrel)
        mov     ax, word [strncpy_]                     ; 0AE7 _ A1, 0000(segrel)
        DB      26H                                     ; Prefix coded explicitly
        call    far [es:bx+3AH]                         ; 0AEA _ 26: FF. 5F, 3A
        call    far _lpostfix                           ; 0AEE _ 9A, 0000 0000(far)
        mov     ax, ISORTAB3CONST                       ; 0AF3 _ B8, 0000(seg)
        mov     ds, ax                                  ; 0AF6 _ 8E. D8
        mov     ax, word [dfmt_list_]                   ; 0AF8 _ A1, 0000(segrel)
        mov     dx, word [dfmt_list_+2H]                ; 0AFB _ 8B. 16, 0002(segrel)
        call    far fgets_                              ; 0AFF _ 9A, 0000 0000(far)
        mov     ax, ISORTAB3CONST                       ; 0B04 _ B8, 0000(seg)
        mov     ds, ax                                  ; 0B07 _ 8E. D8
        lds     bx, word [dfmt_list_]                   ; 0B09 _ C5. 1E, 0000(segrel)
        test    byte [bx+0AH], 20H                      ; 0B0D _ F6. 47, 0A, 20
        jz      ?_085                                   ; 0B11 _ 74, 19
        push    ax                                      ; 0B13 _ 50
        mov     ax, dfmt_find_                          ; 0B14 _ B8, 0000(segrel)
        push    ax                                      ; 0B17 _ 50
        mov     ax, ISORTAB3CONST                       ; 0B18 _ B8, 0000(seg)
        push    ax                                      ; 0B1B _ 50
        mov     ax, ISORTAB3_GROUP:?_353                ; 0B1C _ B8, 038E(segrel)
        push    ax                                      ; 0B1F _ 50
        mov     ax, 17                                  ; 0B20 _ B8, 0011
        push    ax                                      ; 0B23 _ 50
        call    far time_                               ; 0B24 _ 9A, 0000 0000(far)
        add     sp, 10                                  ; 0B29 _ 83. C4, 0A
?_085:  mov     ax, ISORTAB3CONST                       ; 0B2C _ B8, 0000(seg)
        mov     ds, ax                                  ; 0B2F _ 8E. D8
        mov     ax, word [dfmt_list_]                   ; 0B31 _ A1, 0000(segrel)
        mov     dx, word [dfmt_list_+2H]                ; 0B34 _ 8B. 16, 0002(segrel)
        test    dx, dx                                  ; 0B38 _ 85. D2
        jnz     ?_086                                   ; 0B3A _ 75, 04
        test    ax, ax                                  ; 0B3C _ 85. C0
        jz      ?_088                                   ; 0B3E _ 74, 28
?_086:  call    far _nasmpp                             ; 0B40 _ 9A, 0000 0000(far)
        mov     ax, ISORTAB3CONST                       ; 0B45 _ B8, 0000(seg)
        mov     ds, ax                                  ; 0B48 _ 8E. D8
        cmp     byte [pp_extra_stdmac_], 0              ; 0B4A _ 80. 3E, 0000(segrel), 00
        jz      ?_087                                   ; 0B4F _ 74, 0A
        mov     ax, dfmt_find_                          ; 0B51 _ B8, 0000(segrel)
        mov     dx, ds                                  ; 0B54 _ 8C. DA
        call    far _nasm_date                          ; 0B56 _ 9A, 0000 0000(far)
?_087:  mov     ax, ISORTAB3CONST                       ; 0B5B _ B8, 0000(seg)
        mov     ds, ax                                  ; 0B5E _ 8E. D8
        xor     ax, ax                                  ; 0B60 _ 31. C0
        mov     word [dfmt_list_], ax                   ; 0B62 _ A3, 0000(segrel)
        mov     word [dfmt_list_+2H], ax                ; 0B65 _ A3, 0002(segrel)
?_088:  cmp     word [bp-14H], 0                        ; 0B68 _ 83. 7E, EC, 00
        jnz     ?_089                                   ; 0B6C _ 75, 06
        cmp     word [bp-16H], 0                        ; 0B6E _ 83. 7E, EA, 00
        jz      ?_090                                   ; 0B72 _ 74, 15
?_089:  mov     ax, ISORTAB3CONST                       ; 0B74 _ B8, 0000(seg)
        mov     ds, ax                                  ; 0B77 _ 8E. D8
        cmp     byte [pp_extra_stdmac_], 0              ; 0B79 _ 80. 3E, 0000(segrel), 00
        jnz     ?_090                                   ; 0B7E _ 75, 09
        mov     ax, word [bp-16H]                       ; 0B80 _ 8B. 46, EA
        mov     dx, word [bp-14H]                       ; 0B83 _ 8B. 56, EC
        call    nasm_realloc_                           ; 0B86 _ E8, 0000(rel)
?_090:  mov     ax, ISORTAB3CONST                       ; 0B89 _ B8, 0000(seg)
        mov     ds, ax                                  ; 0B8C _ 8E. D8
        cmp     byte [parser_global_info_], 0           ; 0B8E _ 80. 3E, 0000(segrel), 00
        jz      ?_091                                   ; 0B93 _ 74, 03
        call    nasm_skip_spaces_                       ; 0B95 _ E8, 0000(rel)
?_091:  mov     ax, ISORTAB3CONST                       ; 0B98 _ B8, 0000(seg)
        mov     ds, ax                                  ; 0B9B _ 8E. D8
        mov     ax, word [remove_]                      ; 0B9D _ A1, 0000(segrel)
        mov     dx, word [remove_+2H]                   ; 0BA0 _ 8B. 16, 0002(segrel)
        call    far strcspn_                            ; 0BA4 _ 9A, 0000 0000(far)
        mov     ax, ISORTAB3CONST                       ; 0BA9 _ B8, 0000(seg)
        mov     ds, ax                                  ; 0BAC _ 8E. D8
        mov     ax, word [_dfmt]                        ; 0BAE _ A1, 0000(segrel)
        mov     dx, word [_dfmt+2H]                     ; 0BB1 _ 8B. 16, 0002(segrel)
        call    far __IsTable                           ; 0BB5 _ 9A, 0000 0000(far)
        call    far perror_                             ; 0BBA _ 9A, 0000 0000(far)
        call    far getenv_                             ; 0BBF _ 9A, 0000 0000(far)
        mov     ax, ISORTAB3CONST                       ; 0BC4 _ B8, 0000(seg)
        mov     ds, ax                                  ; 0BC7 _ 8E. D8
        mov     al, byte [pp_extra_stdmac_]             ; 0BC9 _ A0, 0000(segrel)
        cbw                                             ; 0BCC _ 98
?_092:  mov     sp, bp                                  ; 0BCD _ 89. EC
        pop     bp                                      ; 0BCF _ 5D
        pop     di                                      ; 0BD0 _ 5F
        pop     si                                      ; 0BD1 _ 5E
        pop     dx                                      ; 0BD2 _ 5A
        retf                                            ; 0BD3 _ CB

        push    ax                                      ; 0BD4 _ 50
        mov     ax, 16                                  ; 0BD5 _ B8, 0010
        call    far puts_                               ; 0BD8 _ 9A, 0000 0000(far)
        pop     ax                                      ; 0BDD _ 58
        push    si                                      ; 0BDE _ 56
        push    di                                      ; 0BDF _ 57
        push    bp                                      ; 0BE0 _ 55
        mov     bp, sp                                  ; 0BE1 _ 89. E5
        mov     si, ax                                  ; 0BE3 _ 89. C6
        mov     ds, dx                                  ; 0BE5 _ 8E. DA
        mov     dx, cx                                  ; 0BE7 _ 89. CA
        mov     di, word [bp+8H]                        ; 0BE9 _ 8B. 7E, 08
        mov     es, word [bp+0AH]                       ; 0BEC _ 8E. 46, 0A
        mov     byte [es:di], 0                         ; 0BEF _ 26: C6. 05, 00
        cmp     byte [si+2H], 0                         ; 0BF3 _ 80. 7C, 02, 00
        jz      ?_093                                   ; 0BF7 _ 74, 0B
        inc     ax                                      ; 0BF9 _ 40
        inc     ax                                      ; 0BFA _ 40
        mov     dx, ds                                  ; 0BFB _ 8C. DA
        call    far nasm_strdup_                        ; 0BFD _ 9A, 0000 0000(far)
        jmp     ?_096                                   ; 0C02 _ EB, 38

?_093:  test    cx, cx                                  ; 0C04 _ 85. C9
        jnz     ?_094                                   ; 0C06 _ 75, 04
        test    bx, bx                                  ; 0C08 _ 85. DB
        jz      ?_095                                   ; 0C0A _ 74, 12
?_094:  mov     es, cx                                  ; 0C0C _ 8E. C1
        cmp     byte [es:bx], 0                         ; 0C0E _ 26: 80. 3F, 00
        jz      ?_095                                   ; 0C12 _ 74, 0A
        mov     ds, word [bp+0AH]                       ; 0C14 _ 8E. 5E, 0A
        mov     byte [di], 1                            ; 0C17 _ C6. 05, 01
        mov     ax, bx                                  ; 0C1A _ 89. D8
        jmp     ?_096                                   ; 0C1C _ EB, 1E

?_095:  mov     al, byte [si+1H]                        ; 0C1E _ 8A. 44, 01
        xor     ah, ah                                  ; 0C21 _ 30. E4
        push    ax                                      ; 0C23 _ 50
        mov     ax, ISORTAB3CONST                       ; 0C24 _ B8, 0000(seg)
        push    ax                                      ; 0C27 _ 50
        mov     ax, ISORTAB3_GROUP:?_354                ; 0C28 _ B8, 03AE(segrel)
        push    ax                                      ; 0C2B _ 50
        mov     ax, 49                                  ; 0C2C _ B8, 0031
        push    ax                                      ; 0C2F _ 50
        call    far time_                               ; 0C30 _ 9A, 0000 0000(far)
        add     sp, 8                                   ; 0C35 _ 83. C4, 08
        xor     ax, ax                                  ; 0C38 _ 31. C0
        xor     dx, dx                                  ; 0C3A _ 31. D2
?_096:  pop     bp                                      ; 0C3C _ 5D
        pop     di                                      ; 0C3D _ 5F
        pop     si                                      ; 0C3E _ 5E
        ret     4                                       ; 0C3F _ C2, 0004

        push    ax                                      ; 0C42 _ 50
        mov     ax, 12                                  ; 0C43 _ B8, 000C
        call    far puts_                               ; 0C46 _ 9A, 0000 0000(far)
        pop     ax                                      ; 0C4B _ 58
        push    si                                      ; 0C4C _ 56
        push    di                                      ; 0C4D _ 57
        mov     di, ax                                  ; 0C4E _ 89. C7
        mov     si, dx                                  ; 0C50 _ 89. D6
        mov     ax, bx                                  ; 0C52 _ 89. D8
        mov     dx, cx                                  ; 0C54 _ 89. CA
        call    far nasm_init_malloc_error_             ; 0C56 _ 9A, 0000 0000(far)
        cmp     ax, 144                                 ; 0C5B _ 3D, 0090
        jc      ?_097                                   ; 0C5E _ 72, 17
        mov     ax, ISORTAB3CONST                       ; 0C60 _ B8, 0000(seg)
        push    ax                                      ; 0C63 _ 50
        mov     ax, ISORTAB3_GROUP:?_355                ; 0C64 _ B8, 03D0(segrel)
        push    ax                                      ; 0C67 _ 50
        mov     ax, 18                                  ; 0C68 _ B8, 0012
        push    ax                                      ; 0C6B _ 50
        call    far time_                               ; 0C6C _ 9A, 0000 0000(far)
        add     sp, 6                                   ; 0C71 _ 83. C4, 06
        pop     di                                      ; 0C74 _ 5F
        pop     si                                      ; 0C75 _ 5E
        ret                                             ; 0C76 _ C3

?_097:  mov     ax, 144                                 ; 0C77 _ B8, 0090
        push    ax                                      ; 0C7A _ 50
        mov     ax, di                                  ; 0C7B _ 89. F8
        mov     dx, si                                  ; 0C7D _ 89. F2
        call    far _prev_offset_changed                ; 0C7F _ 9A, 0000 0000(far)
        pop     di                                      ; 0C84 _ 5F
        pop     si                                      ; 0C85 _ 5E
        ret                                             ; 0C86 _ C3

        push    ax                                      ; 0C87 _ 50
        mov     ax, 18                                  ; 0C88 _ B8, 0012
        call    far puts_                               ; 0C8B _ 9A, 0000 0000(far)
        pop     ax                                      ; 0C90 _ 58
        push    bx                                      ; 0C91 _ 53
        push    cx                                      ; 0C92 _ 51
        push    si                                      ; 0C93 _ 56
        push    di                                      ; 0C94 _ 57
        push    bp                                      ; 0C95 _ 55
        mov     bp, sp                                  ; 0C96 _ 89. E5
        sub     sp, 6                                   ; 0C98 _ 83. EC, 06
        mov     di, ax                                  ; 0C9B _ 89. C7
        mov     cx, dx                                  ; 0C9D _ 89. D1
        mov     bx, 1                                   ; 0C9F _ BB, 0001
        xor     ax, ax                                  ; 0CA2 _ 31. C0
        test    dx, dx                                  ; 0CA4 _ 85. D2
        jnz     ?_098                                   ; 0CA6 _ 75, 09
        test    di, di                                  ; 0CA8 _ 85. FF
        jnz     ?_098                                   ; 0CAA _ 75, 05
        xor     bx, bx                                  ; 0CAC _ 31. DB
        jmp     ?_123                                   ; 0CAE _ E9, 00F2

?_098:  mov     si, di                                  ; 0CB1 _ 89. FE
        mov     word [bp-2H], dx                        ; 0CB3 _ 89. 56, FE
        mov     ds, word [bp-2H]                        ; 0CB6 _ 8E. 5E, FE
?_099:  cmp     byte [si], 0                            ; 0CB9 _ 80. 3C, 00
        jz      ?_107                                   ; 0CBC _ 74, 36
        mov     dl, byte [si]                           ; 0CBE _ 8A. 14
        cmp     dl, 32                                  ; 0CC0 _ 80. FA, 20
        jc      ?_100                                   ; 0CC3 _ 72, 13
        jbe     ?_101                                   ; 0CC5 _ 76, 16
        cmp     dl, 92                                  ; 0CC7 _ 80. FA, 5C
        jz      ?_103                                   ; 0CCA _ 74, 1F
        cmp     dl, 35                                  ; 0CCC _ 80. FA, 23
        jc      ?_104                                   ; 0CCF _ 72, 1D
        cmp     dl, 36                                  ; 0CD1 _ 80. FA, 24
        jbe     ?_102                                   ; 0CD4 _ 76, 0F
        jmp     ?_104                                   ; 0CD6 _ EB, 16

?_100:  cmp     dl, 9                                   ; 0CD8 _ 80. FA, 09
        jnz     ?_104                                   ; 0CDB _ 75, 11
?_101:  inc     ax                                      ; 0CDD _ 40
        inc     ax                                      ; 0CDE _ 40
        add     bx, ax                                  ; 0CDF _ 01. C3
        xor     ax, ax                                  ; 0CE1 _ 31. C0
        jmp     ?_106                                   ; 0CE3 _ EB, 0C

?_102:  xor     ax, ax                                  ; 0CE5 _ 31. C0
        inc     bx                                      ; 0CE7 _ 43
        inc     bx                                      ; 0CE8 _ 43
        jmp     ?_106                                   ; 0CE9 _ EB, 06

?_103:  inc     ax                                      ; 0CEB _ 40
        jmp     ?_105                                   ; 0CEC _ EB, 02

?_104:  xor     ax, ax                                  ; 0CEE _ 31. C0
?_105:  inc     bx                                      ; 0CF0 _ 43
?_106:  inc     si                                      ; 0CF1 _ 46
        jmp     ?_099                                   ; 0CF2 _ EB, C5

?_107:  test    ax, ax                                  ; 0CF4 _ 85. C0
        jz      ?_108                                   ; 0CF6 _ 74, 02
        add     bx, ax                                  ; 0CF8 _ 01. C3
?_108:  mov     ax, bx                                  ; 0CFA _ 89. D8
        call    far _passn                              ; 0CFC _ 9A, 0000 0000(far)
        mov     bx, ax                                  ; 0D01 _ 89. C3
        mov     ds, dx                                  ; 0D03 _ 8E. DA
        mov     word [bp-6H], ax                        ; 0D05 _ 89. 46, FA
        mov     word [bp-4H], dx                        ; 0D08 _ 89. 56, FC
        xor     ax, ax                                  ; 0D0B _ 31. C0
        mov     si, di                                  ; 0D0D _ 89. FE
        mov     word [bp-2H], cx                        ; 0D0F _ 89. 4E, FE
?_109:  mov     es, word [bp-2H]                        ; 0D12 _ 8E. 46, FE
        cmp     byte [es:si], 0                         ; 0D15 _ 26: 80. 3C, 00
        jz      ?_117                                   ; 0D19 _ 74, 5C
        mov     dl, byte [es:si]                        ; 0D1B _ 26: 8A. 14
        cmp     dl, 35                                  ; 0D1E _ 80. FA, 23
        jc      ?_110                                   ; 0D21 _ 72, 14
        lea     di, [bx+1H]                             ; 0D23 _ 8D. 7F, 01
        lea     cx, [bx+2H]                             ; 0D26 _ 8D. 4F, 02
        jbe     ?_116                                   ; 0D29 _ 76, 42
        cmp     dl, 92                                  ; 0D2B _ 80. FA, 5C
        jz      ?_118                                   ; 0D2E _ 74, 49
        cmp     dl, 36                                  ; 0D30 _ 80. FA, 24
        jz      ?_114                                   ; 0D33 _ 74, 2E
        jmp     ?_119                                   ; 0D35 _ EB, 49

?_110:  cmp     dl, 32                                  ; 0D37 _ 80. FA, 20
        jz      ?_111                                   ; 0D3A _ 74, 05
        cmp     dl, 9                                   ; 0D3C _ 80. FA, 09
        jnz     ?_119                                   ; 0D3F _ 75, 3F
?_111:  mov     cx, ds                                  ; 0D41 _ 8C. D9
?_112:  dec     ax                                      ; 0D43 _ 48
        lea     di, [bx+1H]                             ; 0D44 _ 8D. 7F, 01
; Note: Immediate operand could be made smaller by sign extension
        cmp     ax, 4294967295                          ; 0D47 _ 3D, FFFF
        jz      ?_113                                   ; 0D4A _ 74, 07
        mov     byte [bx], 92                           ; 0D4C _ C6. 07, 5C
        mov     bx, di                                  ; 0D4F _ 89. FB
        jmp     ?_112                                   ; 0D51 _ EB, F0

?_113:  mov     byte [bx], 92                           ; 0D53 _ C6. 07, 5C
        mov     es, word [bp-2H]                        ; 0D56 _ 8E. 46, FE
        mov     dl, byte [es:si]                        ; 0D59 _ 26: 8A. 14
        mov     byte [di], dl                           ; 0D5C _ 88. 15
        lea     bx, [di+1H]                             ; 0D5E _ 8D. 5D, 01
        jmp     ?_120                                   ; 0D61 _ EB, 28

?_114:  mov     byte [bx], dl                           ; 0D63 _ 88. 17
        mov     byte [di], dl                           ; 0D65 _ 88. 15
?_115:  xor     ax, ax                                  ; 0D67 _ 31. C0
        mov     bx, cx                                  ; 0D69 _ 89. CB
        jmp     ?_120                                   ; 0D6B _ EB, 1E

?_116:  mov     byte [bx], 92                           ; 0D6D _ C6. 07, 5C
        mov     al, byte [es:si]                        ; 0D70 _ 26: 8A. 04
        mov     byte [di], al                           ; 0D73 _ 88. 05
        jmp     ?_115                                   ; 0D75 _ EB, F0

?_117:  jmp     ?_121                                   ; 0D77 _ EB, 15

?_118:  mov     byte [bx], dl                           ; 0D79 _ 88. 17
        mov     bx, di                                  ; 0D7B _ 89. FB
        inc     ax                                      ; 0D7D _ 40
        jmp     ?_120                                   ; 0D7E _ EB, 0B

?_119:  mov     es, word [bp-2H]                        ; 0D80 _ 8E. 46, FE
        mov     al, byte [es:si]                        ; 0D83 _ 26: 8A. 04
        mov     byte [bx], al                           ; 0D86 _ 88. 07
        xor     ax, ax                                  ; 0D88 _ 31. C0
        inc     bx                                      ; 0D8A _ 43
?_120:  inc     si                                      ; 0D8B _ 46
        jmp     ?_109                                   ; 0D8C _ EB, 84

?_121:  dec     ax                                      ; 0D8E _ 48
; Note: Immediate operand could be made smaller by sign extension
        cmp     ax, 4294967295                          ; 0D8F _ 3D, FFFF
        jz      ?_122                                   ; 0D92 _ 74, 06
        mov     byte [bx], 92                           ; 0D94 _ C6. 07, 5C
        inc     bx                                      ; 0D97 _ 43
        jmp     ?_121                                   ; 0D98 _ EB, F4

?_122:  mov     byte [bx], 0                            ; 0D9A _ C6. 07, 00
        mov     ax, word [bp-6H]                        ; 0D9D _ 8B. 46, FA
        mov     bx, word [bp-4H]                        ; 0DA0 _ 8B. 5E, FC
?_123:  mov     dx, bx                                  ; 0DA3 _ 89. DA
        jmp     ?_042                                   ; 0DA5 _ E9, F8C0

?_124:  ; Local function
        jns     ?_128                                   ; 0DA8 _ 79, 77
        jbe     ?_128                                   ; 0DAA _ 76, 75
        jz      ?_128                                   ; 0DAC _ 74, 73
        jo      ?_127                                   ; 0DAE _ 70, 6F
        insb                                            ; 0DB0 _ 6C
        imul    bp, word [bx+si+67H], 25958             ; 0DB1 _ 69. 68, 67, 6566
; Note: Prefix bit or byte has no meaning in this context
        popaw                                           ; 0DB6 _ 64: 61
        pop     dx                                      ; 0DB8 _ 5A
        pop     ax                                      ; 0DB9 _ 58
        push    di                                      ; 0DBA _ 57
        push    bp                                      ; 0DBB _ 55
        push    ax                                      ; 0DBC _ 50
        dec     di                                      ; 0DBD _ 4F
        dec     bp                                      ; 0DBE _ 4D
        dec     cx                                      ; 0DBF _ 49
        inc     si                                      ; 0DC0 _ 46
        inc     bp                                      ; 0DC1 _ 45
        inc     sp                                      ; 0DC2 _ 44
; Warning: Label out of phase with instruction. Possibly spurious
; ?_125; Misplaced symbol at address 00000DC4
        sub     ax, nasm_TEXT:?_224                     ; 0DC3 _ 2D, 150B(segrel)

?_126:                                                  ; byte
        dw nasm_TEXT:?_213                              ; 0DC6 _ 1429H (segrel)
        dw nasm_TEXT:?_154                              ; 0DC8 _ 0FA9H (segrel)
        dw nasm_TEXT:?_176                              ; 0DCA _ 120BH (segrel)
        dw nasm_TEXT:?_160                              ; 0DCC _ 0FEFH (segrel)
        dw nasm_TEXT:?_156                              ; 0DCE _ 0FC3H (segrel)
        dw nasm_TEXT:?_199                              ; 0DD0 _ 1349H (segrel)
        dw nasm_TEXT:?_140                              ; 0DD2 _ 0EEFH (segrel)
        dw nasm_TEXT:?_153                              ; 0DD4 _ 0F9CH (segrel)
        dw nasm_TEXT:?_155                              ; 0DD6 _ 0FB6H (segrel)
        dw nasm_TEXT:?_178                              ; 0DD8 _ 1229H (segrel)
        dw nasm_TEXT:?_162                              ; 0DDA _ 105FH (segrel)
        dw nasm_TEXT:?_159                              ; 0DDC _ 0FE0H (segrel)
        dw nasm_TEXT:?_177                              ; 0DDE _ 1218H (segrel)
        dw nasm_TEXT:?_154                              ; 0DE0 _ 0FA9H (segrel)
        dw nasm_TEXT:?_176                              ; 0DE2 _ 120BH (segrel)
        dw nasm_TEXT:?_138                              ; 0DE4 _ 0EBFH (segrel)
        dw nasm_TEXT:?_161                              ; 0DE6 _ 1051H (segrel)
        dw nasm_TEXT:?_166                              ; 0DE8 _ 10AFH (segrel)
        dw nasm_TEXT:?_156                              ; 0DEA _ 0FC3H (segrel)
        dw nasm_TEXT:?_158                              ; 0DEC _ 0FD1H (segrel)
        dw nasm_TEXT:?_137                              ; 0DEE _ 0EB0H (segrel)
        dw nasm_TEXT:?_153                              ; 0DF0 _ 0F9CH (segrel)
        dw nasm_TEXT:?_135                              ; 0DF2 _ 0E9CH (segrel)
        dw nasm_TEXT:?_174                              ; 0DF4 _ 11D4H (segrel)
        dw nasm_TEXT:?_155                              ; 0DF6 _ 0FB6H (segrel)
        dw nasm_TEXT:?_175                              ; 0DF8 _ 11E1H (segrel)
        dw nasm_TEXT:?_180                              ; 0DFA _ 124DH (segrel)
        dw nasm_TEXT:?_173                              ; 0DFC _ 119FH (segrel)
        dw 0B850H, 0026H                                ; 0DFE _ -18352 38 
        db 9AH                                          ; 0E02 _ .
        dd puts_                                        ; 0E03 _ 00000000 (far)
        dd 55575658H, 0EC83E589H                        ; 0E07 _ 1431787096 -326900343 
        dd 0F246890EH, 89F45689H                        ; 0E0F _ -230258418 -1980475767 
        dd 0FA4E89DEH, 00FC46C6H                        ; 0E17 _ -95516194 16533190 
?_127:  test    dx, dx                                  ; 0E1F _ 85. D2
?_128:  jnz     ?_129                                   ; 0E21 _ 75, 04
        test    ax, ax                                  ; 0E23 _ 85. C0
        jz      ?_130                                   ; 0E25 _ 74, 0A
?_129:  mov     ds, dx                                  ; 0E27 _ 8E. DA
        mov     bx, ax                                  ; 0E29 _ 89. C3
        mov     al, byte [bx]                           ; 0E2B _ 8A. 07
        test    al, al                                  ; 0E2D _ 84. C0
        jnz     ?_131                                   ; 0E2F _ 75, 05
?_130:  xor     al, al                                  ; 0E31 _ 30. C0
        jmp     ?_012                                   ; 0E33 _ E9, F429

?_131:  cmp     al, 45                                  ; 0E36 _ 3C, 2D
        jnz     ?_134                                   ; 0E38 _ 75, 5F
        mov     ax, ISORTAB3CONST                       ; 0E3A _ B8, 0000(seg)
        mov     ds, ax                                  ; 0E3D _ 8E. D8
        cmp     byte [redefine_label_], 0               ; 0E3F _ 80. 3E, 0000(segrel), 00
        jnz     ?_134                                   ; 0E44 _ 75, 53
        mov     ds, dx                                  ; 0E46 _ 8E. DA
        mov     bl, byte [bx+1H]                        ; 0E48 _ 8A. 5F, 01
        xor     bh, bh                                  ; 0E4B _ 30. FF
        mov     ax, ISORTAB3_GROUP:?_356                ; 0E4D _ B8, 03E3(segrel)
        mov     dx, ISORTAB3CONST                       ; 0E50 _ BA, 0000(seg)
        call    far define_label_                       ; 0E53 _ 9A, 0000 0000(far)
        test    dx, dx                                  ; 0E58 _ 85. D2
        jnz     ?_132                                   ; 0E5A _ 75, 04
        test    ax, ax                                  ; 0E5C _ 85. C0
        jz      ?_133                                   ; 0E5E _ 74, 1E
?_132:  lea     dx, [bp-4H]                             ; 0E60 _ 8D. 56, FC
        push ss                                         ; 0E63 _ 16
        push    dx                                      ; 0E64 _ 52
        mov     bx, si                                  ; 0E65 _ 89. F3
        mov     ax, word [bp-0EH]                       ; 0E67 _ 8B. 46, F2
        mov     dx, word [bp-0CH]                       ; 0E6A _ 8B. 56, F4
        call    _globalbits                             ; 0E6D _ E8, 0000(rel)
        mov     word [bp-0AH], ax                       ; 0E70 _ 89. 46, F6
        mov     word [bp-8H], dx                        ; 0E73 _ 89. 56, F8
        test    dx, dx                                  ; 0E76 _ 85. D2
        jnz     ?_133                                   ; 0E78 _ 75, 04
        test    ax, ax                                  ; 0E7A _ 85. C0
        jz      ?_136                                   ; 0E7C _ 74, 2F
?_133:  lds     bx, word [bp-0EH]                       ; 0E7E _ C5. 5E, F2
        mov     al, byte [bx+1H]                        ; 0E81 _ 8A. 47, 01
        push cs                                         ; 0E84 _ 0E
        pop  es                                         ; 0E85 _ 07
        mov     cx, 29                                  ; 0E86 _ B9, 001D
        mov     di, nasm_TEXT:?_124                     ; 0E89 _ BF, 0DA8(segrel)
        repne scasb                                     ; 0E8C _ F2: AE
        shl     cx, 1                                   ; 0E8E _ D1. E1
        mov     di, cx                                  ; 0E90 _ 89. CF
        mov     ax, word [cs:?_125+di]                  ; 0E92 _ 2E: 8B. 85, 0DC4(segrel)
        jmp     ax                                      ; 0E97 _ FF. E0

?_134:  jmp     ?_225                                   ; 0E99 _ E9, 0699

?_135:  mov     ax, ISORTAB3CONST                       ; 0E9C _ B8, 0000(seg)
        mov     ds, ax                                  ; 0E9F _ 8E. D8
        mov     word [pp_include_path_], _pass0+12H     ; 0EA1 _ C7. 06, 0000(segrel), 0012(segrel)
        mov     word [pp_include_path_+2H], seg _pass0  ; 0EA7 _ C7. 06, 0002(segrel), 0000(sseg)
?_136:  jmp     ?_228                                   ; 0EAD _ E9, 06A6

?_137:  mov     bx, word [bp-0AH]                       ; 0EB0 _ 8B. 5E, F6
        mov     cx, word [bp-8H]                        ; 0EB3 _ 8B. 4E, F8
        mov     ax, dfmt_find_                          ; 0EB6 _ B8, 0000(segrel)
        mov     dx, seg dfmt_find_                      ; 0EB9 _ BA, 0000(sseg)
        jmp     ?_227                                   ; 0EBC _ E9, 0694

?_138:  mov     ax, word [bp-0AH]                       ; 0EBF _ 8B. 46, F6
        mov     dx, word [bp-8H]                        ; 0EC2 _ 8B. 56, F8
        call    far _in_abs_seg                         ; 0EC5 _ 9A, 0000 0000(far)
        mov     bx, ISORTAB3CONST                       ; 0ECA _ BB, 0000(seg)
        mov     ds, bx                                  ; 0ECD _ 8E. DB
        mov     word [fprintf_], ax                     ; 0ECF _ A3, 0000(segrel)
        mov     word [fprintf_+2H], dx                  ; 0ED2 _ 89. 16, 0002(segrel)
        test    dx, dx                                  ; 0ED6 _ 85. D2
        jnz     ?_142                                   ; 0ED8 _ 75, 28
        test    ax, ax                                  ; 0EDA _ 85. C0
        jnz     ?_142                                   ; 0EDC _ 75, 24
        push    word [bp-8H]                            ; 0EDE _ FF. 76, F8
        push    word [bp-0AH]                           ; 0EE1 _ FF. 76, F6
        push    bx                                      ; 0EE4 _ 53
        mov     ax, ISORTAB3_GROUP:?_357                ; 0EE5 _ B8, 03F5(segrel)
?_139:  push    ax                                      ; 0EE8 _ 50
        mov     ax, 50                                  ; 0EE9 _ B8, 0032
        jmp     ?_197                                   ; 0EEC _ E9, 044E

?_140:  lds     bx, word [bp-0AH]                       ; 0EEF _ C5. 5E, F6
        cmp     byte [bx], 0                            ; 0EF2 _ 80. 3F, 00
        jnz     ?_146                                   ; 0EF5 _ 75, 33
        mov     ax, ISORTAB3CONST                       ; 0EF7 _ B8, 0000(seg)
        mov     ds, ax                                  ; 0EFA _ 8E. D8
?_141:  mov     word [_global_offset_changed], 16383    ; 0EFC _ C7. 06, 0000(segrel), 3FFF
?_142:  jmp     ?_228                                   ; 0F02 _ E9, 0651

?_143:  cmp     al, 43                                  ; 0F05 _ 3C, 2B
        jmp     ?_147                                   ; 0F07 _ EB, 3A

?_144:  mov     ax, 10                                  ; 0F09 _ B8, 000A
        push    ax                                      ; 0F0C _ 50
        mov     cx, ss                                  ; 0F0D _ 8C. D1
        lea     bx, [bp-0AH]                            ; 0F0F _ 8D. 5E, F6
        mov     ax, word [bp-0AH]                       ; 0F12 _ 8B. 46, F6
        mov     dx, ds                                  ; 0F15 _ 8C. DA
        call    far saa_rewind_                         ; 0F17 _ 9A, 0000 0000(far)
; Note: Immediate operand could be made smaller by sign extension
        cmp     ax, 2                                   ; 0F1C _ 3D, 0002
        jge     ?_148                                   ; 0F1F _ 7D, 26
        mov     dx, ISORTAB3CONST                       ; 0F21 _ BA, 0000(seg)
        mov     ds, dx                                  ; 0F24 _ 8E. DA
        dec     ax                                      ; 0F26 _ 48
?_145:  mov     word [_global_offset_changed], ax       ; 0F27 _ A3, 0000(segrel)
?_146:  lds     bx, word [bp-0AH]                       ; 0F2A _ C5. 5E, F6
        mov     al, byte [bx]                           ; 0F2D _ 8A. 07
        test    al, al                                  ; 0F2F _ 84. C0
        jz      ?_152                                   ; 0F31 _ 74, 59
        mov     bl, al                                  ; 0F33 _ 88. C3
        cmp     al, 48                                  ; 0F35 _ 3C, 30
        jc      ?_143                                   ; 0F37 _ 72, CC
        cmp     al, 57                                  ; 0F39 _ 3C, 39
        jbe     ?_144                                   ; 0F3B _ 76, CC
        cmp     al, 120                                 ; 0F3D _ 3C, 78
        jz      ?_150                                   ; 0F3F _ 74, 1D
        cmp     al, 118                                 ; 0F41 _ 3C, 76
?_147:  jz      ?_149                                   ; 0F43 _ 74, 09
        jmp     ?_151                                   ; 0F45 _ EB, 27

?_148:  mov     dx, ISORTAB3CONST                       ; 0F47 _ BA, 0000(seg)
        mov     ds, dx                                  ; 0F4A _ 8E. DA
        jmp     ?_145                                   ; 0F4C _ EB, D9

?_149:  mov     ax, ISORTAB3CONST                       ; 0F4E _ B8, 0000(seg)
        mov     ds, ax                                  ; 0F51 _ 8E. D8
        mov     ax, 1                                   ; 0F53 _ B8, 0001
        mov     word [saa_rstruct_], ax                 ; 0F56 _ A3, 0000(segrel)
        add     word [bp-0AH], ax                       ; 0F59 _ 01. 46, F6
        jmp     ?_146                                   ; 0F5C _ EB, CC

?_150:  mov     ax, ISORTAB3CONST                       ; 0F5E _ B8, 0000(seg)
        mov     ds, ax                                  ; 0F61 _ 8E. D8
        mov     word [_global_offset_changed], 16383    ; 0F63 _ C7. 06, 0000(segrel), 3FFF
        inc     word [bp-0AH]                           ; 0F69 _ FF. 46, F6
        jmp     ?_146                                   ; 0F6C _ EB, BC

?_151:  lds     bx, word [bp-0AH]                       ; 0F6E _ C5. 5E, F6
        mov     al, byte [bx]                           ; 0F71 _ 8A. 07
        xor     ah, ah                                  ; 0F73 _ 30. E4
        push    ax                                      ; 0F75 _ 50
        mov     ax, ISORTAB3CONST                       ; 0F76 _ B8, 0000(seg)
        push    ax                                      ; 0F79 _ 50
        mov     ax, ISORTAB3_GROUP:?_358                ; 0F7A _ B8, 042A(segrel)
        push    ax                                      ; 0F7D _ 50
        mov     ax, 2                                   ; 0F7E _ B8, 0002
        push    ax                                      ; 0F81 _ 50
        call    far time_                               ; 0F82 _ 9A, 0000 0000(far)
        add     sp, 8                                   ; 0F87 _ 83. C4, 08
        jmp     ?_146                                   ; 0F8A _ EB, 9E

?_152:  mov     ax, ISORTAB3CONST                       ; 0F8C _ B8, 0000(seg)
        mov     ds, ax                                  ; 0F8F _ 8E. D8
        cmp     word [_global_offset_changed], 16383    ; 0F91 _ 81. 3E, 0000(segrel), 3FFF
        jle     ?_157                                   ; 0F97 _ 7E, 35
        jmp     ?_141                                   ; 0F99 _ E9, FF60

?_153:  mov     ax, word [bp-0AH]                       ; 0F9C _ 8B. 46, F6
        mov     dx, word [bp-8H]                        ; 0F9F _ 8B. 56, F8
        call    far memcpy_                             ; 0FA2 _ 9A, 0000 0000(far)
        jmp     ?_157                                   ; 0FA7 _ EB, 25

?_154:  mov     ax, word [bp-0AH]                       ; 0FA9 _ 8B. 46, F6
        mov     dx, word [bp-8H]                        ; 0FAC _ 8B. 56, F8
        call    far strcmp_                             ; 0FAF _ 9A, 0000 0000(far)
        jmp     ?_157                                   ; 0FB4 _ EB, 18

?_155:  mov     ax, word [bp-0AH]                       ; 0FB6 _ 8B. 46, F6
        mov     dx, word [bp-8H]                        ; 0FB9 _ 8B. 56, F8
        call    far _abs_offset                         ; 0FBC _ 9A, 0000 0000(far)
        jmp     ?_157                                   ; 0FC1 _ EB, 0B

?_156:  mov     ax, word [bp-0AH]                       ; 0FC3 _ 8B. 46, F6
        mov     dx, word [bp-8H]                        ; 0FC6 _ 8B. 56, F8
        call    far printf_                             ; 0FC9 _ 9A, 0000 0000(far)
?_157:  jmp     ?_228                                   ; 0FCE _ E9, 0585

?_158:  mov     bx, word [bp-0AH]                       ; 0FD1 _ 8B. 5E, F6
        mov     cx, word [bp-8H]                        ; 0FD4 _ 8B. 4E, F8
        mov     ax, raa_read_                           ; 0FD7 _ B8, 0000(segrel)
        mov     dx, seg raa_read_                       ; 0FDA _ BA, 0000(sseg)
        jmp     ?_227                                   ; 0FDD _ E9, 0573

?_159:  mov     bx, word [bp-0AH]                       ; 0FE0 _ 8B. 5E, F6
        mov     cx, word [bp-8H]                        ; 0FE3 _ 8B. 4E, F8
        mov     ax, atoi_                               ; 0FE6 _ B8, 0000(segrel)
        mov     dx, seg atoi_                           ; 0FE9 _ BA, 0000(sseg)
        jmp     ?_227                                   ; 0FEC _ E9, 0564

?_160:  mov     bx, word [bp-0AH]                       ; 0FEF _ 8B. 5E, F6
        mov     cx, word [bp-8H]                        ; 0FF2 _ 8B. 4E, F8
        mov     ax, ISORTAB3CONST                       ; 0FF5 _ B8, 0000(seg)
        mov     ds, ax                                  ; 0FF8 _ 8E. D8
        mov     ax, word [fprintf_]                     ; 0FFA _ A1, 0000(segrel)
        mov     dx, word [fprintf_+2H]                  ; 0FFD _ 8B. 16, 0002(segrel)
        call    far is_extern_                          ; 1001 _ 9A, 0000 0000(far)
        mov     bx, ISORTAB3CONST                       ; 1006 _ BB, 0000(seg)
        mov     ds, bx                                  ; 1009 _ 8E. DB
        lds     bx, word [fprintf_]                     ; 100B _ C5. 1E, 0000(segrel)
        mov     word [bx+0EH], ax                       ; 100F _ 89. 47, 0E
        mov     word [bx+10H], dx                       ; 1012 _ 89. 57, 10
        mov     ax, ISORTAB3CONST                       ; 1015 _ B8, 0000(seg)
        mov     ds, ax                                  ; 1018 _ 8E. D8
        lds     bx, word [fprintf_]                     ; 101A _ C5. 1E, 0000(segrel)
        mov     cx, word [bx+0EH]                       ; 101E _ 8B. 4F, 0E
        mov     dx, word [bx+10H]                       ; 1021 _ 8B. 57, 10
        xor     bx, bx                                  ; 1024 _ 31. DB
        cmp     dx, bx                                  ; 1026 _ 39. DA
        jnz     ?_161                                   ; 1028 _ 75, 27
        cmp     cx, bx                                  ; 102A _ 39. D9
        jnz     ?_161                                   ; 102C _ 75, 23
        mov     ds, ax                                  ; 102E _ 8E. D8
        lds     bx, word [fprintf_]                     ; 1030 _ C5. 1E, 0000(segrel)
        push    word [bx+6H]                            ; 1034 _ FF. 77, 06
        push    word [bx+4H]                            ; 1037 _ FF. 77, 04
        push    word [bp-8H]                            ; 103A _ FF. 76, F8
        push    word [bp-0AH]                           ; 103D _ FF. 76, F6
        mov     dx, ISORTAB3_GROUP:?_359                ; 1040 _ BA, 044C(segrel)
        push    ax                                      ; 1043 _ 50
        push    dx                                      ; 1044 _ 52
        mov     ax, 50                                  ; 1045 _ B8, 0032
        push    ax                                      ; 1048 _ 50
        call    far time_                               ; 1049 _ 9A, 0000 0000(far)
        add     sp, 14                                  ; 104E _ 83. C4, 0E
?_161:  mov     ax, ISORTAB3CONST                       ; 1051 _ B8, 0000(seg)
        mov     ds, ax                                  ; 1054 _ 8E. D8
        mov     word [strncpy_], 1                      ; 1056 _ C7. 06, 0000(segrel), 0001
        jmp     ?_228                                   ; 105C _ E9, 04F7

?_162:  mov     bx, word [bp-0AH]                       ; 105F _ 8B. 5E, F6
        mov     cx, word [bp-8H]                        ; 1062 _ 8B. 4E, F8
        mov     ax, ISORTAB3_GROUP:?_360                ; 1065 _ B8, 0482(segrel)
        mov     dx, ISORTAB3CONST                       ; 1068 _ BA, 0000(seg)
        call    far declare_as_global_                  ; 106B _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 1070 _ 85. C0
        jnz     ?_164                                   ; 1072 _ 75, 0E
        mov     ax, seg_alloc_                          ; 1074 _ B8, 0000(segrel)
        mov     dx, seg seg_alloc_                      ; 1077 _ BA, 0000(sseg)
?_163:  call    far eval_global_info_                   ; 107A _ 9A, 0000 0000(far)
        jmp     ?_228                                   ; 107F _ E9, 04D4

?_164:  mov     bx, word [bp-0AH]                       ; 1082 _ 8B. 5E, F6
        mov     cx, word [bp-8H]                        ; 1085 _ 8B. 4E, F8
        mov     ax, ISORTAB3_GROUP:?_361                ; 1088 _ B8, 0485(segrel)
        mov     dx, ISORTAB3CONST                       ; 108B _ BA, 0000(seg)
        call    far declare_as_global_                  ; 108E _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 1093 _ 85. C0
        jnz     ?_165                                   ; 1095 _ 75, 08
        mov     ax, lookup_label_                       ; 1097 _ B8, 0000(segrel)
        mov     dx, seg lookup_label_                   ; 109A _ BA, 0000(sseg)
        jmp     ?_163                                   ; 109D _ EB, DB

?_165:  push    word [bp-8H]                            ; 109F _ FF. 76, F8
        push    word [bp-0AH]                           ; 10A2 _ FF. 76, F6
        mov     ax, ISORTAB3CONST                       ; 10A5 _ B8, 0000(seg)
        push    ax                                      ; 10A8 _ 50
        mov     ax, ISORTAB3_GROUP:?_362                ; 10A9 _ B8, 0489(segrel)
        jmp     ?_139                                   ; 10AC _ E9, FE39

?_166:  mov     ax, ISORTAB3CONST                       ; 10AF _ B8, 0000(seg)
        push    ax                                      ; 10B2 _ 50
        mov     ax, ISORTAB3_GROUP:?_363                ; 10B3 _ B8, 04B2(segrel)
        push    ax                                      ; 10B6 _ 50
        call    far nasm_zap_spaces_fwd_                ; 10B7 _ 9A, 0000 0000(far)
        add     sp, 4                                   ; 10BC _ 83. C4, 04
        mov     ax, ISORTAB3CONST                       ; 10BF _ B8, 0000(seg)
        push    ax                                      ; 10C2 _ 50
        mov     ax, ISORTAB3_GROUP:?_364                ; 10C3 _ B8, 05BA(segrel)
        push    ax                                      ; 10C6 _ 50
        call    far nasm_zap_spaces_fwd_                ; 10C7 _ 9A, 0000 0000(far)
        add     sp, 4                                   ; 10CC _ 83. C4, 04
        mov     ax, ISORTAB3CONST                       ; 10CF _ B8, 0000(seg)
        push    ax                                      ; 10D2 _ 50
        mov     ax, ISORTAB3_GROUP:?_365                ; 10D3 _ B8, 0840(segrel)
        push    ax                                      ; 10D6 _ 50
        call    far nasm_zap_spaces_fwd_                ; 10D7 _ 9A, 0000 0000(far)
        add     sp, 4                                   ; 10DC _ 83. C4, 04
        xor     si, si                                  ; 10DF _ 31. F6
        jmp     ?_169                                   ; 10E1 _ EB, 36

?_167:  mov     dx, ISORTAB3_GROUP:?_367                ; 10E3 _ BA, 0A90(segrel)
?_168:  push    ax                                      ; 10E6 _ 50
        push    dx                                      ; 10E7 _ 52
        mov     ax, si                                  ; 10E8 _ 89. F0
        mov     dx, 10                                  ; 10EA _ BA, 000A
        imul    dx                                      ; 10ED _ F7. EA
        mov     bx, ax                                  ; 10EF _ 89. C3
        mov     ax, ISORTAB3CONST                       ; 10F1 _ B8, 0000(seg)
        mov     ds, ax                                  ; 10F4 _ 8E. D8
        push    word [readnum_+6H+bx]                   ; 10F6 _ FF. B7, 0006(segrel)
        push    word [readnum_+4H+bx]                   ; 10FA _ FF. B7, 0004(segrel)
        push    word [readnum_+2H+bx]                   ; 10FE _ FF. B7, 0002(segrel)
        push    word [readnum_+bx]                      ; 1102 _ FF. B7, 0000(segrel)
        push    ax                                      ; 1106 _ 50
        mov     ax, ISORTAB3_GROUP:?_368                ; 1107 _ B8, 0A94(segrel)
        push    ax                                      ; 110A _ 50
        call    far nasm_zap_spaces_fwd_                ; 110B _ 9A, 0000 0000(far)
        add     sp, 16                                  ; 1110 _ 83. C4, 10
        inc     si                                      ; 1113 _ 46
        cmp     si, 11                                  ; 1114 _ 83. FE, 0B
        jg      ?_170                                   ; 1117 _ 7F, 1A
?_169:  mov     ax, si                                  ; 1119 _ 89. F0
        mov     dx, 10                                  ; 111B _ BA, 000A
        imul    dx                                      ; 111E _ F7. EA
        mov     bx, ax                                  ; 1120 _ 89. C3
        mov     ax, ISORTAB3CONST                       ; 1122 _ B8, 0000(seg)
        mov     ds, ax                                  ; 1125 _ 8E. D8
        cmp     byte [readnum_+8H+bx], 0                ; 1127 _ 80. BF, 0008(segrel), 00
        jz      ?_167                                   ; 112C _ 74, B5
        mov     dx, ISORTAB3_GROUP:?_366                ; 112E _ BA, 0A8D(segrel)
        jmp     ?_168                                   ; 1131 _ EB, B3

?_170:  mov     ax, ISORTAB3CONST                       ; 1133 _ B8, 0000(seg)
        push    ax                                      ; 1136 _ 50
        mov     ax, ISORTAB3_GROUP:?_369                ; 1137 _ B8, 0AAF(segrel)
        push    ax                                      ; 113A _ 50
        call    far nasm_zap_spaces_fwd_                ; 113B _ 9A, 0000 0000(far)
        add     sp, 4                                   ; 1140 _ 83. C4, 04
        lds     bx, word [bp-0EH]                       ; 1143 _ C5. 5E, F2
        cmp     byte [bx+2H], 102                       ; 1146 _ 80. 7F, 02, 66
        jnz     ?_171                                   ; 114A _ 75, 29
        mov     ax, ISORTAB3CONST                       ; 114C _ B8, 0000(seg)
        push    ax                                      ; 114F _ 50
        mov     ax, ISORTAB3_GROUP:?_370                ; 1150 _ B8, 0AF6(segrel)
        push    ax                                      ; 1153 _ 50
        call    far nasm_zap_spaces_fwd_                ; 1154 _ 9A, 0000 0000(far)
        add     sp, 4                                   ; 1159 _ 83. C4, 04
        mov     ax, ISORTAB3CONST                       ; 115C _ B8, 0000(seg)
        mov     ds, ax                                  ; 115F _ 8E. D8
        mov     ax, word [fprintf_]                     ; 1161 _ A1, 0000(segrel)
        mov     dx, word [fprintf_+2H]                  ; 1164 _ 8B. 16, 0002(segrel)
        mov     bx, _pass0+12H                          ; 1168 _ BB, 0012(segrel)
        mov     cx, seg _pass0                          ; 116B _ B9, 0000(sseg)
        call    far define_common_                      ; 116E _ 9A, 0000 0000(far)
        jmp     ?_172                                   ; 1173 _ EB, 20

?_171:  mov     ax, ISORTAB3CONST                       ; 1175 _ B8, 0000(seg)
        push    ax                                      ; 1178 _ 50
        mov     ax, ISORTAB3_GROUP:?_371                ; 1179 _ B8, 0B2F(segrel)
        push    ax                                      ; 117C _ 50
        call    far nasm_zap_spaces_fwd_                ; 117D _ 9A, 0000 0000(far)
        add     sp, 4                                   ; 1182 _ 83. C4, 04
        mov     ax, ISORTAB3CONST                       ; 1185 _ B8, 0000(seg)
        push    ax                                      ; 1188 _ 50
        mov     ax, ISORTAB3_GROUP:?_372                ; 1189 _ B8, 0B5E(segrel)
        push    ax                                      ; 118C _ 50
        call    far nasm_zap_spaces_fwd_                ; 118D _ 9A, 0000 0000(far)
        add     sp, 4                                   ; 1192 _ 83. C4, 04
?_172:  xor     ax, ax                                  ; 1195 _ 31. C0
        call    far stdscan_reset_                      ; 1197 _ 9A, 0000 0000(far)
        jmp     ?_228                                   ; 119C _ E9, 03B7

?_173:  mov     ax, ISORTAB3CONST                       ; 119F _ B8, 0000(seg)
        mov     ds, ax                                  ; 11A2 _ 8E. D8
        lds     bx, word [fprintf_]                     ; 11A4 _ C5. 1E, 0000(segrel)
        push    word [bx+6H]                            ; 11A8 _ FF. 77, 06
        push    word [bx+4H]                            ; 11AB _ FF. 77, 04
        push    ax                                      ; 11AE _ 50
        mov     ax, ISORTAB3_GROUP:?_373                ; 11AF _ B8, 0B8E(segrel)
        push    ax                                      ; 11B2 _ 50
        call    far nasm_zap_spaces_fwd_                ; 11B3 _ 9A, 0000 0000(far)
        add     sp, 8                                   ; 11B8 _ 83. C4, 08
        mov     ax, ISORTAB3CONST                       ; 11BB _ B8, 0000(seg)
        mov     ds, ax                                  ; 11BE _ 8E. D8
        mov     ax, word [fprintf_]                     ; 11C0 _ A1, 0000(segrel)
        mov     dx, word [fprintf_+2H]                  ; 11C3 _ 8B. 16, 0002(segrel)
        mov     bx, _pass0+12H                          ; 11C7 _ BB, 0012(segrel)
        mov     cx, seg _pass0                          ; 11CA _ B9, 0000(sseg)
        call    far stdscan_set_                        ; 11CD _ 9A, 0000 0000(far)
        jmp     ?_172                                   ; 11D2 _ EB, C1

?_174:  mov     ax, ISORTAB3CONST                       ; 11D4 _ B8, 0000(seg)
        mov     ds, ax                                  ; 11D7 _ 8E. D8
        mov     byte [stdscan_], 1                      ; 11D9 _ C6. 06, 0000(segrel), 01
        jmp     ?_228                                   ; 11DE _ E9, 0375

?_175:  mov     ax, seg evaluate_                       ; 11E1 _ B8, 0000(sseg)
        push    ax                                      ; 11E4 _ 50
        mov     ax, evaluate_                           ; 11E5 _ B8, 0000(segrel)
        push    ax                                      ; 11E8 _ 50
        mov     ax, seg is_reloc_                       ; 11E9 _ B8, 0000(sseg)
        push    ax                                      ; 11EC _ 50
        mov     ax, is_reloc_                           ; 11ED _ B8, 0000(segrel)
        push    ax                                      ; 11F0 _ 50
        mov     ax, seg reloc_seg_                      ; 11F1 _ B8, 0000(sseg)
        push    ax                                      ; 11F4 _ 50
        mov     ax, reloc_seg_                          ; 11F5 _ B8, 0000(segrel)
        push    ax                                      ; 11F8 _ 50
        mov     ax, ISORTAB3CONST                       ; 11F9 _ B8, 0000(seg)
        push    ax                                      ; 11FC _ 50
        mov     ax, ISORTAB3_GROUP:?_374                ; 11FD _ B8, 0BD6(segrel)
        push    ax                                      ; 1200 _ 50
        call    far nasm_zap_spaces_fwd_                ; 1201 _ 9A, 0000 0000(far)
        add     sp, 16                                  ; 1206 _ 83. C4, 10
        jmp     ?_172                                   ; 1209 _ EB, 8A

?_176:  mov     ax, ISORTAB3CONST                       ; 120B _ B8, 0000(seg)
        mov     ds, ax                                  ; 120E _ 8E. D8
        mov     byte [raa_free_], 1                     ; 1210 _ C6. 06, 0000(segrel), 01
        jmp     ?_228                                   ; 1215 _ E9, 033E

?_177:  mov     ax, ISORTAB3CONST                       ; 1218 _ B8, 0000(seg)
        mov     ds, ax                                  ; 121B _ 8E. D8
        mov     word [cleanup_labels_], _abs_seg        ; 121D _ C7. 06, 0000(segrel), 0000(segrel)
        mov     word [cleanup_labels_+2H], ax           ; 1223 _ A3, 0002(segrel)
        jmp     ?_228                                   ; 1226 _ E9, 032D

?_178:  lds     bx, word [bp-0AH]                       ; 1229 _ C5. 5E, F6
        cmp     byte [bx], 110                          ; 122C _ 80. 3F, 6E
        jnz     ?_179                                   ; 122F _ 75, 16
        cmp     byte [bx+1H], 111                       ; 1231 _ 80. 7F, 01, 6F
        jnz     ?_179                                   ; 1235 _ 75, 10
        cmp     byte [bx+2H], 45                        ; 1237 _ 80. 7F, 02, 2D
        jnz     ?_179                                   ; 123B _ 75, 0A
        mov     byte [bp-2H], 0                         ; 123D _ C6. 46, FE, 00
        add     word [bp-0AH], 3                        ; 1241 _ 83. 46, F6, 03
        jmp     ?_185                                   ; 1245 _ EB, 3E

?_179:  mov     byte [bp-2H], 1                         ; 1247 _ C6. 46, FE, 01
        jmp     ?_185                                   ; 124B _ EB, 38

?_180:  lds     bx, word [bp-0AH]                       ; 124D _ C5. 5E, F6
        mov     al, byte [bx]                           ; 1250 _ 8A. 07
        cmp     al, 43                                  ; 1252 _ 3C, 2B
        jz      ?_182                                   ; 1254 _ 74, 1B
        cmp     al, 45                                  ; 1256 _ 3C, 2D
        jz      ?_182                                   ; 1258 _ 74, 17
        mov     ax, ISORTAB3CONST                       ; 125A _ B8, 0000(seg)
        push    ax                                      ; 125D _ 50
        mov     ax, ISORTAB3_GROUP:?_375                ; 125E _ B8, 0BF8(segrel)
?_181:  push    ax                                      ; 1261 _ 50
        mov     ax, 49                                  ; 1262 _ B8, 0031
        push    ax                                      ; 1265 _ 50
        call    far time_                               ; 1266 _ 9A, 0000 0000(far)
        add     sp, 6                                   ; 126B _ 83. C4, 06
        jmp     ?_228                                   ; 126E _ E9, 02E5

?_182:  lds     bx, word [bp-0AH]                       ; 1271 _ C5. 5E, F6
        cmp     byte [bx], 43                           ; 1274 _ 80. 3F, 2B
        jnz     ?_183                                   ; 1277 _ 75, 04
        mov     al, 1                                   ; 1279 _ B0, 01
        jmp     ?_184                                   ; 127B _ EB, 02

?_183:  xor     al, al                                  ; 127D _ 30. C0
?_184:  mov     byte [bp-2H], al                        ; 127F _ 88. 46, FE
        inc     word [bp-0AH]                           ; 1282 _ FF. 46, F6
?_185:  xor     si, si                                  ; 1285 _ 31. F6
        jmp     ?_187                                   ; 1287 _ EB, 06

?_186:  inc     si                                      ; 1289 _ 46
        cmp     si, 11                                  ; 128A _ 83. FE, 0B
        jg      ?_188                                   ; 128D _ 7F, 27
?_187:  mov     ax, si                                  ; 128F _ 89. F0
        mov     dx, 10                                  ; 1291 _ BA, 000A
        imul    dx                                      ; 1294 _ F7. EA
        mov     bx, ax                                  ; 1296 _ 89. C3
        mov     ax, ISORTAB3CONST                       ; 1298 _ B8, 0000(seg)
        mov     ds, ax                                  ; 129B _ 8E. D8
        mov     ax, word [readnum_+bx]                  ; 129D _ 8B. 87, 0000(segrel)
        mov     cx, word [readnum_+2H+bx]               ; 12A1 _ 8B. 8F, 0002(segrel)
        mov     bx, ax                                  ; 12A5 _ 89. C3
        mov     ax, word [bp-0AH]                       ; 12A7 _ 8B. 46, F6
        mov     dx, word [bp-8H]                        ; 12AA _ 8B. 56, F8
        call    far declare_as_global_                  ; 12AD _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 12B2 _ 85. C0
        jnz     ?_186                                   ; 12B4 _ 75, D3
?_188:  cmp     si, 11                                  ; 12B6 _ 83. FE, 0B
        jg      ?_189                                   ; 12B9 _ 7F, 0F
        mov     ax, ISORTAB3CONST                       ; 12BB _ B8, 0000(seg)
        mov     ds, ax                                  ; 12BE _ 8E. D8
        mov     al, byte [bp-2H]                        ; 12C0 _ 8A. 46, FE
        mov     byte [reloc_value_+si], al              ; 12C3 _ 88. 84, 0000(segrel)
        jmp     ?_228                                   ; 12C7 _ E9, 028C

?_189:  mov     bx, ISORTAB3_GROUP:?_376                ; 12CA _ BB, 0C0F(segrel)
        mov     cx, ISORTAB3CONST                       ; 12CD _ B9, 0000(seg)
        mov     ax, word [bp-0AH]                       ; 12D0 _ 8B. 46, F6
        mov     dx, word [bp-8H]                        ; 12D3 _ 8B. 56, F8
        call    far declare_as_global_                  ; 12D6 _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 12DB _ 85. C0
        jnz     ?_191                                   ; 12DD _ 75, 18
        mov     si, 1                                   ; 12DF _ BE, 0001
?_190:  mov     ax, ISORTAB3CONST                       ; 12E2 _ B8, 0000(seg)
        mov     ds, ax                                  ; 12E5 _ 8E. D8
        mov     al, byte [bp-2H]                        ; 12E7 _ 8A. 46, FE
        mov     byte [reloc_value_+si], al              ; 12EA _ 88. 84, 0000(segrel)
        inc     si                                      ; 12EE _ 46
        cmp     si, 11                                  ; 12EF _ 83. FE, 0B
        jle     ?_190                                   ; 12F2 _ 7E, EE
        jmp     ?_228                                   ; 12F4 _ E9, 025F

?_191:  mov     bx, ISORTAB3_GROUP:?_377                ; 12F7 _ BB, 0C13(segrel)
        mov     cx, ISORTAB3CONST                       ; 12FA _ B9, 0000(seg)
        mov     ax, word [bp-0AH]                       ; 12FD _ 8B. 46, F6
        mov     dx, word [bp-8H]                        ; 1300 _ 8B. 56, F8
        call    far declare_as_global_                  ; 1303 _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 1308 _ 85. C0
        jnz     ?_195                                   ; 130A _ 75, 20
        mov     si, 1                                   ; 130C _ BE, 0001
        mov     dx, ISORTAB3CONST                       ; 130F _ BA, 0000(seg)
        jmp     ?_194                                   ; 1312 _ EB, 0E

?_192:  xor     al, al                                  ; 1314 _ 30. C0
?_193:  mov     ds, dx                                  ; 1316 _ 8E. DA
        mov     byte [reloc_value_+si], al              ; 1318 _ 88. 84, 0000(segrel)
        inc     si                                      ; 131C _ 46
        cmp     si, 11                                  ; 131D _ 83. FE, 0B
        jg      ?_198                                   ; 1320 _ 7F, 24
?_194:  cmp     byte [bp-2H], 0                         ; 1322 _ 80. 7E, FE, 00
        jnz     ?_192                                   ; 1326 _ 75, EC
        mov     al, 1                                   ; 1328 _ B0, 01
        jmp     ?_193                                   ; 132A _ EB, EA

?_195:  push    word [bp-8H]                            ; 132C _ FF. 76, F8
        push    word [bp-0AH]                           ; 132F _ FF. 76, F6
        mov     ax, ISORTAB3CONST                       ; 1332 _ B8, 0000(seg)
        push    ax                                      ; 1335 _ 50
        mov     ax, ISORTAB3_GROUP:?_378                ; 1336 _ B8, 0C18(segrel)
?_196:  push    ax                                      ; 1339 _ 50
        mov     ax, 49                                  ; 133A _ B8, 0031
?_197:  push    ax                                      ; 133D _ 50
        call    far time_                               ; 133E _ 9A, 0000 0000(far)
        add     sp, 10                                  ; 1343 _ 83. C4, 0A
?_198:  jmp     ?_228                                   ; 1346 _ E9, 020D

?_199:  lds     bx, word [bp-0EH]                       ; 1349 _ C5. 5E, F2
        mov     bl, byte [bx+2H]                        ; 134C _ 8A. 5F, 02
        cmp     bl, 71                                  ; 134F _ 80. FB, 47
        jc      ?_200                                   ; 1352 _ 72, 13
        jbe     ?_201                                   ; 1354 _ 76, 26
        cmp     bl, 84                                  ; 1356 _ 80. FB, 54
        jz      ?_205                                   ; 1359 _ 74, 53
        cmp     bl, 81                                  ; 135B _ 80. FB, 51
        jz      ?_206                                   ; 135E _ 74, 5F
        cmp     bl, 80                                  ; 1360 _ 80. FB, 50
        jz      ?_202                                   ; 1363 _ 74, 28
        jmp     ?_207                                   ; 1365 _ EB, 6E

?_200:  cmp     bl, 68                                  ; 1367 _ 80. FB, 44
        jz      ?_203                                   ; 136A _ 74, 2D
        test    bl, bl                                  ; 136C _ 84. DB
        jnz     ?_207                                   ; 136E _ 75, 65
        mov     ax, ISORTAB3CONST                       ; 1370 _ B8, 0000(seg)
        mov     ds, ax                                  ; 1373 _ 8E. D8
        mov     byte [raa_free_], 2                     ; 1375 _ C6. 06, 0000(segrel), 02
        jmp     ?_208                                   ; 137A _ EB, 76

?_201:  mov     ax, ISORTAB3CONST                       ; 137C _ B8, 0000(seg)
        mov     ds, ax                                  ; 137F _ 8E. D8
        mov     byte [raa_free_], 2                     ; 1381 _ C6. 06, 0000(segrel), 02
        mov     byte [nasm_stricmp_], 1                 ; 1386 _ C6. 06, 0000(segrel), 01
        jmp     ?_208                                   ; 138B _ EB, 65

?_202:  mov     ax, ISORTAB3CONST                       ; 138D _ B8, 0000(seg)
        mov     ds, ax                                  ; 1390 _ 8E. D8
        mov     byte [raa_init_], 1                     ; 1392 _ C6. 06, 0000(segrel), 01
        jmp     ?_208                                   ; 1397 _ EB, 59

?_203:  mov     ax, ISORTAB3CONST                       ; 1399 _ B8, 0000(seg)
        mov     ds, ax                                  ; 139C _ 8E. D8
        mov     word [strlen_], si                      ; 139E _ 89. 36, 0000(segrel)
        mov     ax, word [bp-6H]                        ; 13A2 _ 8B. 46, FA
        mov     word [strlen_+2H], ax                   ; 13A5 _ A3, 0002(segrel)
?_204:  mov     byte [bp-4H], 1                         ; 13A8 _ C6. 46, FC, 01
        jmp     ?_209                                   ; 13AC _ EB, 4A

?_205:  mov     ax, ISORTAB3CONST                       ; 13AE _ B8, 0000(seg)
        mov     ds, ax                                  ; 13B1 _ 8E. D8
        mov     word [nasm_set_verror_], si             ; 13B3 _ 89. 36, 0000(segrel)
        mov     ax, word [bp-6H]                        ; 13B7 _ 8B. 46, FA
        mov     word [nasm_set_verror_+2H], ax          ; 13BA _ A3, 0002(segrel)
        jmp     ?_204                                   ; 13BD _ EB, E9

?_206:  mov     ax, si                                  ; 13BF _ 89. F0
        mov     dx, word [bp-6H]                        ; 13C1 _ 8B. 56, FA
        call    _user_nolist                            ; 13C4 _ E8, 0000(rel)
        mov     bx, ISORTAB3CONST                       ; 13C7 _ BB, 0000(seg)
        mov     ds, bx                                  ; 13CA _ 8E. DB
        mov     word [nasm_set_verror_], ax             ; 13CC _ A3, 0000(segrel)
        mov     word [nasm_set_verror_+2H], dx          ; 13CF _ 89. 16, 0002(segrel)
        jmp     ?_204                                   ; 13D3 _ EB, D3

?_207:  lds     bx, word [bp-0EH]                       ; 13D5 _ C5. 5E, F2
        mov     al, byte [bx+2H]                        ; 13D8 _ 8A. 47, 02
        xor     ah, ah                                  ; 13DB _ 30. E4
        push    ax                                      ; 13DD _ 50
        mov     ax, ISORTAB3CONST                       ; 13DE _ B8, 0000(seg)
        push    ax                                      ; 13E1 _ 50
        mov     ax, ISORTAB3_GROUP:?_379                ; 13E2 _ B8, 0C2D(segrel)
        push    ax                                      ; 13E5 _ 50
        mov     ax, 49                                  ; 13E6 _ B8, 0031
        push    ax                                      ; 13E9 _ 50
        call    far time_                               ; 13EA _ 9A, 0000 0000(far)
        add     sp, 8                                   ; 13EF _ 83. C4, 08
?_208:  cmp     byte [bp-4H], 0                         ; 13F2 _ 80. 7E, FC, 00
        jz      ?_214                                   ; 13F6 _ 74, 44
?_209:  mov     ax, word [bp-6H]                        ; 13F8 _ 8B. 46, FA
        test    ax, ax                                  ; 13FB _ 85. C0
        jnz     ?_210                                   ; 13FD _ 75, 04
        test    si, si                                  ; 13FF _ 85. F6
        jz      ?_211                                   ; 1401 _ 74, 07
?_210:  mov     ds, ax                                  ; 1403 _ 8E. D8
        cmp     byte [si], 0                            ; 1405 _ 80. 3C, 00
        jnz     ?_214                                   ; 1408 _ 75, 32
?_211:  lds     bx, word [bp-0EH]                       ; 140A _ C5. 5E, F2
        mov     al, byte [bx+2H]                        ; 140D _ 8A. 47, 02
        xor     ah, ah                                  ; 1410 _ 30. E4
        push    ax                                      ; 1412 _ 50
        mov     ax, ISORTAB3CONST                       ; 1413 _ B8, 0000(seg)
        push    ax                                      ; 1416 _ 50
        mov     ax, ISORTAB3_GROUP:?_380                ; 1417 _ B8, 0C4E(segrel)
?_212:  push    ax                                      ; 141A _ 50
        mov     ax, 49                                  ; 141B _ B8, 0031
        push    ax                                      ; 141E _ 50
        call    far time_                               ; 141F _ 9A, 0000 0000(far)
        add     sp, 8                                   ; 1424 _ 83. C4, 08
        jmp     ?_214                                   ; 1427 _ EB, 13

?_213:  lds     bx, word [bp-0EH]                       ; 1429 _ C5. 5E, F2
        cmp     byte [bx+2H], 0                         ; 142C _ 80. 7F, 02, 00
        jnz     ?_215                                   ; 1430 _ 75, 0D
        mov     ax, ISORTAB3CONST                       ; 1432 _ B8, 0000(seg)
        mov     ds, ax                                  ; 1435 _ 8E. D8
        mov     byte [redefine_label_], 1               ; 1437 _ C6. 06, 0000(segrel), 01
?_214:  jmp     ?_228                                   ; 143C _ E9, 0117

?_215:  xor     di, di                                  ; 143F _ 31. FF
?_216:  mov     ax, di                                  ; 1441 _ 89. F8
        mov     dx, 6                                   ; 1443 _ BA, 0006
        imul    dx                                      ; 1446 _ F7. EA
        mov     bx, ax                                  ; 1448 _ 89. C3
        mov     ax, ISORTAB3CONST                       ; 144A _ B8, 0000(seg)
        mov     ds, ax                                  ; 144D _ 8E. D8
        mov     dx, word [_globalrel+bx]                ; 144F _ 8B. 97, 0000(segrel)
        mov     ax, word [_globalrel+2H+bx]             ; 1453 _ 8B. 87, 0002(segrel)
        test    ax, ax                                  ; 1457 _ 85. C0
        jnz     ?_217                                   ; 1459 _ 75, 04
        test    dx, dx                                  ; 145B _ 85. D2
        jz      ?_218                                   ; 145D _ 74, 1E
?_217:  mov     ax, dx                                  ; 145F _ 89. D0
        mov     cx, word [_globalrel+2H+bx]             ; 1461 _ 8B. 8F, 0002(segrel)
        mov     dx, word [bp-0EH]                       ; 1465 _ 8B. 56, F2
        inc     dx                                      ; 1468 _ 42
        inc     dx                                      ; 1469 _ 42
        mov     bx, ax                                  ; 146A _ 89. C3
        mov     ax, dx                                  ; 146C _ 89. D0
        mov     dx, word [bp-0CH]                       ; 146E _ 8B. 56, F4
        call    far declare_as_global_                  ; 1471 _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 1476 _ 85. C0
        jz      ?_218                                   ; 1478 _ 74, 03
        inc     di                                      ; 147A _ 47
        jmp     ?_216                                   ; 147B _ EB, C4

?_218:  cmp     di, 1                                   ; 147D _ 83. FF, 01
        ja      ?_220                                   ; 1480 _ 77, 4F
        cmp     word [bp-6H], 0                         ; 1482 _ 83. 7E, FA, 00
        jnz     ?_219                                   ; 1486 _ 75, 17
        test    si, si                                  ; 1488 _ 85. F6
        jnz     ?_219                                   ; 148A _ 75, 13
        mov     ax, word [bp-0EH]                       ; 148C _ 8B. 46, F2
        inc     ax                                      ; 148F _ 40
        inc     ax                                      ; 1490 _ 40
        push    word [bp-0CH]                           ; 1491 _ FF. 76, F4
        push    ax                                      ; 1494 _ 50
        mov     ax, ISORTAB3CONST                       ; 1495 _ B8, 0000(seg)
        push    ax                                      ; 1498 _ 50
        mov     ax, ISORTAB3_GROUP:?_381                ; 1499 _ B8, 0C71(segrel)
        jmp     ?_196                                   ; 149C _ E9, FE9A

?_219:  mov     byte [bp-4H], 1                         ; 149F _ C6. 46, FC, 01
        mov     word [bp-0AH], si                       ; 14A3 _ 89. 76, F6
        mov     ax, word [bp-6H]                        ; 14A6 _ 8B. 46, FA
        mov     word [bp-8H], ax                        ; 14A9 _ 89. 46, F8
        test    di, di                                  ; 14AC _ 85. FF
        jnz     ?_221                                   ; 14AE _ 75, 23
        mov     ax, 9                                   ; 14B0 _ B8, 0009
        push    ax                                      ; 14B3 _ 50
        mov     bx, si                                  ; 14B4 _ 89. F3
        mov     cx, word [bp-6H]                        ; 14B6 _ 8B. 4E, FA
        mov     ax, float_option_                       ; 14B9 _ B8, 0000(segrel)
        mov     dx, seg float_option_                   ; 14BC _ BA, 0000(sseg)
        call    far _prev_offset_changed                ; 14BF _ 9A, 0000 0000(far)
        mov     ax, ISORTAB3CONST                       ; 14C4 _ B8, 0000(seg)
        mov     ds, ax                                  ; 14C7 _ 8E. D8
        mov     byte [float_option_+9H], 0              ; 14C9 _ C6. 06, 0009(segrel), 00
        jmp     ?_228                                   ; 14CE _ E9, 0085

?_220:  jmp     ?_223                                   ; 14D1 _ EB, 25

?_221:  cmp     di, 1                                   ; 14D3 _ 83. FF, 01
        jnz     ?_222                                   ; 14D6 _ 75, 1E
        mov     ax, 9                                   ; 14D8 _ B8, 0009
        push    ax                                      ; 14DB _ 50
        mov     bx, si                                  ; 14DC _ 89. F3
        mov     cx, word [bp-6H]                        ; 14DE _ 8B. 4E, FA
        mov     ax, parse_line_                         ; 14E1 _ B8, 0000(segrel)
        mov     dx, seg parse_line_                     ; 14E4 _ BA, 0000(sseg)
        call    far _prev_offset_changed                ; 14E7 _ 9A, 0000 0000(far)
        mov     ax, ISORTAB3CONST                       ; 14EC _ B8, 0000(seg)
        mov     ds, ax                                  ; 14EF _ 8E. D8
        mov     byte [parse_line_+9H], 0                ; 14F1 _ C6. 06, 0009(segrel), 00
?_222:  jmp     ?_228                                   ; 14F6 _ EB, 5E

?_223:  mov     ax, word [bp-0EH]                       ; 14F8 _ 8B. 46, F2
        inc     ax                                      ; 14FB _ 40
        inc     ax                                      ; 14FC _ 40
        push    word [bp-0CH]                           ; 14FD _ FF. 76, F4
        push    ax                                      ; 1500 _ 50
        mov     ax, ISORTAB3CONST                       ; 1501 _ B8, 0000(seg)
        push    ax                                      ; 1504 _ 50
        mov     ax, ISORTAB3_GROUP:?_382                ; 1505 _ B8, 0C94(segrel)
        jmp     ?_196                                   ; 1508 _ E9, FE2E

?_224:  mov     ax, ISORTAB3CONST                       ; 150B _ B8, 0000(seg)
        mov     ds, ax                                  ; 150E _ 8E. D8
        lds     si, word [fprintf_]                     ; 1510 _ C5. 36, 0000(segrel)
        mov     cx, ss                                  ; 1514 _ 8C. D1
        lea     bx, [bp-0EH]                            ; 1516 _ 8D. 5E, F2
        xor     ax, ax                                  ; 1519 _ 31. C0
        call    far [si+1AH]                            ; 151B _ FF. 5C, 1A
        test    ax, ax                                  ; 151E _ 85. C0
        jnz     ?_228                                   ; 1520 _ 75, 34
        lds     bx, word [bp-0EH]                       ; 1522 _ C5. 5E, F2
        mov     al, byte [bx+1H]                        ; 1525 _ 8A. 47, 01
        xor     ah, ah                                  ; 1528 _ 30. E4
        push    ax                                      ; 152A _ 50
        mov     ax, ISORTAB3CONST                       ; 152B _ B8, 0000(seg)
        push    ax                                      ; 152E _ 50
        mov     ax, ISORTAB3_GROUP:?_383                ; 152F _ B8, 0CAF(segrel)
        jmp     ?_212                                   ; 1532 _ E9, FEE5

?_225:  mov     ax, ISORTAB3CONST                       ; 1535 _ B8, 0000(seg)
        mov     ds, ax                                  ; 1538 _ 8E. D8
        cmp     byte [exit_], 0                         ; 153A _ 80. 3E, 0000(segrel), 00
        jz      ?_226                                   ; 153F _ 74, 07
        push    ax                                      ; 1541 _ 50
        mov     ax, ISORTAB3_GROUP:?_384                ; 1542 _ B8, 0CC9(segrel)
        jmp     ?_181                                   ; 1545 _ E9, FD19

?_226:  mov     bx, word [bp-0EH]                       ; 1548 _ 8B. 5E, F2
        mov     cx, word [bp-0CH]                       ; 154B _ 8B. 4E, F4
        mov     ax, exit_                               ; 154E _ B8, 0000(segrel)
        mov     dx, ds                                  ; 1551 _ 8C. DA
?_227:  call    saa_wstruct_                            ; 1553 _ E8, 0000(rel)
?_228:  mov     al, byte [bp-4H]                        ; 1556 _ 8A. 46, FC
        jmp     ?_012                                   ; 1559 _ E9, ED03

        push    ax                                      ; 155C _ 50
        mov     ax, 34                                  ; 155D _ B8, 0022
        call    far puts_                               ; 1560 _ 9A, 0000 0000(far)
        pop     ax                                      ; 1565 _ 58
        push    bx                                      ; 1566 _ 53
        push    cx                                      ; 1567 _ 51
        push    si                                      ; 1568 _ 56
        push    di                                      ; 1569 _ 57
        push    bp                                      ; 156A _ 55
        mov     bp, sp                                  ; 156B _ 89. E5
        sub     sp, 14                                  ; 156D _ 83. EC, 0E
        push    ax                                      ; 1570 _ 50
        push    dx                                      ; 1571 _ 52
        mov     ax, 128                                 ; 1572 _ B8, 0080
        mov     word [bp-0AH], ax                       ; 1575 _ 89. 46, F6
        mov     word [bp-0CH], ax                       ; 1578 _ 89. 46, F4
        call    far _passn                              ; 157B _ 9A, 0000 0000(far)
        mov     di, ax                                  ; 1580 _ 89. C7
        mov     word [bp-4H], dx                        ; 1582 _ 89. 56, FC
        mov     ax, 128                                 ; 1585 _ B8, 0080
        call    far _passn                              ; 1588 _ 9A, 0000 0000(far)
        mov     si, ax                                  ; 158D _ 89. C6
        mov     ds, dx                                  ; 158F _ 8E. DA
        mov     word [bp-8H], ax                        ; 1591 _ 89. 46, F8
        mov     word [bp-6H], dx                        ; 1594 _ 89. 56, FA
        mov     byte [si], 0                            ; 1597 _ C6. 04, 00
?_229:  mov     si, di                                  ; 159A _ 89. FE
        mov     ax, word [bp-4H]                        ; 159C _ 8B. 46, FC
        mov     word [bp-2H], ax                        ; 159F _ 89. 46, FE
?_230:  push    word [bp-12H]                           ; 15A2 _ FF. 76, EE
        push    word [bp-10H]                           ; 15A5 _ FF. 76, F0
        mov     bx, si                                  ; 15A8 _ 89. F3
        sub     bx, di                                  ; 15AA _ 29. FB
        mov     ax, word [bp-0CH]                       ; 15AC _ 8B. 46, F4
        sub     ax, bx                                  ; 15AF _ 29. D8
        mov     bx, ax                                  ; 15B1 _ 89. C3
        mov     ax, si                                  ; 15B3 _ 89. F0
        mov     dx, word [bp-2H]                        ; 15B5 _ 8B. 56, FE
        call    far insn_size_                          ; 15B8 _ 9A, 0000 0000(far)
        mov     bx, ax                                  ; 15BD _ 89. C3
        mov     cx, dx                                  ; 15BF _ 89. D1
        test    dx, dx                                  ; 15C1 _ 85. D2
        jnz     ?_231                                   ; 15C3 _ 75, 04
        test    ax, ax                                  ; 15C5 _ 85. C0
        jz      ?_233                                   ; 15C7 _ 74, 47
?_231:  mov     ax, si                                  ; 15C9 _ 89. F0
        mov     dx, word [bp-2H]                        ; 15CB _ 8B. 56, FE
        call    far nasm_init_malloc_error_             ; 15CE _ 9A, 0000 0000(far)
        add     si, ax                                  ; 15D3 _ 01. C6
        cmp     si, di                                  ; 15D5 _ 39. FE
        jbe     ?_232                                   ; 15D7 _ 76, 09
        mov     ds, word [bp-2H]                        ; 15D9 _ 8E. 5E, FE
        cmp     byte [si-1H], 10                        ; 15DC _ 80. 7C, FF, 0A
        jz      ?_233                                   ; 15E0 _ 74, 2E
?_232:  mov     cx, si                                  ; 15E2 _ 89. F1
        sub     cx, di                                  ; 15E4 _ 29. F9
        mov     ax, word [bp-0CH]                       ; 15E6 _ 8B. 46, F4
; Note: Immediate operand could be made smaller by sign extension
        sub     ax, 10                                  ; 15E9 _ 2D, 000A
        cmp     cx, ax                                  ; 15EC _ 39. C1
        jle     ?_230                                   ; 15EE _ 7E, B2
        add     word [bp-0CH], 128                      ; 15F0 _ 81. 46, F4, 0080
        mov     bx, word [bp-0CH]                       ; 15F5 _ 8B. 5E, F4
        mov     ax, di                                  ; 15F8 _ 89. F8
        mov     dx, word [bp-4H]                        ; 15FA _ 8B. 56, FC
        call    far __I8LS                              ; 15FD _ 9A, 0000 0000(far)
        mov     di, ax                                  ; 1602 _ 89. C7
        mov     word [bp-4H], dx                        ; 1604 _ 89. 56, FC
        mov     word [bp-2H], dx                        ; 1607 _ 89. 56, FE
        mov     si, ax                                  ; 160A _ 89. C6
        add     si, cx                                  ; 160C _ 01. CE
        jmp     ?_230                                   ; 160E _ EB, 92

?_233:  test    cx, cx                                  ; 1610 _ 85. C9
        jnz     ?_235                                   ; 1612 _ 75, 27
        test    bx, bx                                  ; 1614 _ 85. DB
        jnz     ?_235                                   ; 1616 _ 75, 23
        mov     ax, word [bp-2H]                        ; 1618 _ 8B. 46, FE
        cmp     ax, word [bp-4H]                        ; 161B _ 3B. 46, FC
        jnz     ?_235                                   ; 161E _ 75, 1B
        cmp     si, di                                  ; 1620 _ 39. FE
        jnz     ?_235                                   ; 1622 _ 75, 17
        lds     bx, word [bp-8H]                        ; 1624 _ C5. 5E, F8
        cmp     byte [bx], 0                            ; 1627 _ 80. 3F, 00
        jz      ?_234                                   ; 162A _ 74, 0C
        xor     bx, bx                                  ; 162C _ 31. DB
        xor     cx, cx                                  ; 162E _ 31. C9
        mov     ax, word [bp-8H]                        ; 1630 _ 8B. 46, F8
        mov     dx, ds                                  ; 1633 _ 8C. DA
        call    assemble_                               ; 1635 _ E8, 0000(rel)
?_234:  jmp     ?_240                                   ; 1638 _ E9, 00AD

?_235:  mov     bx, ISORTAB3_GROUP:?_385                ; 163B _ BB, 0CEC(segrel)
        mov     cx, ISORTAB3CONST                       ; 163E _ B9, 0000(seg)
        mov     ax, di                                  ; 1641 _ 89. F8
        mov     dx, word [bp-4H]                        ; 1643 _ 8B. 56, FC
        call    far raa_write_                          ; 1646 _ 9A, 0000 0000(far)
        mov     dx, word [bp-4H]                        ; 164B _ 8B. 56, FC
        mov     word [bp-2H], dx                        ; 164E _ 89. 56, FE
        mov     si, di                                  ; 1651 _ 89. FE
        add     si, ax                                  ; 1653 _ 01. C6
        mov     ds, dx                                  ; 1655 _ 8E. DA
        mov     byte [si], 0                            ; 1657 _ C6. 04, 00
        mov     ax, ISORTAB3CONST                       ; 165A _ B8, 0000(seg)
?_236:  cmp     si, di                                  ; 165D _ 39. FE
        jbe     ?_237                                   ; 165F _ 76, 19
        mov     ds, word [bp-2H]                        ; 1661 _ 8E. 5E, FE
        mov     bl, byte [si-1H]                        ; 1664 _ 8A. 5C, FF
        xor     bh, bh                                  ; 1667 _ 30. FF
        mov     ds, ax                                  ; 1669 _ 8E. D8
        test    byte [cleanup_insn_+1H+bx], 02H         ; 166B _ F6. 87, 0001(segrel), 02
        jz      ?_237                                   ; 1670 _ 74, 08
        dec     si                                      ; 1672 _ 4E
        mov     ds, word [bp-2H]                        ; 1673 _ 8E. 5E, FE
        mov     byte [si], bh                           ; 1676 _ 88. 3C
        jmp     ?_236                                   ; 1678 _ EB, E3

?_237:  mov     ax, di                                  ; 167A _ 89. F8
        mov     dx, word [bp-4H]                        ; 167C _ 8B. 56, FC
        call    far nasm_strdup_                        ; 167F _ 9A, 0000 0000(far)
        mov     word [bp-0EH], dx                       ; 1684 _ 89. 56, F2
        mov     si, ax                                  ; 1687 _ 89. C6
        mov     cx, dx                                  ; 1689 _ 89. D1
        mov     word [bp-2H], dx                        ; 168B _ 89. 56, FE
        mov     bx, ax                                  ; 168E _ 89. C3
        mov     ax, word [bp-8H]                        ; 1690 _ 8B. 46, F8
        mov     dx, word [bp-6H]                        ; 1693 _ 8B. 56, FA
        call    assemble_                               ; 1696 _ E8, 0000(rel)
        test    al, al                                  ; 1699 _ 84. C0
        jz      ?_238                                   ; 169B _ 74, 08
        mov     ds, word [bp-0EH]                       ; 169D _ 8E. 5E, F2
        mov     bx, si                                  ; 16A0 _ 89. F3
        mov     byte [bx], 0                            ; 16A2 _ C6. 07, 00
?_238:  mov     ax, si                                  ; 16A5 _ 89. F0
        mov     dx, word [bp-2H]                        ; 16A7 _ 8B. 56, FE
        call    far nasm_init_malloc_error_             ; 16AA _ 9A, 0000 0000(far)
        mov     dx, word [bp-0AH]                       ; 16AF _ 8B. 56, F6
        sub     dx, 10                                  ; 16B2 _ 83. EA, 0A
        cmp     ax, dx                                  ; 16B5 _ 39. D0
        jle     ?_239                                   ; 16B7 _ 7E, 19
        add     word [bp-0AH], 128                      ; 16B9 _ 81. 46, F6, 0080
        mov     bx, word [bp-0AH]                       ; 16BE _ 8B. 5E, F6
        mov     ax, word [bp-8H]                        ; 16C1 _ 8B. 46, F8
        mov     dx, word [bp-6H]                        ; 16C4 _ 8B. 56, FA
        call    far __I8LS                              ; 16C7 _ 9A, 0000 0000(far)
        mov     word [bp-8H], ax                        ; 16CC _ 89. 46, F8
        mov     word [bp-6H], dx                        ; 16CF _ 89. 56, FA
?_239:  push    word [bp-0AH]                           ; 16D2 _ FF. 76, F6
        mov     bx, si                                  ; 16D5 _ 89. F3
        mov     cx, word [bp-2H]                        ; 16D7 _ 8B. 4E, FE
        mov     ax, word [bp-8H]                        ; 16DA _ 8B. 46, F8
        mov     dx, word [bp-6H]                        ; 16DD _ 8B. 56, FA
        call    far _prev_offset_changed                ; 16E0 _ 9A, 0000 0000(far)
        jmp     ?_229                                   ; 16E5 _ E9, FEB2

?_240:  mov     ax, di                                  ; 16E8 _ 89. F8
        mov     dx, word [bp-4H]                        ; 16EA _ 8B. 56, FC
        call    far saa_init_                           ; 16ED _ 9A, 0000 0000(far)
        mov     ax, word [bp-8H]                        ; 16F2 _ 8B. 46, F8
        mov     dx, word [bp-6H]                        ; 16F5 _ 8B. 56, FA
        call    far saa_init_                           ; 16F8 _ 9A, 0000 0000(far)
        jmp     ?_042                                   ; 16FD _ E9, EF68

        push    ax                                      ; 1700 _ 50
        mov     ax, 18                                  ; 1701 _ B8, 0012
        call    far puts_                               ; 1704 _ 9A, 0000 0000(far)
        pop     ax                                      ; 1709 _ 58
        push    bx                                      ; 170A _ 53
        push    cx                                      ; 170B _ 51
        push    si                                      ; 170C _ 56
        push    di                                      ; 170D _ 57
        push    bp                                      ; 170E _ 55
        mov     bp, sp                                  ; 170F _ 89. E5
        sub     sp, 6                                   ; 1711 _ 83. EC, 06
        mov     bx, ax                                  ; 1714 _ 89. C3
        mov     ds, dx                                  ; 1716 _ 8E. DA
        mov     byte [bp-2H], 32                        ; 1718 _ C6. 46, FE, 20
        mov     si, ax                                  ; 171C _ 89. C6
        mov     word [bp-4H], dx                        ; 171E _ 89. 56, FC
        mov     al, byte [bx]                           ; 1721 _ 8A. 07
        test    al, al                                  ; 1723 _ 84. C0
        jz      ?_241                                   ; 1725 _ 74, 0A
        cmp     al, 45                                  ; 1727 _ 3C, 2D
        jz      ?_241                                   ; 1729 _ 74, 06
        mov     byte [bp-2H], al                        ; 172B _ 88. 46, FE
        lea     si, [bx+1H]                             ; 172E _ 8D. 77, 01
?_241:  xor     di, di                                  ; 1731 _ 31. FF
        mov     word [bp-6H], di                        ; 1733 _ 89. 7E, FA
?_242:  mov     ds, word [bp-4H]                        ; 1736 _ 8E. 5E, FC
        cmp     byte [si], 0                            ; 1739 _ 80. 3C, 00
        jz      ?_247                                   ; 173C _ 74, 38
        mov     bx, si                                  ; 173E _ 89. F3
        mov     cx, ds                                  ; 1740 _ 8C. D9
        mov     ds, word [bp-4H]                        ; 1742 _ 8E. 5E, FC
?_243:  mov     al, byte [si]                           ; 1745 _ 8A. 04
        test    al, al                                  ; 1747 _ 84. C0
        jz      ?_244                                   ; 1749 _ 74, 08
        cmp     al, byte [bp-2H]                        ; 174B _ 3A. 46, FE
        jz      ?_244                                   ; 174E _ 74, 03
        inc     si                                      ; 1750 _ 46
        jmp     ?_243                                   ; 1751 _ EB, F2

?_244:  mov     ds, word [bp-4H]                        ; 1753 _ 8E. 5E, FC
?_245:  mov     al, byte [si]                           ; 1756 _ 8A. 04
        cmp     al, byte [bp-2H]                        ; 1758 _ 3A. 46, FE
        jnz     ?_246                                   ; 175B _ 75, 06
        mov     byte [si], 0                            ; 175D _ C6. 04, 00
        inc     si                                      ; 1760 _ 46
        jmp     ?_245                                   ; 1761 _ EB, F3

?_246:  mov     ax, di                                  ; 1763 _ 89. F8
        mov     dx, word [bp-6H]                        ; 1765 _ 8B. 56, FA
        mov     di, bx                                  ; 1768 _ 89. DF
        mov     word [bp-6H], cx                        ; 176A _ 89. 4E, FA
        call    assemble_                               ; 176D _ E8, 0000(rel)
        test    al, al                                  ; 1770 _ 84. C0
        jz      ?_242                                   ; 1772 _ 74, C2
        jmp     ?_241                                   ; 1774 _ EB, BB

?_247:  cmp     word [bp-6H], 0                         ; 1776 _ 83. 7E, FA, 00
        jnz     ?_249                                   ; 177A _ 75, 07
        test    di, di                                  ; 177C _ 85. FF
        jnz     ?_249                                   ; 177E _ 75, 03
?_248:  jmp     ?_042                                   ; 1780 _ E9, EEE5

?_249:  xor     bx, bx                                  ; 1783 _ 31. DB
        xor     cx, cx                                  ; 1785 _ 31. C9
        mov     ax, di                                  ; 1787 _ 89. F8
        mov     dx, word [bp-6H]                        ; 1789 _ 8B. 56, FA
        call    assemble_                               ; 178C _ E8, 0000(rel)
        jmp     ?_248                                   ; 178F _ EB, EF

        push    ax                                      ; 1791 _ 50
        mov     ax, 2066                                ; 1792 _ B8, 0812
        call    far puts_                               ; 1795 _ 9A, 0000 0000(far)
        pop     ax                                      ; 179A _ 58
        push    bx                                      ; 179B _ 53
        push    cx                                      ; 179C _ 51
        push    si                                      ; 179D _ 56
        push    di                                      ; 179E _ 57
        push    bp                                      ; 179F _ 55
        mov     bp, sp                                  ; 17A0 _ 89. E5
        sub     sp, 2050                                ; 17A2 _ 81. EC, 0802
        mov     di, ax                                  ; 17A6 _ 89. C7
        mov     si, dx                                  ; 17A8 _ 89. D6
        mov     bx, ISORTAB3_GROUP:?_386                ; 17AA _ BB, 0CF0(segrel)
        mov     cx, ISORTAB3CONST                       ; 17AD _ B9, 0000(seg)
        call    far fclose_                             ; 17B0 _ 9A, 0000 0000(far)
        mov     cx, ax                                  ; 17B5 _ 89. C1
        mov     word [bp-2H], dx                        ; 17B7 _ 89. 56, FE
        test    dx, dx                                  ; 17BA _ 85. D2
        jnz     ?_250                                   ; 17BC _ 75, 15
        test    ax, ax                                  ; 17BE _ 85. C0
        jnz     ?_250                                   ; 17C0 _ 75, 11
        mov     ax, di                                  ; 17C2 _ 89. F8
        mov     dx, si                                  ; 17C4 _ 89. F2
        call    far _stall_count                        ; 17C6 _ 9A, 0000 0000(far)
        mov     ax, 4294967295                          ; 17CB _ B8, FFFF
        call    far stdscan_reset_                      ; 17CE _ 9A, 0000 0000(far)
?_250:  push    word [bp-2H]                            ; 17D3 _ FF. 76, FE
        push    cx                                      ; 17D6 _ 51
        mov     bx, 2048                                ; 17D7 _ BB, 0800
        mov     dx, ss                                  ; 17DA _ 8C. D2
        lea     ax, [bp-802H]                           ; 17DC _ 8D. 86, F7FE
        call    far insn_size_                          ; 17E0 _ 9A, 0000 0000(far)
        test    dx, dx                                  ; 17E5 _ 85. D2
        jnz     ?_251                                   ; 17E7 _ 75, 04
        test    ax, ax                                  ; 17E9 _ 85. C0
        jz      ?_252                                   ; 17EB _ 74, 0B
?_251:  mov     dx, ss                                  ; 17ED _ 8C. D2
        lea     ax, [bp-802H]                           ; 17EF _ 8D. 86, F7FE
        call    nasm_zap_spaces_rev_                    ; 17F3 _ E8, 0000(rel)
        jmp     ?_250                                   ; 17F6 _ EB, DB

?_252:  mov     ax, cx                                  ; 17F8 _ 89. C8
        mov     dx, word [bp-2H]                        ; 17FA _ 8B. 56, FE
        jmp     ?_041                                   ; 17FD _ E9, EE63

        push    ax                                      ; 1800 _ 50
        mov     ax, 28                                  ; 1801 _ B8, 001C
        call    far puts_                               ; 1804 _ 9A, 0000 0000(far)
        pop     ax                                      ; 1809 _ 58
        push    dx                                      ; 180A _ 52
        push    si                                      ; 180B _ 56
        push    di                                      ; 180C _ 57
        push    bp                                      ; 180D _ 55
        mov     bp, sp                                  ; 180E _ 89. E5
        sub     sp, 8                                   ; 1810 _ 83. EC, 08
        mov     di, ax                                  ; 1813 _ 89. C7
        mov     si, bx                                  ; 1815 _ 89. DE
        mov     word [bp-4H], cx                        ; 1817 _ 89. 4E, FC
        mov     ax, ISORTAB3CONST                       ; 181A _ B8, 0000(seg)
        mov     ds, ax                                  ; 181D _ 8E. D8
        xor     al, al                                  ; 181F _ 30. C0
        mov     byte [atoi_], al                        ; 1821 _ A2, 0000(segrel)
        mov     byte [raa_read_], al                    ; 1824 _ A2, 0000(segrel)
        mov     byte [dfmt_find_], al                   ; 1827 _ A2, 0000(segrel)
        mov     byte [exit_], al                        ; 182A _ A2, 0000(segrel)
        xor     cx, cx                                  ; 182D _ 31. C9
?_253:  mov     ax, cx                                  ; 182F _ 89. C8
        mov     dx, 10                                  ; 1831 _ BA, 000A
        imul    dx                                      ; 1834 _ F7. EA
        mov     bx, ax                                  ; 1836 _ 89. C3
        mov     ax, ISORTAB3CONST                       ; 1838 _ B8, 0000(seg)
        mov     ds, ax                                  ; 183B _ 8E. D8
        mov     al, byte [readnum_+8H+bx]               ; 183D _ 8A. 87, 0008(segrel)
        mov     bx, cx                                  ; 1841 _ 89. CB
        mov     byte [reloc_value_+bx], al              ; 1843 _ 88. 87, 0000(segrel)
        inc     cx                                      ; 1847 _ 41
        cmp     cx, 11                                  ; 1848 _ 83. F9, 0B
        jle     ?_253                                   ; 184B _ 7E, E2
        mov     ax, ISORTAB3_GROUP:?_387                ; 184D _ B8, 0CF2(segrel)
        mov     dx, ds                                  ; 1850 _ 8C. DA
        call    far nasm_skip_word_                     ; 1852 _ 9A, 0000 0000(far)
        test    dx, dx                                  ; 1857 _ 85. D2
        jnz     ?_254                                   ; 1859 _ 75, 04
        test    ax, ax                                  ; 185B _ 85. C0
        jz      ?_255                                   ; 185D _ 74, 15
?_254:  call    far find_directive_                     ; 185F _ 9A, 0000 0000(far)
        mov     bx, ax                                  ; 1864 _ 89. C3
        mov     cx, dx                                  ; 1866 _ 89. D1
        call    nasm_zap_spaces_rev_                    ; 1868 _ E8, 0000(rel)
        mov     ax, bx                                  ; 186B _ 89. D8
        mov     dx, cx                                  ; 186D _ 89. CA
        call    far saa_init_                           ; 186F _ 9A, 0000 0000(far)
?_255:  dec     di                                      ; 1874 _ 4F
        jz      ?_257                                   ; 1875 _ 74, 4A
        add     si, 4                                   ; 1877 _ 83. C6, 04
        mov     ds, word [bp-4H]                        ; 187A _ 8E. 5E, FC
        lds     bx, word [si]                           ; 187D _ C5. 1C
        cmp     byte [bx], 64                           ; 187F _ 80. 3F, 40
        jnz     ?_256                                   ; 1882 _ 75, 0C
        lea     ax, [bx+1H]                             ; 1884 _ 8D. 47, 01
        mov     dx, ds                                  ; 1887 _ 8C. DA
        call    vsnprintf_                              ; 1889 _ E8, 0000(rel)
        dec     di                                      ; 188C _ 4F
        add     si, 4                                   ; 188D _ 83. C6, 04
?_256:  mov     ax, ISORTAB3CONST                       ; 1890 _ B8, 0000(seg)
        mov     ds, ax                                  ; 1893 _ 8E. D8
        cmp     byte [redefine_label_], 0               ; 1895 _ 80. 3E, 0000(segrel), 00
        jnz     ?_258                                   ; 189A _ 75, 28
        mov     ds, word [bp-4H]                        ; 189C _ 8E. 5E, FC
        lds     bx, word [si]                           ; 189F _ C5. 1C
        cmp     byte [bx], 45                           ; 18A1 _ 80. 3F, 2D
        jnz     ?_258                                   ; 18A4 _ 75, 1E
        cmp     byte [bx+1H], 64                        ; 18A6 _ 80. 7F, 01, 40
        jnz     ?_258                                   ; 18AA _ 75, 18
        lea     dx, [bp-2H]                             ; 18AC _ 8D. 56, FE
        push ss                                         ; 18AF _ 16
        push    dx                                      ; 18B0 _ 52
        cmp     di, 1                                   ; 18B1 _ 83. FF, 01
        jle     ?_259                                   ; 18B4 _ 7E, 10
        mov     ds, word [bp-4H]                        ; 18B6 _ 8E. 5E, FC
        mov     bx, word [si+4H]                        ; 18B9 _ 8B. 5C, 04
        mov     cx, word [si+6H]                        ; 18BC _ 8B. 4C, 06
        jmp     ?_260                                   ; 18BF _ EB, 09

?_257:  jmp     ?_268                                   ; 18C1 _ E9, 0093

?_258:  jmp     ?_264                                   ; 18C4 _ EB, 5E

?_259:  xor     bx, bx                                  ; 18C6 _ 31. DB
        xor     cx, cx                                  ; 18C8 _ 31. C9
?_260:  mov     ds, word [bp-4H]                        ; 18CA _ 8E. 5E, FC
        mov     ax, word [si]                           ; 18CD _ 8B. 04
        mov     dx, word [si+2H]                        ; 18CF _ 8B. 54, 02
        call    _globalbits                             ; 18D2 _ E8, 0000(rel)
        mov     word [bp-8H], ax                        ; 18D5 _ 89. 46, F8
        mov     word [bp-6H], dx                        ; 18D8 _ 89. 56, FA
        test    dx, dx                                  ; 18DB _ 85. D2
        jnz     ?_261                                   ; 18DD _ 75, 04
        test    ax, ax                                  ; 18DF _ 85. C0
        jz      ?_267                                   ; 18E1 _ 74, 63
?_261:  mov     bx, ISORTAB3_GROUP:?_386                ; 18E3 _ BB, 0CF0(segrel)
        mov     cx, ISORTAB3CONST                       ; 18E6 _ B9, 0000(seg)
        call    far fclose_                             ; 18E9 _ 9A, 0000 0000(far)
        mov     cx, ax                                  ; 18EE _ 89. C1
        mov     bx, dx                                  ; 18F0 _ 89. D3
        test    dx, dx                                  ; 18F2 _ 85. D2
        jnz     ?_262                                   ; 18F4 _ 75, 04
        test    ax, ax                                  ; 18F6 _ 85. C0
        jz      ?_263                                   ; 18F8 _ 74, 0E
?_262:  call    src_set_fname_                          ; 18FA _ E8, 0000(rel)
        mov     ax, cx                                  ; 18FD _ 89. C8
        mov     dx, bx                                  ; 18FF _ 89. DA
        call    far _nasmpp                             ; 1901 _ 9A, 0000 0000(far)
        jmp     ?_267                                   ; 1906 _ EB, 3E

?_263:  push    word [bp-6H]                            ; 1908 _ FF. 76, FA
        push    word [bp-8H]                            ; 190B _ FF. 76, F8
        mov     ax, ISORTAB3CONST                       ; 190E _ B8, 0000(seg)
        push    ax                                      ; 1911 _ 50
        mov     ax, ISORTAB3_GROUP:?_388                ; 1912 _ B8, 0CFA(segrel)
        push    ax                                      ; 1915 _ 50
        mov     ax, 49                                  ; 1916 _ B8, 0031
        push    ax                                      ; 1919 _ 50
        call    far time_                               ; 191A _ 9A, 0000 0000(far)
        add     sp, 10                                  ; 191F _ 83. C4, 0A
        jmp     ?_267                                   ; 1922 _ EB, 22

?_264:  cmp     di, 1                                   ; 1924 _ 83. FF, 01
        jle     ?_265                                   ; 1927 _ 7E, 0B
        mov     ds, word [bp-4H]                        ; 1929 _ 8E. 5E, FC
        mov     bx, word [si+4H]                        ; 192C _ 8B. 5C, 04
        mov     cx, word [si+6H]                        ; 192F _ 8B. 4C, 06
        jmp     ?_266                                   ; 1932 _ EB, 04

?_265:  xor     bx, bx                                  ; 1934 _ 31. DB
        xor     cx, cx                                  ; 1936 _ 31. C9
?_266:  mov     ds, word [bp-4H]                        ; 1938 _ 8E. 5E, FC
        mov     ax, word [si]                           ; 193B _ 8B. 04
        mov     dx, word [si+2H]                        ; 193D _ 8B. 54, 02
        call    assemble_                               ; 1940 _ E8, 0000(rel)
        mov     byte [bp-2H], al                        ; 1943 _ 88. 46, FE
?_267:  mov     al, byte [bp-2H]                        ; 1946 _ 8A. 46, FE
        cbw                                             ; 1949 _ 98
        mov     dx, ax                                  ; 194A _ 89. C2
        shl     dx, 1                                   ; 194C _ D1. E2
        shl     dx, 1                                   ; 194E _ D1. E2
        add     si, dx                                  ; 1950 _ 01. D6
        sub     di, ax                                  ; 1952 _ 29. C7
        jmp     ?_255                                   ; 1954 _ E9, FF1D

?_268:  mov     ax, ISORTAB3CONST                       ; 1957 _ B8, 0000(seg)
        mov     ds, ax                                  ; 195A _ 8E. D8
        cmp     byte [exit_], 0                         ; 195C _ 80. 3E, 0000(segrel), 00
        jnz     ?_269                                   ; 1961 _ 75, 14
        push    ax                                      ; 1963 _ 50
        mov     ax, ISORTAB3_GROUP:?_389                ; 1964 _ B8, 0D1C(segrel)
        push    ax                                      ; 1967 _ 50
        mov     ax, 49                                  ; 1968 _ B8, 0031
        push    ax                                      ; 196B _ 50
        call    far time_                               ; 196C _ 9A, 0000 0000(far)
        add     sp, 6                                   ; 1971 _ 83. C4, 06
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_272                                   ; 1974 _ E9, 007D

?_269:  mov     bx, atoi_                               ; 1977 _ BB, 0000(segrel)
        mov     cx, ax                                  ; 197A _ 89. C1
        mov     ax, exit_                               ; 197C _ B8, 0000(segrel)
        mov     dx, ds                                  ; 197F _ 8C. DA
        call    far nasm_free_                          ; 1981 _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 1986 _ 85. C0
        jz      ?_271                                   ; 1988 _ 74, 4E
        mov     bx, dfmt_find_                          ; 198A _ BB, 0000(segrel)
        mov     cx, seg dfmt_find_                      ; 198D _ B9, 0000(sseg)
        mov     ax, exit_                               ; 1990 _ B8, 0000(segrel)
        mov     dx, cx                                  ; 1993 _ 89. CA
        call    far nasm_free_                          ; 1995 _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 199A _ 85. C0
        jz      ?_271                                   ; 199C _ 74, 3A
        mov     bx, raa_read_                           ; 199E _ BB, 0000(segrel)
        mov     cx, seg raa_read_                       ; 19A1 _ B9, 0000(sseg)
        mov     ax, exit_                               ; 19A4 _ B8, 0000(segrel)
        mov     dx, cx                                  ; 19A7 _ 89. CA
        call    far nasm_free_                          ; 19A9 _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 19AE _ 85. C0
        jz      ?_271                                   ; 19B0 _ 74, 26
        mov     ax, ISORTAB3CONST                       ; 19B2 _ B8, 0000(seg)
        mov     ds, ax                                  ; 19B5 _ 8E. D8
        mov     ax, word [strlen_]                      ; 19B7 _ A1, 0000(segrel)
        mov     dx, word [strlen_+2H]                   ; 19BA _ 8B. 16, 0002(segrel)
        test    dx, dx                                  ; 19BE _ 85. D2
        jnz     ?_270                                   ; 19C0 _ 75, 04
        test    ax, ax                                  ; 19C2 _ 85. C0
        jz      ?_272                                   ; 19C4 _ 74, 2E
?_270:  mov     bx, ax                                  ; 19C6 _ 89. C3
        mov     cx, dx                                  ; 19C8 _ 89. D1
        mov     ax, exit_                               ; 19CA _ B8, 0000(segrel)
        mov     dx, ds                                  ; 19CD _ 8C. DA
        call    far nasm_free_                          ; 19CF _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 19D4 _ 85. C0
        jnz     ?_272                                   ; 19D6 _ 75, 1C
?_271:  mov     ax, seg exit_                           ; 19D8 _ B8, 0000(sseg)
        push    ax                                      ; 19DB _ 50
        mov     ax, exit_                               ; 19DC _ B8, 0000(segrel)
        push    ax                                      ; 19DF _ 50
        mov     ax, ISORTAB3CONST                       ; 19E0 _ B8, 0000(seg)
        push    ax                                      ; 19E3 _ 50
        mov     ax, ISORTAB3_GROUP:?_390                ; 19E4 _ B8, 0D34(segrel)
        push    ax                                      ; 19E7 _ 50
        mov     ax, 50                                  ; 19E8 _ B8, 0032
        push    ax                                      ; 19EB _ 50
        call    far time_                               ; 19EC _ 9A, 0000 0000(far)
        add     sp, 10                                  ; 19F1 _ 83. C4, 0A
?_272:  mov     ax, ISORTAB3CONST                       ; 19F4 _ B8, 0000(seg)
        mov     ds, ax                                  ; 19F7 _ 8E. D8
        cmp     byte [atoi_], 0                         ; 19F9 _ 80. 3E, 0000(segrel), 00
        jz      ?_273                                   ; 19FE _ 74, 45
        mov     bx, ISORTAB3_GROUP:?_342                ; 1A00 _ BB, 031B(segrel)
        mov     cx, ax                                  ; 1A03 _ 89. C1
        mov     ax, atoi_                               ; 1A05 _ B8, 0000(segrel)
        mov     dx, ds                                  ; 1A08 _ 8C. DA
        call    far fclose_                             ; 1A0A _ 9A, 0000 0000(far)
        mov     bx, ISORTAB3CONST                       ; 1A0F _ BB, 0000(seg)
        mov     ds, bx                                  ; 1A12 _ 8E. DB
        mov     word [pp_include_path_], ax             ; 1A14 _ A3, 0000(segrel)
        mov     word [pp_include_path_+2H], dx          ; 1A17 _ 89. 16, 0002(segrel)
        test    dx, dx                                  ; 1A1B _ 85. D2
        jnz     ?_273                                   ; 1A1D _ 75, 26
        test    ax, ax                                  ; 1A1F _ 85. C0
        jnz     ?_273                                   ; 1A21 _ 75, 22
        mov     word [pp_include_path_], _pass0+24H     ; 1A23 _ C7. 06, 0000(segrel), 0024(segrel)
        mov     word [pp_include_path_+2H], seg _pass0  ; 1A29 _ C7. 06, 0002(segrel), 0000(sseg)
        push    bx                                      ; 1A2F _ 53
        mov     ax, atoi_                               ; 1A30 _ B8, 0000(segrel)
        push    ax                                      ; 1A33 _ 50
        push    bx                                      ; 1A34 _ 53
        mov     ax, ISORTAB3_GROUP:?_391                ; 1A35 _ B8, 0D5C(segrel)
        push    ax                                      ; 1A38 _ 50
        mov     ax, 50                                  ; 1A39 _ B8, 0032
        push    ax                                      ; 1A3C _ 50
        call    far time_                               ; 1A3D _ 9A, 0000 0000(far)
        add     sp, 10                                  ; 1A42 _ 83. C4, 0A
?_273:  mov     sp, bp                                  ; 1A45 _ 89. EC
        pop     bp                                      ; 1A47 _ 5D
        pop     di                                      ; 1A48 _ 5F
        pop     si                                      ; 1A49 _ 5E
        pop     dx                                      ; 1A4A _ 5A
        ret                                             ; 1A4B _ C3

?_274:                                                  ; byte
        dw nasm_TEXT:?_277                              ; 1A4C _ 1DA0H (segrel)
        dw nasm_TEXT:?_283                              ; 1A4E _ 2220H (segrel)
        dw nasm_TEXT:?_280                              ; 1A50 _ 1FACH (segrel)
        dw nasm_TEXT:?_282                              ; 1A52 _ 20B8H (segrel)
        dw nasm_TEXT:?_286                              ; 1A54 _ 24C2H (segrel)
        dw nasm_TEXT:?_284                              ; 1A56 _ 22F6H (segrel)
        dw nasm_TEXT:?_288                              ; 1A58 _ 2516H (segrel)
        dw nasm_TEXT:?_279                              ; 1A5A _ 1E33H (segrel)
        dw nasm_TEXT:?_289                              ; 1A5C _ 2568H (segrel)
        dw nasm_TEXT:?_281                              ; 1A5E _ 1FC2H (segrel)
        dw nasm_TEXT:?_287                              ; 1A60 _ 24D9H (segrel)
        dw nasm_TEXT:?_276                              ; 1A62 _ 1D2CH (segrel)
        dw nasm_TEXT:?_276                              ; 1A64 _ 1D2CH (segrel)
        dw nasm_TEXT:?_285                              ; 1A66 _ 2402H (segrel)
        dw nasm_TEXT:?_278                              ; 1A68 _ 1DE5H (segrel)
?_275:  sub     byte [bx+si], al                        ; 1A6A _ 28. 00
        sub     word [bx+si], ax                        ; 1A6C _ 29. 00
        sub     ax, 11776                               ; 1A6E _ 2D, 2E00
        add     byte [bx], ch                           ; 1A71 _ 00. 2F
        add     byte [bx+si], dh                        ; 1A73 _ 00. 30
        add     byte [bx+di], dh                        ; 1A75 _ 00. 31
        add     byte [bx], bh                           ; 1A77 _ 00. 3F
        add     word [bx+si+1H], ax                     ; 1A79 _ 01. 40, 01
        inc     cx                                      ; 1A7C _ 41
        add     word [bp+si+1H], ax                     ; 1A7D _ 01. 42, 01
        inc     bx                                      ; 1A80 _ 43
        add     word [si+1H], ax                        ; 1A81 _ 01. 44, 01
        inc     bp                                      ; 1A84 _ 45
; Error: Relocation source does not match address or operand field
;       add     word [si], cx                           ; 1A85 _ 01. 0C(segrel) Misplaced relocation.
        db 01H
        dw nasm_TEXT:?_297
; Error: Relocation source does not match address or operand field
;       sbb     ch, byte [bx+di]                        ; 1A88 _ 1A(segrel) Misplaced relocation.. 29
        dw nasm_TEXT:?_299
; Error: Relocation source does not match address or operand field
;       cmp     byte [bx+di], ch                        ; 1A8A _ 38(segrel) Misplaced relocation.. 29
        dw nasm_TEXT:?_302
; Error: Relocation source does not match address or operand field
;       sub     al, 41                                  ; 1A8C _ 2C(segrel) Misplaced relocation., 29
        dw nasm_TEXT:?_300
; Error: Relocation source does not match address or operand field
;       xor     ch, byte [bx+di]                        ; 1A8E _ 32(segrel) Misplaced relocation.. 29
        dw nasm_TEXT:?_301
; Error: Relocation source does not match address or operand field
;       adc     ch, byte [bx+di]                        ; 1A90 _ 12(segrel) Misplaced relocation.. 29

        dw nasm_TEXT:?_298                              ; 1A90 _ 2912H (segrel)
        dw nasm_TEXT:?_303                              ; 1A92 _ 293EH (segrel)
        dw nasm_TEXT:?_290                              ; 1A94 _ 28E3H (segrel)
        dw nasm_TEXT:?_292                              ; 1A96 _ 28F3H (segrel)
        dw nasm_TEXT:?_295                              ; 1A98 _ 2902H (segrel)
        dw nasm_TEXT:?_293                              ; 1A9A _ 28F8H (segrel)
        dw nasm_TEXT:?_294                              ; 1A9C _ 28FDH (segrel)
        dw nasm_TEXT:?_291                              ; 1A9E _ 28EEH (segrel)
        dw nasm_TEXT:?_296                              ; 1AA0 _ 2907H (segrel)
        dw nasm_TEXT:?_304                              ; 1AA2 _ 2944H (segrel)
        dw 0B850H, 01D6H                                ; 1AA4 _ -18352 470 
        db 9AH                                          ; 1AA8 _ .
        dd puts_                                        ; 1AA9 _ 00000000 (far)
        dd 55575658H, 0EC81E589H                        ; 1AAD _ 1431787096 -327031415 
        dd 525001A8H, 0ED815153H                        ; 1AB5 _ 1380975016 -310292141 
        db 80H, 00H, 0B8H                               ; 1ABD _ ...
        dw ISORTAB3CONST                                ; 1AC0 _ 0000H (seg)
        dw 0D88EH, 3E83H                                ; 1AC2 _ -10098 16003 
        dw src_set_linnum_                              ; 1AC6 _ 0000H (segrel)
        dw 7520H, 8E1DH, 26C0H                          ; 1AC8 _ 29984 -29155 9920 
        db 0A1H                                         ; 1ACE _ .
        dw strcpy_+2H                                   ; 1ACF _ 0002H (segrel)
        dw 3D26H, 0300H, 1173H, 0B81EH                  ; 1AD1 _ 15654 768 4467 -18402 
        dw ISORTAB3_GROUP:?_392                         ; 1AD9 _ 0D85H (segrel)
        dw 0B850H, 0002H, 9A50H                         ; 1ADB _ -18352 2 -26032 
        dd time_                                        ; 1AE1 _ 00000000 (far)
        dd 0B806C483H                                   ; 1AE5 _ -1207516029 
        dw ISORTAB3CONST                                ; 1AE9 _ 0000H (seg)
        dw 0C08EH, 0C031H, 0A326H                       ; 1AEB _ -16242 -16335 -23770 
        dw src_get_linnum_+6H                           ; 1AF1 _ 0006H (segrel)
        dw 0A326H                                       ; 1AF3 _ -23770 
        dw src_get_linnum_+4H                           ; 1AF5 _ 0004H (segrel)
        dw 0A326H                                       ; 1AF7 _ -23770 
        dw src_get_linnum_+2H                           ; 1AF9 _ 0002H (segrel)
        dw 01B8H, 2640H                                 ; 1AFB _ 440 9792 
        db 0A3H                                         ; 1AFF _ .
        dw src_get_linnum_                              ; 1B00 _ 0000H (segrel)
        dw 4689H, 0658H, 0C71FH                         ; 1B02 _ 18057 1624 -14561 
        db 06H                                          ; 1B08 _ .
        dw nasm_strnicmp_                               ; 1B09 _ 0000H (segrel)
        dw 0001H                                        ; 1B0B _ 1 
        db 0B8H                                         ; 1B0D _ .
        dw ISORTAB3CONST                                ; 1B0E _ 0000H (seg)
        dw 0D88EH                                       ; 1B10 _ -10098 
        db 0A1H                                         ; 1B12 _ .
        dw _null_debug_form                             ; 1B13 _ 0000H (segrel)
        dw 023DH, 7F00H, 742EH, 0B803H                  ; 1B15 _ 573 32512 29742 -18429 
        dw 0001H, 4689H, 0B86CH                         ; 1B1D _ 1 18057 -18324 
        dw ISORTAB3CONST                                ; 1B23 _ 0000H (seg)
        dw 0D88EH, 3E83H                                ; 1B25 _ -10098 16003 
        dw nasm_strnicmp_                               ; 1B29 _ 0000H (segrel)
        dw 7E01H, 0B805H, 0002H, 03EBH                  ; 1B2B _ 32257 -18427 2 1003 
        dw 01B8H, 8900H, 6846H                          ; 1B33 _ 440 -30464 26694 
        db 0B8H                                         ; 1B39 _ .
        dw ISORTAB3CONST                                ; 1B3A _ 0000H (seg)
        dw 0D88EH, 0B7EH                                ; 1B3C _ -10098 2942 
        db 0BAH                                         ; 1B40 _ .
        dw sscanf_                                      ; 1B41 _ 0000H (segrel)
        db 0B8H                                         ; 1B43 _ .
        dw seg sscanf_                                  ; 1B44 _ 0000H (sseg)
        dw 09EBH, 0FE9H, 0BA11H                         ; 1B46 _ 2539 4073 -17903 
        dw _maxbits                                     ; 1B4C _ 0000H (segrel)
        db 0B8H                                         ; 1B4E _ .
        dw seg _maxbits                                 ; 1B4F _ 0000H (sseg)
        dw 5689H, 8950H, 5246H                          ; 1B51 _ 22153 -30384 21062 
        db 0B8H                                         ; 1B57 _ .
        dw ISORTAB3CONST                                ; 1B58 _ 0000H (seg)
        dw 0D88EH                                       ; 1B5A _ -10098 
        db 0A1H                                         ; 1B5C _ .
        dw src_set_linnum_                              ; 1B5D _ 0000H (segrel)
        db 0A3H                                         ; 1B5F _ .
        dw _cstart_                                     ; 1B60 _ 0000H (segrel)
        db 0A3H                                         ; 1B62 _ .
        dw _big_code_                                   ; 1B63 _ 0000H (segrel)
        db 0A1H                                         ; 1B65 _ .
        dw strcpy_                                      ; 1B66 _ 0000H (segrel)
        dw 168BH                                        ; 1B68 _ 5771 
        dw strcpy_+2H                                   ; 1B6A _ 0002H (segrel)
        db 0A3H                                         ; 1B6C _ .
        dw __argc                                       ; 1B6D _ 0000H (segrel)
        dw 1689H                                        ; 1B6F _ 5769 
        dw __argc+2H                                    ; 1B71 _ 0002H (segrel)
        dw 3E83H                                        ; 1B73 _ 16003 
        dw _null_debug_form                             ; 1B75 _ 0000H (segrel)
        dw 7502H, 8016H                                 ; 1B77 _ 29954 -32746 
        db 3EH                                          ; 1B7B _ >
        dw raa_read_                                    ; 1B7C _ 0000H (segrel)
        dw 7400H, 0BB0FH                                ; 1B7E _ 29696 -17649 
        dw time_                                        ; 1B82 _ 0000H (segrel)
        db 0B9H                                         ; 1B84 _ .
        dw seg time_                                    ; 1B85 _ 0000H (sseg)
        db 0B8H                                         ; 1B87 _ .
        dw raa_read_                                    ; 1B88 _ 0000H (segrel)
        dw 0DA8CH, 1EFFH                                ; 1B8A _ -9588 7935 
        dw ofmt_list_                                   ; 1B8E _ 0000H (segrel)
        db 0B8H                                         ; 1B90 _ .
        dw ISORTAB3CONST                                ; 1B91 _ 0000H (seg)
        dw 0D88EH, 0C031H                               ; 1B93 _ -10098 -16335 
        db 0A3H                                         ; 1B97 _ .
        dw _of_bin                                      ; 1B98 _ 0000H (segrel)
        dw 071EH, 0A326H                                ; 1B9A _ 1822 -23770 
        dw _of_bin+6H                                   ; 1B9E _ 0006H (segrel)
        dw 0A326H                                       ; 1BA0 _ -23770 
        dw _of_bin+4H                                   ; 1BA2 _ 0004H (segrel)
        dw 0A326H                                       ; 1BA4 _ -23770 
        dw _of_bin+2H                                   ; 1BA6 _ 0002H (segrel)
        dw 0A326H                                       ; 1BA8 _ -23770 
        dw _of_bin                                      ; 1BAA _ 0000H (segrel)
        dw 36C5H                                        ; 1BAC _ 14021 
        dw fprintf_                                     ; 1BAE _ 0000H (segrel)
        dw 0B806H                                       ; 1BB0 _ -18426 
        dw _cstart_                                     ; 1BB2 _ 0000H (segrel)
        dw 8B50H, 685EH, 0C031H, 0D231H                 ; 1BB4 _ -29872 26718 -16335 -11727 
        dw 5CFFH, 0BB26H                                ; 1BBC _ 23807 -17626 
        dw ISORTAB3CONST                                ; 1BC0 _ 0000H (seg)
        dw 0DB8EH                                       ; 1BC2 _ -9330 
        db 0A3H                                         ; 1BC4 _ .
        dw ofmt_find_+8H                                ; 1BC5 _ 0008H (segrel)
        dw 1689H                                        ; 1BC7 _ 5769 
        dw ofmt_find_+0AH                               ; 1BC9 _ 000AH (segrel)
        db 0A1H                                         ; 1BCB _ .
        dw _cstart_                                     ; 1BCC _ 0000H (segrel)
        db 0A3H                                         ; 1BCE _ .
        dw _big_code_                                   ; 1BCF _ 0000H (segrel)
        dw 3E83H                                        ; 1BD1 _ 16003 
        dw nasm_strnicmp_                               ; 1BD3 _ 0000H (segrel)
        dw 7E01H, 0A13DH                                ; 1BD5 _ 32257 -24259 
        dw _dfmt                                        ; 1BD9 _ 0000H (segrel)
        dw 168BH                                        ; 1BDB _ 5771 
        dw _dfmt+2H                                     ; 1BDD _ 0002H (segrel)
        db 9AH                                          ; 1BDF _ .
        dd _of_bin                                      ; 1BE0 _ 00000000 (far)
        db 8EH, 0DBH, 0A1H                              ; 1BE4 _ ...
        dw _dfmt                                        ; 1BE7 _ 0000H (segrel)
        dw 168BH                                        ; 1BE9 _ 5771 
        dw _dfmt+2H                                     ; 1BEB _ 0002H (segrel)
        db 9AH                                          ; 1BED _ .
        dd _of_bin                                      ; 1BEE _ 00000000 (far)
        db 8EH, 0DBH, 0A3H                              ; 1BF2 _ ...
        dw _of_bin                                      ; 1BF5 _ 0000H (segrel)
        dw 1689H                                        ; 1BF7 _ 5769 
        dw _of_bin+2H                                   ; 1BF9 _ 0002H (segrel)
        db 0A1H                                         ; 1BFB _ .
        dw remove_                                      ; 1BFC _ 0000H (segrel)
        dw 168BH                                        ; 1BFE _ 5771 
        dw remove_+2H                                   ; 1C00 _ 0002H (segrel)
        db 9AH                                          ; 1C02 _ .
        dd strcspn_                                     ; 1C03 _ 00000000 (far)
        db 9AH                                          ; 1C07 _ .
        dd src_get_                                     ; 1C08 _ 00000000 (far)
        db 8EH, 0DBH, 0A3H                              ; 1C0C _ ...
        dw remove_                                      ; 1C0F _ 0000H (segrel)
        dw 1689H                                        ; 1C11 _ 5769 
        dw remove_+2H                                   ; 1C13 _ 0002H (segrel)
        db 0B8H                                         ; 1C15 _ .
        dw ISORTAB3CONST                                ; 1C16 _ 0000H (seg)
        dw 0D88EH, 36C5H                                ; 1C18 _ -10098 14021 
        dw cleanup_labels_                              ; 1C1C _ 0000H (segrel)
        dw 7E83H, 026CH, 0A75H, 968BH                   ; 1C1E _ 32387 620 2677 -26997 
        dw 0FED2H, 868BH, 0FED0H, 04EBH                 ; 1C26 _ -302 -31093 -304 1259 
        dw 0D231H, 0C031H, 5250H                        ; 1C2E _ -11727 -16335 21072 
        db 0B8H                                         ; 1C34 _ .
        dw seg ofmt_list_                               ; 1C35 _ 0000H (sseg)
        dw 0B850H                                       ; 1C37 _ -18352 
        dw ofmt_list_                                   ; 1C39 _ 0000H (segrel)
        dw 8B50H, 6C5EH, 868BH, 0FED6H                  ; 1C3B _ -29872 27742 -31093 -298 
        dw 968BH, 0FED4H, 1CFFH, 0CB8H                  ; 1C43 _ -26997 -300 7423 3256 
        dw 5000H                                        ; 1C4B _ 20480 
        db 0BBH                                         ; 1C4D _ .
        dw reloc_value_                                 ; 1C4E _ 0000H (segrel)
        db 0B9H                                         ; 1C50 _ .
        dw seg reloc_value_                             ; 1C51 _ 0000H (sseg)
        db 0B8H                                         ; 1C53 _ .
        dw _of_bin                                      ; 1C54 _ 0000H (segrel)
        dw 0CA89H                                       ; 1C56 _ -13687 
        db 9AH                                          ; 1C58 _ .
        dd _of_bin                                      ; 1C59 _ 00000000 (far)
        db 0B8H                                         ; 1C5D _ .
        dw ISORTAB3CONST                                ; 1C5E _ 0000H (seg)
        dw 0D88EH, 0C031H                               ; 1C60 _ -10098 -16335 
        db 0A3H                                         ; 1C64 _ .
        dw _of_bin                                      ; 1C65 _ 0000H (segrel)
        db 0A1H                                         ; 1C67 _ .
        dw nasm_strnicmp_                               ; 1C68 _ 0000H (segrel)
        dw 013DH, 7500H, 0A303H                         ; 1C6A _ 317 29952 -23805 
        dw ofmt_find_+0CH                               ; 1C70 _ 000CH (segrel)
        db 0B8H                                         ; 1C72 _ .
        dw ISORTAB3CONST                                ; 1C73 _ 0000H (seg)
        dw 0D88EH, 3E83H                                ; 1C75 _ -10098 16003 
        dw _of_bin                                      ; 1C79 _ 0000H (segrel)
        dw 7400H, 8E16H, 26C0H, 168BH                   ; 1C7B _ 29696 -29162 9920 5771 
        dw _of_bin                                      ; 1C83 _ 0000H (segrel)
        dw 0A126H                                       ; 1C85 _ -24282 
        dw _of_bin+2H                                   ; 1C87 _ 0002H (segrel)
        dw 0FB1H, 8926H, 0D3C3H, 89FBH                  ; 1C89 _ 4017 -30426 -11325 -30213 
        dw 0EBD9H, 8B1AH                                ; 1C91 _ -5159 -29926 
        db 1EH                                          ; 1C95 _ .
        dw ofmt_find_+8H                                ; 1C96 _ 0008H (segrel)
        dw 0E8BH                                        ; 1C98 _ 3723 
        dw ofmt_find_+0AH                               ; 1C9A _ 000AH (segrel)
        db 0A1H                                         ; 1C9C _ .
        dw remove_                                      ; 1C9D _ 0000H (segrel)
        dw 168BH                                        ; 1C9F _ 5771 
        dw remove_+2H                                   ; 1CA1 _ 0002H (segrel)
        db 9AH                                          ; 1CA3 _ .
        dd _of_bin                                      ; 1CA4 _ 00000000 (far)
        dd 0C889C689H, 4E89F189H                        ; 1CA8 _ -930494839 1317663113 
        dd 6A5E896EH, 89764689H                         ; 1CB0 _ 1784580462 -1988737399 
        db 56H, 54H, 0BEH                               ; 1CB8 _ VT.
        dw ISORTAB3CONST                                ; 1CBB _ 0000H (seg)
        dw 0C68EH, 8926H                                ; 1CBD _ -14706 -30426 
        db 0EH                                          ; 1CC1 _ .
        dw ofmt_find_+6H                                ; 1CC2 _ 0006H (segrel)
        dw 8926H                                        ; 1CC4 _ -30426 
        db 1EH                                          ; 1CC6 _ .
        dw ofmt_find_+4H                                ; 1CC7 _ 0004H (segrel)
        dw 0A326H                                       ; 1CC9 _ -23770 
        dw ofmt_find_+2H                                ; 1CCB _ 0002H (segrel)
        dw 8926H                                        ; 1CCD _ -30426 
        db 16H                                          ; 1CCF _ .
        dw ofmt_find_                                   ; 1CD0 _ 0000H (segrel)
        db 0B8H                                         ; 1CD2 _ .
        dw ISORTAB3CONST                                ; 1CD3 _ 0000H (seg)
        dw 0D88EH, 1EC5H                                ; 1CD5 _ -10098 7877 
        dw cleanup_labels_                              ; 1CD9 _ 0000H (segrel)
        dw 5FFFH, 8904H, 89C6H, 89D7H                   ; 1CDB _ 24575 -30460 -30266 -30249 
        dw 5A46H, 5689H, 855CH, 75D2H                   ; 1CE3 _ 23110 22153 -31396 30162 
        dw 8504H, 74C0H, 8939H, 4C46H                   ; 1CEB _ -31484 29888 -30407 19526 
        dw 5689H, 0B84EH                                ; 1CF3 _ 22153 -18354 
        dw ISORTAB3CONST                                ; 1CF7 _ 0000H (seg)
        dw 0D88EH, 06FFH                                ; 1CF9 _ -10098 1791 
        dw _of_bin                                      ; 1CFD _ 0000H (segrel)
        dw 0D18CH, 5E8DH, 8C48H, 8DD2H                  ; 1CFF _ -11892 24205 -29624 -29230 
        dw 4C46H                                        ; 1D07 _ 19526 
        db 0E8H                                         ; 1D09 _ .
        dw _of_bin-$-27CH                               ; 1D0A _ 0000H (rel)
        dw 0C488H, 0C084H, 6F74H, 46C7H                 ; 1D0C _ -15224 -16252 28532 18119 
        dw 005EH, 8800H, 0FEC3H, 80CBH                  ; 1D14 _ 94 -30720 -317 -32565 
        dw 0EFBH, 6477H, 0FF30H, 0E3D1H                 ; 1D1C _ 3835 25719 -208 -7215 
        dw 0FF2EH                                       ; 1D24 _ -210 
        db 0A7H                                         ; 1D26 _ .
        dw nasm_TEXT:?_274                              ; 1D27 _ 1A4CH (segrel)
        dw 8FE9H                                        ; 1D29 _ -28695 
        db 0DH                                          ; 1D2B _ .
?_276:  mov     ax, ISORTAB3CONST                       ; 1D2C _ B8, 0000(seg)
        mov     ds, ax                                  ; 1D2F _ 8E. D8
        lds     si, word [fprintf_]                     ; 1D31 _ C5. 36, 0000(segrel)
        push    ax                                      ; 1D35 _ 50
        mov     ax, _cstart_                            ; 1D36 _ B8, 0000(segrel)
        push    ax                                      ; 1D39 _ 50
        mov     bx, word [bp+68H]                       ; 1D3A _ 8B. 5E, 68
        mov     ax, word [bp+48H]                       ; 1D3D _ 8B. 46, 48
        mov     dx, word [bp+4AH]                       ; 1D40 _ 8B. 56, 4A
        call    far [si+26H]                            ; 1D43 _ FF. 5C, 26
        cmp     dx, -1                                  ; 1D46 _ 83. FA, FF
        jnz     Unnamed_1_1D6C                          ; 1D49 _ 75, 21
; Note: Immediate operand could be made smaller by sign extension
        cmp     ax, 4294967295                          ; 1D4B _ 3D, FFFF
        jnz     Unnamed_1_1D6C                          ; 1D4E _ 75, 1C
        push    word [bp+4AH]                           ; 1D50 _ FF. 76, 4A
        push    word [bp+48H]                           ; 1D53 _ FF. 76, 48
        mov     ax, ISORTAB3CONST                       ; 1D56 _ B8, 0000(seg)
        push    ax                                      ; 1D59 _ 50
        mov     ax, ISORTAB3_GROUP:?_393                ; 1D5A _ B8, 0DBD(segrel)
        push    ax                                      ; 1D5D _ 50
        mov     ax, word [bp+6CH]                       ; 1D5E _ 8B. 46, 6C
; Note: Immediate operand could be made smaller by sign extension
        cmp     ax, 1                                   ; 1D61 _ 3D, 0001
        jz      Unnamed_1_1D69                          ; 1D64 _ 74, 03
        mov     ax, 3                                   ; 1D66 _ B8, 0003
Unnamed_1_1D69:
; Note: Immediate operand could be made smaller by sign extension
        jmp     Unnamed_1_1DB9                          ; 1D69 _ E9, 004D

Unnamed_1_1D6C:
        mov     bx, ISORTAB3CONST                       ; 1D6C _ BB, 0000(seg)
        mov     ds, bx                                  ; 1D6F _ 8E. DB
        mov     word [_of_bin], 0                       ; 1D71 _ C7. 06, 0000(segrel), 0000
        mov     word [ofmt_find_+8H], ax                ; 1D77 _ A3, 0008(segrel)
        mov     word [ofmt_find_+0AH], dx               ; 1D7A _ 89. 16, 000A(segrel)
; Note: Immediate operand could be made smaller by sign extension
        jmp     Unnamed_1_1DC2                          ; 1D7E _ E9, 0041
        jmp     Unnamed_1_258A                          ; 1D81 _ E9, 0806
        mov     dx, ISORTAB3CONST                       ; 1D84 _ BA, 0000(seg)
        mov     ds, dx                                  ; 1D87 _ 8E. DA
        lds     si, word [fprintf_]                     ; 1D89 _ C5. 36, 0000(segrel)
        mov     al, ah                                  ; 1D8D _ 88. E0
        cbw                                             ; 1D8F _ 98
        mov     dx, word [bp+68H]                       ; 1D90 _ 8B. 56, 68
        mov     bx, word [bp+48H]                       ; 1D93 _ 8B. 5E, 48
        mov     cx, word [bp+4AH]                       ; 1D96 _ 8B. 4E, 4A
        call    far [si+32H]                            ; 1D99 _ FF. 5C, 32
        test    ax, ax                                  ; 1D9C _ 85. C0
        jnz     Unnamed_1_1DC2                          ; 1D9E _ 75, 22
?_277:  push    word [bp+4EH]                           ; 1DA0 _ FF. 76, 4E
        push    word [bp+4CH]                           ; 1DA3 _ FF. 76, 4C
        mov     ax, ISORTAB3CONST                       ; 1DA6 _ B8, 0000(seg)
        push    ax                                      ; 1DA9 _ 50
        mov     ax, ISORTAB3_GROUP:?_406                ; 1DAA _ B8, 0FA0(segrel)
        push    ax                                      ; 1DAD _ 50
        mov     ax, word [bp+6CH]                       ; 1DAE _ 8B. 46, 6C
; Note: Immediate operand could be made smaller by sign extension
        cmp     ax, 1                                   ; 1DB1 _ 3D, 0001
        jz      Unnamed_1_1DB9                          ; 1DB4 _ 74, 03
        mov     ax, 3                                   ; 1DB6 _ B8, 0003
Unnamed_1_1DB9:
        push    ax                                      ; 1DB9 _ 50
        call    far time_                               ; 1DBA _ 9A, 0000 0000(far)
        add     sp, 10                                  ; 1DBF _ 83. C4, 0A
Unnamed_1_1DC2:
        cmp     word [bp+5EH], 0                        ; 1DC2 _ 83. 7E, 5E, 00
        jz      Unnamed_1_1DE2                          ; 1DC6 _ 74, 1A
        push    word [bp+4EH]                           ; 1DC8 _ FF. 76, 4E
        push    word [bp+4CH]                           ; 1DCB _ FF. 76, 4C
        mov     ax, ISORTAB3CONST                       ; 1DCE _ B8, 0000(seg)
        push    ax                                      ; 1DD1 _ 50
        mov     ax, ISORTAB3_GROUP:?_407                ; 1DD2 _ B8, 0FBC(segrel)
        push    ax                                      ; 1DD5 _ 50
        mov     ax, 1                                   ; 1DD6 _ B8, 0001
        push    ax                                      ; 1DD9 _ 50
        call    far time_                               ; 1DDA _ 9A, 0000 0000(far)
        add     sp, 10                                  ; 1DDF _ 83. C4, 0A
Unnamed_1_1DE2:
        jmp     Unnamed_1_2A41                          ; 1DE2 _ E9, 0C5C

?_278:  lds     bx, word [bp+48H]                       ; 1DE5 _ C5. 5E, 48
        cmp     byte [bx], 0                            ; 1DE8 _ 80. 3F, 00
        jz      Unnamed_1_1DC2                          ; 1DEB _ 74, D5
        mov     ax, bx                                  ; 1DED _ 89. D8
        mov     dx, ds                                  ; 1DEF _ 8C. DA
        call    far _of_bin                             ; 1DF1 _ 9A, 0000 0000(far)
        mov     bx, ax                                  ; 1DF6 _ 89. C3
        test    ax, ax                                  ; 1DF8 _ 85. C0
        jz      Unnamed_1_1E03                          ; 1DFA _ 74, 07
        lea     dx, [bx-1H]                             ; 1DFC _ 8D. 57, FF
        test    ax, dx                                  ; 1DFF _ 85. D0
        jz      Unnamed_1_1E1D                          ; 1E01 _ 74, 1A
Unnamed_1_1E03:
        push    word [bp+4AH]                           ; 1E03 _ FF. 76, 4A
        push    word [bp+48H]                           ; 1E06 _ FF. 76, 48
        mov     ax, ISORTAB3CONST                       ; 1E09 _ B8, 0000(seg)
        push    ax                                      ; 1E0C _ 50
        mov     ax, ISORTAB3_GROUP:?_394                ; 1E0D _ B8, 0DDE(segrel)
        push    ax                                      ; 1E10 _ 50
        mov     ax, 1                                   ; 1E11 _ B8, 0001
        push    ax                                      ; 1E14 _ 50
        call    far time_                               ; 1E15 _ 9A, 0000 0000(far)
        add     sp, 10                                  ; 1E1A _ 83. C4, 0A
Unnamed_1_1E1D:
        mov     ax, ISORTAB3CONST                       ; 1E1D _ B8, 0000(seg)
        mov     ds, ax                                  ; 1E20 _ 8E. D8
        les     si, word [fprintf_]                     ; 1E22 _ C4. 36, 0000(segrel)
        mov     ax, word [ofmt_find_+8H]                ; 1E26 _ A1, 0008(segrel)
        mov     dx, word [ofmt_find_+0AH]               ; 1E29 _ 8B. 16, 000A(segrel)
        DB      26H                                     ; Prefix coded explicitly
        call    far [es:si+2AH]                         ; 1E2D _ 26: FF. 5C, 2A
        jmp     Unnamed_1_1DC2                          ; 1E31 _ EB, 8F

?_279:  lds     bx, word [bp+48H]                       ; 1E33 _ C5. 5E, 48
        cmp     byte [bx], 36                           ; 1E36 _ 80. 3F, 24
        jnz     Unnamed_1_1E3E                          ; 1E39 _ 75, 03
        inc     word [bp+48H]                           ; 1E3B _ FF. 46, 48
Unnamed_1_1E3E:
        mov     ax, ISORTAB3CONST                       ; 1E3E _ B8, 0000(seg)
        mov     ds, ax                                  ; 1E41 _ 8E. D8
        cmp     word [_null_debug_form], 2              ; 1E43 _ 83. 3E, 0000(segrel), 02
        jnz     Unnamed_1_1E8D                          ; 1E48 _ 75, 43
        les     bx, word [bp+48H]                       ; 1E4A _ C4. 5E, 48
        mov     al, byte [es:bx]                        ; 1E4D _ 26: 8A. 07
        test    al, al                                  ; 1E50 _ 84. C0
        jz      Unnamed_1_1E5B                          ; 1E52 _ 74, 07
        cmp     al, 58                                  ; 1E54 _ 3C, 3A
        jz      Unnamed_1_1E5B                          ; 1E56 _ 74, 03
        inc     bx                                      ; 1E58 _ 43
        jmp     Unnamed_1_1E4D                          ; 1E59 _ EB, F2

Unnamed_1_1E5B:
        cmp     byte [es:bx], 58                        ; 1E5B _ 26: 80. 3F, 3A
        jz      Unnamed_1_1E64                          ; 1E5F _ 74, 03
        jmp     Unnamed_1_1DC2                          ; 1E61 _ E9, FF5E

Unnamed_1_1E64:
        mov     byte [es:bx], 0                         ; 1E64 _ 26: C6. 07, 00
        mov     ax, ISORTAB3CONST                       ; 1E68 _ B8, 0000(seg)
        mov     ds, ax                                  ; 1E6B _ 8E. D8
        lds     si, word [fprintf_]                     ; 1E6D _ C5. 36, 0000(segrel)
        inc     bx                                      ; 1E71 _ 43
        push es                                         ; 1E72 _ 06
        push    bx                                      ; 1E73 _ 53
        mov     ax, 3                                   ; 1E74 _ B8, 0003
        push    ax                                      ; 1E77 _ 50
        xor     ax, ax                                  ; 1E78 _ 31. C0
        push    ax                                      ; 1E7A _ 50
        push    ax                                      ; 1E7B _ 50
        push    ax                                      ; 1E7C _ 50
        push    ax                                      ; 1E7D _ 50
        xor     bx, bx                                  ; 1E7E _ 31. DB
        xor     cx, cx                                  ; 1E80 _ 31. C9
        mov     ax, word [bp+48H]                       ; 1E82 _ 8B. 46, 48
        mov     dx, word [bp+4AH]                       ; 1E85 _ 8B. 56, 4A
        call    far [si+22H]                            ; 1E88 _ FF. 5C, 22
        jmp     Unnamed_1_1E61                          ; 1E8B _ EB, D4

Unnamed_1_1E8D:
        mov     ax, word [nasm_strnicmp_]               ; 1E8D _ A1, 0000(segrel)
; Note: Immediate operand could be made smaller by sign extension
        cmp     ax, 1                                   ; 1E90 _ 3D, 0001
        jnz     Unnamed_1_1E61                          ; 1E93 _ 75, CC
        les     bx, word [bp+48H]                       ; 1E95 _ C4. 5E, 48
        mov     word [bp+78H], ax                       ; 1E98 _ 89. 46, 78
        push es                                         ; 1E9B _ 06
        pop  ds                                         ; 1E9C _ 1F
        mov     si, bx                                  ; 1E9D _ 89. DE
        mov     dl, byte [si]                           ; 1E9F _ 8A. 14
        xor     dh, dh                                  ; 1EA1 _ 30. F6
        mov     ax, ISORTAB3CONST                       ; 1EA3 _ B8, 0000(seg)
        mov     ds, ax                                  ; 1EA6 _ 8E. D8
        mov     si, dx                                  ; 1EA8 _ 89. D6
        test    byte [cleanup_insn_+1H+si], 0FFC0H      ; 1EAA _ F6. 84, 0001(segrel), C0
        jnz     Unnamed_1_1ECC                          ; 1EAF _ 75, 1B
        push es                                         ; 1EB1 _ 06
        pop  ds                                         ; 1EB2 _ 1F
        mov     si, bx                                  ; 1EB3 _ 89. DE
        mov     al, byte [si]                           ; 1EB5 _ 8A. 04
        cmp     al, 95                                  ; 1EB7 _ 3C, 5F
        jz      Unnamed_1_1ECC                          ; 1EB9 _ 74, 11
        cmp     al, 46                                  ; 1EBB _ 3C, 2E
        jz      Unnamed_1_1ECC                          ; 1EBD _ 74, 0D
        cmp     al, 63                                  ; 1EBF _ 3C, 3F
        jz      Unnamed_1_1ECC                          ; 1EC1 _ 74, 09
        cmp     al, 64                                  ; 1EC3 _ 3C, 40
        jz      Unnamed_1_1ECC                          ; 1EC5 _ 74, 05
        mov     word [bp+78H], 0                        ; 1EC7 _ C7. 46, 78, 0000
Unnamed_1_1ECC:
        mov     al, byte [es:bx]                        ; 1ECC _ 26: 8A. 07
        test    al, al                                  ; 1ECF _ 84. C0
        jz      Unnamed_1_1F16                          ; 1ED1 _ 74, 43
        cmp     al, 58                                  ; 1ED3 _ 3C, 3A
        jz      Unnamed_1_1F16                          ; 1ED5 _ 74, 3F
        mov     dl, al                                  ; 1ED7 _ 88. C2
        xor     dh, dh                                  ; 1ED9 _ 30. F6
        mov     ax, ISORTAB3CONST                       ; 1EDB _ B8, 0000(seg)
        mov     ds, ax                                  ; 1EDE _ 8E. D8
        mov     si, dx                                  ; 1EE0 _ 89. D6
        test    byte [cleanup_insn_+1H+si], 0FFC0H      ; 1EE2 _ F6. 84, 0001(segrel), C0
        jnz     Unnamed_1_1F13                          ; 1EE7 _ 75, 2A
        mov     al, dl                                  ; 1EE9 _ 88. D0
        cmp     al, 95                                  ; 1EEB _ 3C, 5F
        jz      Unnamed_1_1F13                          ; 1EED _ 74, 24
        cmp     al, 46                                  ; 1EEF _ 3C, 2E
        jz      Unnamed_1_1F13                          ; 1EF1 _ 74, 20
        cmp     al, 63                                  ; 1EF3 _ 3C, 3F
        jz      Unnamed_1_1F13                          ; 1EF5 _ 74, 1C
        cmp     al, 64                                  ; 1EF7 _ 3C, 40
        jz      Unnamed_1_1F13                          ; 1EF9 _ 74, 18
        test    byte [cleanup_insn_+1H+si], 20H         ; 1EFB _ F6. 84, 0001(segrel), 20
        jnz     Unnamed_1_1F13                          ; 1F00 _ 75, 11
        cmp     al, 36                                  ; 1F02 _ 3C, 24
        jz      Unnamed_1_1F13                          ; 1F04 _ 74, 0D
        cmp     al, 35                                  ; 1F06 _ 3C, 23
        jz      Unnamed_1_1F13                          ; 1F08 _ 74, 09
        cmp     al, 126                                 ; 1F0A _ 3C, 7E
        jz      Unnamed_1_1F13                          ; 1F0C _ 74, 05
        mov     word [bp+78H], 0                        ; 1F0E _ C7. 46, 78, 0000
Unnamed_1_1F13:
        inc     bx                                      ; 1F13 _ 43
        jmp     Unnamed_1_1ECC                          ; 1F14 _ EB, B6

Unnamed_1_1F16:
        cmp     word [bp+78H], 0                        ; 1F16 _ 83. 7E, 78, 00
        jnz     Unnamed_1_1F33                          ; 1F1A _ 75, 17
        mov     ax, ISORTAB3CONST                       ; 1F1C _ B8, 0000(seg)
        push    ax                                      ; 1F1F _ 50
        mov     ax, ISORTAB3_GROUP:?_395                ; 1F20 _ B8, 0E09(segrel)
        push    ax                                      ; 1F23 _ 50
        mov     ax, 1                                   ; 1F24 _ B8, 0001
        push    ax                                      ; 1F27 _ 50
        call    far time_                               ; 1F28 _ 9A, 0000 0000(far)
        add     sp, 6                                   ; 1F2D _ 83. C4, 06
        jmp     Unnamed_1_1DC2                          ; 1F30 _ E9, FE8F

Unnamed_1_1F33:
        cmp     byte [es:bx], 58                        ; 1F33 _ 26: 80. 3F, 3A
        jnz     Unnamed_1_1F46                          ; 1F37 _ 75, 0D
        mov     byte [es:bx], 0                         ; 1F39 _ 26: C6. 07, 00
        inc     bx                                      ; 1F3D _ 43
        mov     word [bp+72H], bx                       ; 1F3E _ 89. 5E, 72
        mov     word [bp+74H], es                       ; 1F41 _ 8C. 46, 74
        jmp     Unnamed_1_1F4E                          ; 1F44 _ EB, 08

Unnamed_1_1F46:
        xor     ax, ax                                  ; 1F46 _ 31. C0
        mov     word [bp+72H], ax                       ; 1F48 _ 89. 46, 72
        mov     word [bp+74H], ax                       ; 1F4B _ 89. 46, 74
Unnamed_1_1F4E:
        mov     ax, word [bp+48H]                       ; 1F4E _ 8B. 46, 48
        mov     dx, word [bp+4AH]                       ; 1F51 _ 8B. 56, 4A
        call    far _of_bin                             ; 1F54 _ 9A, 0000 0000(far)
        test    al, al                                  ; 1F59 _ 84. C0
        jz      Unnamed_1_1F60                          ; 1F5B _ 74, 03
        jmp     Unnamed_1_1DC2                          ; 1F5D _ E9, FE62

Unnamed_1_1F60:
        mov     ax, ISORTAB3CONST                       ; 1F60 _ B8, 0000(seg)
        mov     ds, ax                                  ; 1F63 _ 8E. D8
        mov     si, word [_null_debug_form]             ; 1F65 _ 8B. 36, 0000(segrel)
        mov     word [_null_debug_form], 1              ; 1F69 _ C7. 06, 0000(segrel), 0001
        mov     bx, word [bp+72H]                       ; 1F6F _ 8B. 5E, 72
        mov     cx, word [bp+74H]                       ; 1F72 _ 8B. 4E, 74
        mov     ax, word [bp+48H]                       ; 1F75 _ 8B. 46, 48
        mov     dx, word [bp+4AH]                       ; 1F78 _ 8B. 56, 4A
        call    far _of_bin                             ; 1F7B _ 9A, 0000 0000(far)
        mov     ax, 1                                   ; 1F80 _ B8, 0001
        push    ax                                      ; 1F83 _ 50
        xor     ax, ax                                  ; 1F84 _ 31. C0
        push    ax                                      ; 1F86 _ 50
        push    ax                                      ; 1F87 _ 50
        push    ax                                      ; 1F88 _ 50
        push    ax                                      ; 1F89 _ 50
        push    ax                                      ; 1F8A _ 50
        push    ax                                      ; 1F8B _ 50
        push    ax                                      ; 1F8C _ 50
        call    far _of_bin                             ; 1F8D _ 9A, 0000 0000(far)
        mov     bx, ax                                  ; 1F92 _ 89. C3
        mov     cx, dx                                  ; 1F94 _ 89. D1
        mov     ax, word [bp+48H]                       ; 1F96 _ 8B. 46, 48
        mov     dx, word [bp+4AH]                       ; 1F99 _ 8B. 56, 4A
        call    far _maxbits                            ; 1F9C _ 9A, 0000 0000(far)
        mov     ax, ISORTAB3CONST                       ; 1FA1 _ B8, 0000(seg)
        mov     ds, ax                                  ; 1FA4 _ 8E. D8
        mov     word [_null_debug_form], si             ; 1FA6 _ 89. 36, 0000(segrel)
        jmp     Unnamed_1_1F5D                          ; 1FAA _ EB, B1

?_280:  mov     ax, word [bp+48H]                       ; 1FAC _ 8B. 46, 48
        mov     dx, word [bp+4AH]                       ; 1FAF _ 8B. 56, 4A
        call    _of_bin                                 ; 1FB2 _ E8, 0000(rel)
        mov     dx, ISORTAB3CONST                       ; 1FB5 _ BA, 0000(seg)
        mov     ds, dx                                  ; 1FB8 _ 8E. DA
        mov     word [_cstart_], ax                     ; 1FBA _ A3, 0000(segrel)
        mov     word [_big_code_], ax                   ; 1FBD _ A3, 0000(segrel)
        jmp     Unnamed_1_1F5D                          ; 1FC0 _ EB, 9B

?_281:  lds     bx, word [bp+48H]                       ; 1FC2 _ C5. 5E, 48
        cmp     byte [bx], 36                           ; 1FC5 _ 80. 3F, 24
        jnz     Unnamed_1_1FCD                          ; 1FC8 _ 75, 03
        inc     word [bp+48H]                           ; 1FCA _ FF. 46, 48
Unnamed_1_1FCD:
        mov     ax, ISORTAB3CONST                       ; 1FCD _ B8, 0000(seg)
        mov     ds, ax                                  ; 1FD0 _ 8E. D8
        cmp     word [_null_debug_form], 2              ; 1FD2 _ 83. 3E, 0000(segrel), 02
        jnz     Unnamed_1_1FED                          ; 1FD7 _ 75, 14
        les     bx, word [bp+48H]                       ; 1FD9 _ C4. 5E, 48
        mov     al, byte [es:bx]                        ; 1FDC _ 26: 8A. 07
        test    al, al                                  ; 1FDF _ 84. C0
        jnz     Unnamed_1_1FE6                          ; 1FE1 _ 75, 03
        jmp     Unnamed_1_1E5B                          ; 1FE3 _ E9, FE75

Unnamed_1_1FE6:
        cmp     al, 58                                  ; 1FE6 _ 3C, 3A
        jz      Unnamed_1_1FE3                          ; 1FE8 _ 74, F9
        inc     bx                                      ; 1FEA _ 43
        jmp     Unnamed_1_1FDC                          ; 1FEB _ EB, EF

Unnamed_1_1FED:
        mov     ax, word [bp+68H]                       ; 1FED _ 8B. 46, 68
; Note: Immediate operand could be made smaller by sign extension
        cmp     ax, 1                                   ; 1FF0 _ 3D, 0001
        jz      Unnamed_1_1FF8                          ; 1FF3 _ 74, 03
        jmp     Unnamed_1_1DC2                          ; 1FF5 _ E9, FDCA

Unnamed_1_1FF8:
        les     bx, word [bp+48H]                       ; 1FF8 _ C4. 5E, 48
        mov     word [bp+78H], ax                       ; 1FFB _ 89. 46, 78
        push es                                         ; 1FFE _ 06
        pop  ds                                         ; 1FFF _ 1F
        mov     si, bx                                  ; 2000 _ 89. DE
        mov     dl, byte [si]                           ; 2002 _ 8A. 14
        xor     dh, dh                                  ; 2004 _ 30. F6
        mov     ax, ISORTAB3CONST                       ; 2006 _ B8, 0000(seg)
        mov     ds, ax                                  ; 2009 _ 8E. D8
        mov     si, dx                                  ; 200B _ 89. D6
        test    byte [cleanup_insn_+1H+si], 0FFC0H      ; 200D _ F6. 84, 0001(segrel), C0
        jnz     Unnamed_1_202F                          ; 2012 _ 75, 1B
        push es                                         ; 2014 _ 06
        pop  ds                                         ; 2015 _ 1F
        mov     si, bx                                  ; 2016 _ 89. DE
        mov     al, byte [si]                           ; 2018 _ 8A. 04
        cmp     al, 95                                  ; 201A _ 3C, 5F
        jz      Unnamed_1_202F                          ; 201C _ 74, 11
        cmp     al, 46                                  ; 201E _ 3C, 2E
        jz      Unnamed_1_202F                          ; 2020 _ 74, 0D
        cmp     al, 63                                  ; 2022 _ 3C, 3F
        jz      Unnamed_1_202F                          ; 2024 _ 74, 09
        cmp     al, 64                                  ; 2026 _ 3C, 40
        jz      Unnamed_1_202F                          ; 2028 _ 74, 05
        mov     word [bp+78H], 0                        ; 202A _ C7. 46, 78, 0000
Unnamed_1_202F:
        mov     al, byte [es:bx]                        ; 202F _ 26: 8A. 07
        test    al, al                                  ; 2032 _ 84. C0
        jz      Unnamed_1_2079                          ; 2034 _ 74, 43
        cmp     al, 58                                  ; 2036 _ 3C, 3A
        jz      Unnamed_1_2079                          ; 2038 _ 74, 3F
        mov     dl, al                                  ; 203A _ 88. C2
        xor     dh, dh                                  ; 203C _ 30. F6
        mov     ax, ISORTAB3CONST                       ; 203E _ B8, 0000(seg)
        mov     ds, ax                                  ; 2041 _ 8E. D8
        mov     si, dx                                  ; 2043 _ 89. D6
        test    byte [cleanup_insn_+1H+si], 0FFC0H      ; 2045 _ F6. 84, 0001(segrel), C0
        jnz     Unnamed_1_2076                          ; 204A _ 75, 2A
        mov     al, dl                                  ; 204C _ 88. D0
        cmp     al, 95                                  ; 204E _ 3C, 5F
        jz      Unnamed_1_2076                          ; 2050 _ 74, 24
        cmp     al, 46                                  ; 2052 _ 3C, 2E
        jz      Unnamed_1_2076                          ; 2054 _ 74, 20
        cmp     al, 63                                  ; 2056 _ 3C, 3F
        jz      Unnamed_1_2076                          ; 2058 _ 74, 1C
        cmp     al, 64                                  ; 205A _ 3C, 40
        jz      Unnamed_1_2076                          ; 205C _ 74, 18
        test    byte [cleanup_insn_+1H+si], 20H         ; 205E _ F6. 84, 0001(segrel), 20
        jnz     Unnamed_1_2076                          ; 2063 _ 75, 11
        cmp     al, 36                                  ; 2065 _ 3C, 24
        jz      Unnamed_1_2076                          ; 2067 _ 74, 0D
        cmp     al, 35                                  ; 2069 _ 3C, 23
        jz      Unnamed_1_2076                          ; 206B _ 74, 09
        cmp     al, 126                                 ; 206D _ 3C, 7E
        jz      Unnamed_1_2076                          ; 206F _ 74, 05
        mov     word [bp+78H], 0                        ; 2071 _ C7. 46, 78, 0000
Unnamed_1_2076:
        inc     bx                                      ; 2076 _ 43
        jmp     Unnamed_1_202F                          ; 2077 _ EB, B6

Unnamed_1_2079:
        cmp     word [bp+78H], 0                        ; 2079 _ 83. 7E, 78, 00
        jnz     Unnamed_1_2089                          ; 207D _ 75, 0A
        mov     ax, ISORTAB3CONST                       ; 207F _ B8, 0000(seg)
        push    ax                                      ; 2082 _ 50
        mov     ax, ISORTAB3_GROUP:?_396                ; 2083 _ B8, 0E2A(segrel)
        jmp     Unnamed_1_1F23                          ; 2086 _ E9, FE9A

Unnamed_1_2089:
        cmp     byte [es:bx], 58                        ; 2089 _ 26: 80. 3F, 3A
        jnz     Unnamed_1_209C                          ; 208D _ 75, 0D
        mov     byte [es:bx], 0                         ; 208F _ 26: C6. 07, 00
        inc     bx                                      ; 2093 _ 43
        mov     word [bp+72H], bx                       ; 2094 _ 89. 5E, 72
        mov     word [bp+74H], es                       ; 2097 _ 8C. 46, 74
        jmp     Unnamed_1_20A4                          ; 209A _ EB, 08

Unnamed_1_209C:
        xor     ax, ax                                  ; 209C _ 31. C0
        mov     word [bp+72H], ax                       ; 209E _ 89. 46, 72
        mov     word [bp+74H], ax                       ; 20A1 _ 89. 46, 74
Unnamed_1_20A4:
        mov     bx, word [bp+72H]                       ; 20A4 _ 8B. 5E, 72
        mov     cx, word [bp+74H]                       ; 20A7 _ 8B. 4E, 74
        mov     ax, word [bp+48H]                       ; 20AA _ 8B. 46, 48
        mov     dx, word [bp+4AH]                       ; 20AD _ 8B. 56, 4A
        call    far _of_bin                             ; 20B0 _ 9A, 0000 0000(far)
        jmp     Unnamed_1_1DC2                          ; 20B5 _ E9, FD0A

?_282:  lds     bx, word [bp+48H]                       ; 20B8 _ C5. 5E, 48
        cmp     byte [bx], 36                           ; 20BB _ 80. 3F, 24
        jnz     Unnamed_1_20C3                          ; 20BE _ 75, 03
        inc     word [bp+48H]                           ; 20C0 _ FF. 46, 48
Unnamed_1_20C3:
        mov     di, word [bp+48H]                       ; 20C3 _ 8B. 7E, 48
        mov     ax, word [bp+4AH]                       ; 20C6 _ 8B. 46, 4A
        mov     word [bp+7CH], ax                       ; 20C9 _ 89. 46, 7C
        mov     word [bp+78H], 1                        ; 20CC _ C7. 46, 78, 0001
        mov     ds, ax                                  ; 20D1 _ 8E. D8
        mov     bx, di                                  ; 20D3 _ 89. FB
        mov     bl, byte [bx]                           ; 20D5 _ 8A. 1F
        xor     bh, bh                                  ; 20D7 _ 30. FF
        mov     ax, ISORTAB3CONST                       ; 20D9 _ B8, 0000(seg)
        mov     ds, ax                                  ; 20DC _ 8E. D8
        test    byte [cleanup_insn_+1H+bx], 0FFC0H      ; 20DE _ F6. 87, 0001(segrel), C0
        jnz     Unnamed_1_2101                          ; 20E3 _ 75, 1C
        mov     ds, word [bp+4AH]                       ; 20E5 _ 8E. 5E, 4A
        mov     bx, di                                  ; 20E8 _ 89. FB
        mov     al, byte [bx]                           ; 20EA _ 8A. 07
        cmp     al, 95                                  ; 20EC _ 3C, 5F
        jz      Unnamed_1_2101                          ; 20EE _ 74, 11
        cmp     al, 46                                  ; 20F0 _ 3C, 2E
        jz      Unnamed_1_2101                          ; 20F2 _ 74, 0D
        cmp     al, 63                                  ; 20F4 _ 3C, 3F
        jz      Unnamed_1_2101                          ; 20F6 _ 74, 09
        cmp     al, 64                                  ; 20F8 _ 3C, 40
        jz      Unnamed_1_2101                          ; 20FA _ 74, 05
        mov     word [bp+78H], 0                        ; 20FC _ C7. 46, 78, 0000
Unnamed_1_2101:
        mov     ds, word [bp+7CH]                       ; 2101 _ 8E. 5E, 7C
        mov     al, byte [di]                           ; 2104 _ 8A. 05
        test    al, al                                  ; 2106 _ 84. C0
        jz      Unnamed_1_2159                          ; 2108 _ 74, 4F
        mov     bl, al                                  ; 210A _ 88. C3
        xor     bh, bh                                  ; 210C _ 30. FF
        mov     ax, ISORTAB3CONST                       ; 210E _ B8, 0000(seg)
        mov     ds, ax                                  ; 2111 _ 8E. D8
        mov     al, byte [cleanup_insn_+1H+bx]          ; 2113 _ 8A. 87, 0001(segrel)
        test    al, 02H                                 ; 2117 _ A8, 02
        jnz     Unnamed_1_2159                          ; 2119 _ 75, 3E
        test    al, 0FFC0H                              ; 211B _ A8, C0
        jnz     Unnamed_1_2156                          ; 211D _ 75, 37
        mov     ds, word [bp+7CH]                       ; 211F _ 8E. 5E, 7C
        mov     al, byte [di]                           ; 2122 _ 8A. 05
        cmp     al, 95                                  ; 2124 _ 3C, 5F
        jz      Unnamed_1_2156                          ; 2126 _ 74, 2E
        cmp     al, 46                                  ; 2128 _ 3C, 2E
        jz      Unnamed_1_2156                          ; 212A _ 74, 2A
        cmp     al, 63                                  ; 212C _ 3C, 3F
        jz      Unnamed_1_2156                          ; 212E _ 74, 26
        cmp     al, 64                                  ; 2130 _ 3C, 40
        jz      Unnamed_1_2156                          ; 2132 _ 74, 22
        mov     ax, ISORTAB3CONST                       ; 2134 _ B8, 0000(seg)
        mov     ds, ax                                  ; 2137 _ 8E. D8
        test    byte [cleanup_insn_+1H+bx], 20H         ; 2139 _ F6. 87, 0001(segrel), 20
        jnz     Unnamed_1_2156                          ; 213E _ 75, 16
        mov     ds, word [bp+7CH]                       ; 2140 _ 8E. 5E, 7C
        mov     al, byte [di]                           ; 2143 _ 8A. 05
        cmp     al, 36                                  ; 2145 _ 3C, 24
        jz      Unnamed_1_2156                          ; 2147 _ 74, 0D
        cmp     al, 35                                  ; 2149 _ 3C, 23
        jz      Unnamed_1_2156                          ; 214B _ 74, 09
        cmp     al, 126                                 ; 214D _ 3C, 7E
        jz      Unnamed_1_2156                          ; 214F _ 74, 05
        mov     word [bp+78H], 0                        ; 2151 _ C7. 46, 78, 0000
Unnamed_1_2156:
        inc     di                                      ; 2156 _ 47
        jmp     Unnamed_1_2101                          ; 2157 _ EB, A8

Unnamed_1_2159:
        cmp     word [bp+78H], 0                        ; 2159 _ 83. 7E, 78, 00
        jnz     Unnamed_1_2169                          ; 215D _ 75, 0A
        mov     ax, ISORTAB3CONST                       ; 215F _ B8, 0000(seg)
        push    ax                                      ; 2162 _ 50
        mov     ax, ISORTAB3_GROUP:?_397                ; 2163 _ B8, 0E4B(segrel)
        jmp     Unnamed_1_1F23                          ; 2166 _ E9, FDBA

Unnamed_1_2169:
        mov     ds, word [bp+7CH]                       ; 2169 _ 8E. 5E, 7C
        cmp     byte [di], 0                            ; 216C _ 80. 3D, 00
        jz      Unnamed_1_21CD                          ; 216F _ 74, 5C
        mov     ax, di                                  ; 2171 _ 89. F8
        mov     dx, ds                                  ; 2173 _ 8C. DA
        call    far _of_bin                             ; 2175 _ 9A, 0000 0000(far)
        mov     di, ax                                  ; 217A _ 89. C7
        mov     word [bp+7CH], dx                       ; 217C _ 89. 56, 7C
        mov     bx, ax                                  ; 217F _ 89. C3
        mov     es, dx                                  ; 2181 _ 8E. C2
        mov     al, byte [es:bx]                        ; 2183 _ 26: 8A. 07
        test    al, al                                  ; 2186 _ 84. C0
        jz      Unnamed_1_2191                          ; 2188 _ 74, 07
        cmp     al, 58                                  ; 218A _ 3C, 3A
        jz      Unnamed_1_2191                          ; 218C _ 74, 03
        inc     bx                                      ; 218E _ 43
        jmp     Unnamed_1_2183                          ; 218F _ EB, F2

Unnamed_1_2191:
        cmp     byte [es:bx], 58                        ; 2191 _ 26: 80. 3F, 3A
        jnz     Unnamed_1_21A4                          ; 2195 _ 75, 0D
        mov     byte [es:bx], 0                         ; 2197 _ 26: C6. 07, 00
        inc     bx                                      ; 219B _ 43
        mov     word [bp+72H], bx                       ; 219C _ 89. 5E, 72
        mov     word [bp+74H], es                       ; 219F _ 8C. 46, 74
        jmp     Unnamed_1_21AC                          ; 21A2 _ EB, 08

Unnamed_1_21A4:
        xor     ax, ax                                  ; 21A4 _ 31. C0
        mov     word [bp+72H], ax                       ; 21A6 _ 89. 46, 72
        mov     word [bp+74H], ax                       ; 21A9 _ 89. 46, 74
Unnamed_1_21AC:
        mov     cx, ss                                  ; 21AC _ 8C. D1
        lea     bx, [bp+7EH]                            ; 21AE _ 8D. 5E, 7E
        mov     ax, di                                  ; 21B1 _ 89. F8
        mov     dx, word [bp+7CH]                       ; 21B3 _ 8B. 56, 7C
        call    far _of_bin                             ; 21B6 _ 9A, 0000 0000(far)
        mov     ax, cx                                  ; 21BB _ 89. C8
        cmp     byte [bp+7EH], 0                        ; 21BD _ 80. 7E, 7E, 00
        jz      Unnamed_1_21D7                          ; 21C1 _ 74, 14
        mov     ax, ISORTAB3CONST                       ; 21C3 _ B8, 0000(seg)
        push    ax                                      ; 21C6 _ 50
        mov     ax, ISORTAB3_GROUP:?_398                ; 21C7 _ B8, 0E6C(segrel)
        jmp     Unnamed_1_1F23                          ; 21CA _ E9, FD56

Unnamed_1_21CD:
        mov     ax, ISORTAB3CONST                       ; 21CD _ B8, 0000(seg)
        push    ax                                      ; 21D0 _ 50
        mov     ax, ISORTAB3_GROUP:?_399                ; 21D1 _ B8, 0E99(segrel)
        jmp     Unnamed_1_1F23                          ; 21D4 _ E9, FD4C

Unnamed_1_21D7:
        mov     bx, ISORTAB3CONST                       ; 21D7 _ BB, 0000(seg)
        mov     ds, bx                                  ; 21DA _ 8E. DB
        cmp     word [_null_debug_form], 2              ; 21DC _ 83. 3E, 0000(segrel), 02
        jge     Unnamed_1_2202                          ; 21E1 _ 7D, 1F
        push    word [bp+74H]                           ; 21E3 _ FF. 76, 74
        push    word [bp+72H]                           ; 21E6 _ FF. 76, 72
        push    cx                                      ; 21E9 _ 51
        push    dx                                      ; 21EA _ 52
        call    far _of_bin                             ; 21EB _ 9A, 0000 0000(far)
        mov     bx, ax                                  ; 21F0 _ 89. C3
        mov     cx, dx                                  ; 21F2 _ 89. D1
        mov     ax, word [bp+48H]                       ; 21F4 _ 8B. 46, 48
        mov     dx, word [bp+4AH]                       ; 21F7 _ 8B. 56, 4A
        call    far _of_bin                             ; 21FA _ 9A, 0000 0000(far)
        jmp     Unnamed_1_1DC2                          ; 21FF _ E9, FBC0

Unnamed_1_2202:
        jz      Unnamed_1_2207                          ; 2202 _ 74, 03
        jmp     Unnamed_1_1DC2                          ; 2204 _ E9, FBBB

Unnamed_1_2207:
        cmp     word [bp+74H], 0                        ; 2207 _ 83. 7E, 74, 00
        jnz     Unnamed_1_2213                          ; 220B _ 75, 06
        cmp     word [bp+72H], 0                        ; 220D _ 83. 7E, 72, 00
        jz      Unnamed_1_2204                          ; 2211 _ 74, F1
Unnamed_1_2213:
        lds     si, word [fprintf_]                     ; 2213 _ C5. 36, 0000(segrel)
        push    word [bp+74H]                           ; 2217 _ FF. 76, 74
        push    word [bp+72H]                           ; 221A _ FF. 76, 72
        jmp     Unnamed_1_1E74                          ; 221D _ E9, FC54

?_283:  call    far _of_bin                             ; 2220 _ 9A, 0000 0000(far)
        mov     ax, word [bp+48H]                       ; 2225 _ 8B. 46, 48
        mov     dx, word [bp+4AH]                       ; 2228 _ 8B. 56, 4A
        call    far _of_bin                             ; 222B _ 9A, 0000 0000(far)
        mov     word [bp+32H], -1                       ; 2230 _ C7. 46, 32, FFFF
        xor     ax, ax                                  ; 2235 _ 31. C0
        push    ax                                      ; 2237 _ 50
        push    ax                                      ; 2238 _ 50
        mov     dx, time_                               ; 2239 _ BA, 0000(segrel)
        mov     ax, seg time_                           ; 223C _ B8, 0000(sseg)
        push    ax                                      ; 223F _ 50
        push    dx                                      ; 2240 _ 52
        push    word [bp+68H]                           ; 2241 _ FF. 76, 68
        xor     ax, ax                                  ; 2244 _ 31. C0
        push    ax                                      ; 2246 _ 50
        push    ax                                      ; 2247 _ 50
        lea     dx, [bp+32H]                            ; 2248 _ 8D. 56, 32
        push ss                                         ; 224B _ 16
        push    dx                                      ; 224C _ 52
        xor     bx, bx                                  ; 224D _ 31. DB
        xor     cx, cx                                  ; 224F _ 31. C9
        mov     ax, _of_bin                             ; 2251 _ B8, 0000(segrel)
        mov     dx, seg _of_bin                         ; 2254 _ BA, 0000(sseg)
        call    far _of_bin                             ; 2257 _ 9A, 0000 0000(far)
        mov     bx, ax                                  ; 225C _ 89. C3
        mov     cx, dx                                  ; 225E _ 89. D1
        xor     dx, dx                                  ; 2260 _ 31. D2
        cmp     cx, dx                                  ; 2262 _ 39. D1
        jnz     Unnamed_1_226A                          ; 2264 _ 75, 04
        cmp     ax, dx                                  ; 2266 _ 39. D0
        jz      Unnamed_1_22B6                          ; 2268 _ 74, 4C
Unnamed_1_226A:
        mov     dx, cx                                  ; 226A _ 89. CA
        call    far _of_bin                             ; 226C _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 2271 _ 85. C0
        jnz     Unnamed_1_228C                          ; 2273 _ 75, 17
        mov     dx, ISORTAB3_GROUP:?_400                ; 2275 _ BA, 0EC1(segrel)
        mov     ax, ISORTAB3CONST                       ; 2278 _ B8, 0000(seg)
        push    ax                                      ; 227B _ 50
        push    dx                                      ; 227C _ 52
        mov     ds, ax                                  ; 227D _ 8E. D8
        mov     ax, word [_null_debug_form]             ; 227F _ A1, 0000(segrel)
; Note: Immediate operand could be made smaller by sign extension
        cmp     ax, 1                                   ; 2282 _ 3D, 0001
        jz      Unnamed_1_22D6                          ; 2285 _ 74, 4F
        mov     ax, 3                                   ; 2287 _ B8, 0003
        jmp     Unnamed_1_22D6                          ; 228A _ EB, 4A

Unnamed_1_228C:
        mov     ax, bx                                  ; 228C _ 89. D8
        mov     dx, cx                                  ; 228E _ 89. CA
        call    far _of_bin                             ; 2290 _ 9A, 0000 0000(far)
        mov     si, ISORTAB3CONST                       ; 2295 _ BE, 0000(seg)
        mov     ds, si                                  ; 2298 _ 8E. DE
        mov     word [_of_bin], ax                      ; 229A _ A3, 0000(segrel)
        mov     word [_of_bin+2H], dx                   ; 229D _ 89. 16, 0002(segrel)
        mov     ax, bx                                  ; 22A1 _ 89. D8
        mov     dx, cx                                  ; 22A3 _ 89. CA
        call    far _of_bin                             ; 22A5 _ 9A, 0000 0000(far)
        mov     ds, si                                  ; 22AA _ 8E. DE
        mov     word [_of_bin], dx                      ; 22AC _ 89. 16, 0000(segrel)
        mov     word [_of_bin+2H], cx                   ; 22B0 _ 89. 0E, 0002(segrel)
        jmp     Unnamed_1_22DF                          ; 22B4 _ EB, 29

Unnamed_1_22B6:
        mov     ax, ISORTAB3CONST                       ; 22B6 _ B8, 0000(seg)
        mov     ds, ax                                  ; 22B9 _ 8E. D8
        cmp     word [nasm_strnicmp_], 1                ; 22BB _ 83. 3E, 0000(segrel), 01
        jnz     Unnamed_1_22CE                          ; 22C0 _ 75, 0C
        mov     word [_of_bin], 256                     ; 22C2 _ C7. 06, 0000(segrel), 0100
        mov     word [_of_bin+2H], dx                   ; 22C8 _ 89. 16, 0002(segrel)
        jmp     Unnamed_1_22DF                          ; 22CC _ EB, 11

Unnamed_1_22CE:
        mov     dx, ISORTAB3_GROUP:?_401                ; 22CE _ BA, 0EFB(segrel)
        push    ax                                      ; 22D1 _ 50
        push    dx                                      ; 22D2 _ 52
        mov     ax, 3                                   ; 22D3 _ B8, 0003
Unnamed_1_22D6:
        push    ax                                      ; 22D6 _ 50
        call    far time_                               ; 22D7 _ 9A, 0000 0000(far)
        add     sp, 6                                   ; 22DC _ 83. C4, 06
Unnamed_1_22DF:
        mov     ax, ISORTAB3CONST                       ; 22DF _ B8, 0000(seg)
        mov     ds, ax                                  ; 22E2 _ 8E. D8
        mov     word [_of_bin], 1                       ; 22E4 _ C7. 06, 0000(segrel), 0001
        mov     ax, 4294967295                          ; 22EA _ B8, FFFF
        mov     word [ofmt_find_+8H], ax                ; 22ED _ A3, 0008(segrel)
        mov     word [ofmt_find_+0AH], ax               ; 22F0 _ A3, 000A(segrel)
        jmp     Unnamed_1_1DC2                          ; 22F3 _ E9, FACC

?_284:  mov     di, word [bp+48H]                       ; 22F6 _ 8B. 7E, 48
        mov     ax, word [bp+4AH]                       ; 22F9 _ 8B. 46, 4A
        mov     word [bp+7CH], ax                       ; 22FC _ 89. 46, 7C
        push ss                                         ; 22FF _ 16
        pop  es                                         ; 2300 _ 07
        lea     bx, [bp-4EH]                            ; 2301 _ 8D. 5E, B2
        xor     al, al                                  ; 2304 _ 30. C0
        mov     ah, al                                  ; 2306 _ 88. C4
        mov     ds, word [bp+7CH]                       ; 2308 _ 8E. 5E, 7C
        mov     dl, byte [di]                           ; 230B _ 8A. 15
        xor     dh, dh                                  ; 230D _ 30. F6
        mov     si, dx                                  ; 230F _ 89. D6
        mov     dx, ISORTAB3CONST                       ; 2311 _ BA, 0000(seg)
        mov     ds, dx                                  ; 2314 _ 8E. DA
        test    byte [cleanup_insn_+1H+si], 0FFC0H      ; 2316 _ F6. 84, 0001(segrel), C0
        jnz     Unnamed_1_2334                          ; 231B _ 75, 17
        mov     ds, word [bp+7CH]                       ; 231D _ 8E. 5E, 7C
        cmp     byte [di], 95                           ; 2320 _ 80. 3D, 5F
        jz      Unnamed_1_2334                          ; 2323 _ 74, 0F
        cmp     byte [di], 46                           ; 2325 _ 80. 3D, 2E
        jz      Unnamed_1_2334                          ; 2328 _ 74, 0A
        cmp     byte [di], 63                           ; 232A _ 80. 3D, 3F
        jz      Unnamed_1_2334                          ; 232D _ 74, 05
        cmp     byte [di], 64                           ; 232F _ 80. 3D, 40
        jnz     Unnamed_1_2359                          ; 2332 _ 75, 25
Unnamed_1_2334:
        mov     ds, word [bp+7CH]                       ; 2334 _ 8E. 5E, 7C
        cmp     byte [di], 0                            ; 2337 _ 80. 3D, 00
        jz      Unnamed_1_2357                          ; 233A _ 74, 1B
        mov     cl, byte [di]                           ; 233C _ 8A. 0D
        xor     ch, ch                                  ; 233E _ 30. ED
        mov     dx, ISORTAB3CONST                       ; 2340 _ BA, 0000(seg)
        mov     ds, dx                                  ; 2343 _ 8E. DA
        mov     si, cx                                  ; 2345 _ 89. CE
        test    byte [cleanup_insn_+1H+si], 02H         ; 2347 _ F6. 84, 0001(segrel), 02
        jnz     Unnamed_1_23A5                          ; 234C _ 75, 57
        lea     dx, [bp+31H]                            ; 234E _ 8D. 56, 31
        cmp     bx, dx                                  ; 2351 _ 39. D3
        jc      Unnamed_1_235B                          ; 2353 _ 72, 06
        mov     al, 1                                   ; 2355 _ B0, 01
Unnamed_1_2357:
        jmp     Unnamed_1_23A5                          ; 2357 _ EB, 4C

Unnamed_1_2359:
        jmp     Unnamed_1_23AD                          ; 2359 _ EB, 52

Unnamed_1_235B:
        test    byte [cleanup_insn_+1H+si], 0FFC0H      ; 235B _ F6. 84, 0001(segrel), C0
        jnz     Unnamed_1_2399                          ; 2360 _ 75, 37
        mov     ds, word [bp+7CH]                       ; 2362 _ 8E. 5E, 7C
        cmp     byte [di], 95                           ; 2365 _ 80. 3D, 5F
        jz      Unnamed_1_2399                          ; 2368 _ 74, 2F
        cmp     byte [di], 46                           ; 236A _ 80. 3D, 2E
        jz      Unnamed_1_2399                          ; 236D _ 74, 2A
        cmp     byte [di], 63                           ; 236F _ 80. 3D, 3F
        jz      Unnamed_1_2399                          ; 2372 _ 74, 25
        cmp     byte [di], 64                           ; 2374 _ 80. 3D, 40
        jz      Unnamed_1_2399                          ; 2377 _ 74, 20
        mov     dx, ISORTAB3CONST                       ; 2379 _ BA, 0000(seg)
        mov     ds, dx                                  ; 237C _ 8E. DA
        test    byte [cleanup_insn_+1H+si], 20H         ; 237E _ F6. 84, 0001(segrel), 20
        jnz     Unnamed_1_2399                          ; 2383 _ 75, 14
        mov     ds, word [bp+7CH]                       ; 2385 _ 8E. 5E, 7C
        cmp     byte [di], 36                           ; 2388 _ 80. 3D, 24
        jz      Unnamed_1_2399                          ; 238B _ 74, 0C
        cmp     byte [di], 35                           ; 238D _ 80. 3D, 23
        jz      Unnamed_1_2399                          ; 2390 _ 74, 07
        cmp     byte [di], 126                          ; 2392 _ 80. 3D, 7E
        jz      Unnamed_1_2399                          ; 2395 _ 74, 02
        mov     ah, 1                                   ; 2397 _ B4, 01
Unnamed_1_2399:
        mov     ds, word [bp+7CH]                       ; 2399 _ 8E. 5E, 7C
        mov     dl, byte [di]                           ; 239C _ 8A. 15
        mov     byte [es:bx], dl                        ; 239E _ 26: 88. 17
        inc     di                                      ; 23A1 _ 47
        inc     bx                                      ; 23A2 _ 43
        jmp     Unnamed_1_2334                          ; 23A3 _ EB, 8F

Unnamed_1_23A5:
        mov     byte [es:bx], 0                         ; 23A5 _ 26: C6. 07, 00
        test    ah, ah                                  ; 23A9 _ 84. E4
        jz      Unnamed_1_23CA                          ; 23AB _ 74, 1D
Unnamed_1_23AD:
        mov     ax, ISORTAB3CONST                       ; 23AD _ B8, 0000(seg)
        push    ax                                      ; 23B0 _ 50
        mov     ax, ISORTAB3_GROUP:?_402                ; 23B1 _ B8, 0F20(segrel)
        push    ax                                      ; 23B4 _ 50
        mov     ax, ISORTAB3CONST                       ; 23B5 _ B8, 0000(seg)
        mov     ds, ax                                  ; 23B8 _ 8E. D8
        mov     ax, word [nasm_strnicmp_]               ; 23BA _ A1, 0000(segrel)
; Note: Immediate operand could be made smaller by sign extension
        cmp     ax, 1                                   ; 23BD _ 3D, 0001
        jnz     Unnamed_1_23C5                          ; 23C0 _ 75, 03
        jmp     Unnamed_1_1F27                          ; 23C2 _ E9, FB62

Unnamed_1_23C5:
        mov     ax, 3                                   ; 23C5 _ B8, 0003
        jmp     Unnamed_1_23C2                          ; 23C8 _ EB, F8

Unnamed_1_23CA:
        test    al, al                                  ; 23CA _ 84. C0
        jz      Unnamed_1_23D7                          ; 23CC _ 74, 09
        mov     ax, ISORTAB3CONST                       ; 23CE _ B8, 0000(seg)
        push    ax                                      ; 23D1 _ 50
        mov     ax, ISORTAB3_GROUP:?_403                ; 23D2 _ B8, 0F40(segrel)
        jmp     Unnamed_1_23B4                          ; 23D5 _ EB, DD

Unnamed_1_23D7:
        mov     ax, di                                  ; 23D7 _ 89. F8
        mov     dx, word [bp+7CH]                       ; 23D9 _ 8B. 56, 7C
        call    far nasm_strdup_                        ; 23DC _ 9A, 0000 0000(far)
        mov     bx, ISORTAB3CONST                       ; 23E1 _ BB, 0000(seg)
        mov     ds, bx                                  ; 23E4 _ 8E. DB
        cmp     word [_null_debug_form], 2              ; 23E6 _ 83. 3E, 0000(segrel), 02
        jz      Unnamed_1_23F0                          ; 23EB _ 74, 03
        jmp     Unnamed_1_1DC2                          ; 23ED _ E9, F9D2

Unnamed_1_23F0:
        lds     si, word [_textopts]                    ; 23F0 _ C5. 36, 0000(segrel)
        mov     bx, ax                                  ; 23F4 _ 89. C3
        mov     cx, dx                                  ; 23F6 _ 89. D1
        mov     dx, ss                                  ; 23F8 _ 8C. D2
        lea     ax, [bp-4EH]                            ; 23FA _ 8D. 46, B2
        call    far [si+14H]                            ; 23FD _ FF. 5C, 14
        jmp     Unnamed_1_23ED                          ; 2400 _ EB, EB

?_285:  mov     ax, word [bp+48H]                       ; 2402 _ 8B. 46, 48
        mov     dx, word [bp+4AH]                       ; 2405 _ 8B. 56, 4A
        call    far nasm_strdup_                        ; 2408 _ 9A, 0000 0000(far)
        mov     bx, ax                                  ; 240D _ 89. C3
        mov     es, dx                                  ; 240F _ 8E. C2
        mov     word [bp+48H], ax                       ; 2411 _ 89. 46, 48
        mov     word [bp+4AH], dx                       ; 2414 _ 89. 56, 4A
        mov     al, byte [es:bx]                        ; 2417 _ 26: 8A. 07
        inc     bx                                      ; 241A _ 43
        cmp     al, 45                                  ; 241B _ 3C, 2D
        jz      Unnamed_1_2429                          ; 241D _ 74, 0A
        cmp     al, 43                                  ; 241F _ 3C, 2B
        jz      Unnamed_1_2433                          ; 2421 _ 74, 10
        cmp     al, 42                                  ; 2423 _ 3C, 2A
        jz      Unnamed_1_243A                          ; 2425 _ 74, 13
        jmp     Unnamed_1_2441                          ; 2427 _ EB, 18

Unnamed_1_2429:
        mov     word [bp+78H], 0                        ; 2429 _ C7. 46, 78, 0000
        mov     word [bp+48H], bx                       ; 242E _ 89. 5E, 48
        jmp     Unnamed_1_2446                          ; 2431 _ EB, 13

Unnamed_1_2433:
        mov     word [bp+78H], 1                        ; 2433 _ C7. 46, 78, 0001
        jmp     Unnamed_1_242E                          ; 2438 _ EB, F4

Unnamed_1_243A:
        mov     word [bp+78H], 2                        ; 243A _ C7. 46, 78, 0002
        jmp     Unnamed_1_242E                          ; 243F _ EB, ED

Unnamed_1_2441:
        mov     word [bp+78H], 1                        ; 2441 _ C7. 46, 78, 0001
Unnamed_1_2446:
        mov     di, 1                                   ; 2446 _ BF, 0001
        jmp     Unnamed_1_2451                          ; 2449 _ EB, 06
        inc     di                                      ; 244B _ 47
        cmp     di, 11                                  ; 244C _ 83. FF, 0B
        jg      Unnamed_1_2478                          ; 244F _ 7F, 27
Unnamed_1_2451:
        mov     ax, di                                  ; 2451 _ 89. F8
        mov     dx, 10                                  ; 2453 _ BA, 000A
        imul    dx                                      ; 2456 _ F7. EA
        mov     bx, ax                                  ; 2458 _ 89. C3
        mov     ax, ISORTAB3CONST                       ; 245A _ B8, 0000(seg)
        mov     ds, ax                                  ; 245D _ 8E. D8
        mov     ax, word [readnum_+bx]                  ; 245F _ 8B. 87, 0000(segrel)
        mov     cx, word [readnum_+2H+bx]               ; 2463 _ 8B. 8F, 0002(segrel)
        mov     bx, ax                                  ; 2467 _ 89. C3
        mov     ax, word [bp+48H]                       ; 2469 _ 8B. 46, 48
        mov     dx, word [bp+4AH]                       ; 246C _ 8B. 56, 4A
        call    far declare_as_global_                  ; 246F _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 2474 _ 85. C0
        jnz     Unnamed_1_244B                          ; 2476 _ 75, D3
Unnamed_1_2478:
        cmp     di, 11                                  ; 2478 _ 83. FF, 0B
        jg      Unnamed_1_24B8                          ; 247B _ 7F, 3B
        mov     ax, word [bp+78H]                       ; 247D _ 8B. 46, 78
; Note: Immediate operand could be made smaller by sign extension
        cmp     ax, 2                                   ; 2480 _ 3D, 0002
        jz      Unnamed_1_24A9                          ; 2483 _ 74, 24
; Note: Immediate operand could be made smaller by sign extension
        cmp     ax, 1                                   ; 2485 _ 3D, 0001
        jz      Unnamed_1_249D                          ; 2488 _ 74, 13
        test    ax, ax                                  ; 248A _ 85. C0
        jz      Unnamed_1_2491                          ; 248C _ 74, 03
        jmp     Unnamed_1_1DC2                          ; 248E _ E9, F931

Unnamed_1_2491:
        mov     ax, ISORTAB3CONST                       ; 2491 _ B8, 0000(seg)
        mov     ds, ax                                  ; 2494 _ 8E. D8
        mov     byte [_of_bin+di], 0                    ; 2496 _ C6. 85, 0000(segrel), 00
        jmp     Unnamed_1_248E                          ; 249B _ EB, F1

Unnamed_1_249D:
        mov     ax, ISORTAB3CONST                       ; 249D _ B8, 0000(seg)
        mov     ds, ax                                  ; 24A0 _ 8E. D8
        mov     byte [_of_bin+di], 1                    ; 24A2 _ C6. 85, 0000(segrel), 01
        jmp     Unnamed_1_248E                          ; 24A7 _ EB, E5

Unnamed_1_24A9:
        mov     ax, ISORTAB3CONST                       ; 24A9 _ B8, 0000(seg)
        mov     ds, ax                                  ; 24AC _ 8E. D8
        mov     al, byte [reloc_value_+di]              ; 24AE _ 8A. 85, 0000(segrel)
        mov     byte [_of_bin+di], al                   ; 24B2 _ 88. 85, 0000(segrel)
        jmp     Unnamed_1_248E                          ; 24B6 _ EB, D6

Unnamed_1_24B8:
        mov     ax, ISORTAB3CONST                       ; 24B8 _ B8, 0000(seg)
        push    ax                                      ; 24BB _ 50
        mov     ax, ISORTAB3_GROUP:?_404                ; 24BC _ B8, 0F5A(segrel)
        jmp     Unnamed_1_1F23                          ; 24BF _ E9, FA61

?_286:  mov     ax, word [bp+48H]                       ; 24C2 _ 8B. 46, 48
        mov     dx, word [bp+4AH]                       ; 24C5 _ 8B. 56, 4A
        call    _of_bin                                 ; 24C8 _ E8, 0000(rel)
        mov     bx, ISORTAB3CONST                       ; 24CB _ BB, 0000(seg)
        mov     ds, bx                                  ; 24CE _ 8E. DB
        mov     word [__argc], ax                       ; 24D0 _ A3, 0000(segrel)
        mov     word [__argc+2H], dx                    ; 24D3 _ 89. 16, 0002(segrel)
        jmp     Unnamed_1_248E                          ; 24D7 _ EB, B5

?_287:  mov     ax, word [bp+48H]                       ; 24D9 _ 8B. 46, 48
        mov     dx, word [bp+4AH]                       ; 24DC _ 8B. 56, 4A
        call    far nasm_strdup_                        ; 24DF _ 9A, 0000 0000(far)
        mov     bx, ax                                  ; 24E4 _ 89. C3
        mov     es, dx                                  ; 24E6 _ 8E. C2
        mov     word [bp+48H], ax                       ; 24E8 _ 89. 46, 48
        mov     word [bp+4AH], dx                       ; 24EB _ 89. 56, 4A
        mov     al, byte [es:bx]                        ; 24EE _ 26: 8A. 07
        cmp     al, 43                                  ; 24F1 _ 3C, 2B
        jnz     Unnamed_1_2501                          ; 24F3 _ 75, 0C
        mov     ax, ISORTAB3CONST                       ; 24F5 _ B8, 0000(seg)
        mov     ds, ax                                  ; 24F8 _ 8E. D8
        xor     ax, ax                                  ; 24FA _ 31. C0
        mov     word [_of_bin], ax                      ; 24FC _ A3, 0000(segrel)
        jmp     Unnamed_1_248E                          ; 24FF _ EB, 8D

Unnamed_1_2501:
        cmp     al, 45                                  ; 2501 _ 3C, 2D
        jz      Unnamed_1_2508                          ; 2503 _ 74, 03
        jmp     Unnamed_1_1DC8                          ; 2505 _ E9, F8C0

Unnamed_1_2508:
        mov     ax, ISORTAB3CONST                       ; 2508 _ B8, 0000(seg)
        mov     ds, ax                                  ; 250B _ 8E. D8
        mov     word [_of_bin], 1                       ; 250D _ C7. 06, 0000(segrel), 0001
        jmp     Unnamed_1_1DC2                          ; 2513 _ E9, F8AC

?_288:  call    far _of_bin                             ; 2516 _ 9A, 0000 0000(far)
        mov     ax, word [bp+48H]                       ; 251B _ 8B. 46, 48
        mov     dx, word [bp+4AH]                       ; 251E _ 8B. 56, 4A
        call    far _of_bin                             ; 2521 _ 9A, 0000 0000(far)
        mov     word [bp+32H], -1                       ; 2526 _ C7. 46, 32, FFFF
        mov     cx, ss                                  ; 252B _ 8C. D1
        lea     bx, [bp+32H]                            ; 252D _ 8D. 5E, 32
        xor     ax, ax                                  ; 2530 _ 31. C0
        xor     dx, dx                                  ; 2532 _ 31. D2
        call    far _of_bin                             ; 2534 _ 9A, 0000 0000(far)
        cmp     ax, 266                                 ; 2539 _ 3D, 010A
        jnz     Unnamed_1_2505                          ; 253C _ 75, C7
        mov     ax, word [bp+38H]                       ; 253E _ 8B. 46, 38
        cmp     ax, 190                                 ; 2541 _ 3D, 00BE
        jz      Unnamed_1_254D                          ; 2544 _ 74, 07
        cmp     ax, 181                                 ; 2546 _ 3D, 00B5
        jz      Unnamed_1_255B                          ; 2549 _ 74, 10
        jmp     Unnamed_1_2505                          ; 254B _ EB, B8

Unnamed_1_254D:
        mov     ax, ISORTAB3CONST                       ; 254D _ B8, 0000(seg)
        mov     ds, ax                                  ; 2550 _ 8E. D8
        mov     word [_of_bin], 1                       ; 2552 _ C7. 06, 0000(segrel), 0001
        jmp     Unnamed_1_1DC2                          ; 2558 _ E9, F867

Unnamed_1_255B:
        mov     ax, ISORTAB3CONST                       ; 255B _ B8, 0000(seg)
        mov     ds, ax                                  ; 255E _ 8E. D8
        xor     ax, ax                                  ; 2560 _ 31. C0
        mov     word [_of_bin], ax                      ; 2562 _ A3, 0000(segrel)
        jmp     Unnamed_1_1DC2                          ; 2565 _ E9, F85A

?_289:  mov     ax, word [bp+48H]                       ; 2568 _ 8B. 46, 48
        mov     dx, word [bp+4AH]                       ; 256B _ 8B. 56, 4A
        call    far _of_bin                             ; 256E _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 2573 _ 85. C0
        jnz     Unnamed_1_257A                          ; 2575 _ 75, 03
        jmp     Unnamed_1_1DC2                          ; 2577 _ E9, F848

Unnamed_1_257A:
        push    word [bp+4AH]                           ; 257A _ FF. 76, 4A
        push    word [bp+48H]                           ; 257D _ FF. 76, 48
        mov     ax, ISORTAB3CONST                       ; 2580 _ B8, 0000(seg)
        push    ax                                      ; 2583 _ 50
        mov     ax, ISORTAB3_GROUP:?_405                ; 2584 _ B8, 0F82(segrel)
        jmp     Unnamed_1_1D5D                          ; 2587 _ E9, F7D3

Unnamed_1_258A:
        push    word [bp+52H]                           ; 258A _ FF. 76, 52
        push    word [bp+50H]                           ; 258D _ FF. 76, 50
        lea     dx, [bp-128H]                           ; 2590 _ 8D. 96, FED8
        push ss                                         ; 2594 _ 16
        push    dx                                      ; 2595 _ 52
        mov     bx, si                                  ; 2596 _ 89. F3
        mov     cx, di                                  ; 2598 _ 89. F9
        mov     ax, word [bp+6CH]                       ; 259A _ 8B. 46, 6C
        call    far _of_bin                             ; 259D _ 9A, 0000 0000(far)
        mov     ax, ISORTAB3CONST                       ; 25A2 _ B8, 0000(seg)
        mov     ds, ax                                  ; 25A5 _ 8E. D8
        cmp     word [_global_offset_changed], 0        ; 25A7 _ 83. 3E, 0000(segrel), 00
        jg      Unnamed_1_25B1                          ; 25AC _ 7F, 03
        jmp     Unnamed_1_2678                          ; 25AE _ E9, 00C7

Unnamed_1_25B1:
        mov     ax, word [_of_bin]                      ; 25B1 _ A1, 0000(segrel)
        mov     dx, word [_of_bin+2H]                   ; 25B4 _ 8B. 16, 0002(segrel)
        test    dx, dx                                  ; 25B8 _ 85. D2
        jnz     Unnamed_1_25C0                          ; 25BA _ 75, 04
        test    ax, ax                                  ; 25BC _ 85. C0
        jz      Unnamed_1_2621                          ; 25BE _ 74, 61
Unnamed_1_25C0:
        mov     bx, ax                                  ; 25C0 _ 89. C3
        mov     es, dx                                  ; 25C2 _ 8E. C2
        mov     ax, word [_of_bin]                      ; 25C4 _ A1, 0000(segrel)
        cmp     ax, word [es:bx]                        ; 25C7 _ 26: 3B. 07
        jnz     Unnamed_1_2621                          ; 25CA _ 75, 55
        mov     byte [bp-58H], 1                        ; 25CC _ C6. 46, A8, 01
        mov     ax, ISORTAB3CONST                       ; 25D0 _ B8, 0000(seg)
        mov     ds, ax                                  ; 25D3 _ 8E. D8
        lds     bx, word [_of_bin]                      ; 25D5 _ C5. 1E, 0000(segrel)
        mov     ax, word [bx+2H]                        ; 25D9 _ 8B. 47, 02
        mov     dx, 36                                  ; 25DC _ BA, 0024
        imul    dx                                      ; 25DF _ F7. EA
        mov     di, ax                                  ; 25E1 _ 89. C7
        or      byte [bp+di-0F4H], 01H                  ; 25E3 _ 80. 8B, FF0C, 01
        mov     ax, ISORTAB3CONST                       ; 25E8 _ B8, 0000(seg)
        mov     ds, ax                                  ; 25EB _ 8E. D8
        mov     ax, word [_dfmt]                        ; 25ED _ A1, 0000(segrel)
        mov     dx, word [_dfmt+2H]                     ; 25F0 _ 8B. 16, 0002(segrel)
        call    far _of_bin                             ; 25F4 _ 9A, 0000 0000(far)
        mov     bx, ax                                  ; 25F9 _ 89. C3
        mov     ax, ISORTAB3CONST                       ; 25FB _ B8, 0000(seg)
        mov     ds, ax                                  ; 25FE _ 8E. D8
        mov     word [_of_bin], bx                      ; 2600 _ 89. 1E, 0000(segrel)
        mov     word [_of_bin+2H], dx                   ; 2604 _ 89. 16, 0002(segrel)
        test    dx, dx                                  ; 2608 _ 85. D2
        jnz     Unnamed_1_2610                          ; 260A _ 75, 04
        test    bx, bx                                  ; 260C _ 85. DB
        jz      Unnamed_1_2627                          ; 260E _ 74, 17
Unnamed_1_2610:
        mov     ds, dx                                  ; 2610 _ 8E. DA
        mov     ax, word [bx]                           ; 2612 _ 8B. 07
        mov     dx, ISORTAB3CONST                       ; 2614 _ BA, 0000(seg)
        mov     ds, dx                                  ; 2617 _ 8E. DA
        cmp     ax, word [_of_bin]                      ; 2619 _ 3B. 06, 0000(segrel)
        jz      Unnamed_1_25D0                          ; 261D _ 74, B1
        jmp     Unnamed_1_2627                          ; 261F _ EB, 06

Unnamed_1_2621:
        mov     byte [bp-58H], 0                        ; 2621 _ C6. 46, A8, 00
        jmp     Unnamed_1_2678                          ; 2625 _ EB, 51

Unnamed_1_2627:
        cmp     byte [bp-58H], 0                        ; 2627 _ 80. 7E, A8, 00
        jz      Unnamed_1_2678                          ; 262B _ 74, 4B
        mov     ax, ISORTAB3CONST                       ; 262D _ B8, 0000(seg)
        mov     ds, ax                                  ; 2630 _ 8E. D8
        cmp     word [nasm_strnicmp_], 1                ; 2632 _ 83. 3E, 0000(segrel), 01
        jnz     Unnamed_1_2678                          ; 2637 _ 75, 3F
        xor     di, di                                  ; 2639 _ 31. FF
        cmp     di, word [bp-11AH]                      ; 263B _ 3B. BE, FEE6
        jge     Unnamed_1_2678                          ; 263F _ 7D, 37
        mov     ax, di                                  ; 2641 _ 89. F8
        mov     dx, 36                                  ; 2643 _ BA, 0024
        imul    dx                                      ; 2646 _ F7. EA
        mov     si, ax                                  ; 2648 _ 89. C6
        test    byte [bp+si-0F4H], 01H                  ; 264A _ F6. 82, FF0C, 01
        jz      Unnamed_1_2675                          ; 264F _ 74, 24
        mov     ax, ISORTAB3CONST                       ; 2651 _ B8, 0000(seg)
        mov     ds, ax                                  ; 2654 _ 8E. D8
        mov     ax, word [_dfmt]                        ; 2656 _ A1, 0000(segrel)
        mov     dx, word [_dfmt+2H]                     ; 2659 _ 8B. 16, 0002(segrel)
        call    far _of_bin                             ; 265D _ 9A, 0000 0000(far)
        mov     bx, ax                                  ; 2662 _ 89. C3
        mov     es, dx                                  ; 2664 _ 8E. C2
        mov     ax, ISORTAB3CONST                       ; 2666 _ B8, 0000(seg)
        mov     ds, ax                                  ; 2669 _ 8E. D8
        mov     ax, word [_of_bin]                      ; 266B _ A1, 0000(segrel)
        mov     word [es:bx], ax                        ; 266E _ 26: 89. 07
        mov     word [es:bx+2H], di                     ; 2671 _ 26: 89. 7F, 02
Unnamed_1_2675:
        inc     di                                      ; 2675 _ 47
        jmp     Unnamed_1_263B                          ; 2676 _ EB, C3

Unnamed_1_2678:
        cmp     word [bp-11EH], 52                      ; 2678 _ 83. BE, FEE2, 34
        jnz     Unnamed_1_26AA                          ; 267D _ 75, 2B
        cmp     word [bp+6CH], 1                        ; 267F _ 83. 7E, 6C, 01
        jnz     Unnamed_1_26AD                          ; 2683 _ 75, 28
        cmp     word [bp-126H], 0                       ; 2685 _ 83. BE, FEDA, 00
        jnz     Unnamed_1_26B0                          ; 268A _ 75, 24
        cmp     word [bp-128H], 0                       ; 268C _ 83. BE, FED8, 00
        jnz     Unnamed_1_26B0                          ; 2691 _ 75, 1D
        mov     dx, ISORTAB3_GROUP:?_408                ; 2693 _ BA, 0FE0(segrel)
        mov     ax, ISORTAB3CONST                       ; 2696 _ B8, 0000(seg)
        push    ax                                      ; 2699 _ 50
        push    dx                                      ; 269A _ 52
        mov     ax, 1                                   ; 269B _ B8, 0001
        push    ax                                      ; 269E _ 50
        call    far time_                               ; 269F _ 9A, 0000 0000(far)
        add     sp, 6                                   ; 26A4 _ 83. C4, 06
        jmp     Unnamed_1_2A36                          ; 26A7 _ E9, 038C

Unnamed_1_26AA:
        jmp     Unnamed_1_2852                          ; 26AA _ E9, 01A5

Unnamed_1_26AD:
        jmp     Unnamed_1_279F                          ; 26AD _ E9, 00EF

Unnamed_1_26B0:
        lds     bx, word [bp-128H]                      ; 26B0 _ C5. 9E, FED8
        cmp     byte [bx], 46                           ; 26B4 _ 80. 3F, 2E
        jnz     Unnamed_1_26C5                          ; 26B7 _ 75, 0C
        cmp     byte [bx+1H], 46                        ; 26B9 _ 80. 7F, 01, 2E
        jnz     Unnamed_1_26C5                          ; 26BD _ 75, 06
        cmp     byte [bx+2H], 64                        ; 26BF _ 80. 7F, 02, 40
        jnz     Unnamed_1_2718                          ; 26C3 _ 75, 53
Unnamed_1_26C5:
        cmp     word [bp-11AH], 1                       ; 26C5 _ 83. BE, FEE6, 01
        jnz     Unnamed_1_271B                          ; 26CA _ 75, 4F
        test    byte [bp-115H], 20H                     ; 26CC _ F6. 86, FEEB, 20
        jz      Unnamed_1_271B                          ; 26D1 _ 74, 48
        cmp     word [bp-0F8H], -1                      ; 26D3 _ 83. BE, FF08, FF
        jnz     Unnamed_1_271B                          ; 26D8 _ 75, 41
        cmp     word [bp-0FAH], -1                      ; 26DA _ 83. BE, FF06, FF
        jnz     Unnamed_1_271B                          ; 26DF _ 75, 3A
        test    byte [bp-0F4H], 02H                     ; 26E1 _ F6. 86, FF0C, 02
        jz      Unnamed_1_26EC                          ; 26E6 _ 74, 04
        mov     al, 1                                   ; 26E8 _ B0, 01
        jmp     Unnamed_1_26EE                          ; 26EA _ EB, 02

Unnamed_1_26EC:
        xor     al, al                                  ; 26EC _ 30. C0
Unnamed_1_26EE:
        cbw                                             ; 26EE _ 98
        push    ax                                      ; 26EF _ 50
        xor     ax, ax                                  ; 26F0 _ 31. C0
        push    ax                                      ; 26F2 _ 50
        push    ax                                      ; 26F3 _ 50
        push    ax                                      ; 26F4 _ 50
        push    word [bp-0FCH]                          ; 26F5 _ FF. B6, FF04
        push    word [bp-0FEH]                          ; 26F9 _ FF. B6, FF02
        push    word [bp-100H]                          ; 26FD _ FF. B6, FF00
        push    word [bp-102H]                          ; 2701 _ FF. B6, FEFE
        mov     bx, word [bp-106H]                      ; 2705 _ 8B. 9E, FEFA
        mov     cx, word [bp-104H]                      ; 2709 _ 8B. 8E, FEFC
        mov     ax, word [bp-128H]                      ; 270D _ 8B. 86, FED8
        mov     dx, word [bp-126H]                      ; 2711 _ 8B. 96, FEDA
        call    far [bp+50H]                            ; 2715 _ FF. 5E, 50
Unnamed_1_2718:
        jmp     Unnamed_1_2A36                          ; 2718 _ E9, 031B

Unnamed_1_271B:
        cmp     word [bp-11AH], 2                       ; 271B _ 83. BE, FEE6, 02
        jz      Unnamed_1_2725                          ; 2720 _ 74, 03
; Note: Immediate operand could be made smaller by sign extension
        jmp     Unnamed_1_2794                          ; 2722 _ E9, 006F

Unnamed_1_2725:
        mov     al, byte [bp-115H]                      ; 2725 _ 8A. 86, FEEB
        test    al, 20H                                 ; 2729 _ A8, 20
        jz      Unnamed_1_2722                          ; 272B _ 74, F5
        test    al, 02H                                 ; 272D _ A8, 02
        jz      Unnamed_1_2722                          ; 272F _ 74, F1
        cmp     word [bp-104H], -1                      ; 2731 _ 83. BE, FEFC, FF
        jnz     Unnamed_1_2794                          ; 2736 _ 75, 5C
        cmp     word [bp-106H], -1                      ; 2738 _ 83. BE, FEFA, FF
        jnz     Unnamed_1_2794                          ; 273D _ 75, 55
        cmp     word [bp-0F8H], -1                      ; 273F _ 83. BE, FF08, FF
        jnz     Unnamed_1_2794                          ; 2744 _ 75, 4E
        cmp     word [bp-0FAH], -1                      ; 2746 _ 83. BE, FF06, FF
        jnz     Unnamed_1_2794                          ; 274B _ 75, 47
        test    byte [bp-0F1H], 20H                     ; 274D _ F6. 86, FF0F, 20
        jz      Unnamed_1_2794                          ; 2752 _ 74, 40
        cmp     word [bp-0E0H], -1                      ; 2754 _ 83. BE, FF20, FF
        jnz     Unnamed_1_2794                          ; 2759 _ 75, 39
        cmp     word [bp-0E2H], -1                      ; 275B _ 83. BE, FF1E, FF
        jnz     Unnamed_1_2794                          ; 2760 _ 75, 32
        cmp     word [bp-0D4H], -1                      ; 2762 _ 83. BE, FF2C, FF
        jnz     Unnamed_1_2794                          ; 2767 _ 75, 2B
        cmp     word [bp-0D6H], -1                      ; 2769 _ 83. BE, FF2A, FF
        jnz     Unnamed_1_2794                          ; 276E _ 75, 24
        xor     ax, ax                                  ; 2770 _ 31. C0
        push    ax                                      ; 2772 _ 50
        push    ax                                      ; 2773 _ 50
        push    ax                                      ; 2774 _ 50
        push    ax                                      ; 2775 _ 50
        push    word [bp-0D8H]                          ; 2776 _ FF. B6, FF28
        push    word [bp-0DAH]                          ; 277A _ FF. B6, FF26
        push    word [bp-0DCH]                          ; 277E _ FF. B6, FF24
        push    word [bp-0DEH]                          ; 2782 _ FF. B6, FF22
        mov     cx, word [bp-100H]                      ; 2786 _ 8B. 8E, FF00
        or      ch, 40H                                 ; 278A _ 80. CD, 40
        mov     bx, word [bp-102H]                      ; 278D _ 8B. 9E, FEFE
        jmp     Unnamed_1_270D                          ; 2791 _ E9, FF79

Unnamed_1_2794:
        mov     ax, ISORTAB3CONST                       ; 2794 _ B8, 0000(seg)
        push    ax                                      ; 2797 _ 50
        mov     ax, ISORTAB3_GROUP:?_409                ; 2798 _ B8, 0FFA(segrel)
        push    ax                                      ; 279B _ 50
        jmp     Unnamed_1_269B                          ; 279C _ E9, FEFC

Unnamed_1_279F:
        lds     bx, word [bp-128H]                      ; 279F _ C5. 9E, FED8
        cmp     byte [bx], 46                           ; 27A3 _ 80. 3F, 2E
        jnz     Unnamed_1_27EB                          ; 27A6 _ 75, 43
        cmp     byte [bx+1H], 46                        ; 27A8 _ 80. 7F, 01, 2E
        jnz     Unnamed_1_27EB                          ; 27AC _ 75, 3D
        cmp     byte [bx+2H], 64                        ; 27AE _ 80. 7F, 02, 40
        jz      Unnamed_1_27EB                          ; 27B2 _ 74, 37
        cmp     word [bp-11AH], 1                       ; 27B4 _ 83. BE, FEE6, 01
        jnz     Unnamed_1_27EE                          ; 27B9 _ 75, 33
        test    byte [bp-115H], 20H                     ; 27BB _ F6. 86, FEEB, 20
        jz      Unnamed_1_27EE                          ; 27C0 _ 74, 2C
        xor     ax, ax                                  ; 27C2 _ 31. C0
        push    ax                                      ; 27C4 _ 50
        push    ax                                      ; 27C5 _ 50
        push    ax                                      ; 27C6 _ 50
        push    ax                                      ; 27C7 _ 50
        push    word [bp-0FCH]                          ; 27C8 _ FF. B6, FF04
        push    word [bp-0FEH]                          ; 27CC _ FF. B6, FF02
        push    word [bp-100H]                          ; 27D0 _ FF. B6, FF00
        push    word [bp-102H]                          ; 27D4 _ FF. B6, FEFE
        mov     bx, word [bp-106H]                      ; 27D8 _ 8B. 9E, FEFA
        mov     cx, word [bp-104H]                      ; 27DC _ 8B. 8E, FEFC
        mov     ax, word [bp-128H]                      ; 27E0 _ 8B. 86, FED8
        mov     dx, ds                                  ; 27E4 _ 8C. DA
        call    far _maxbits                            ; 27E6 _ 9A, 0000 0000(far)
Unnamed_1_27EB:
        jmp     Unnamed_1_2A36                          ; 27EB _ E9, 0248

Unnamed_1_27EE:
        cmp     word [bp-11AH], 2                       ; 27EE _ 83. BE, FEE6, 02
        jnz     Unnamed_1_2794                          ; 27F3 _ 75, 9F
        mov     al, byte [bp-115H]                      ; 27F5 _ 8A. 86, FEEB
        test    al, 20H                                 ; 27F9 _ A8, 20
        jz      Unnamed_1_2794                          ; 27FB _ 74, 97
        test    al, 02H                                 ; 27FD _ A8, 02
        jz      Unnamed_1_2794                          ; 27FF _ 74, 93
        cmp     word [bp-104H], -1                      ; 2801 _ 83. BE, FEFC, FF
        jnz     Unnamed_1_2794                          ; 2806 _ 75, 8C
        cmp     word [bp-106H], -1                      ; 2808 _ 83. BE, FEFA, FF
        jnz     Unnamed_1_2794                          ; 280D _ 75, 85
        test    byte [bp-0F1H], 20H                     ; 280F _ F6. 86, FF0F, 20
        jnz     Unnamed_1_2819                          ; 2814 _ 75, 03
        jmp     Unnamed_1_2794                          ; 2816 _ E9, FF7B

Unnamed_1_2819:
        cmp     word [bp-0E0H], -1                      ; 2819 _ 83. BE, FF20, FF
        jnz     Unnamed_1_2816                          ; 281E _ 75, F6
        cmp     word [bp-0E2H], -1                      ; 2820 _ 83. BE, FF1E, FF
        jnz     Unnamed_1_2816                          ; 2825 _ 75, EF
        xor     ax, ax                                  ; 2827 _ 31. C0
        push    ax                                      ; 2829 _ 50
        push    ax                                      ; 282A _ 50
        push    ax                                      ; 282B _ 50
        push    ax                                      ; 282C _ 50
        push    word [bp-0D8H]                          ; 282D _ FF. B6, FF28
        push    word [bp-0DAH]                          ; 2831 _ FF. B6, FF26
        push    word [bp-0DCH]                          ; 2835 _ FF. B6, FF24
        push    word [bp-0DEH]                          ; 2839 _ FF. B6, FF22
        mov     cx, word [bp-100H]                      ; 283D _ 8B. 8E, FF00
        or      ch, 40H                                 ; 2841 _ 80. CD, 40
        mov     bx, word [bp-102H]                      ; 2844 _ 8B. 9E, FEFE
        mov     ax, word [bp-128H]                      ; 2848 _ 8B. 86, FED8
        mov     dx, word [bp-126H]                      ; 284C _ 8B. 96, FEDA
        jmp     Unnamed_1_27E6                          ; 2850 _ EB, 94

Unnamed_1_2852:
        cmp     word [bp+6CH], 1                        ; 2852 _ 83. 7E, 6C, 01
        jz      Unnamed_1_285B                          ; 2856 _ 74, 03
        jmp     Unnamed_1_29AB                          ; 2858 _ E9, 0150

Unnamed_1_285B:
        mov     ax, seg time_                           ; 285B _ B8, 0000(sseg)
        push    ax                                      ; 285E _ 50
        mov     ax, time_                               ; 285F _ B8, 0000(segrel)
        push    ax                                      ; 2862 _ 50
        lea     dx, [bp-128H]                           ; 2863 _ 8D. 96, FED8
        push ss                                         ; 2867 _ 16
        push    dx                                      ; 2868 _ 52
        mov     ax, ISORTAB3CONST                       ; 2869 _ B8, 0000(seg)
        mov     ds, ax                                  ; 286C _ 8E. D8
        push    word [__argc+2H]                        ; 286E _ FF. 36, 0002(segrel)
        push    word [__argc]                           ; 2872 _ FF. 36, 0000(segrel)
        push    word [_cstart_]                         ; 2876 _ FF. 36, 0000(segrel)
        push    word [bp+6EH]                           ; 287A _ FF. 76, 6E
        push    word [bp+6AH]                           ; 287D _ FF. 76, 6A
        push    word [bp+76H]                           ; 2880 _ FF. 76, 76
        push    word [bp+54H]                           ; 2883 _ FF. 76, 54
        mov     ax, word [ofmt_find_+8H]                ; 2886 _ A1, 0008(segrel)
        mov     dx, word [ofmt_find_+0AH]               ; 2889 _ 8B. 16, 000A(segrel)
        call    far _of_bin                             ; 288D _ 9A, 0000 0000(far)
        mov     word [bp+62H], ax                       ; 2892 _ 89. 46, 62
        mov     word [bp+60H], bx                       ; 2895 _ 89. 5E, 60
        mov     word [bp+66H], cx                       ; 2898 _ 89. 4E, 66
        mov     word [bp+64H], dx                       ; 289B _ 89. 56, 64
        mov     ax, ISORTAB3CONST                       ; 289E _ B8, 0000(seg)
        mov     ds, ax                                  ; 28A1 _ 8E. D8
        cmp     word [strncpy_], 0                      ; 28A3 _ 83. 3E, 0000(segrel), 00
        jz      Unnamed_1_2918                          ; 28A8 _ 74, 6E
        mov     ah, byte [bp-11AH]                      ; 28AA _ 8A. A6, FEE6
        xor     al, al                                  ; 28AE _ 30. C0
        cwd                                             ; 28B0 _ 99
        mov     word [bp+7AH], ax                       ; 28B1 _ 89. 46, 7A
        mov     word [bp+70H], dx                       ; 28B4 _ 89. 56, 70
        mov     ax, word [bp-11EH]                      ; 28B7 _ 8B. 86, FEE2
        push cs                                         ; 28BB _ 0E
        pop  es                                         ; 28BC _ 07
        mov     cx, 15                                  ; 28BD _ B9, 000F
        mov     di, nasm_TEXT:?_275                     ; 28C0 _ BF, 1A6A(segrel)
        repne scasw                                     ; 28C3 _ F2: AF
        mov     di, word [es:di+1AH]                    ; 28C5 _ 26: 8B. 7D, 1A
        mov     ax, word [bp-0FCH]                      ; 28C9 _ 8B. 86, FF04
        mov     bx, word [bp-0FEH]                      ; 28CD _ 8B. 9E, FF02
        mov     cx, word [bp-100H]                      ; 28D1 _ 8B. 8E, FF00
        mov     dx, word [bp-102H]                      ; 28D5 _ 8B. 96, FEFE
        mov     si, 8                                   ; 28D9 _ BE, 0008
        call    far _of_bin                             ; 28DC _ 9A, 0000 0000(far)
        jmp     di                                      ; 28E1 _ FF. E7

?_290:  or      dl, 10H                                 ; 28E3 _ 80. CA, 10
        mov     word [bp+7AH], dx                       ; 28E6 _ 89. 56, 7A
        mov     word [bp+70H], cx                       ; 28E9 _ 89. 4E, 70
        jmp     Unnamed_1_294E                          ; 28EC _ EB, 60

?_291:  or      dl, 18H                                 ; 28EE _ 80. CA, 18
        jmp     Unnamed_1_28E6                          ; 28F1 _ EB, F3

?_292:  or      dl, 20H                                 ; 28F3 _ 80. CA, 20
        jmp     Unnamed_1_28E6                          ; 28F6 _ EB, EE

?_293:  or      dl, 30H                                 ; 28F8 _ 80. CA, 30
        jmp     Unnamed_1_28E6                          ; 28FB _ EB, E9

?_294:  or      dl, 38H                                 ; 28FD _ 80. CA, 38
        jmp     Unnamed_1_28E6                          ; 2900 _ EB, E4

?_295:  or      dl, 40H                                 ; 2902 _ 80. CA, 40
        jmp     Unnamed_1_28E6                          ; 2905 _ EB, DF

?_296:  or      dl, 48H                                 ; 2907 _ 80. CA, 48
        jmp     Unnamed_1_28E6                          ; 290A _ EB, DA

?_297:  or      byte [bp+7AH], 10H                      ; 290C _ 80. 4E, 7A, 10
        jmp     Unnamed_1_294E                          ; 2910 _ EB, 3C

?_298:  or      byte [bp+7AH], 18H                      ; 2912 _ 80. 4E, 7A, 18
        jmp     Unnamed_1_294E                          ; 2916 _ EB, 36

Unnamed_1_2918:
        jmp     Unnamed_1_2960                          ; 2918 _ EB, 46

?_299:  cmp     word [bp-5EH], 0                        ; 291A _ 83. 7E, A2, 00
        jz      Unnamed_1_2926                          ; 291E _ 74, 06
        or      byte [bp+7AH], 28H                      ; 2920 _ 80. 4E, 7A, 28
        jmp     Unnamed_1_294E                          ; 2924 _ EB, 28

Unnamed_1_2926:
        or      byte [bp+7AH], 20H                      ; 2926 _ 80. 4E, 7A, 20
        jmp     Unnamed_1_294E                          ; 292A _ EB, 22

?_300:  or      byte [bp+7AH], 30H                      ; 292C _ 80. 4E, 7A, 30
        jmp     Unnamed_1_294E                          ; 2930 _ EB, 1C

?_301:  or      byte [bp+7AH], 38H                      ; 2932 _ 80. 4E, 7A, 38
        jmp     Unnamed_1_294E                          ; 2936 _ EB, 16

?_302:  or      byte [bp+7AH], 40H                      ; 2938 _ 80. 4E, 7A, 40
        jmp     Unnamed_1_294E                          ; 293C _ EB, 10

?_303:  or      byte [bp+7AH], 48H                      ; 293E _ 80. 4E, 7A, 48
        jmp     Unnamed_1_294E                          ; 2942 _ EB, 0A

?_304:  mov     word [bp+7AH], 8                        ; 2944 _ C7. 46, 7A, 0008
        mov     word [bp+70H], 0                        ; 2949 _ C7. 46, 70, 0000
Unnamed_1_294E:
        mov     ax, ISORTAB3CONST                       ; 294E _ B8, 0000(seg)
        mov     ds, ax                                  ; 2951 _ 8E. D8
        lds     bx, word [_textopts]                    ; 2953 _ C5. 1E, 0000(segrel)
        mov     ax, word [bp+7AH]                       ; 2957 _ 8B. 46, 7A
        mov     dx, word [bp+70H]                       ; 295A _ 8B. 56, 70
        call    far [bx+18H]                            ; 295D _ FF. 5F, 18
Unnamed_1_2960:
        cmp     word [bp+62H], -1                       ; 2960 _ 83. 7E, 62, FF
        jnz     Unnamed_1_2978                          ; 2964 _ 75, 12
        cmp     word [bp+60H], -1                       ; 2966 _ 83. 7E, 60, FF
        jnz     Unnamed_1_2978                          ; 296A _ 75, 0C
        cmp     word [bp+66H], -1                       ; 296C _ 83. 7E, 66, FF
        jnz     Unnamed_1_2978                          ; 2970 _ 75, 06
        cmp     word [bp+64H], -1                       ; 2972 _ 83. 7E, 64, FF
        jz      Unnamed_1_29A8                          ; 2976 _ 74, 30
Unnamed_1_2978:
        mov     ax, word [bp+64H]                       ; 2978 _ 8B. 46, 64
        add     word [bp+54H], ax                       ; 297B _ 01. 46, 54
        mov     ax, word [bp+66H]                       ; 297E _ 8B. 46, 66
        adc     word [bp+76H], ax                       ; 2981 _ 11. 46, 76
        mov     ax, word [bp+60H]                       ; 2984 _ 8B. 46, 60
        adc     word [bp+6AH], ax                       ; 2987 _ 11. 46, 6A
        mov     ax, word [bp+62H]                       ; 298A _ 8B. 46, 62
        adc     word [bp+6EH], ax                       ; 298D _ 11. 46, 6E
        mov     ax, ISORTAB3CONST                       ; 2990 _ B8, 0000(seg)
        mov     ds, ax                                  ; 2993 _ 8E. D8
        cmp     word [_of_bin], 0                       ; 2995 _ 83. 3E, 0000(segrel), 00
        jz      Unnamed_1_2A0A                          ; 299A _ 74, 6E
        mov     ax, word [bp+54H]                       ; 299C _ 8B. 46, 54
        mov     word [_of_bin], ax                      ; 299F _ A3, 0000(segrel)
        mov     ax, word [bp+76H]                       ; 29A2 _ 8B. 46, 76
        mov     word [_of_bin+2H], ax                   ; 29A5 _ A3, 0002(segrel)
Unnamed_1_29A8:
        jmp     Unnamed_1_2A36                          ; 29A8 _ E9, 008B

Unnamed_1_29AB:
        mov     ax, seg ofmt_list_                      ; 29AB _ B8, 0000(sseg)
        push    ax                                      ; 29AE _ 50
        mov     ax, ofmt_list_                          ; 29AF _ B8, 0000(segrel)
        push    ax                                      ; 29B2 _ 50
        mov     ax, seg time_                           ; 29B3 _ B8, 0000(sseg)
        push    ax                                      ; 29B6 _ 50
        mov     ax, time_                               ; 29B7 _ B8, 0000(segrel)
        push    ax                                      ; 29BA _ 50
        mov     ax, ISORTAB3CONST                       ; 29BB _ B8, 0000(seg)
        mov     ds, ax                                  ; 29BE _ 8E. D8
        push    word [fprintf_+2H]                      ; 29C0 _ FF. 36, 0002(segrel)
        push    word [fprintf_]                         ; 29C4 _ FF. 36, 0000(segrel)
        lea     dx, [bp-128H]                           ; 29C8 _ 8D. 96, FED8
        push ss                                         ; 29CC _ 16
        push    dx                                      ; 29CD _ 52
        push    word [__argc+2H]                        ; 29CE _ FF. 36, 0002(segrel)
        push    word [__argc]                           ; 29D2 _ FF. 36, 0000(segrel)
        push    word [_cstart_]                         ; 29D6 _ FF. 36, 0000(segrel)
        push    word [bp+6EH]                           ; 29DA _ FF. 76, 6E
        push    word [bp+6AH]                           ; 29DD _ FF. 76, 6A
        push    word [bp+76H]                           ; 29E0 _ FF. 76, 76
        push    word [bp+54H]                           ; 29E3 _ FF. 76, 54
        mov     ax, word [ofmt_find_+8H]                ; 29E6 _ A1, 0008(segrel)
        mov     dx, word [ofmt_find_+0AH]               ; 29E9 _ 8B. 16, 000A(segrel)
        call    far _of_bin                             ; 29ED _ 9A, 0000 0000(far)
        add     word [bp+54H], dx                       ; 29F2 _ 01. 56, 54
        adc     word [bp+76H], cx                       ; 29F5 _ 11. 4E, 76
        adc     word [bp+6AH], bx                       ; 29F8 _ 11. 5E, 6A
        adc     word [bp+6EH], ax                       ; 29FB _ 11. 46, 6E
        mov     ax, ISORTAB3CONST                       ; 29FE _ B8, 0000(seg)
        mov     ds, ax                                  ; 2A01 _ 8E. D8
        cmp     word [_of_bin], 0                       ; 2A03 _ 83. 3E, 0000(segrel), 00
        jnz     Unnamed_1_299C                          ; 2A08 _ 75, 92
Unnamed_1_2A0A:
        push    word [bp+6EH]                           ; 2A0A _ FF. 76, 6E
        push    word [bp+6AH]                           ; 2A0D _ FF. 76, 6A
        push    word [bp+76H]                           ; 2A10 _ FF. 76, 76
        push    word [bp+54H]                           ; 2A13 _ FF. 76, 54
        mov     bx, word [ofmt_find_+8H]                ; 2A16 _ 8B. 1E, 0008(segrel)
        mov     cx, word [ofmt_find_+0AH]               ; 2A1A _ 8B. 0E, 000A(segrel)
        mov     ax, word [remove_]                      ; 2A1E _ A1, 0000(segrel)
        mov     dx, word [remove_+2H]                   ; 2A21 _ 8B. 16, 0002(segrel)
        call    far _of_bin                             ; 2A25 _ 9A, 0000 0000(far)
        mov     bx, ISORTAB3CONST                       ; 2A2A _ BB, 0000(seg)
        mov     ds, bx                                  ; 2A2D _ 8E. DB
        mov     word [remove_], ax                      ; 2A2F _ A3, 0000(segrel)
        mov     word [remove_+2H], dx                   ; 2A32 _ 89. 16, 0002(segrel)
Unnamed_1_2A36:
        mov     dx, ss                                  ; 2A36 _ 8C. D2
        lea     ax, [bp-128H]                           ; 2A38 _ 8D. 86, FED8
        call    far _of_bin                             ; 2A3C _ 9A, 0000 0000(far)
Unnamed_1_2A41:
        mov     ax, word [bp+5AH]                       ; 2A41 _ 8B. 46, 5A
        mov     dx, word [bp+5CH]                       ; 2A44 _ 8B. 56, 5C
        call    far saa_init_                           ; 2A47 _ 9A, 0000 0000(far)
        mov     ax, ISORTAB3CONST                       ; 2A4C _ B8, 0000(seg)
        mov     ds, ax                                  ; 2A4F _ 8E. D8
        cmp     word [_of_bin], 0                       ; 2A51 _ 83. 3E, 0000(segrel), 00
        jz      Unnamed_1_2A6E                          ; 2A56 _ 74, 16
        mov     es, ax                                  ; 2A58 _ 8E. C0
        mov     ax, word [es:_of_bin]                   ; 2A5A _ 26: A1, 0000(segrel)
        mov     dx, word [es:_of_bin+2H]                ; 2A5E _ 26: 8B. 16, 0002(segrel)
        mov     cl, 15                                  ; 2A63 _ B1, 0F
; Note: Prefix bit or byte has no meaning in this context
        mov     bx, dx                                  ; 2A65 _ 26: 89. D3
        sar     bx, cl                                  ; 2A68 _ D3. FB
        mov     cx, bx                                  ; 2A6A _ 89. D9
        jmp     Unnamed_1_2A94                          ; 2A6C _ EB, 26

Unnamed_1_2A6E:
        mov     bx, word [ofmt_find_+8H]                ; 2A6E _ 8B. 1E, 0008(segrel)
        mov     cx, word [ofmt_find_+0AH]               ; 2A72 _ 8B. 0E, 000A(segrel)
        mov     ax, word [remove_]                      ; 2A76 _ A1, 0000(segrel)
        mov     dx, word [remove_+2H]                   ; 2A79 _ 8B. 16, 0002(segrel)
        call    far _of_bin                             ; 2A7D _ 9A, 0000 0000(far)
        mov     di, ax                                  ; 2A82 _ 89. C7
        mov     ax, bx                                  ; 2A84 _ 89. D8
        mov     word [bp+56H], cx                       ; 2A86 _ 89. 4E, 56
        mov     si, dx                                  ; 2A89 _ 89. D6
        mov     bx, di                                  ; 2A8B _ 89. FB
        mov     cx, ax                                  ; 2A8D _ 89. C1
        mov     dx, word [bp+56H]                       ; 2A8F _ 8B. 56, 56
        mov     ax, si                                  ; 2A92 _ 89. F0
Unnamed_1_2A94:
        mov     word [bp+6EH], bx                       ; 2A94 _ 89. 5E, 6E
        mov     word [bp+6AH], cx                       ; 2A97 _ 89. 4E, 6A
        mov     word [bp+76H], dx                       ; 2A9A _ 89. 56, 76
        mov     word [bp+54H], ax                       ; 2A9D _ 89. 46, 54
        mov     si, ISORTAB3CONST                       ; 2AA0 _ BE, 0000(seg)
        mov     es, si                                  ; 2AA3 _ 8E. C6
        mov     word [es:ofmt_find_+6H], bx             ; 2AA5 _ 26: 89. 1E, 0006(segrel)
        mov     word [es:ofmt_find_+4H], cx             ; 2AAA _ 26: 89. 0E, 0004(segrel)
        mov     word [es:ofmt_find_+2H], dx             ; 2AAF _ 26: 89. 16, 0002(segrel)
        mov     word [es:ofmt_find_], ax                ; 2AB4 _ 26: A3, 0000(segrel)
        jmp     Unnamed_1_1CD2                          ; 2AB8 _ E9, F217
        mov     ax, ISORTAB3CONST                       ; 2ABB _ B8, 0000(seg)
        mov     ds, ax                                  ; 2ABE _ 8E. D8
        cmp     word [_null_debug_form], 2              ; 2AC0 _ 83. 3E, 0000(segrel), 02
        jnz     Unnamed_1_2B01                          ; 2AC5 _ 75, 3A
        mov     es, ax                                  ; 2AC7 _ 8E. C0
        cmp     word [es:_of_bin+6H], 0                 ; 2AC9 _ 26: 83. 3E, 0006(segrel), 00
        jnz     Unnamed_1_2AE9                          ; 2ACF _ 75, 18
        cmp     word [es:_of_bin+4H], 0                 ; 2AD1 _ 26: 83. 3E, 0004(segrel), 00
        jnz     Unnamed_1_2AE9                          ; 2AD7 _ 75, 10
        cmp     word [es:_of_bin+2H], 0                 ; 2AD9 _ 26: 83. 3E, 0002(segrel), 00
        jnz     Unnamed_1_2AE9                          ; 2ADF _ 75, 08
        cmp     word [es:_of_bin], 0                    ; 2AE1 _ 26: 83. 3E, 0000(segrel), 00
        jz      Unnamed_1_2B01                          ; 2AE7 _ 74, 18
Unnamed_1_2AE9:
        cmp     byte [pp_extra_stdmac_], 0              ; 2AE9 _ 80. 3E, 0000(segrel), 00
        jnz     Unnamed_1_2B01                          ; 2AEE _ 75, 11
        push    ax                                      ; 2AF0 _ 50
        mov     ax, ISORTAB3_GROUP:?_410                ; 2AF1 _ B8, 100D(segrel)
        push    ax                                      ; 2AF4 _ 50
        mov     ax, 1                                   ; 2AF5 _ B8, 0001
        push    ax                                      ; 2AF8 _ 50
        call    far time_                               ; 2AF9 _ 9A, 0000 0000(far)
        add     sp, 6                                   ; 2AFE _ 83. C4, 06
Unnamed_1_2B01:
        cmp     word [bp+6CH], 1                        ; 2B01 _ 83. 7E, 6C, 01
        jnz     Unnamed_1_2B16                          ; 2B05 _ 75, 0F
        mov     ax, ISORTAB3CONST                       ; 2B07 _ B8, 0000(seg)
        mov     ds, ax                                  ; 2B0A _ 8E. D8
        lds     bx, word [cleanup_labels_]              ; 2B0C _ C5. 1E, 0000(segrel)
        mov     ax, 1                                   ; 2B10 _ B8, 0001
        call    far [bx+8H]                             ; 2B13 _ FF. 5F, 08
Unnamed_1_2B16:
        mov     ax, ISORTAB3CONST                       ; 2B16 _ B8, 0000(seg)
        mov     ds, ax                                  ; 2B19 _ 8E. D8
        cmp     word [nasm_strnicmp_], 1                ; 2B1B _ 83. 3E, 0000(segrel), 01
        jle     Unnamed_1_2B44                          ; 2B20 _ 7E, 22
        mov     es, ax                                  ; 2B22 _ 8E. C0
        cmp     word [es:_of_bin+6H], 0                 ; 2B24 _ 26: 83. 3E, 0006(segrel), 00
        jnz     Unnamed_1_2B44                          ; 2B2A _ 75, 18
        cmp     word [es:_of_bin+4H], 0                 ; 2B2C _ 26: 83. 3E, 0004(segrel), 00
        jnz     Unnamed_1_2B44                          ; 2B32 _ 75, 10
        cmp     word [es:_of_bin+2H], 0                 ; 2B34 _ 26: 83. 3E, 0002(segrel), 00
        jnz     Unnamed_1_2B44                          ; 2B3A _ 75, 08
        cmp     word [es:_of_bin], 0                    ; 2B3C _ 26: 83. 3E, 0000(segrel), 00
        jz      Unnamed_1_2B50                          ; 2B42 _ 74, 0C
Unnamed_1_2B44:
        mov     ax, ISORTAB3CONST                       ; 2B44 _ B8, 0000(seg)
        mov     ds, ax                                  ; 2B47 _ 8E. D8
        cmp     word [_null_debug_form], 2              ; 2B49 _ 83. 3E, 0000(segrel), 02
        jnz     Unnamed_1_2B5C                          ; 2B4E _ 75, 0C
Unnamed_1_2B50:
        mov     ax, ISORTAB3CONST                       ; 2B50 _ B8, 0000(seg)
        mov     ds, ax                                  ; 2B53 _ 8E. D8
        inc     word [_null_debug_form]                 ; 2B55 _ FF. 06, 0000(segrel)
        jmp     Unnamed_1_2BF9                          ; 2B59 _ E9, 009D

Unnamed_1_2B5C:
        mov     es, ax                                  ; 2B5C _ 8E. C0
        cmp     word [es:_of_bin+6H], 0                 ; 2B5E _ 26: 83. 3E, 0006(segrel), 00
        jnz     Unnamed_1_2B81                          ; 2B64 _ 75, 1B
        cmp     word [es:_of_bin+4H], 0                 ; 2B66 _ 26: 83. 3E, 0004(segrel), 00
        jnz     Unnamed_1_2B81                          ; 2B6C _ 75, 13
        cmp     word [es:_of_bin+2H], 0                 ; 2B6E _ 26: 83. 3E, 0002(segrel), 00
        jnz     Unnamed_1_2B81                          ; 2B74 _ 75, 0B
        cmp     word [es:_of_bin], 0                    ; 2B76 _ 26: 83. 3E, 0000(segrel), 00
        jnz     Unnamed_1_2B81                          ; 2B7C _ 75, 03
; Note: Immediate operand could be made smaller by sign extension
        jmp     Unnamed_1_2BEA                          ; 2B7E _ E9, 0069

Unnamed_1_2B81:
        mov     ax, word [es:_of_bin+6H]                ; 2B81 _ 26: A1, 0006(segrel)
        mov     dx, word [es:_of_bin+4H]                ; 2B85 _ 26: 8B. 16, 0004(segrel)
        mov     bx, word [es:_of_bin+2H]                ; 2B8A _ 26: 8B. 1E, 0002(segrel)
        mov     cx, word [es:_of_bin]                   ; 2B8F _ 26: 8B. 0E, 0000(segrel)
        cmp     ax, word [es:src_get_linnum_+6H]        ; 2B94 _ 26: 3B. 06, 0006(segrel)
        jl      Unnamed_1_2BB6                          ; 2B99 _ 7C, 1B
        jnz     Unnamed_1_2BEA                          ; 2B9B _ 75, 4D
        cmp     dx, word [es:src_get_linnum_+4H]        ; 2B9D _ 26: 3B. 16, 0004(segrel)
        jc      Unnamed_1_2BB6                          ; 2BA2 _ 72, 12
        jnz     Unnamed_1_2BEA                          ; 2BA4 _ 75, 44
        cmp     bx, word [es:src_get_linnum_+2H]        ; 2BA6 _ 26: 3B. 1E, 0002(segrel)
        jc      Unnamed_1_2BB6                          ; 2BAB _ 72, 09
        jnz     Unnamed_1_2BEA                          ; 2BAD _ 75, 3B
        cmp     cx, word [es:src_get_linnum_]           ; 2BAF _ 26: 3B. 0E, 0000(segrel)
        jnc     Unnamed_1_2BEA                          ; 2BB4 _ 73, 34
Unnamed_1_2BB6:
; Note: Prefix bit or byte has no meaning in this context
        mov     dx, ax                                  ; 2BB6 _ 26: 89. C2
        mov     bx, word [es:_of_bin+4H]                ; 2BB9 _ 26: 8B. 1E, 0004(segrel)
        mov     cx, word [es:_of_bin+2H]                ; 2BBE _ 26: 8B. 0E, 0002(segrel)
        mov     ax, word [es:_of_bin]                   ; 2BC3 _ 26: A1, 0000(segrel)
        mov     si, ds                                  ; 2BC7 _ 8C. DE
        mov     word [es:src_get_linnum_+6H], dx        ; 2BC9 _ 26: 89. 16, 0006(segrel)
        mov     word [es:src_get_linnum_+4H], bx        ; 2BCE _ 26: 89. 1E, 0004(segrel)
        mov     word [es:src_get_linnum_+2H], cx        ; 2BD3 _ 26: 89. 0E, 0002(segrel)
        mov     word [es:src_get_linnum_], ax           ; 2BD8 _ 26: A3, 0000(segrel)
        mov     ax, ds                                  ; 2BDC _ 8C. D8
        xor     ax, si                                  ; 2BDE _ 31. F0
        mov     word [_of_bin], ax                      ; 2BE0 _ A3, 0000(segrel)
        xor     ax, ax                                  ; 2BE3 _ 31. C0
        mov     word [_of_bin+2H], ax                   ; 2BE5 _ A3, 0002(segrel)
        jmp     Unnamed_1_2BF9                          ; 2BE8 _ EB, 0F

Unnamed_1_2BEA:
        mov     ax, ISORTAB3CONST                       ; 2BEA _ B8, 0000(seg)
        mov     ds, ax                                  ; 2BED _ 8E. D8
        add     word [_of_bin], 1                       ; 2BEF _ 83. 06, 0000(segrel), 01
        adc     word [_of_bin+2H], 0                    ; 2BF4 _ 83. 16, 0002(segrel), 00
Unnamed_1_2BF9:
        mov     ax, ISORTAB3CONST                       ; 2BF9 _ B8, 0000(seg)
        mov     ds, ax                                  ; 2BFC _ 8E. D8
        cmp     byte [pp_extra_stdmac_], 0              ; 2BFE _ 80. 3E, 0000(segrel), 00
        jnz     Unnamed_1_2C5A                          ; 2C03 _ 75, 55
        mov     es, ax                                  ; 2C05 _ 8E. C0
        mov     ax, word [es:_of_bin+2H]                ; 2C07 _ 26: A1, 0002(segrel)
; Note: Prefix bit or byte has no meaning in this context
        test    ax, ax                                  ; 2C0B _ 26: 85. C0
        jg      Unnamed_1_2C23                          ; 2C0E _ 7F, 13
        jnz     Unnamed_1_2C1B                          ; 2C10 _ 75, 09
        cmp     word [es:_of_bin], 997                  ; 2C12 _ 26: 81. 3E, 0000(segrel), 03E5
        ja      Unnamed_1_2C23                          ; 2C19 _ 77, 08
Unnamed_1_2C1B:
        mov     ax, word [nasm_strnicmp_]               ; 2C1B _ A1, 0000(segrel)
        cmp     ax, word [bp+58H]                       ; 2C1E _ 3B. 46, 58
        jl      Unnamed_1_2C53                          ; 2C21 _ 7C, 30
Unnamed_1_2C23:
        mov     ax, ISORTAB3CONST                       ; 2C23 _ B8, 0000(seg)
        mov     ds, ax                                  ; 2C26 _ 8E. D8
        push    word [nasm_strnicmp_]                   ; 2C28 _ FF. 36, 0000(segrel)
        push    ax                                      ; 2C2C _ 50
        mov     ax, ISORTAB3_GROUP:?_411                ; 2C2D _ B8, 1036(segrel)
        push    ax                                      ; 2C30 _ 50
        mov     ax, 1                                   ; 2C31 _ B8, 0001
        push    ax                                      ; 2C34 _ 50
        call    far time_                               ; 2C35 _ 9A, 0000 0000(far)
        add     sp, 8                                   ; 2C3A _ 83. C4, 08
        mov     ax, ISORTAB3CONST                       ; 2C3D _ B8, 0000(seg)
        push    ax                                      ; 2C40 _ 50
        mov     ax, ISORTAB3_GROUP:?_412                ; 2C41 _ B8, 1079(segrel)
        push    ax                                      ; 2C44 _ 50
        mov     ax, 1                                   ; 2C45 _ B8, 0001
        push    ax                                      ; 2C48 _ 50
        call    far time_                               ; 2C49 _ 9A, 0000 0000(far)
        add     sp, 6                                   ; 2C4E _ 83. C4, 06
        jmp     Unnamed_1_2C5A                          ; 2C51 _ EB, 07

Unnamed_1_2C53:
        inc     word [nasm_strnicmp_]                   ; 2C53 _ FF. 06, 0000(segrel)
        jmp     Unnamed_1_1B0D                          ; 2C57 _ E9, EEB3

Unnamed_1_2C5A:
        mov     ax, ISORTAB3CONST                       ; 2C5A _ B8, 0000(seg)
        mov     ds, ax                                  ; 2C5D _ 8E. D8
        lds     bx, word [cleanup_labels_]              ; 2C5F _ C5. 1E, 0000(segrel)
        xor     ax, ax                                  ; 2C63 _ 31. C0
        call    far [bx+8H]                             ; 2C65 _ FF. 5F, 08
        mov     ax, ISORTAB3CONST                       ; 2C68 _ B8, 0000(seg)
        mov     ds, ax                                  ; 2C6B _ 8E. D8
        call    far [ofmt_list_+4H]                     ; 2C6D _ FF. 1E, 0004(segrel)
        mov     ax, ISORTAB3CONST                       ; 2C71 _ B8, 0000(seg)
        mov     ds, ax                                  ; 2C74 _ 8E. D8
        cmp     byte [pp_extra_stdmac_], 0              ; 2C76 _ 80. 3E, 0000(segrel), 00
        jnz     Unnamed_1_2CA2                          ; 2C7B _ 75, 25
        cmp     word [saa_rstruct_], 0                  ; 2C7D _ 83. 3E, 0000(segrel), 00
        jz      Unnamed_1_2CA2                          ; 2C82 _ 74, 1E
        mov     ax, word [nasm_strnicmp_]               ; 2C84 _ A1, 0000(segrel)
; Note: Immediate operand could be made smaller by sign extension
        sub     ax, 3                                   ; 2C87 _ 2D, 0003
        push    ax                                      ; 2C8A _ 50
        mov     ax, ds                                  ; 2C8B _ 8C. D8
        push    ax                                      ; 2C8D _ 50
        mov     ax, ISORTAB3_GROUP:?_413                ; 2C8E _ B8, 10A7(segrel)
        push    ax                                      ; 2C91 _ 50
        mov     ax, seg _pass0                          ; 2C92 _ B8, 0000(sseg)
        push    ax                                      ; 2C95 _ 50
        mov     ax, _pass0+12H                          ; 2C96 _ B8, 0012(segrel)
        push    ax                                      ; 2C99 _ 50
        call    far tolower_init_                       ; 2C9A _ 9A, 0000 0000(far)
        add     sp, 10                                  ; 2C9F _ 83. C4, 0A
Unnamed_1_2CA2:
        lea     sp, [bp+80H]                            ; 2CA2 _ 8D. A6, 0080
        jmp     Unnamed_1_261                           ; 2CA6 _ E9, D5B8
        push    ax                                      ; 2CA9 _ 50
        mov     ax, 20                                  ; 2CAA _ B8, 0014
        call    far puts_                               ; 2CAD _ 9A, 0000 0000(far)
        pop     ax                                      ; 2CB2 _ 58
        push    si                                      ; 2CB3 _ 56
        push    di                                      ; 2CB4 _ 57
        push    bp                                      ; 2CB5 _ 55
        mov     bp, sp                                  ; 2CB6 _ 89. E5
        sub     sp, 12                                  ; 2CB8 _ 83. EC, 0C
        mov     si, ax                                  ; 2CBB _ 89. C6
        mov     word [bp-2H], dx                        ; 2CBD _ 89. 56, FE
        mov     word [bp-8H], bx                        ; 2CC0 _ 89. 5E, F8
        mov     word [bp-6H], cx                        ; 2CC3 _ 89. 4E, FA
        mov     ds, dx                                  ; 2CC6 _ 8E. DA
        mov     ax, word [si]                           ; 2CC8 _ 8B. 04
        mov     dx, word [si+2H]                        ; 2CCA _ 8B. 54, 02
        call    far nasm_strdup_                        ; 2CCD _ 9A, 0000 0000(far)
        mov     word [bp-0CH], dx                       ; 2CD2 _ 89. 56, F4
        mov     cx, ax                                  ; 2CD5 _ 89. C1
        mov     ds, dx                                  ; 2CD7 _ 8E. DA
        mov     word [bp-0AH], dx                       ; 2CD9 _ 89. 56, F6
        mov     bx, ax                                  ; 2CDC _ 89. C3
        cmp     byte [bx], 91                           ; 2CDE _ 80. 3F, 5B
        jz      Unnamed_1_2CE8                          ; 2CE1 _ 74, 05
        xor     al, al                                  ; 2CE3 _ 30. C0
        jmp     ?_012                                   ; 2CE5 _ E9, D577

Unnamed_1_2CE8:
        mov     bx, 93                                  ; 2CE8 _ BB, 005D
        call    far define_label_                       ; 2CEB _ 9A, 0000 0000(far)
        mov     di, ax                                  ; 2CF0 _ 89. C7
        mov     word [bp-4H], dx                        ; 2CF2 _ 89. 56, FC
        test    dx, dx                                  ; 2CF5 _ 85. D2
        jnz     Unnamed_1_2CFD                          ; 2CF7 _ 75, 04
        test    ax, ax                                  ; 2CF9 _ 85. C0
        jz      Unnamed_1_2CE3                          ; 2CFB _ 74, E6
Unnamed_1_2CFD:
        mov     bx, 59                                  ; 2CFD _ BB, 003B
        mov     ax, cx                                  ; 2D00 _ 89. C8
        mov     dx, word [bp-0CH]                       ; 2D02 _ 8B. 56, F4
        call    far define_label_                       ; 2D05 _ 9A, 0000 0000(far)
        mov     bx, ax                                  ; 2D0A _ 89. C3
        test    dx, dx                                  ; 2D0C _ 85. D2
        jnz     Unnamed_1_2D14                          ; 2D0E _ 75, 04
        test    ax, ax                                  ; 2D10 _ 85. C0
        jz      Unnamed_1_2D1D                          ; 2D12 _ 74, 09
Unnamed_1_2D14:
        cmp     ax, di                                  ; 2D14 _ 39. F8
        jc      Unnamed_1_2CE3                          ; 2D16 _ 72, CB
        mov     ds, dx                                  ; 2D18 _ 8E. DA
        mov     byte [bx], 0                            ; 2D1A _ C6. 07, 00
Unnamed_1_2D1D:
        mov     ds, word [bp-4H]                        ; 2D1D _ 8E. 5E, FC
        mov     byte [di], 0                            ; 2D20 _ C6. 05, 00
        lea     ax, [di-1H]                             ; 2D23 _ 8D. 45, FF
        mov     dx, ds                                  ; 2D26 _ 8C. DA
        call    far _of_bin                             ; 2D28 _ 9A, 0000 0000(far)
        mov     ax, cx                                  ; 2D2D _ 89. C8
        inc     ax                                      ; 2D2F _ 40
        mov     dx, word [bp-0AH]                       ; 2D30 _ 8B. 56, F6
        call    far nasm_strdup_                        ; 2D33 _ 9A, 0000 0000(far)
        mov     cx, ax                                  ; 2D38 _ 89. C1
        mov     bx, dx                                  ; 2D3A _ 89. D3
        call    far _of_bin                             ; 2D3C _ 9A, 0000 0000(far)
        mov     di, ax                                  ; 2D41 _ 89. C7
        test    dx, dx                                  ; 2D43 _ 85. D2
        jnz     Unnamed_1_2D4B                          ; 2D45 _ 75, 04
        test    ax, ax                                  ; 2D47 _ 85. C0
        jz      Unnamed_1_2CE3                          ; 2D49 _ 74, 98
Unnamed_1_2D4B:
        mov     ds, dx                                  ; 2D4B _ 8E. DA
        mov     byte [di], 0                            ; 2D4D _ C6. 05, 00
        mov     ds, word [bp-2H]                        ; 2D50 _ 8E. 5E, FE
        mov     word [si], cx                           ; 2D53 _ 89. 0C
        mov     word [si+2H], bx                        ; 2D55 _ 89. 5C, 02
        inc     ax                                      ; 2D58 _ 40
        call    far nasm_strdup_                        ; 2D59 _ 9A, 0000 0000(far)
        lds     bx, word [bp-8H]                        ; 2D5E _ C5. 5E, F8
        mov     word [bx], ax                           ; 2D61 _ 89. 07
        mov     word [bx+2H], dx                        ; 2D63 _ 89. 57, 02
        mov     ds, word [bp-2H]                        ; 2D66 _ 8E. 5E, FE
        mov     ax, word [si]                           ; 2D69 _ 8B. 04
        mov     dx, word [si+2H]                        ; 2D6B _ 8B. 54, 02
        call    far _of_bin                             ; 2D6E _ 9A, 0000 0000(far)
        jmp     ?_012                                   ; 2D73 _ E9, D4E9
        push    ax                                      ; 2D76 _ 50
        mov     ax, 38                                  ; 2D77 _ B8, 0026
        call    far puts_                               ; 2D7A _ 9A, 0000 0000(far)
        pop     ax                                      ; 2D7F _ 58
        push    dx                                      ; 2D80 _ 52
        push    si                                      ; 2D81 _ 56
        push    di                                      ; 2D82 _ 57
        push    bp                                      ; 2D83 _ 55
        mov     bp, sp                                  ; 2D84 _ 89. E5
        sub     sp, 8                                   ; 2D86 _ 83. EC, 08
        push    ax                                      ; 2D89 _ 50
        mov     di, bx                                  ; 2D8A _ 89. DF
        mov     si, cx                                  ; 2D8C _ 89. CE
        xor     ax, ax                                  ; 2D8E _ 31. C0
        mov     word [bp-8H], ax                        ; 2D90 _ 89. 46, F8
        mov     word [bp-6H], ax                        ; 2D93 _ 89. 46, FA
        mov     word [bp-4H], ax                        ; 2D96 _ 89. 46, FC
        mov     word [bp-2H], ax                        ; 2D99 _ 89. 46, FE
        mov     ax, word [bp-0AH]                       ; 2D9C _ 8B. 46, F6
        call    _of_bin                                 ; 2D9F _ E8, 0000(rel)
        test    al, al                                  ; 2DA2 _ 84. C0
        jnz     Unnamed_1_2E0B                          ; 2DA4 _ 75, 65
        test    byte [bp-0AH], 10H                      ; 2DA6 _ F6. 46, F6, 10
        jnz     Unnamed_1_2DBB                          ; 2DAA _ 75, 0F
        mov     cx, ss                                  ; 2DAC _ 8C. D1
        lea     bx, [bp-8H]                             ; 2DAE _ 8D. 5E, F8
        mov     dx, ss                                  ; 2DB1 _ 8C. D2
        lea     ax, [bp-4H]                             ; 2DB3 _ 8D. 46, FC
        call    far _tasm_compatible_mode               ; 2DB6 _ 9A, 0000 0000(far)
Unnamed_1_2DBB:
        cmp     word [bp-6H], 0                         ; 2DBB _ 83. 7E, FA, 00
        jnz     Unnamed_1_2DC7                          ; 2DBF _ 75, 06
        cmp     word [bp-8H], 0                         ; 2DC1 _ 83. 7E, F8, 00
        jz      Unnamed_1_2E14                          ; 2DC5 _ 74, 4D
Unnamed_1_2DC7:
        push    word [bp-2H]                            ; 2DC7 _ FF. 76, FE
        push    word [bp-4H]                            ; 2DCA _ FF. 76, FC
        push    word [bp-6H]                            ; 2DCD _ FF. 76, FA
        push    word [bp-8H]                            ; 2DD0 _ FF. 76, F8
        mov     ax, ISORTAB3CONST                       ; 2DD3 _ B8, 0000(seg)
        push    ax                                      ; 2DD6 _ 50
        mov     ax, ISORTAB3_GROUP:?_414                ; 2DD7 _ B8, 10CE(segrel)
        push    ax                                      ; 2DDA _ 50
        mov     ax, ISORTAB3CONST                       ; 2DDB _ B8, 0000(seg)
        mov     ds, ax                                  ; 2DDE _ 8E. D8
        push    word [pp_include_path_+2H]              ; 2DE0 _ FF. 36, 0002(segrel)
        push    word [pp_include_path_]                 ; 2DE4 _ FF. 36, 0000(segrel)
        call    far tolower_init_                       ; 2DE8 _ 9A, 0000 0000(far)
        add     sp, 16                                  ; 2DED _ 83. C4, 10
        mov     ax, word [bp-8H]                        ; 2DF0 _ 8B. 46, F8
        mov     dx, word [bp-6H]                        ; 2DF3 _ 8B. 56, FA
        call    far saa_init_                           ; 2DF6 _ 9A, 0000 0000(far)
        push    word [bp+0EH]                           ; 2DFB _ FF. 76, 0E
        push    word [bp+0CH]                           ; 2DFE _ FF. 76, 0C
        mov     bx, di                                  ; 2E01 _ 89. FB
        mov     cx, si                                  ; 2E03 _ 89. F1
        mov     ax, word [bp-0AH]                       ; 2E05 _ 8B. 46, F6
        call    _of_bin                                 ; 2E08 _ E8, 0000(rel)
Unnamed_1_2E0B:
        mov     sp, bp                                  ; 2E0B _ 89. EC
        pop     bp                                      ; 2E0D _ 5D
        pop     di                                      ; 2E0E _ 5F
        pop     si                                      ; 2E0F _ 5E
        pop     dx                                      ; 2E10 _ 5A
        retf    4                                       ; 2E11 _ CA, 0004

Unnamed_1_2E14:
        mov     ax, ISORTAB3CONST                       ; 2E14 _ B8, 0000(seg)
        mov     ds, ax                                  ; 2E17 _ 8E. D8
        mov     bx, word [pp_include_path_]             ; 2E19 _ 8B. 1E, 0000(segrel)
        mov     cx, word [pp_include_path_+2H]          ; 2E1D _ 8B. 0E, 0002(segrel)
        mov     ax, ISORTAB3_GROUP:?_415                ; 2E21 _ B8, 10D7(segrel)
        mov     dx, ds                                  ; 2E24 _ 8C. DA
        call    far __I8ME                              ; 2E26 _ 9A, 0000 0000(far)
        jmp     Unnamed_1_2DFB                          ; 2E2B _ EB, CE
        push    ax                                      ; 2E2D _ 50
        mov     ax, 38                                  ; 2E2E _ B8, 0026
        call    far puts_                               ; 2E31 _ 9A, 0000 0000(far)
        pop     ax                                      ; 2E36 _ 58
        push    dx                                      ; 2E37 _ 52
        push    si                                      ; 2E38 _ 56
        push    di                                      ; 2E39 _ 57
        push    bp                                      ; 2E3A _ 55
        mov     bp, sp                                  ; 2E3B _ 89. E5
        sub     sp, 8                                   ; 2E3D _ 83. EC, 08
        push    ax                                      ; 2E40 _ 50
        mov     di, bx                                  ; 2E41 _ 89. DF
        mov     si, cx                                  ; 2E43 _ 89. CE
        xor     ax, ax                                  ; 2E45 _ 31. C0
        mov     word [bp-8H], ax                        ; 2E47 _ 89. 46, F8
        mov     word [bp-6H], ax                        ; 2E4A _ 89. 46, FA
        mov     word [bp-4H], ax                        ; 2E4D _ 89. 46, FC
        mov     word [bp-2H], ax                        ; 2E50 _ 89. 46, FE
        mov     ax, word [bp-0AH]                       ; 2E53 _ 8B. 46, F6
        call    _of_bin                                 ; 2E56 _ E8, 0000(rel)
        test    al, al                                  ; 2E59 _ 84. C0
        jnz     Unnamed_1_2E0B                          ; 2E5B _ 75, AE
        test    byte [bp-0AH], 10H                      ; 2E5D _ F6. 46, F6, 10
        jnz     Unnamed_1_2E72                          ; 2E61 _ 75, 0F
        mov     cx, ss                                  ; 2E63 _ 8C. D1
        lea     bx, [bp-8H]                             ; 2E65 _ 8D. 5E, F8
        mov     dx, ss                                  ; 2E68 _ 8C. D2
        lea     ax, [bp-4H]                             ; 2E6A _ 8D. 46, FC
        call    far _tasm_compatible_mode               ; 2E6D _ 9A, 0000 0000(far)
Unnamed_1_2E72:
        cmp     word [bp-6H], 0                         ; 2E72 _ 83. 7E, FA, 00
        jnz     Unnamed_1_2E7E                          ; 2E76 _ 75, 06
        cmp     word [bp-8H], 0                         ; 2E78 _ 83. 7E, F8, 00
        jz      Unnamed_1_2E14                          ; 2E7C _ 74, 96
Unnamed_1_2E7E:
        push    word [bp-2H]                            ; 2E7E _ FF. 76, FE
        push    word [bp-4H]                            ; 2E81 _ FF. 76, FC
        push    word [bp-6H]                            ; 2E84 _ FF. 76, FA
        push    word [bp-8H]                            ; 2E87 _ FF. 76, F8
        mov     ax, ISORTAB3CONST                       ; 2E8A _ B8, 0000(seg)
        push    ax                                      ; 2E8D _ 50
        mov     ax, ISORTAB3_GROUP:?_416                ; 2E8E _ B8, 10DE(segrel)
        jmp     Unnamed_1_2DDA                          ; 2E91 _ E9, FF46
        push    ax                                      ; 2E94 _ 50
        mov     ax, 12                                  ; 2E95 _ B8, 000C
        call    far puts_                               ; 2E98 _ 9A, 0000 0000(far)
        pop     ax                                      ; 2E9D _ 58
        push    bx                                      ; 2E9E _ 53
        push    cx                                      ; 2E9F _ 51
        push    dx                                      ; 2EA0 _ 52
        push    bp                                      ; 2EA1 _ 55
        mov     bp, sp                                  ; 2EA2 _ 89. E5
        push    ax                                      ; 2EA4 _ 50
        test    byte [bp-2H], 0FH                       ; 2EA5 _ F6. 46, FE, 0F
        jnz     Unnamed_1_2EFA                          ; 2EA9 _ 75, 4F
        cwd                                             ; 2EAB _ 99
        test    dx, 0FFFFH                              ; 2EAC _ F7. C2, FFFF
        jnz     Unnamed_1_2EB7                          ; 2EB0 _ 75, 05
        test    ah, 0FFF0H                              ; 2EB2 _ F6. C4, F0
        jz      Unnamed_1_2ED2                          ; 2EB5 _ 74, 1B
Unnamed_1_2EB7:
        mov     bx, ax                                  ; 2EB7 _ 89. C3
        and     bx, 0F000H                              ; 2EB9 _ 81. E3, F000
        mov     cx, 12                                  ; 2EBD _ B9, 000C
        shr     dx, 1                                   ; 2EC0 _ D1. EA
        rcr     bx, 1                                   ; 2EC2 _ D1. DB
        loop    Unnamed_1_2EC0                          ; 2EC4 _ E2, FA
        mov     ax, ISORTAB3CONST                       ; 2EC6 _ B8, 0000(seg)
        mov     ds, ax                                  ; 2EC9 _ 8E. D8
        cmp     byte [_of_bin+bx], 0                    ; 2ECB _ 80. BF, 0000(segrel), 00
        jz      Unnamed_1_2EF6                          ; 2ED0 _ 74, 24
Unnamed_1_2ED2:
        test    byte [bp-2H], 40H                       ; 2ED2 _ F6. 46, FE, 40
        jz      Unnamed_1_2EE4                          ; 2ED6 _ 74, 0C
        mov     ax, ISORTAB3CONST                       ; 2ED8 _ B8, 0000(seg)
        mov     ds, ax                                  ; 2EDB _ 8E. D8
        cmp     word [_null_debug_form], 1              ; 2EDD _ 83. 3E, 0000(segrel), 01
        jnz     Unnamed_1_2EF6                          ; 2EE2 _ 75, 12
Unnamed_1_2EE4:
        test    byte [bp-2H], 0FF80H                    ; 2EE4 _ F6. 46, FE, 80
        jz      Unnamed_1_2EFA                          ; 2EE8 _ 74, 10
        mov     ax, ISORTAB3CONST                       ; 2EEA _ B8, 0000(seg)
        mov     ds, ax                                  ; 2EED _ 8E. D8
        cmp     word [_null_debug_form], 2              ; 2EEF _ 83. 3E, 0000(segrel), 02
        jz      Unnamed_1_2EFA                          ; 2EF4 _ 74, 04
Unnamed_1_2EF6:
        mov     al, 1                                   ; 2EF6 _ B0, 01
        jmp     Unnamed_1_2EFC                          ; 2EF8 _ EB, 02

Unnamed_1_2EFA:
        xor     al, al                                  ; 2EFA _ 30. C0
Unnamed_1_2EFC:
        mov     sp, bp                                  ; 2EFC _ 89. EC
        pop     bp                                      ; 2EFE _ 5D
        jmp     Unnamed_1_462                           ; 2EFF _ E9, D560
        push    ax                                      ; 2F02 _ 50
        mov     ax, 1050                                ; 2F03 _ B8, 041A
        call    far puts_                               ; 2F06 _ 9A, 0000 0000(far)
        pop     ax                                      ; 2F0B _ 58
        push    dx                                      ; 2F0C _ 52
        push    si                                      ; 2F0D _ 56
        push    bp                                      ; 2F0E _ 55
        mov     bp, sp                                  ; 2F0F _ 89. E5
        sub     sp, 1024                                ; 2F11 _ 81. EC, 0400
        push    ax                                      ; 2F15 _ 50
        sub     bp, 1150                                ; 2F16 _ 81. ED, 047E
        mov     ax, cx                                  ; 2F1A _ 89. C8
        mov     cx, word [bp+7CH]                       ; 2F1C _ 8B. 4E, 7C
        and     cx, 10FH                                ; 2F1F _ 81. E1, 010F
        cmp     cx, 2                                   ; 2F23 _ 83. F9, 02
        jc      Unnamed_1_2F36                          ; 2F26 _ 72, 0E
        jbe     Unnamed_1_2F49                          ; 2F28 _ 76, 1F
        cmp     cx, 8                                   ; 2F2A _ 83. F9, 08
        jz      Unnamed_1_2F53                          ; 2F2D _ 74, 24
        cmp     cx, 3                                   ; 2F2F _ 83. F9, 03
        jz      Unnamed_1_2F4E                          ; 2F32 _ 74, 1A
        jmp     Unnamed_1_2F58                          ; 2F34 _ EB, 22

Unnamed_1_2F36:
        cmp     cx, 1                                   ; 2F36 _ 83. F9, 01
        jz      Unnamed_1_2F44                          ; 2F39 _ 74, 09
        test    cx, cx                                  ; 2F3B _ 85. C9
        jnz     Unnamed_1_2F58                          ; 2F3D _ 75, 19
        mov     cx, ISORTAB3_GROUP:?_417                ; 2F3F _ B9, 10E9(segrel)
        jmp     Unnamed_1_2F5B                          ; 2F42 _ EB, 17

Unnamed_1_2F44:
        mov     cx, ISORTAB3_GROUP:?_418                ; 2F44 _ B9, 10F3(segrel)
        jmp     Unnamed_1_2F5B                          ; 2F47 _ EB, 12

Unnamed_1_2F49:
        mov     cx, ISORTAB3_GROUP:?_419                ; 2F49 _ B9, 10FB(segrel)
        jmp     Unnamed_1_2F5B                          ; 2F4C _ EB, 0D

Unnamed_1_2F4E:
        mov     cx, ISORTAB3_GROUP:?_420                ; 2F4E _ B9, 1103(segrel)
        jmp     Unnamed_1_2F5B                          ; 2F51 _ EB, 08

Unnamed_1_2F53:
        mov     cx, ISORTAB3_GROUP:?_421                ; 2F53 _ B9, 110B(segrel)
        jmp     Unnamed_1_2F5B                          ; 2F56 _ EB, 03

Unnamed_1_2F58:
        mov     cx, ISORTAB3_GROUP:?_350                ; 2F58 _ B9, 0378(segrel)
Unnamed_1_2F5B:
        mov     si, ISORTAB3CONST                       ; 2F5B _ BE, 0000(seg)
        push    word [bp+488H]                          ; 2F5E _ FF. B6, 0488
        push    word [bp+486H]                          ; 2F62 _ FF. B6, 0486
        push    ax                                      ; 2F66 _ 50
        push    bx                                      ; 2F67 _ 53
        mov     bx, 1024                                ; 2F68 _ BB, 0400
        mov     dx, ss                                  ; 2F6B _ 8C. D2
        lea     ax, [bp+7EH]                            ; 2F6D _ 8D. 46, 7E
        call    far _of_bin                             ; 2F70 _ 9A, 0000 0000(far)
        lea     dx, [bp+7EH]                            ; 2F75 _ 8D. 56, 7E
        push ss                                         ; 2F78 _ 16
        push    dx                                      ; 2F79 _ 52
        push    si                                      ; 2F7A _ 56
        push    cx                                      ; 2F7B _ 51
        mov     ax, ISORTAB3CONST                       ; 2F7C _ B8, 0000(seg)
        push    ax                                      ; 2F7F _ 50
        mov     ax, ISORTAB3_GROUP:?_422                ; 2F80 _ B8, 1113(segrel)
        push    ax                                      ; 2F83 _ 50
        mov     ax, ISORTAB3CONST                       ; 2F84 _ B8, 0000(seg)
        mov     ds, ax                                  ; 2F87 _ 8E. D8
        push    word [pp_include_path_+2H]              ; 2F89 _ FF. 36, 0002(segrel)
        push    word [pp_include_path_]                 ; 2F8D _ FF. 36, 0000(segrel)
        call    far tolower_init_                       ; 2F91 _ 9A, 0000 0000(far)
        add     sp, 16                                  ; 2F96 _ 83. C4, 10
        mov     ax, ISORTAB3CONST                       ; 2F99 _ B8, 0000(seg)
        mov     ds, ax                                  ; 2F9C _ 8E. D8
        cmp     byte [raa_read_], 0                     ; 2F9E _ 80. 3E, 0000(segrel), 00
        jz      Unnamed_1_2FB5                          ; 2FA3 _ 74, 10
        lea     dx, [bp+7EH]                            ; 2FA5 _ 8D. 56, 7E
        push ss                                         ; 2FA8 _ 16
        push    dx                                      ; 2FA9 _ 52
        mov     bx, cx                                  ; 2FAA _ 89. CB
        mov     cx, si                                  ; 2FAC _ 89. F1
        mov     ax, word [bp+7CH]                       ; 2FAE _ 8B. 46, 7C
        call    far [ofmt_list_+18H]                    ; 2FB1 _ FF. 1E, 0018(segrel)
Unnamed_1_2FB5:
        test    byte [bp+7CH], 20H                      ; 2FB5 _ F6. 46, 7C, 20
        jz      Unnamed_1_2FC5                          ; 2FB9 _ 74, 0A
        mov     ax, ISORTAB3CONST                       ; 2FBB _ B8, 0000(seg)
        mov     ds, ax                                  ; 2FBE _ 8E. D8
        mov     byte [parser_global_info_], 1           ; 2FC0 _ C6. 06, 0000(segrel), 01
Unnamed_1_2FC5:
        mov     ax, word [bp+7CH]                       ; 2FC5 _ 8B. 46, 7C
; Note: Immediate operand could be made smaller by sign extension
        and     ax, 0FH                                 ; 2FC8 _ 25, 000F
; Note: Immediate operand could be made smaller by sign extension
        cmp     ax, 2                                   ; 2FCB _ 3D, 0002
        jc      Unnamed_1_2FDE                          ; 2FCE _ 72, 0E
        jbe     Unnamed_1_3003                          ; 2FD0 _ 76, 31
; Note: Immediate operand could be made smaller by sign extension
        cmp     ax, 8                                   ; 2FD2 _ 3D, 0008
        jz      Unnamed_1_2FF8                          ; 2FD5 _ 74, 21
; Note: Immediate operand could be made smaller by sign extension
        cmp     ax, 3                                   ; 2FD7 _ 3D, 0003
        jz      Unnamed_1_3001                          ; 2FDA _ 74, 25
        jmp     Unnamed_1_2FF8                          ; 2FDC _ EB, 1A

Unnamed_1_2FDE:
; Note: Immediate operand could be made smaller by sign extension
        cmp     ax, 1                                   ; 2FDE _ 3D, 0001
        jz      Unnamed_1_2FFA                          ; 2FE1 _ 74, 17
        test    ax, ax                                  ; 2FE3 _ 85. C0
        jnz     Unnamed_1_2FF8                          ; 2FE5 _ 75, 11
        mov     ax, ISORTAB3CONST                       ; 2FE7 _ B8, 0000(seg)
        mov     ds, ax                                  ; 2FEA _ 8E. D8
        cmp     byte [_of_bin], 0                       ; 2FEC _ 80. 3E, 0000(segrel), 00
        jz      Unnamed_1_3059                          ; 2FF1 _ 74, 66
        mov     byte [pp_extra_stdmac_], 1              ; 2FF3 _ C6. 06, 0000(segrel), 01
Unnamed_1_2FF8:
        jmp     Unnamed_1_3059                          ; 2FF8 _ EB, 5F

Unnamed_1_2FFA:
        mov     ax, ISORTAB3CONST                       ; 2FFA _ B8, 0000(seg)
        mov     ds, ax                                  ; 2FFD _ 8E. D8
        jmp     Unnamed_1_2FF3                          ; 2FFF _ EB, F2

Unnamed_1_3001:
        jmp     Unnamed_1_3048                          ; 3001 _ EB, 45

Unnamed_1_3003:
        mov     ax, ISORTAB3CONST                       ; 3003 _ B8, 0000(seg)
        mov     ds, ax                                  ; 3006 _ 8E. D8
        mov     ax, word [dfmt_list_]                   ; 3008 _ A1, 0000(segrel)
        mov     dx, word [dfmt_list_+2H]                ; 300B _ 8B. 16, 0002(segrel)
        test    dx, dx                                  ; 300F _ 85. D2
        jnz     Unnamed_1_3017                          ; 3011 _ 75, 04
        test    ax, ax                                  ; 3013 _ 85. C0
        jz      Unnamed_1_3034                          ; 3015 _ 74, 1D
Unnamed_1_3017:
        call    far _nasmpp                             ; 3017 _ 9A, 0000 0000(far)
        mov     ax, dfmt_find_                          ; 301C _ B8, 0000(segrel)
        mov     dx, seg dfmt_find_                      ; 301F _ BA, 0000(sseg)
        call    far _nasm_date                          ; 3022 _ 9A, 0000 0000(far)
        mov     ax, ISORTAB3CONST                       ; 3027 _ B8, 0000(seg)
        mov     ds, ax                                  ; 302A _ 8E. D8
        xor     ax, ax                                  ; 302C _ 31. C0
        mov     word [dfmt_list_], ax                   ; 302E _ A3, 0000(segrel)
        mov     word [dfmt_list_+2H], ax                ; 3031 _ A3, 0002(segrel)
Unnamed_1_3034:
        mov     ax, ISORTAB3CONST                       ; 3034 _ B8, 0000(seg)
        mov     ds, ax                                  ; 3037 _ 8E. D8
        cmp     byte [parser_global_info_], 0           ; 3039 _ 80. 3E, 0000(segrel), 00
        jz      Unnamed_1_3043                          ; 303E _ 74, 03
        call    nasm_skip_spaces_                       ; 3040 _ E8, 0000(rel)
Unnamed_1_3043:
        mov     ax, 1                                   ; 3043 _ B8, 0001
        jmp     Unnamed_1_3054                          ; 3046 _ EB, 0C

Unnamed_1_3048:
        xor     al, al                                  ; 3048 _ 30. C0
        xor     dx, dx                                  ; 304A _ 31. D2
        call    far fgets_                              ; 304C _ 9A, 0000 0000(far)
        mov     ax, 3                                   ; 3051 _ B8, 0003
Unnamed_1_3054:
        call    far stdscan_reset_                      ; 3054 _ 9A, 0000 0000(far)
Unnamed_1_3059:
        lea     sp, [bp+47EH]                           ; 3059 _ 8D. A6, 047E
        pop     bp                                      ; 305D _ 5D
        pop     si                                      ; 305E _ 5E
        pop     dx                                      ; 305F _ 5A
        ret     4                                       ; 3060 _ C2, 0004
        mov     ax, 8                                   ; 3063 _ B8, 0008
        call    far puts_                               ; 3066 _ 9A, 0000 0000(far)
        push    bx                                      ; 306B _ 53
        push    cx                                      ; 306C _ 51
        push    dx                                      ; 306D _ 52
        mov     bx, ISORTAB3CONST                       ; 306E _ BB, 0000(seg)
        mov     ds, bx                                  ; 3071 _ 8E. DB
        mov     bx, word [pp_include_path_]             ; 3073 _ 8B. 1E, 0000(segrel)
        mov     cx, word [pp_include_path_+2H]          ; 3077 _ 8B. 0E, 0002(segrel)
        mov     ax, ISORTAB3_GROUP:?_423                ; 307B _ B8, 1119(segrel)
        mov     dx, ds                                  ; 307E _ 8C. DA
        call    far __I8ME                              ; 3080 _ 9A, 0000 0000(far)
        jmp     Unnamed_1_462                           ; 3085 _ E9, D3DA
        push    ax                                      ; 3088 _ 50
        mov     ax, 26                                  ; 3089 _ B8, 001A
        call    far puts_                               ; 308C _ 9A, 0000 0000(far)
        pop     ax                                      ; 3091 _ 58
        push    cx                                      ; 3092 _ 51
        push    si                                      ; 3093 _ 56
        push    di                                      ; 3094 _ 57
        push    bp                                      ; 3095 _ 55
        mov     bp, sp                                  ; 3096 _ 89. E5
        push    ax                                      ; 3098 _ 50
        push    ax                                      ; 3099 _ 50
        mov     di, ax                                  ; 309A _ 89. C7
        mov     si, dx                                  ; 309C _ 89. D6
        call    far find_directive_                     ; 309E _ 9A, 0000 0000(far)
        call    far _of_bin                             ; 30A3 _ 9A, 0000 0000(far)
        xor     ax, ax                                  ; 30A8 _ 31. C0
        xor     dx, dx                                  ; 30AA _ 31. D2
        call    far _of_bin                             ; 30AC _ 9A, 0000 0000(far)
        mov     ax, ISORTAB3CONST                       ; 30B1 _ B8, 0000(seg)
        mov     ds, ax                                  ; 30B4 _ 8E. D8
        mov     word [_of_bin], 1                       ; 30B6 _ C7. 06, 0000(segrel), 0001
        xor     ax, ax                                  ; 30BC _ 31. C0
        mov     word [_of_bin+2H], ax                   ; 30BE _ A3, 0002(segrel)
        mov     bx, ISORTAB3_GROUP:?_386                ; 30C1 _ BB, 0CF0(segrel)
        mov     cx, ds                                  ; 30C4 _ 8C. D9
        mov     ax, di                                  ; 30C6 _ 89. F8
        mov     dx, si                                  ; 30C8 _ 89. F2
        call    far fclose_                             ; 30CA _ 9A, 0000 0000(far)
        mov     bx, ISORTAB3CONST                       ; 30CF _ BB, 0000(seg)
        mov     ds, bx                                  ; 30D2 _ 8E. DB
        mov     word [_of_bin], ax                      ; 30D4 _ A3, 0000(segrel)
        mov     word [_of_bin+2H], dx                   ; 30D7 _ 89. 16, 0002(segrel)
        test    dx, dx                                  ; 30DB _ 85. D2
        jnz     Unnamed_1_30F6                          ; 30DD _ 75, 17
        test    ax, ax                                  ; 30DF _ 85. C0
        jnz     Unnamed_1_30F6                          ; 30E1 _ 75, 13
        push    si                                      ; 30E3 _ 56
        push    di                                      ; 30E4 _ 57
        push    bx                                      ; 30E5 _ 53
        mov     ax, ISORTAB3_GROUP:?_424                ; 30E6 _ B8, 1132(segrel)
        push    ax                                      ; 30E9 _ 50
        mov     ax, 18                                  ; 30EA _ B8, 0012
        push    ax                                      ; 30ED _ 50
        call    far time_                               ; 30EE _ 9A, 0000 0000(far)
        add     sp, 10                                  ; 30F3 _ 83. C4, 0A
Unnamed_1_30F6:
        mov     ax, ISORTAB3CONST                       ; 30F6 _ B8, 0000(seg)
        mov     ds, ax                                  ; 30F9 _ 8E. D8
        mov     ax, word [bp+0CH]                       ; 30FB _ 8B. 46, 0C
        mov     word [_of_bin], ax                      ; 30FE _ A3, 0000(segrel)
        mov     ax, word [bp+0EH]                       ; 3101 _ 8B. 46, 0E
        mov     word [_of_bin+2H], ax                   ; 3104 _ A3, 0002(segrel)
        cmp     word [bp+12H], 0                        ; 3107 _ 83. 7E, 12, 00
        jnz     Unnamed_1_3113                          ; 310B _ 75, 06
        cmp     word [bp+10H], 0                        ; 310D _ 83. 7E, 10, 00
        jz      Unnamed_1_3151                          ; 3111 _ 74, 3E
Unnamed_1_3113:
        mov     ax, di                                  ; 3113 _ 89. F8
        mov     dx, si                                  ; 3115 _ 89. F2
        call    far nasm_init_malloc_error_             ; 3117 _ 9A, 0000 0000(far)
; Note: Immediate operand could be made smaller by sign extension
        add     ax, 5                                   ; 311C _ 05, 0005
        call    far _passn                              ; 311F _ 9A, 0000 0000(far)
        mov     word [bp-4H], ax                        ; 3124 _ 89. 46, FC
        mov     word [bp-2H], dx                        ; 3127 _ 89. 56, FE
        mov     ds, dx                                  ; 312A _ 8E. DA
        mov     bx, ax                                  ; 312C _ 89. C3
        mov     word [bx], 0                            ; 312E _ C7. 07, 0000
        mov     word [bx+2H], 0                         ; 3132 _ C7. 47, 02, 0000
; Note: Immediate operand could be made smaller by sign extension
        add     ax, 4                                   ; 3137 _ 05, 0004
        mov     bx, di                                  ; 313A _ 89. FB
        mov     cx, si                                  ; 313C _ 89. F1
        call    far _of_bin                             ; 313E _ 9A, 0000 0000(far)
        lds     bx, word [bp+10H]                       ; 3143 _ C5. 5E, 10
        mov     si, word [bp-4H]                        ; 3146 _ 8B. 76, FC
        mov     word [bx], si                           ; 3149 _ 89. 37
        mov     ax, word [bp-2H]                        ; 314B _ 8B. 46, FE
        mov     word [bx+2H], ax                        ; 314E _ 89. 47, 02
Unnamed_1_3151:
        mov     sp, bp                                  ; 3151 _ 89. EC
        pop     bp                                      ; 3153 _ 5D
        pop     di                                      ; 3154 _ 5F
        pop     si                                      ; 3155 _ 5E
        pop     cx                                      ; 3156 _ 59
        retf    8                                       ; 3157 _ CA, 0008
        mov     ax, 46                                  ; 315A _ B8, 002E
        call    far puts_                               ; 315D _ 9A, 0000 0000(far)
        push    bx                                      ; 3162 _ 53
        push    cx                                      ; 3163 _ 51
        push    si                                      ; 3164 _ 56
        push    di                                      ; 3165 _ 57
        push    bp                                      ; 3166 _ 55
        mov     bp, sp                                  ; 3167 _ 89. E5
        sub     sp, 12                                  ; 3169 _ 83. EC, 0C
        mov     ax, 512                                 ; 316C _ B8, 0200
        mov     word [bp-6H], ax                        ; 316F _ 89. 46, FA
        call    far _passn                              ; 3172 _ 9A, 0000 0000(far)
        mov     si, ax                                  ; 3177 _ 89. C6
        mov     word [bp-2H], dx                        ; 3179 _ 89. 56, FE
        call    far _of_bin                             ; 317C _ 9A, 0000 0000(far)
        mov     bx, ISORTAB3CONST                       ; 3181 _ BB, 0000(seg)
        mov     ds, bx                                  ; 3184 _ 8E. DB
        add     ax, word [_of_bin]                      ; 3186 _ 03. 06, 0000(segrel)
        adc     dx, word [_of_bin+2H]                   ; 318A _ 13. 16, 0002(segrel)
        call    far _of_bin                             ; 318E _ 9A, 0000 0000(far)
        mov     di, si                                  ; 3193 _ 89. F7
        mov     ax, word [bp-2H]                        ; 3195 _ 8B. 46, FE
        mov     word [bp-4H], ax                        ; 3198 _ 89. 46, FC
        mov     ax, ISORTAB3CONST                       ; 319B _ B8, 0000(seg)
        mov     ds, ax                                  ; 319E _ 8E. D8
        push    word [_of_bin+2H]                       ; 31A0 _ FF. 36, 0002(segrel)
        push    word [_of_bin]                          ; 31A4 _ FF. 36, 0000(segrel)
        mov     bx, di                                  ; 31A8 _ 89. FB
        sub     bx, si                                  ; 31AA _ 29. F3
        mov     ax, word [bp-6H]                        ; 31AC _ 8B. 46, FA
        sub     ax, bx                                  ; 31AF _ 29. D8
        mov     bx, ax                                  ; 31B1 _ 89. C3
        mov     ax, di                                  ; 31B3 _ 89. F8
        mov     dx, word [bp-4H]                        ; 31B5 _ 8B. 56, FC
        call    far insn_size_                          ; 31B8 _ 9A, 0000 0000(far)
        mov     cx, ax                                  ; 31BD _ 89. C1
        mov     bx, dx                                  ; 31BF _ 89. D3
        test    dx, dx                                  ; 31C1 _ 85. D2
        jnz     Unnamed_1_31C9                          ; 31C3 _ 75, 04
        test    ax, ax                                  ; 31C5 _ 85. C0
        jz      Unnamed_1_320F                          ; 31C7 _ 74, 46
Unnamed_1_31C9:
        mov     ax, di                                  ; 31C9 _ 89. F8
        mov     dx, word [bp-4H]                        ; 31CB _ 8B. 56, FC
        call    far nasm_init_malloc_error_             ; 31CE _ 9A, 0000 0000(far)
        add     di, ax                                  ; 31D3 _ 01. C7
        cmp     di, si                                  ; 31D5 _ 39. F7
        jbe     Unnamed_1_31E2                          ; 31D7 _ 76, 09
        mov     ds, word [bp-4H]                        ; 31D9 _ 8E. 5E, FC
        cmp     byte [di-1H], 10                        ; 31DC _ 80. 7D, FF, 0A
        jz      Unnamed_1_320F                          ; 31E0 _ 74, 2D
Unnamed_1_31E2:
        mov     cx, di                                  ; 31E2 _ 89. F9
        sub     cx, si                                  ; 31E4 _ 29. F1
        mov     ax, word [bp-6H]                        ; 31E6 _ 8B. 46, FA
; Note: Immediate operand could be made smaller by sign extension
        sub     ax, 10                                  ; 31E9 _ 2D, 000A
        cmp     cx, ax                                  ; 31EC _ 39. C1
        jle     Unnamed_1_319B                          ; 31EE _ 7E, AB
        add     byte [bp-5H], 2                         ; 31F0 _ 80. 46, FB, 02
        mov     bx, word [bp-6H]                        ; 31F4 _ 8B. 5E, FA
        mov     ax, si                                  ; 31F7 _ 89. F0
        mov     dx, word [bp-2H]                        ; 31F9 _ 8B. 56, FE
        call    far __I8LS                              ; 31FC _ 9A, 0000 0000(far)
        mov     si, ax                                  ; 3201 _ 89. C6
        mov     word [bp-2H], dx                        ; 3203 _ 89. 56, FE
        mov     word [bp-4H], dx                        ; 3206 _ 89. 56, FC
        mov     di, ax                                  ; 3209 _ 89. C7
        add     di, cx                                  ; 320B _ 01. CF
        jmp     Unnamed_1_319B                          ; 320D _ EB, 8C

Unnamed_1_320F:
        test    bx, bx                                  ; 320F _ 85. DB
        jnz     Unnamed_1_3234                          ; 3211 _ 75, 21
        test    cx, cx                                  ; 3213 _ 85. C9
        jnz     Unnamed_1_3234                          ; 3215 _ 75, 1D
        mov     ax, word [bp-4H]                        ; 3217 _ 8B. 46, FC
        cmp     ax, word [bp-2H]                        ; 321A _ 3B. 46, FE
        jnz     Unnamed_1_3234                          ; 321D _ 75, 15
        cmp     di, si                                  ; 321F _ 39. F7
        jnz     Unnamed_1_3234                          ; 3221 _ 75, 11
        mov     ax, si                                  ; 3223 _ 89. F0
        mov     dx, word [bp-2H]                        ; 3225 _ 8B. 56, FE
        call    far saa_init_                           ; 3228 _ 9A, 0000 0000(far)
        xor     ax, ax                                  ; 322D _ 31. C0
        xor     dx, dx                                  ; 322F _ 31. D2
        jmp     Unnamed_1_32E9                          ; 3231 _ E9, 00B5

Unnamed_1_3234:
        mov     bx, ISORTAB3_GROUP:?_385                ; 3234 _ BB, 0CEC(segrel)
        mov     cx, ISORTAB3CONST                       ; 3237 _ B9, 0000(seg)
        mov     ax, si                                  ; 323A _ 89. F0
        mov     dx, word [bp-2H]                        ; 323C _ 8B. 56, FE
        call    far raa_write_                          ; 323F _ 9A, 0000 0000(far)
        mov     ds, word [bp-2H]                        ; 3244 _ 8E. 5E, FE
        mov     bx, si                                  ; 3247 _ 89. F3
        add     bx, ax                                  ; 3249 _ 01. C3
        mov     byte [bx], 0                            ; 324B _ C6. 07, 00
        mov     ax, 5                                   ; 324E _ B8, 0005
        push    ax                                      ; 3251 _ 50
        mov     bx, ISORTAB3_GROUP:?_425                ; 3252 _ BB, 1151(segrel)
        mov     cx, ISORTAB3CONST                       ; 3255 _ B9, 0000(seg)
        mov     ax, si                                  ; 3258 _ 89. F0
        mov     dx, ds                                  ; 325A _ 8C. DA
        call    far _of_bin                             ; 325C _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 3261 _ 85. C0
        jnz     Unnamed_1_32D1                          ; 3263 _ 75, 6C
        mov     ax, si                                  ; 3265 _ 89. F0
        mov     dx, word [bp-2H]                        ; 3267 _ 8B. 56, FE
        call    far nasm_init_malloc_error_             ; 326A _ 9A, 0000 0000(far)
        call    far _passn                              ; 326F _ 9A, 0000 0000(far)
        mov     bx, ax                                  ; 3274 _ 89. C3
        push    dx                                      ; 3276 _ 52
        push    ax                                      ; 3277 _ 50
        lea     cx, [bp-8H]                             ; 3278 _ 8D. 4E, F8
        push ss                                         ; 327B _ 16
        push    cx                                      ; 327C _ 51
        lea     cx, [bp-0CH]                            ; 327D _ 8D. 4E, F4
        push ss                                         ; 3280 _ 16
        push    cx                                      ; 3281 _ 51
        mov     ax, ISORTAB3CONST                       ; 3282 _ B8, 0000(seg)
        push    ax                                      ; 3285 _ 50
        mov     ax, ISORTAB3_GROUP:?_426                ; 3286 _ B8, 1157(segrel)
        push    ax                                      ; 3289 _ 50
        lea     ax, [si+5H]                             ; 328A _ 8D. 44, 05
        push    word [bp-2H]                            ; 328D _ FF. 76, FE
        push    ax                                      ; 3290 _ 50
        call    far _of_bin                             ; 3291 _ 9A, 0000 0000(far)
        add     sp, 20                                  ; 3296 _ 83. C4, 14
; Note: Immediate operand could be made smaller by sign extension
        cmp     ax, 3                                   ; 3299 _ 3D, 0003
        jz      Unnamed_1_32A7                          ; 329C _ 74, 09
        mov     ax, bx                                  ; 329E _ 89. D8
        call    far saa_init_                           ; 32A0 _ 9A, 0000 0000(far)
        jmp     Unnamed_1_32D1                          ; 32A5 _ EB, 2A

Unnamed_1_32A7:
        mov     ax, bx                                  ; 32A7 _ 89. D8
        call    far _of_bin                             ; 32A9 _ 9A, 0000 0000(far)
        call    far saa_init_                           ; 32AE _ 9A, 0000 0000(far)
        mov     ax, word [bp-0CH]                       ; 32B3 _ 8B. 46, F4
        mov     dx, word [bp-0AH]                       ; 32B6 _ 8B. 56, F6
        call    far _of_bin                             ; 32B9 _ 9A, 0000 0000(far)
        mov     ax, ISORTAB3CONST                       ; 32BE _ B8, 0000(seg)
        mov     ds, ax                                  ; 32C1 _ 8E. D8
        mov     ax, word [bp-8H]                        ; 32C3 _ 8B. 46, F8
        cwd                                             ; 32C6 _ 99
        mov     word [_of_bin], ax                      ; 32C7 _ A3, 0000(segrel)
        mov     word [_of_bin+2H], dx                   ; 32CA _ 89. 16, 0002(segrel)
        jmp     Unnamed_1_3193                          ; 32CE _ E9, FEC2

Unnamed_1_32D1:
        mov     ax, ISORTAB3CONST                       ; 32D1 _ B8, 0000(seg)
        mov     ds, ax                                  ; 32D4 _ 8E. D8
        lds     di, word [_of_bin]                      ; 32D6 _ C5. 3E, 0000(segrel)
        mov     bx, si                                  ; 32DA _ 89. F3
        mov     cx, word [bp-2H]                        ; 32DC _ 8B. 4E, FE
        xor     ax, ax                                  ; 32DF _ 31. C0
        call    far [di+0CH]                            ; 32E1 _ FF. 5D, 0C
        mov     ax, si                                  ; 32E4 _ 89. F0
        mov     dx, word [bp-2H]                        ; 32E6 _ 8B. 56, FE
Unnamed_1_32E9:
        mov     sp, bp                                  ; 32E9 _ 89. EC
        pop     bp                                      ; 32EB _ 5D
        pop     di                                      ; 32EC _ 5F
        pop     si                                      ; 32ED _ 5E
        pop     cx                                      ; 32EE _ 59
        pop     bx                                      ; 32EF _ 5B
        retf                                            ; 32F0 _ CB
        push    ax                                      ; 32F1 _ 50
        mov     ax, 6                                   ; 32F2 _ B8, 0006
        call    far puts_                               ; 32F5 _ 9A, 0000 0000(far)
        pop     ax                                      ; 32FA _ 58
        push    dx                                      ; 32FB _ 52
        mov     ax, ISORTAB3CONST                       ; 32FC _ B8, 0000(seg)
        mov     ds, ax                                  ; 32FF _ 8E. D8
        mov     ax, word [_of_bin]                      ; 3301 _ A1, 0000(segrel)
        mov     dx, word [_of_bin+2H]                   ; 3304 _ 8B. 16, 0002(segrel)
        call    far _nasmpp                             ; 3308 _ 9A, 0000 0000(far)
        pop     dx                                      ; 330D _ 5A
        retf                                            ; 330E _ CB
        push    ax                                      ; 330F _ 50
        mov     ax, 16                                  ; 3310 _ B8, 0010
        call    far puts_                               ; 3313 _ 9A, 0000 0000(far)
        pop     ax                                      ; 3318 _ 58
        push    bx                                      ; 3319 _ 53
        push    cx                                      ; 331A _ 51
        push    si                                      ; 331B _ 56
        push    di                                      ; 331C _ 57
        mov     di, ax                                  ; 331D _ 89. C7
        mov     si, dx                                  ; 331F _ 89. D6
        mov     bx, ISORTAB3_GROUP:?_427                ; 3321 _ BB, 1161(segrel)
        mov     cx, ISORTAB3CONST                       ; 3324 _ B9, 0000(seg)
        call    far nasm_free_                          ; 3327 _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 332C _ 85. C0
        jnz     Unnamed_1_3335                          ; 332E _ 75, 05
        xor     dx, dx                                  ; 3330 _ 31. D2
        jmp     Unnamed_1_66B                           ; 3332 _ E9, D336

Unnamed_1_3335:
        mov     bx, ISORTAB3_GROUP:?_428                ; 3335 _ BB, 1166(segrel)
        mov     cx, ISORTAB3CONST                       ; 3338 _ B9, 0000(seg)
        mov     ax, di                                  ; 333B _ 89. F8
        mov     dx, si                                  ; 333D _ 89. F2
        call    far nasm_free_                          ; 333F _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 3344 _ 85. C0
        jnz     Unnamed_1_334E                          ; 3346 _ 75, 06
        mov     dx, 256                                 ; 3348 _ BA, 0100
        jmp     Unnamed_1_66B                           ; 334B _ E9, D31D

Unnamed_1_334E:
        mov     bx, ISORTAB3_GROUP:?_429                ; 334E _ BB, 116A(segrel)
        mov     cx, ISORTAB3CONST                       ; 3351 _ B9, 0000(seg)
        mov     ax, di                                  ; 3354 _ 89. F8
        mov     dx, si                                  ; 3356 _ 89. F2
        call    far nasm_free_                          ; 3358 _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 335D _ 85. C0
        jnz     Unnamed_1_3367                          ; 335F _ 75, 06
        mov     dx, 512                                 ; 3361 _ BA, 0200
        jmp     Unnamed_1_66B                           ; 3364 _ E9, D304

Unnamed_1_3367:
        mov     bx, ISORTAB3_GROUP:?_430                ; 3367 _ BB, 116E(segrel)
        mov     cx, ISORTAB3CONST                       ; 336A _ B9, 0000(seg)
        mov     ax, di                                  ; 336D _ 89. F8
        mov     dx, si                                  ; 336F _ 89. F2
        call    far nasm_free_                          ; 3371 _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 3376 _ 85. C0
        jnz     Unnamed_1_3380                          ; 3378 _ 75, 06
        mov     dx, 768                                 ; 337A _ BA, 0300
        jmp     Unnamed_1_66B                           ; 337D _ E9, D2EB

Unnamed_1_3380:
        mov     bx, ISORTAB3_GROUP:?_431                ; 3380 _ BB, 1172(segrel)
        mov     cx, ISORTAB3CONST                       ; 3383 _ B9, 0000(seg)
        mov     ax, di                                  ; 3386 _ 89. F8
        mov     dx, si                                  ; 3388 _ 89. F2
        call    far nasm_free_                          ; 338A _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 338F _ 85. C0
        jnz     Unnamed_1_3399                          ; 3391 _ 75, 06
        mov     dx, 1024                                ; 3393 _ BA, 0400
        jmp     Unnamed_1_66B                           ; 3396 _ E9, D2D2

Unnamed_1_3399:
        mov     bx, ISORTAB3_GROUP:?_432                ; 3399 _ BB, 1176(segrel)
        mov     cx, ISORTAB3CONST                       ; 339C _ B9, 0000(seg)
        mov     ax, di                                  ; 339F _ 89. F8
        mov     dx, si                                  ; 33A1 _ 89. F2
        call    far nasm_free_                          ; 33A3 _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 33A8 _ 85. C0
        jz      Unnamed_1_33BF                          ; 33AA _ 74, 13
        mov     bx, ISORTAB3_GROUP:?_433                ; 33AC _ BB, 117A(segrel)
        mov     cx, ISORTAB3CONST                       ; 33AF _ B9, 0000(seg)
        mov     ax, di                                  ; 33B2 _ 89. F8
        mov     dx, si                                  ; 33B4 _ 89. F2
        call    far declare_as_global_                  ; 33B6 _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 33BB _ 85. C0
        jnz     Unnamed_1_33C7                          ; 33BD _ 75, 08
Unnamed_1_33BF:
        xor     ax, ax                                  ; 33BF _ 31. C0
        mov     dx, 1280                                ; 33C1 _ BA, 0500
        jmp     Unnamed_1_66B                           ; 33C4 _ E9, D2A4

Unnamed_1_33C7:
        mov     bx, ISORTAB3_GROUP:?_434                ; 33C7 _ BB, 1182(segrel)
        mov     cx, ISORTAB3CONST                       ; 33CA _ B9, 0000(seg)
        mov     ax, di                                  ; 33CD _ 89. F8
        mov     dx, si                                  ; 33CF _ 89. F2
        call    far nasm_free_                          ; 33D1 _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 33D6 _ 85. C0
        jz      Unnamed_1_3413                          ; 33D8 _ 74, 39
        mov     bx, ISORTAB3_GROUP:?_435                ; 33DA _ BB, 1186(segrel)
        mov     cx, ISORTAB3CONST                       ; 33DD _ B9, 0000(seg)
        mov     ax, di                                  ; 33E0 _ 89. F8
        mov     dx, si                                  ; 33E2 _ 89. F2
        call    far declare_as_global_                  ; 33E4 _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 33E9 _ 85. C0
        jz      Unnamed_1_3413                          ; 33EB _ 74, 26
        mov     bx, ISORTAB3_GROUP:?_436                ; 33ED _ BB, 118B(segrel)
        mov     cx, ISORTAB3CONST                       ; 33F0 _ B9, 0000(seg)
        mov     ax, di                                  ; 33F3 _ 89. F8
        mov     dx, si                                  ; 33F5 _ 89. F2
        call    far declare_as_global_                  ; 33F7 _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 33FC _ 85. C0
        jz      Unnamed_1_3413                          ; 33FE _ 74, 13
        mov     bx, ISORTAB3_GROUP:?_437                ; 3400 _ BB, 1196(segrel)
        mov     cx, ISORTAB3CONST                       ; 3403 _ B9, 0000(seg)
        mov     ax, di                                  ; 3406 _ 89. F8
        mov     dx, si                                  ; 3408 _ 89. F2
        call    far declare_as_global_                  ; 340A _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 340F _ 85. C0
        jnz     Unnamed_1_341B                          ; 3411 _ 75, 08
Unnamed_1_3413:
        xor     ax, ax                                  ; 3413 _ 31. C0
        mov     dx, 1536                                ; 3415 _ BA, 0600
        jmp     Unnamed_1_66B                           ; 3418 _ E9, D250

Unnamed_1_341B:
        mov     bx, ISORTAB3_GROUP:?_438                ; 341B _ BB, 1199(segrel)
        mov     cx, ISORTAB3CONST                       ; 341E _ B9, 0000(seg)
        mov     ax, di                                  ; 3421 _ 89. F8
        mov     dx, si                                  ; 3423 _ 89. F2
        call    far declare_as_global_                  ; 3425 _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 342A _ 85. C0
        jz      Unnamed_1_3441                          ; 342C _ 74, 13
        mov     bx, ISORTAB3_GROUP:?_439                ; 342E _ BB, 119C(segrel)
        mov     cx, ISORTAB3CONST                       ; 3431 _ B9, 0000(seg)
        mov     ax, di                                  ; 3434 _ 89. F8
        mov     dx, si                                  ; 3436 _ 89. F2
        call    far declare_as_global_                  ; 3438 _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 343D _ 85. C0
        jnz     Unnamed_1_3449                          ; 343F _ 75, 08
Unnamed_1_3441:
        xor     ax, ax                                  ; 3441 _ 31. C0
        mov     dx, 1792                                ; 3443 _ BA, 0700
        jmp     Unnamed_1_66B                           ; 3446 _ E9, D222

Unnamed_1_3449:
        mov     bx, ISORTAB3_GROUP:?_440                ; 3449 _ BB, 11A3(segrel)
        mov     cx, ISORTAB3CONST                       ; 344C _ B9, 0000(seg)
        mov     ax, di                                  ; 344F _ 89. F8
        mov     dx, si                                  ; 3451 _ 89. F2
        call    far declare_as_global_                  ; 3453 _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 3458 _ 85. C0
        jz      Unnamed_1_346F                          ; 345A _ 74, 13
        mov     bx, ISORTAB3_GROUP:?_441                ; 345C _ BB, 11A6(segrel)
        mov     cx, ISORTAB3CONST                       ; 345F _ B9, 0000(seg)
        mov     ax, di                                  ; 3462 _ 89. F8
        mov     dx, si                                  ; 3464 _ 89. F2
        call    far declare_as_global_                  ; 3466 _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 346B _ 85. C0
        jnz     Unnamed_1_3477                          ; 346D _ 75, 08
Unnamed_1_346F:
        xor     ax, ax                                  ; 346F _ 31. C0
        mov     dx, 2048                                ; 3471 _ BA, 0800
        jmp     Unnamed_1_66B                           ; 3474 _ E9, D1F4

Unnamed_1_3477:
        mov     bx, ISORTAB3_GROUP:?_442                ; 3477 _ BB, 11B1(segrel)
        mov     cx, ISORTAB3CONST                       ; 347A _ B9, 0000(seg)
        mov     ax, di                                  ; 347D _ 89. F8
        mov     dx, si                                  ; 347F _ 89. F2
        call    far declare_as_global_                  ; 3481 _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 3486 _ 85. C0
        jnz     Unnamed_1_3490                          ; 3488 _ 75, 06
        mov     dx, 2304                                ; 348A _ BA, 0900
        jmp     Unnamed_1_66B                           ; 348D _ E9, D1DB

Unnamed_1_3490:
        mov     bx, ISORTAB3_GROUP:?_443                ; 3490 _ BB, 11BA(segrel)
        mov     cx, ISORTAB3CONST                       ; 3493 _ B9, 0000(seg)
        mov     ax, di                                  ; 3496 _ 89. F8
        mov     dx, si                                  ; 3498 _ 89. F2
        call    far declare_as_global_                  ; 349A _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 349F _ 85. C0
        jz      Unnamed_1_34B6                          ; 34A1 _ 74, 13
        mov     bx, ISORTAB3_GROUP:?_444                ; 34A3 _ BB, 11BE(segrel)
        mov     cx, ISORTAB3CONST                       ; 34A6 _ B9, 0000(seg)
        mov     ax, di                                  ; 34A9 _ 89. F8
        mov     dx, si                                  ; 34AB _ 89. F2
        call    far declare_as_global_                  ; 34AD _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 34B2 _ 85. C0
        jnz     Unnamed_1_34BE                          ; 34B4 _ 75, 08
Unnamed_1_34B6:
        xor     ax, ax                                  ; 34B6 _ 31. C0
        mov     dx, 2560                                ; 34B8 _ BA, 0A00
        jmp     Unnamed_1_66B                           ; 34BB _ E9, D1AD

Unnamed_1_34BE:
        mov     bx, ISORTAB3_GROUP:?_445                ; 34BE _ BB, 11C5(segrel)
        mov     cx, ISORTAB3CONST                       ; 34C1 _ B9, 0000(seg)
        mov     ax, di                                  ; 34C4 _ 89. F8
        mov     dx, si                                  ; 34C6 _ 89. F2
        call    far declare_as_global_                  ; 34C8 _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 34CD _ 85. C0
        jz      Unnamed_1_3536                          ; 34CF _ 74, 65
        mov     bx, ISORTAB3_GROUP:?_446                ; 34D1 _ BB, 11CA(segrel)
        mov     cx, ISORTAB3CONST                       ; 34D4 _ B9, 0000(seg)
        mov     ax, di                                  ; 34D7 _ 89. F8
        mov     dx, si                                  ; 34D9 _ 89. F2
        call    far declare_as_global_                  ; 34DB _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 34E0 _ 85. C0
        jz      Unnamed_1_3544                          ; 34E2 _ 74, 60
        mov     bx, ISORTAB3_GROUP:?_447                ; 34E4 _ BB, 11D0(segrel)
        mov     cx, ISORTAB3CONST                       ; 34E7 _ B9, 0000(seg)
        mov     ax, di                                  ; 34EA _ 89. F8
        mov     dx, si                                  ; 34EC _ 89. F2
        call    far declare_as_global_                  ; 34EE _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 34F3 _ 85. C0
        jz      Unnamed_1_3544                          ; 34F5 _ 74, 4D
        mov     bx, ISORTAB3_GROUP:?_448                ; 34F7 _ BB, 11D8(segrel)
        mov     cx, ISORTAB3CONST                       ; 34FA _ B9, 0000(seg)
        mov     ax, di                                  ; 34FD _ 89. F8
        mov     dx, si                                  ; 34FF _ 89. F2
        call    far declare_as_global_                  ; 3501 _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 3506 _ 85. C0
        jz      Unnamed_1_3544                          ; 3508 _ 74, 3A
        mov     bx, ISORTAB3_GROUP:?_449                ; 350A _ BB, 11DF(segrel)
        mov     cx, ISORTAB3CONST                       ; 350D _ B9, 0000(seg)
        mov     ax, di                                  ; 3510 _ 89. F8
        mov     dx, si                                  ; 3512 _ 89. F2
        call    far declare_as_global_                  ; 3514 _ 9A, 0000 0000(far)
        test    ax, ax                                  ; 3519 _ 85. C0
        jz      Unnamed_1_3544                          ; 351B _ 74, 27
        mov     ax, ISORTAB3CONST                       ; 351D _ B8, 0000(seg)
        push    ax                                      ; 3520 _ 50
        mov     ax, ISORTAB3_GROUP:?_450                ; 3521 _ B8, 11E6(segrel)
        push    ax                                      ; 3524 _ 50
        mov     ax, ISORTAB3CONST                       ; 3525 _ B8, 0000(seg)
        mov     ds, ax                                  ; 3528 _ 8E. D8
        cmp     word [_null_debug_form], 2              ; 352A _ 83. 3E, 0000(segrel), 02
        jge     Unnamed_1_3538                          ; 352F _ 7D, 07
        mov     ax, 1                                   ; 3531 _ B8, 0001
        jmp     Unnamed_1_353B                          ; 3534 _ EB, 05

Unnamed_1_3536:
        jmp     Unnamed_1_3544                          ; 3536 _ EB, 0C

Unnamed_1_3538:
        mov     ax, 2                                   ; 3538 _ B8, 0002
Unnamed_1_353B:
        push    ax                                      ; 353B _ 50
        call    far time_                               ; 353C _ 9A, 0000 0000(far)
        add     sp, 6                                   ; 3541 _ 83. C4, 06
Unnamed_1_3544:
        xor     ax, ax                                  ; 3544 _ 31. C0
        mov     dx, 3840                                ; 3546 _ BA, 0F00
        jmp     Unnamed_1_66B                           ; 3549 _ E9, D11F
        push    ax                                      ; 354C _ 50
        mov     ax, 16                                  ; 354D _ B8, 0010
        call    far puts_                               ; 3550 _ 9A, 0000 0000(far)
        pop     ax                                      ; 3555 _ 58
        push    bx                                      ; 3556 _ 53
        push    cx                                      ; 3557 _ 51
        mov     cx, ax                                  ; 3558 _ 89. C1
        mov     bx, dx                                  ; 355A _ 89. D3
        call    far _of_bin                             ; 355C _ 9A, 0000 0000(far)
        mov     dx, ax                                  ; 3561 _ 89. C2
; Note: Immediate operand could be made smaller by sign extension
        cmp     ax, 16                                  ; 3563 _ 3D, 0010
        jz      Unnamed_1_3590                          ; 3566 _ 74, 28
; Note: Immediate operand could be made smaller by sign extension
        cmp     ax, 32                                  ; 3568 _ 3D, 0020
        jnz     Unnamed_1_3593                          ; 356B _ 75, 26
        mov     ax, ISORTAB3CONST                       ; 356D _ B8, 0000(seg)
        mov     ds, ax                                  ; 3570 _ 8E. D8
        mov     ax, word [__argc+2H]                    ; 3572 _ A1, 0002(segrel)
        cmp     ax, 768                                 ; 3575 _ 3D, 0300
        jnc     Unnamed_1_35E3                          ; 3578 _ 73, 69
        mov     ax, ds                                  ; 357A _ 8C. D8
        push    ax                                      ; 357C _ 50
        mov     ax, ISORTAB3_GROUP:?_451                ; 357D _ B8, 11F9(segrel)
        push    ax                                      ; 3580 _ 50
        mov     ax, 1                                   ; 3581 _ B8, 0001
        push    ax                                      ; 3584 _ 50
        call    far time_                               ; 3585 _ 9A, 0000 0000(far)
        add     sp, 6                                   ; 358A _ 83. C4, 06
; Note: Immediate operand could be made smaller by sign extension
        jmp     Unnamed_1_360C                          ; 358D _ E9, 007C

Unnamed_1_3590:
        pop     cx                                      ; 3590 _ 59
        pop     bx                                      ; 3591 _ 5B
        ret                                             ; 3592 _ C3

Unnamed_1_3593:
; Note: Immediate operand could be made smaller by sign extension
        cmp     ax, 64                                  ; 3593 _ 3D, 0040
        jnz     Unnamed_1_35E5                          ; 3596 _ 75, 4D
        mov     ax, ISORTAB3CONST                       ; 3598 _ B8, 0000(seg)
        mov     ds, ax                                  ; 359B _ 8E. D8
        mov     ax, word [__argc+2H]                    ; 359D _ A1, 0002(segrel)
        cmp     ax, 2560                                ; 35A0 _ 3D, 0A00
        jnc     Unnamed_1_35BB                          ; 35A3 _ 73, 16
        mov     ax, ds                                  ; 35A5 _ 8C. D8
        push    ax                                      ; 35A7 _ 50
        mov     ax, ISORTAB3_GROUP:?_452                ; 35A8 _ B8, 1230(segrel)
        push    ax                                      ; 35AB _ 50
        mov     ax, 1                                   ; 35AC _ B8, 0001
        push    ax                                      ; 35AF _ 50
        call    far time_                               ; 35B0 _ 9A, 0000 0000(far)
        add     sp, 6                                   ; 35B5 _ 83. C4, 06
        mov     dx, 16                                  ; 35B8 _ BA, 0010
Unnamed_1_35BB:
        mov     ax, ISORTAB3CONST                       ; 35BB _ B8, 0000(seg)
        mov     ds, ax                                  ; 35BE _ 8E. D8
        cmp     dx, word [_of_bin]                      ; 35C0 _ 3B. 16, 0000(segrel)
        jz      Unnamed_1_360F                          ; 35C4 _ 74, 49
        lds     bx, word [fprintf_]                     ; 35C6 _ C5. 1E, 0000(segrel)
        push    word [bx+6H]                            ; 35CA _ FF. 77, 06
        push    word [bx+4H]                            ; 35CD _ FF. 77, 04
        push    ax                                      ; 35D0 _ 50
        mov     ax, ISORTAB3_GROUP:?_453                ; 35D1 _ B8, 126B(segrel)
        push    ax                                      ; 35D4 _ 50
        mov     ax, 1                                   ; 35D5 _ B8, 0001
        push    ax                                      ; 35D8 _ 50
        call    far time_                               ; 35D9 _ 9A, 0000 0000(far)
        add     sp, 10                                  ; 35DE _ 83. C4, 0A
        jmp     Unnamed_1_360C                          ; 35E1 _ EB, 29

Unnamed_1_35E3:
        jmp     Unnamed_1_360F                          ; 35E3 _ EB, 2A

Unnamed_1_35E5:
        push    bx                                      ; 35E5 _ 53
        push    cx                                      ; 35E6 _ 51
        mov     ax, ISORTAB3CONST                       ; 35E7 _ B8, 0000(seg)
        push    ax                                      ; 35EA _ 50
        mov     ax, ISORTAB3_GROUP:?_454                ; 35EB _ B8, 1299(segrel)
        push    ax                                      ; 35EE _ 50
        mov     ax, ISORTAB3CONST                       ; 35EF _ B8, 0000(seg)
        mov     ds, ax                                  ; 35F2 _ 8E. D8
        cmp     word [_null_debug_form], 2              ; 35F4 _ 83. 3E, 0000(segrel), 02
        jge     Unnamed_1_3600                          ; 35F9 _ 7D, 05
        mov     ax, 1                                   ; 35FB _ B8, 0001
        jmp     Unnamed_1_3603                          ; 35FE _ EB, 03

Unnamed_1_3600:
        mov     ax, 2                                   ; 3600 _ B8, 0002
Unnamed_1_3603:
        push    ax                                      ; 3603 _ 50
        call    far time_                               ; 3604 _ 9A, 0000 0000(far)
        add     sp, 10                                  ; 3609 _ 83. C4, 0A
Unnamed_1_360C:
        mov     dx, 16                                  ; 360C _ BA, 0010
Unnamed_1_360F:
        mov     ax, dx                                  ; 360F _ 89. D0
        pop     cx                                      ; 3611 _ 59
        pop     bx                                      ; 3612 _ 5B
        ret                                             ; 3613 _ C3


SECTION ISORTAB3CONST align=2 noexecute                 ; section number 2, data

?_305:                                                  ; byte
        db 65H, 72H, 72H, 6FH, 72H, 00H                 ; 0000 _ error.

?_306:                                                  ; byte
        db 74H, 72H, 65H, 61H, 74H, 20H, 77H, 61H       ; 0006 _ treat wa
        db 72H, 6EH, 69H, 6EH, 67H, 73H, 20H, 61H       ; 000E _ rnings a
        db 73H, 20H, 65H, 72H, 72H, 6FH, 72H, 73H       ; 0016 _ s errors
        db 00H                                          ; 001E _ .

?_307:                                                  ; byte
        db 6DH, 61H, 63H, 72H, 6FH, 2DH, 70H, 61H       ; 001F _ macro-pa
        db 72H, 61H, 6DH, 73H, 00H                      ; 0027 _ rams.

?_308:                                                  ; byte
        db 6DH, 61H, 63H, 72H, 6FH, 20H, 63H, 61H       ; 002C _ macro ca
        db 6CH, 6CH, 73H, 20H, 77H, 69H, 74H, 68H       ; 0034 _ lls with
        db 20H, 77H, 72H, 6FH, 6EH, 67H, 20H, 70H       ; 003C _  wrong p
        db 61H, 72H, 61H, 6DH, 65H, 74H, 65H, 72H       ; 0044 _ arameter
        db 20H, 63H, 6FH, 75H, 6EH, 74H, 00H            ; 004C _  count.

?_309:                                                  ; byte
        db 6DH, 61H, 63H, 72H, 6FH, 2DH, 73H, 65H       ; 0053 _ macro-se
        db 6CH, 66H, 72H, 65H, 66H, 00H                 ; 005B _ lfref.

?_310:                                                  ; byte
        db 63H, 79H, 63H, 6CH, 69H, 63H, 20H, 6DH       ; 0061 _ cyclic m
        db 61H, 63H, 72H, 6FH, 20H, 72H, 65H, 66H       ; 0069 _ acro ref
        db 65H, 72H, 65H, 6EH, 63H, 65H, 73H, 00H       ; 0071 _ erences.

?_311:                                                  ; byte
        db 6DH, 61H, 63H, 72H, 6FH, 2DH, 64H, 65H       ; 0079 _ macro-de
        db 66H, 61H, 75H, 6CH, 74H, 73H, 00H            ; 0081 _ faults.

?_312:                                                  ; byte
        db 6DH, 61H, 63H, 72H, 6FH, 73H, 20H, 77H       ; 0088 _ macros w
        db 69H, 74H, 68H, 20H, 6DH, 6FH, 72H, 65H       ; 0090 _ ith more
        db 20H, 64H, 65H, 66H, 61H, 75H, 6CH, 74H       ; 0098 _  default
        db 20H, 74H, 68H, 61H, 6EH, 20H, 6FH, 70H       ; 00A0 _  than op
        db 74H, 69H, 6FH, 6EH, 61H, 6CH, 20H, 70H       ; 00A8 _ tional p
        db 61H, 72H, 61H, 6DH, 65H, 74H, 65H, 72H       ; 00B0 _ arameter
        db 73H, 00H                                     ; 00B8 _ s.

?_313:                                                  ; byte
        db 6FH, 72H, 70H, 68H, 61H, 6EH, 2DH, 6CH       ; 00BA _ orphan-l
        db 61H, 62H, 65H, 6CH, 73H, 00H                 ; 00C2 _ abels.

?_314:                                                  ; byte
        db 6CH, 61H, 62H, 65H, 6CH, 73H, 20H, 61H       ; 00C8 _ labels a
        db 6CH, 6FH, 6EH, 65H, 20H, 6FH, 6EH, 20H       ; 00D0 _ lone on 
        db 6CH, 69H, 6EH, 65H, 73H, 20H, 77H, 69H       ; 00D8 _ lines wi
        db 74H, 68H, 6FH, 75H, 74H, 20H, 74H, 72H       ; 00E0 _ thout tr
        db 61H, 69H, 6CH, 69H, 6EH, 67H, 20H, 60H       ; 00E8 _ ailing `
        db 3AH, 27H, 00H                                ; 00F0 _ :'.

?_315:                                                  ; byte
        db 6EH, 75H, 6DH, 62H, 65H, 72H, 2DH, 6FH       ; 00F3 _ number-o
        db 76H, 65H, 72H, 66H, 6CH, 6FH, 77H, 00H       ; 00FB _ verflow.

?_316:                                                  ; byte
        db 6EH, 75H, 6DH, 65H, 72H, 69H, 63H, 20H       ; 0103 _ numeric 
        db 63H, 6FH, 6EH, 73H, 74H, 61H, 6EH, 74H       ; 010B _ constant
        db 20H, 64H, 6FH, 65H, 73H, 20H, 6EH, 6FH       ; 0113 _  does no
        db 74H, 20H, 66H, 69H, 74H, 00H                 ; 011B _ t fit.

?_317:                                                  ; byte
        db 67H, 6EH, 75H, 2DH, 65H, 6CH, 66H, 2DH       ; 0121 _ gnu-elf-
        db 65H, 78H, 74H, 65H, 6EH, 73H, 69H, 6FH       ; 0129 _ extensio
        db 6EH, 73H, 00H                                ; 0131 _ ns.

?_318:                                                  ; byte
        db 75H, 73H, 69H, 6EH, 67H, 20H, 38H, 2DH       ; 0134 _ using 8-
        db 20H, 6FH, 72H, 20H, 31H, 36H, 2DH, 62H       ; 013C _  or 16-b
        db 69H, 74H, 20H, 72H, 65H, 6CH, 6FH, 63H       ; 0144 _ it reloc
        db 61H, 74H, 69H, 6FH, 6EH, 20H, 69H, 6EH       ; 014C _ ation in
        db 20H, 45H, 4CH, 46H, 33H, 32H, 2CH, 20H       ; 0154 _  ELF32, 
        db 61H, 20H, 47H, 4EH, 55H, 20H, 65H, 78H       ; 015C _ a GNU ex
        db 74H, 65H, 6EH, 73H, 69H, 6FH, 6EH, 00H       ; 0164 _ tension.

?_319:                                                  ; byte
        db 66H, 6CH, 6FH, 61H, 74H, 2DH, 6FH, 76H       ; 016C _ float-ov
        db 65H, 72H, 66H, 6CH, 6FH, 77H, 00H            ; 0174 _ erflow.

?_320:                                                  ; byte
        db 66H, 6CH, 6FH, 61H, 74H, 69H, 6EH, 67H       ; 017B _ floating
        db 20H, 70H, 6FH, 69H, 6EH, 74H, 20H, 6FH       ; 0183 _  point o
        db 76H, 65H, 72H, 66H, 6CH, 6FH, 77H, 00H       ; 018B _ verflow.

?_321:                                                  ; byte
        db 66H, 6CH, 6FH, 61H, 74H, 2DH, 64H, 65H       ; 0193 _ float-de
        db 6EH, 6FH, 72H, 6DH, 00H                      ; 019B _ norm.

?_322:                                                  ; byte
        db 66H, 6CH, 6FH, 61H, 74H, 69H, 6EH, 67H       ; 01A0 _ floating
        db 20H, 70H, 6FH, 69H, 6EH, 74H, 20H, 64H       ; 01A8 _  point d
        db 65H, 6EH, 6FH, 72H, 6DH, 61H, 6CH, 00H       ; 01B0 _ enormal.

?_323:                                                  ; byte
        db 66H, 6CH, 6FH, 61H, 74H, 2DH, 75H, 6EH       ; 01B8 _ float-un
        db 64H, 65H, 72H, 66H, 6CH, 6FH, 77H, 00H       ; 01C0 _ derflow.

?_324:                                                  ; byte
        db 66H, 6CH, 6FH, 61H, 74H, 69H, 6EH, 67H       ; 01C8 _ floating
        db 20H, 70H, 6FH, 69H, 6EH, 74H, 20H, 75H       ; 01D0 _  point u
        db 6EH, 64H, 65H, 72H, 66H, 6CH, 6FH, 77H       ; 01D8 _ nderflow
        db 00H                                          ; 01E0 _ .

?_325:                                                  ; byte
        db 66H, 6CH, 6FH, 61H, 74H, 2DH, 74H, 6FH       ; 01E1 _ float-to
        db 6FH, 6CH, 6FH, 6EH, 67H, 00H                 ; 01E9 _ olong.

?_326:                                                  ; byte
        db 74H, 6FH, 6FH, 20H, 6DH, 61H, 6EH, 79H       ; 01EF _ too many
        db 20H, 64H, 69H, 67H, 69H, 74H, 73H, 20H       ; 01F7 _  digits 
        db 69H, 6EH, 20H, 66H, 6CH, 6FH, 61H, 74H       ; 01FF _ in float
        db 69H, 6EH, 67H, 2DH, 70H, 6FH, 69H, 6EH       ; 0207 _ ing-poin
        db 74H, 20H, 6EH, 75H, 6DH, 62H, 65H, 72H       ; 020F _ t number
        db 00H                                          ; 0217 _ .

?_327:                                                  ; byte
        db 75H, 73H, 65H, 72H, 00H                      ; 0218 _ user.

?_328:                                                  ; byte
        db 25H, 77H, 61H, 72H, 6EH, 69H, 6EH, 67H       ; 021D _ %warning
        db 20H, 64H, 69H, 72H, 65H, 63H, 74H, 69H       ; 0225 _  directi
        db 76H, 65H, 73H, 00H                           ; 022D _ ves.

?_329:                                                  ; byte
        db 70H, 72H, 65H, 66H, 69H, 78H, 00H            ; 0231 _ prefix.

?_330:                                                  ; byte
        db 70H, 6FH, 73H, 74H, 66H, 69H, 78H, 00H       ; 0238 _ postfix.

?_331:                                                  ; byte
        db 5FH, 5FH, 44H, 41H, 54H, 45H, 5FH, 5FH       ; 0240 _ __DATE__
        db 3DH, 22H, 25H, 59H, 2DH, 25H, 6DH, 2DH       ; 0248 _ ="%Y-%m-
        db 25H, 64H, 22H, 00H                           ; 0250 _ %d".

?_332:                                                  ; byte
        db 5FH, 5FH, 44H, 41H, 54H, 45H, 5FH, 4EH       ; 0254 _ __DATE_N
        db 55H, 4DH, 5FH, 5FH, 3DH, 25H, 59H, 25H       ; 025C _ UM__=%Y%
        db 6DH, 25H, 64H, 00H                           ; 0264 _ m%d.

?_333:                                                  ; byte
        db 5FH, 5FH, 54H, 49H, 4DH, 45H, 5FH, 5FH       ; 0268 _ __TIME__
        db 3DH, 22H, 25H, 48H, 3AH, 25H, 4DH, 3AH       ; 0270 _ ="%H:%M:
        db 25H, 53H, 22H, 00H                           ; 0278 _ %S".

?_334:                                                  ; byte
        db 5FH, 5FH, 54H, 49H, 4DH, 45H, 5FH, 4EH       ; 027C _ __TIME_N
        db 55H, 4DH, 5FH, 5FH, 3DH, 25H, 48H, 25H       ; 0284 _ UM__=%H%
        db 4DH, 25H, 53H, 00H                           ; 028C _ M%S.

?_335:                                                  ; byte
        db 5FH, 5FH, 55H, 54H, 43H, 5FH, 44H, 41H       ; 0290 _ __UTC_DA
        db 54H, 45H, 5FH, 5FH, 3DH, 22H, 25H, 59H       ; 0298 _ TE__="%Y
        db 2DH, 25H, 6DH, 2DH, 25H, 64H, 22H, 00H       ; 02A0 _ -%m-%d".

?_336:                                                  ; byte
        db 5FH, 5FH, 55H, 54H, 43H, 5FH, 44H, 41H       ; 02A8 _ __UTC_DA
        db 54H, 45H, 5FH, 4EH, 55H, 4DH, 5FH, 5FH       ; 02B0 _ TE_NUM__
        db 3DH, 25H, 59H, 25H, 6DH, 25H, 64H, 00H       ; 02B8 _ =%Y%m%d.

?_337:                                                  ; byte
        db 5FH, 5FH, 55H, 54H, 43H, 5FH, 54H, 49H       ; 02C0 _ __UTC_TI
        db 4DH, 45H, 5FH, 5FH, 3DH, 22H, 25H, 48H       ; 02C8 _ ME__="%H
        db 3AH, 25H, 4DH, 3AH, 25H, 53H, 22H, 00H       ; 02D0 _ :%M:%S".

?_338:                                                  ; byte
        db 5FH, 5FH, 55H, 54H, 43H, 5FH, 54H, 49H       ; 02D8 _ __UTC_TI
        db 4DH, 45H, 5FH, 4EH, 55H, 4DH, 5FH, 5FH       ; 02E0 _ ME_NUM__
        db 3DH, 25H, 48H, 25H, 4DH, 25H, 53H, 00H       ; 02E8 _ =%H%M%S.

?_339:                                                  ; byte
        db 5FH, 5FH, 50H, 4FH, 53H, 49H, 58H, 5FH       ; 02F0 _ __POSIX_
        db 54H, 49H, 4DH, 45H, 5FH, 5FH, 3DH, 25H       ; 02F8 _ TIME__=%
        db 6CH, 6CH, 64H, 00H                           ; 0300 _ lld.

?_340:                                                  ; byte
        db 5FH, 5FH, 4FH, 55H, 54H, 50H, 55H, 54H       ; 0304 _ __OUTPUT
        db 5FH, 46H, 4FH, 52H, 4DH, 41H, 54H, 5FH       ; 030C _ _FORMAT_
        db 5FH, 3DH, 25H, 73H, 00H                      ; 0314 _ _=%s.

?_341:                                                  ; byte
        db 2DH, 00H                                     ; 0319 _ -.

?_342:                                                  ; byte
        db 77H, 00H                                     ; 031B _ w.

?_343:                                                  ; byte
        db 75H, 6EH, 61H, 62H, 6CH, 65H, 20H, 74H       ; 031D _ unable t
        db 6FH, 20H, 77H, 72H, 69H, 74H, 65H, 20H       ; 0325 _ o write 
        db 64H, 65H, 70H, 65H, 6EH, 64H, 65H, 6EH       ; 032D _ dependen
        db 63H, 79H, 20H, 66H, 69H, 6CH, 65H, 20H       ; 0335 _ cy file 
        db 60H, 25H, 73H, 27H, 00H                      ; 033D _ `%s'.

?_344:                                                  ; byte
        db 25H, 73H, 3AH, 00H                           ; 0342 _ %s:.

?_345:                                                  ; byte
        db 20H, 5CH, 0AH, 20H, 00H                      ; 0346 _  \. .

?_346:                                                  ; byte
        db 20H, 25H, 73H, 00H                           ; 034B _  %s.

?_347:                                                  ; byte
        db 0AH, 0AH, 00H                                ; 034F _ ...

?_348:                                                  ; byte
        db 25H, 73H, 3AH, 0AH, 0AH, 00H                 ; 0352 _ %s:...

?_349:                                                  ; byte
        db 75H, 6EH, 61H, 62H, 6CH, 65H, 20H, 74H       ; 0358 _ unable t
        db 6FH, 20H, 6FH, 70H, 65H, 6EH, 20H, 6FH       ; 0360 _ o open o
        db 75H, 74H, 70H, 75H, 74H, 20H, 66H, 69H       ; 0368 _ utput fi
        db 6CH, 65H, 20H, 60H, 25H, 73H, 27H, 00H       ; 0370 _ le `%s'.

?_350:                                                  ; byte
        db 00H                                          ; 0378 _ .

?_351:                                                  ; byte
        db 25H, 25H, 6CH, 69H, 6EH, 65H, 20H, 25H       ; 0379 _ %%line %
        db 6CH, 64H, 2BH, 25H, 64H, 20H, 25H, 73H       ; 0381 _ ld+%d %s
        db 0AH, 00H                                     ; 0389 _ ..

?_352:                                                  ; byte
        db 77H, 62H, 00H                                ; 038B _ wb.

?_353:                                                  ; byte
        db 77H, 72H, 69H, 74H, 65H, 20H, 65H, 72H       ; 038E _ write er
        db 72H, 6FH, 72H, 20H, 6FH, 6EH, 20H, 6FH       ; 0396 _ ror on o
        db 75H, 74H, 70H, 75H, 74H, 20H, 66H, 69H       ; 039E _ utput fi
        db 6CH, 65H, 20H, 60H, 25H, 73H, 27H, 00H       ; 03A6 _ le `%s'.

?_354:                                                  ; byte
        db 6FH, 70H, 74H, 69H, 6FH, 6EH, 20H, 60H       ; 03AE _ option `
        db 2DH, 25H, 63H, 27H, 20H, 72H, 65H, 71H       ; 03B6 _ -%c' req
        db 75H, 69H, 72H, 65H, 73H, 20H, 61H, 6EH       ; 03BE _ uires an
        db 20H, 61H, 72H, 67H, 75H, 6DH, 65H, 6EH       ; 03C6 _  argumen
        db 74H, 00H                                     ; 03CE _ t.

?_355:                                                  ; byte
        db 66H, 69H, 6CH, 65H, 20H, 6EH, 61H, 6DH       ; 03D0 _ file nam
        db 65H, 20H, 74H, 6FH, 6FH, 20H, 6CH, 6FH       ; 03D8 _ e too lo
        db 6EH, 67H, 00H                                ; 03E0 _ ng.

?_356:                                                  ; byte
        db 6FH, 4FH, 66H, 70H, 50H, 64H, 44H, 69H       ; 03E3 _ oOfpPdDi
        db 49H, 6CH, 46H, 58H, 75H, 55H, 5AH, 77H       ; 03EB _ IlFXuUZw
        db 57H, 00H                                     ; 03F3 _ W.

?_357:                                                  ; byte
        db 75H, 6EH, 72H, 65H, 63H, 6FH, 67H, 6EH       ; 03F5 _ unrecogn
        db 69H, 73H, 65H, 64H, 20H, 6FH, 75H, 74H       ; 03FD _ ised out
        db 70H, 75H, 74H, 20H, 66H, 6FH, 72H, 6DH       ; 0405 _ put form
        db 61H, 74H, 20H, 60H, 25H, 73H, 27H, 20H       ; 040D _ at `%s' 
        db 2DH, 20H, 75H, 73H, 65H, 20H, 2DH, 68H       ; 0415 _ - use -h
        db 66H, 20H, 66H, 6FH, 72H, 20H, 61H, 20H       ; 041D _ f for a 
        db 6CH, 69H, 73H, 74H, 00H                      ; 0425 _ list.

?_358:                                                  ; byte
        db 75H, 6EH, 6BH, 6EH, 6FH, 77H, 6EH, 20H       ; 042A _ unknown 
        db 6FH, 70H, 74H, 69H, 6DH, 69H, 7AH, 61H       ; 0432 _ optimiza
        db 74H, 69H, 6FH, 6EH, 20H, 6FH, 70H, 74H       ; 043A _ tion opt
        db 69H, 6FH, 6EH, 20H, 2DH, 4FH, 25H, 63H       ; 0442 _ ion -O%c
        db 0AH, 00H                                     ; 044A _ ..

?_359:                                                  ; byte
        db 75H, 6EH, 72H, 65H, 63H, 6FH, 67H, 6EH       ; 044C _ unrecogn
        db 69H, 7AH, 65H, 64H, 20H, 64H, 65H, 62H       ; 0454 _ ized deb
        db 75H, 67H, 20H, 66H, 6FH, 72H, 6DH, 61H       ; 045C _ ug forma
        db 74H, 20H, 60H, 25H, 73H, 27H, 20H, 66H       ; 0464 _ t `%s' f
        db 6FH, 72H, 20H, 6FH, 75H, 74H, 70H, 75H       ; 046C _ or outpu
        db 74H, 20H, 66H, 6FH, 72H, 6DH, 61H, 74H       ; 0474 _ t format
        db 20H, 60H, 25H, 73H, 27H, 00H                 ; 047C _  `%s'.

?_360:                                                  ; byte
        db 76H, 63H, 00H                                ; 0482 _ vc.

?_361:                                                  ; byte
        db 67H, 6EH, 75H, 00H                           ; 0485 _ gnu.

?_362:                                                  ; byte
        db 75H, 6EH, 72H, 65H, 63H, 6FH, 67H, 6EH       ; 0489 _ unrecogn
        db 69H, 7AH, 65H, 64H, 20H, 65H, 72H, 72H       ; 0491 _ ized err
        db 6FH, 72H, 20H, 72H, 65H, 70H, 6FH, 72H       ; 0499 _ or repor
        db 74H, 69H, 6EH, 67H, 20H, 66H, 6FH, 72H       ; 04A1 _ ting for
        db 6DH, 61H, 74H, 20H, 60H, 25H, 73H, 27H       ; 04A9 _ mat `%s'
        db 00H                                          ; 04B1 _ .

?_363:                                                  ; byte
        db 75H, 73H, 61H, 67H, 65H, 3AH, 20H, 6EH       ; 04B2 _ usage: n
        db 61H, 73H, 6DH, 20H, 5BH, 2DH, 40H, 20H       ; 04BA _ asm [-@ 
        db 72H, 65H, 73H, 70H, 6FH, 6EH, 73H, 65H       ; 04C2 _ response
        db 20H, 66H, 69H, 6CH, 65H, 5DH, 20H, 5BH       ; 04CA _  file] [
        db 2DH, 6FH, 20H, 6FH, 75H, 74H, 66H, 69H       ; 04D2 _ -o outfi
        db 6CH, 65H, 5DH, 20H, 5BH, 2DH, 66H, 20H       ; 04DA _ le] [-f 
        db 66H, 6FH, 72H, 6DH, 61H, 74H, 5DH, 20H       ; 04E2 _ format] 
        db 5BH, 2DH, 6CH, 20H, 6CH, 69H, 73H, 74H       ; 04EA _ [-l list
        db 66H, 69H, 6CH, 65H, 5DH, 0AH, 20H, 20H       ; 04F2 _ file].  
        db 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H       ; 04FA _         
        db 20H, 20H, 5BH, 6FH, 70H, 74H, 69H, 6FH       ; 0502 _   [optio
        db 6EH, 73H, 2EH, 2EH, 2EH, 5DH, 20H, 5BH       ; 050A _ ns...] [
        db 2DH, 2DH, 5DH, 20H, 66H, 69H, 6CH, 65H       ; 0512 _ --] file
        db 6EH, 61H, 6DH, 65H, 0AH, 20H, 20H, 20H       ; 051A _ name.   
        db 20H, 6FH, 72H, 20H, 6EH, 61H, 73H, 6DH       ; 0522 _  or nasm
        db 20H, 2DH, 76H, 20H, 20H, 20H, 66H, 6FH       ; 052A _  -v   fo
        db 72H, 20H, 76H, 65H, 72H, 73H, 69H, 6FH       ; 0532 _ r versio
        db 6EH, 20H, 69H, 6EH, 66H, 6FH, 0AH, 0AH       ; 053A _ n info..
        db 20H, 20H, 20H, 20H, 2DH, 74H, 20H, 20H       ; 0542 _     -t  
        db 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H       ; 054A _         
        db 61H, 73H, 73H, 65H, 6DH, 62H, 6CH, 65H       ; 0552 _ assemble
        db 20H, 69H, 6EH, 20H, 53H, 63H, 69H, 54H       ; 055A _  in SciT
        db 65H, 63H, 68H, 20H, 54H, 41H, 53H, 4DH       ; 0562 _ ech TASM
        db 20H, 63H, 6FH, 6DH, 70H, 61H, 74H, 69H       ; 056A _  compati
        db 62H, 6CH, 65H, 20H, 6DH, 6FH, 64H, 65H       ; 0572 _ ble mode
        db 0AH, 20H, 20H, 20H, 20H, 2DH, 67H, 20H       ; 057A _ .    -g 
        db 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H       ; 0582 _         
        db 20H, 67H, 65H, 6EH, 65H, 72H, 61H, 74H       ; 058A _  generat
        db 65H, 20H, 64H, 65H, 62H, 75H, 67H, 20H       ; 0592 _ e debug 
        db 69H, 6EH, 66H, 6FH, 72H, 6DH, 61H, 74H       ; 059A _ informat
        db 69H, 6FH, 6EH, 20H, 69H, 6EH, 20H, 73H       ; 05A2 _ ion in s
        db 65H, 6CH, 65H, 63H, 74H, 65H, 64H, 20H       ; 05AA _ elected 
        db 66H, 6FH, 72H, 6DH, 61H, 74H, 0AH, 00H       ; 05B2 _ format..

?_364:                                                  ; byte
        db 20H, 20H, 20H, 20H, 2DH, 45H, 20H, 28H       ; 05BA _     -E (
        db 6FH, 72H, 20H, 2DH, 65H, 29H, 20H, 20H       ; 05C2 _ or -e)  
        db 70H, 72H, 65H, 70H, 72H, 6FH, 63H, 65H       ; 05CA _ preproce
        db 73H, 73H, 20H, 6FH, 6EH, 6CH, 79H, 20H       ; 05D2 _ ss only 
        db 28H, 77H, 72H, 69H, 74H, 65H, 73H, 20H       ; 05DA _ (writes 
        db 6FH, 75H, 74H, 70H, 75H, 74H, 20H, 74H       ; 05E2 _ output t
        db 6FH, 20H, 73H, 74H, 64H, 6FH, 75H, 74H       ; 05EA _ o stdout
        db 20H, 62H, 79H, 20H, 64H, 65H, 66H, 61H       ; 05F2 _  by defa
        db 75H, 6CH, 74H, 29H, 0AH, 20H, 20H, 20H       ; 05FA _ ult).   
        db 20H, 2DH, 61H, 20H, 20H, 20H, 20H, 20H       ; 0602 _  -a     
        db 20H, 20H, 20H, 20H, 20H, 64H, 6FH, 6EH       ; 060A _      don
        db 27H, 74H, 20H, 70H, 72H, 65H, 70H, 72H       ; 0612 _ 't prepr
        db 6FH, 63H, 65H, 73H, 73H, 20H, 28H, 61H       ; 061A _ ocess (a
        db 73H, 73H, 65H, 6DH, 62H, 6CH, 65H, 20H       ; 0622 _ ssemble 
        db 6FH, 6EH, 6CH, 79H, 29H, 0AH, 20H, 20H       ; 062A _ only).  
        db 20H, 20H, 2DH, 4DH, 20H, 20H, 20H, 20H       ; 0632 _   -M    
        db 20H, 20H, 20H, 20H, 20H, 20H, 67H, 65H       ; 063A _       ge
        db 6EH, 65H, 72H, 61H, 74H, 65H, 20H, 4DH       ; 0642 _ nerate M
        db 61H, 6BH, 65H, 66H, 69H, 6CH, 65H, 20H       ; 064A _ akefile 
        db 64H, 65H, 70H, 65H, 6EH, 64H, 65H, 6EH       ; 0652 _ dependen
        db 63H, 69H, 65H, 73H, 20H, 6FH, 6EH, 20H       ; 065A _ cies on 
        db 73H, 74H, 64H, 6FH, 75H, 74H, 0AH, 20H       ; 0662 _ stdout. 
        db 20H, 20H, 20H, 2DH, 4DH, 47H, 20H, 20H       ; 066A _    -MG  
        db 20H, 20H, 20H, 20H, 20H, 20H, 20H, 64H       ; 0672 _        d
        db 3AH, 6FH, 2CH, 20H, 6DH, 69H, 73H, 73H       ; 067A _ :o, miss
        db 69H, 6EH, 67H, 20H, 66H, 69H, 6CH, 65H       ; 0682 _ ing file
        db 73H, 20H, 61H, 73H, 73H, 75H, 6DH, 65H       ; 068A _ s assume
        db 64H, 20H, 67H, 65H, 6EH, 65H, 72H, 61H       ; 0692 _ d genera
        db 74H, 65H, 64H, 0AH, 20H, 20H, 20H, 20H       ; 069A _ ted.    
        db 2DH, 4DH, 46H, 20H, 3CH, 66H, 69H, 6CH       ; 06A2 _ -MF <fil
        db 65H, 3EH, 20H, 20H, 73H, 65H, 74H, 20H       ; 06AA _ e>  set 
        db 4DH, 61H, 6BH, 65H, 66H, 69H, 6CH, 65H       ; 06B2 _ Makefile
        db 20H, 64H, 65H, 70H, 65H, 6EH, 64H, 65H       ; 06BA _  depende
        db 6EH, 63H, 79H, 20H, 66H, 69H, 6CH, 65H       ; 06C2 _ ncy file
        db 0AH, 20H, 20H, 20H, 20H, 2DH, 4DH, 44H       ; 06CA _ .    -MD
        db 20H, 3CH, 66H, 69H, 6CH, 65H, 3EH, 20H       ; 06D2 _  <file> 
        db 20H, 61H, 73H, 73H, 65H, 6DH, 62H, 6CH       ; 06DA _  assembl
        db 65H, 20H, 61H, 6EH, 64H, 20H, 67H, 65H       ; 06E2 _ e and ge
        db 6EH, 65H, 72H, 61H, 74H, 65H, 20H, 64H       ; 06EA _ nerate d
        db 65H, 70H, 65H, 6EH, 64H, 65H, 6EH, 63H       ; 06F2 _ ependenc
        db 69H, 65H, 73H, 0AH, 20H, 20H, 20H, 20H       ; 06FA _ ies.    
        db 2DH, 4DH, 54H, 20H, 3CH, 66H, 69H, 6CH       ; 0702 _ -MT <fil
        db 65H, 3EH, 20H, 20H, 64H, 65H, 70H, 65H       ; 070A _ e>  depe
        db 6EH, 64H, 65H, 6EH, 63H, 79H, 20H, 74H       ; 0712 _ ndency t
        db 61H, 72H, 67H, 65H, 74H, 20H, 6EH, 61H       ; 071A _ arget na
        db 6DH, 65H, 0AH, 20H, 20H, 20H, 20H, 2DH       ; 0722 _ me.    -
        db 4DH, 51H, 20H, 3CH, 66H, 69H, 6CH, 65H       ; 072A _ MQ <file
        db 3EH, 20H, 20H, 64H, 65H, 70H, 65H, 6EH       ; 0732 _ >  depen
        db 64H, 65H, 6EH, 63H, 79H, 20H, 74H, 61H       ; 073A _ dency ta
        db 72H, 67H, 65H, 74H, 20H, 6EH, 61H, 6DH       ; 0742 _ rget nam
        db 65H, 20H, 28H, 71H, 75H, 6FH, 74H, 65H       ; 074A _ e (quote
        db 64H, 29H, 0AH, 20H, 20H, 20H, 20H, 2DH       ; 0752 _ d).    -
        db 4DH, 50H, 20H, 20H, 20H, 20H, 20H, 20H       ; 075A _ MP      
        db 20H, 20H, 20H, 65H, 6DH, 69H, 74H, 20H       ; 0762 _    emit 
        db 70H, 68H, 6FH, 6EH, 79H, 20H, 74H, 61H       ; 076A _ phony ta
        db 72H, 67H, 65H, 74H, 0AH, 0AH, 20H, 20H       ; 0772 _ rget..  
        db 20H, 20H, 2DH, 5AH, 3CH, 66H, 69H, 6CH       ; 077A _   -Z<fil
        db 65H, 3EH, 20H, 20H, 20H, 20H, 72H, 65H       ; 0782 _ e>    re
        db 64H, 69H, 72H, 65H, 63H, 74H, 20H, 65H       ; 078A _ direct e
        db 72H, 72H, 6FH, 72H, 20H, 6DH, 65H, 73H       ; 0792 _ rror mes
        db 73H, 61H, 67H, 65H, 73H, 20H, 74H, 6FH       ; 079A _ sages to
        db 20H, 66H, 69H, 6CH, 65H, 0AH, 20H, 20H       ; 07A2 _  file.  
        db 20H, 20H, 2DH, 73H, 20H, 20H, 20H, 20H       ; 07AA _   -s    
        db 20H, 20H, 20H, 20H, 20H, 20H, 72H, 65H       ; 07B2 _       re
        db 64H, 69H, 72H, 65H, 63H, 74H, 20H, 65H       ; 07BA _ direct e
        db 72H, 72H, 6FH, 72H, 20H, 6DH, 65H, 73H       ; 07C2 _ rror mes
        db 73H, 61H, 67H, 65H, 73H, 20H, 74H, 6FH       ; 07CA _ sages to
        db 20H, 73H, 74H, 64H, 6FH, 75H, 74H, 0AH       ; 07D2 _  stdout.
        db 0AH, 20H, 20H, 20H, 20H, 2DH, 46H, 20H       ; 07DA _ .    -F 
        db 66H, 6FH, 72H, 6DH, 61H, 74H, 20H, 20H       ; 07E2 _ format  
        db 20H, 73H, 65H, 6CH, 65H, 63H, 74H, 20H       ; 07EA _  select 
        db 61H, 20H, 64H, 65H, 62H, 75H, 67H, 67H       ; 07F2 _ a debugg
        db 69H, 6EH, 67H, 20H, 66H, 6FH, 72H, 6DH       ; 07FA _ ing form
        db 61H, 74H, 0AH, 0AH, 20H, 20H, 20H, 20H       ; 0802 _ at..    
        db 2DH, 49H, 3CH, 70H, 61H, 74H, 68H, 3EH       ; 080A _ -I<path>
        db 20H, 20H, 20H, 20H, 61H, 64H, 64H, 73H       ; 0812 _     adds
        db 20H, 61H, 20H, 70H, 61H, 74H, 68H, 6EH       ; 081A _  a pathn
        db 61H, 6DH, 65H, 20H, 74H, 6FH, 20H, 74H       ; 0822 _ ame to t
        db 68H, 65H, 20H, 69H, 6EH, 63H, 6CH, 75H       ; 082A _ he inclu
        db 64H, 65H, 20H, 66H, 69H, 6CH, 65H, 20H       ; 0832 _ de file 
        db 70H, 61H, 74H, 68H, 0AH, 00H                 ; 083A _ path..

?_365:                                                  ; byte
        db 20H, 20H, 20H, 20H, 2DH, 4FH, 3CH, 64H       ; 0840 _     -O<d
        db 69H, 67H, 69H, 74H, 3EH, 20H, 20H, 20H       ; 0848 _ igit>   
        db 6FH, 70H, 74H, 69H, 6DH, 69H, 7AH, 65H       ; 0850 _ optimize
        db 20H, 62H, 72H, 61H, 6EH, 63H, 68H, 20H       ; 0858 _  branch 
        db 6FH, 66H, 66H, 73H, 65H, 74H, 73H, 0AH       ; 0860 _ offsets.
        db 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H       ; 0868 _         
        db 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H       ; 0870 _         
        db 2DH, 4FH, 30H, 3AH, 20H, 4EH, 6FH, 20H       ; 0878 _ -O0: No 
        db 6FH, 70H, 74H, 69H, 6DH, 69H, 7AH, 61H       ; 0880 _ optimiza
        db 74H, 69H, 6FH, 6EH, 20H, 28H, 64H, 65H       ; 0888 _ tion (de
        db 66H, 61H, 75H, 6CH, 74H, 29H, 0AH, 20H       ; 0890 _ fault). 
        db 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H       ; 0898 _         
        db 20H, 20H, 20H, 20H, 20H, 20H, 20H, 2DH       ; 08A0 _        -
        db 4FH, 31H, 3AH, 20H, 4DH, 69H, 6EH, 69H       ; 08A8 _ O1: Mini
        db 6DH, 61H, 6CH, 20H, 6FH, 70H, 74H, 69H       ; 08B0 _ mal opti
        db 6DH, 69H, 7AH, 61H, 74H, 69H, 6FH, 6EH       ; 08B8 _ mization
        db 0AH, 20H, 20H, 20H, 20H, 20H, 20H, 20H       ; 08C0 _ .       
        db 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H       ; 08C8 _         
        db 20H, 2DH, 4FH, 78H, 3AH, 20H, 4DH, 75H       ; 08D0 _  -Ox: Mu
        db 6CH, 74H, 69H, 70H, 61H, 73H, 73H, 20H       ; 08D8 _ ltipass 
        db 6FH, 70H, 74H, 69H, 6DH, 69H, 7AH, 61H       ; 08E0 _ optimiza
        db 74H, 69H, 6FH, 6EH, 20H, 28H, 72H, 65H       ; 08E8 _ tion (re
        db 63H, 6FH, 6DH, 6DH, 65H, 6EH, 64H, 65H       ; 08F0 _ commende
        db 64H, 29H, 0AH, 0AH, 20H, 20H, 20H, 20H       ; 08F8 _ d)..    
        db 2DH, 50H, 3CH, 66H, 69H, 6CH, 65H, 3EH       ; 0900 _ -P<file>
        db 20H, 20H, 20H, 20H, 70H, 72H, 65H, 2DH       ; 0908 _     pre-
        db 69H, 6EH, 63H, 6CH, 75H, 64H, 65H, 73H       ; 0910 _ includes
        db 20H, 61H, 20H, 66H, 69H, 6CH, 65H, 0AH       ; 0918 _  a file.
        db 20H, 20H, 20H, 20H, 2DH, 44H, 3CH, 6DH       ; 0920 _     -D<m
        db 61H, 63H, 72H, 6FH, 3EH, 5BH, 3DH, 3CH       ; 0928 _ acro>[=<
        db 76H, 61H, 6CH, 75H, 65H, 3EH, 5DH, 20H       ; 0930 _ value>] 
        db 70H, 72H, 65H, 2DH, 64H, 65H, 66H, 69H       ; 0938 _ pre-defi
        db 6EH, 65H, 73H, 20H, 61H, 20H, 6DH, 61H       ; 0940 _ nes a ma
        db 63H, 72H, 6FH, 0AH, 20H, 20H, 20H, 20H       ; 0948 _ cro.    
        db 2DH, 55H, 3CH, 6DH, 61H, 63H, 72H, 6FH       ; 0950 _ -U<macro
        db 3EH, 20H, 20H, 20H, 75H, 6EH, 64H, 65H       ; 0958 _ >   unde
        db 66H, 69H, 6EH, 65H, 73H, 20H, 61H, 20H       ; 0960 _ fines a 
        db 6DH, 61H, 63H, 72H, 6FH, 0AH, 20H, 20H       ; 0968 _ macro.  
        db 20H, 20H, 2DH, 58H, 3CH, 66H, 6FH, 72H       ; 0970 _   -X<for
        db 6DH, 61H, 74H, 3EH, 20H, 20H, 73H, 70H       ; 0978 _ mat>  sp
        db 65H, 63H, 69H, 66H, 69H, 65H, 73H, 20H       ; 0980 _ ecifies 
        db 65H, 72H, 72H, 6FH, 72H, 20H, 72H, 65H       ; 0988 _ error re
        db 70H, 6FH, 72H, 74H, 69H, 6EH, 67H, 20H       ; 0990 _ porting 
        db 66H, 6FH, 72H, 6DH, 61H, 74H, 20H, 28H       ; 0998 _ format (
        db 67H, 6EH, 75H, 20H, 6FH, 72H, 20H, 76H       ; 09A0 _ gnu or v
        db 63H, 29H, 0AH, 20H, 20H, 20H, 20H, 2DH       ; 09A8 _ c).    -
        db 77H, 2BH, 66H, 6FH, 6FH, 20H, 20H, 20H       ; 09B0 _ w+foo   
        db 20H, 20H, 20H, 65H, 6EH, 61H, 62H, 6CH       ; 09B8 _    enabl
        db 65H, 73H, 20H, 77H, 61H, 72H, 6EH, 69H       ; 09C0 _ es warni
        db 6EH, 67H, 20H, 66H, 6FH, 6FH, 20H, 28H       ; 09C8 _ ng foo (
        db 65H, 71H, 75H, 69H, 76H, 2EH, 20H, 2DH       ; 09D0 _ equiv. -
        db 57H, 66H, 6FH, 6FH, 29H, 0AH, 20H, 20H       ; 09D8 _ Wfoo).  
        db 20H, 20H, 2DH, 77H, 2DH, 66H, 6FH, 6FH       ; 09E0 _   -w-foo
        db 20H, 20H, 20H, 20H, 20H, 20H, 64H, 69H       ; 09E8 _       di
        db 73H, 61H, 62H, 6CH, 65H, 20H, 77H, 61H       ; 09F0 _ sable wa
        db 72H, 6EH, 69H, 6EH, 67H, 20H, 66H, 6FH       ; 09F8 _ rning fo
        db 6FH, 20H, 28H, 65H, 71H, 75H, 69H, 76H       ; 0A00 _ o (equiv
        db 2EH, 20H, 2DH, 57H, 6EH, 6FH, 2DH, 66H       ; 0A08 _ . -Wno-f
        db 6FH, 6FH, 29H, 0AH, 0AH, 2DH, 2DH, 70H       ; 0A10 _ oo)..--p
        db 72H, 65H, 66H, 69H, 78H, 2CH, 2DH, 2DH       ; 0A18 _ refix,--
        db 70H, 6FH, 73H, 74H, 66H, 69H, 78H, 0AH       ; 0A20 _ postfix.
        db 20H, 20H, 74H, 68H, 69H, 73H, 20H, 6FH       ; 0A28 _   this o
        db 70H, 74H, 69H, 6FH, 6EH, 73H, 20H, 70H       ; 0A30 _ ptions p
        db 72H, 65H, 70H, 65H, 6EH, 64H, 20H, 6FH       ; 0A38 _ repend o
        db 72H, 20H, 61H, 70H, 70H, 65H, 6EH, 64H       ; 0A40 _ r append
        db 20H, 74H, 68H, 65H, 20H, 67H, 69H, 76H       ; 0A48 _  the giv
        db 65H, 6EH, 20H, 61H, 72H, 67H, 75H, 6DH       ; 0A50 _ en argum
        db 65H, 6EH, 74H, 20H, 74H, 6FH, 20H, 61H       ; 0A58 _ ent to a
        db 6CH, 6CH, 0AH, 20H, 20H, 65H, 78H, 74H       ; 0A60 _ ll.  ext
        db 65H, 72H, 6EH, 20H, 61H, 6EH, 64H, 20H       ; 0A68 _ ern and 
        db 67H, 6CH, 6FH, 62H, 61H, 6CH, 20H, 76H       ; 0A70 _ global v
        db 61H, 72H, 69H, 61H, 62H, 6CH, 65H, 73H       ; 0A78 _ ariables
        db 0AH, 0AH, 57H, 61H, 72H, 6EH, 69H, 6EH       ; 0A80 _ ..Warnin
        db 67H, 73H, 3AH, 0AH, 00H                      ; 0A88 _ gs:..

?_366:                                                  ; byte
        db 6FH, 6EH, 00H                                ; 0A8D _ on.

?_367:                                                  ; byte
        db 6FH, 66H, 66H, 00H                           ; 0A90 _ off.

?_368:                                                  ; byte
        db 20H, 20H, 20H, 20H, 25H, 2DH, 32H, 33H       ; 0A94 _     %-23
        db 73H, 20H, 25H, 73H, 20H, 28H, 64H, 65H       ; 0A9C _ s %s (de
        db 66H, 61H, 75H, 6CH, 74H, 20H, 25H, 73H       ; 0AA4 _ fault %s
        db 29H, 0AH, 00H                                ; 0AAC _ )..

?_369:                                                  ; byte
        db 0AH, 72H, 65H, 73H, 70H, 6FH, 6EH, 73H       ; 0AAF _ .respons
        db 65H, 20H, 66H, 69H, 6CH, 65H, 73H, 20H       ; 0AB7 _ e files 
        db 73H, 68H, 6FH, 75H, 6CH, 64H, 20H, 63H       ; 0ABF _ should c
        db 6FH, 6EH, 74H, 61H, 69H, 6EH, 20H, 63H       ; 0AC7 _ ontain c
        db 6FH, 6DH, 6DH, 61H, 6EH, 64H, 20H, 6CH       ; 0ACF _ ommand l
        db 69H, 6EH, 65H, 20H, 70H, 61H, 72H, 61H       ; 0AD7 _ ine para
        db 6DH, 65H, 74H, 65H, 72H, 73H, 2CH, 20H       ; 0ADF _ meters, 
        db 6FH, 6EH, 65H, 20H, 70H, 65H, 72H, 20H       ; 0AE7 _ one per 
        db 6CH, 69H, 6EH, 65H, 2EH, 0AH, 00H            ; 0AEF _ line...

?_370:                                                  ; byte
        db 0AH, 76H, 61H, 6CH, 69H, 64H, 20H, 6FH       ; 0AF6 _ .valid o
        db 75H, 74H, 70H, 75H, 74H, 20H, 66H, 6FH       ; 0AFE _ utput fo
        db 72H, 6DH, 61H, 74H, 73H, 20H, 66H, 6FH       ; 0B06 _ rmats fo
        db 72H, 20H, 2DH, 66H, 20H, 61H, 72H, 65H       ; 0B0E _ r -f are
        db 20H, 28H, 60H, 2AH, 27H, 20H, 64H, 65H       ; 0B16 _  (`*' de
        db 6EH, 6FH, 74H, 65H, 73H, 20H, 64H, 65H       ; 0B1E _ notes de
        db 66H, 61H, 75H, 6CH, 74H, 29H, 3AH, 0AH       ; 0B26 _ fault):.
        db 00H                                          ; 0B2E _ .

?_371:                                                  ; byte
        db 0AH, 46H, 6FH, 72H, 20H, 61H, 20H, 6CH       ; 0B2F _ .For a l
        db 69H, 73H, 74H, 20H, 6FH, 66H, 20H, 76H       ; 0B37 _ ist of v
        db 61H, 6CH, 69H, 64H, 20H, 6FH, 75H, 74H       ; 0B3F _ alid out
        db 70H, 75H, 74H, 20H, 66H, 6FH, 72H, 6DH       ; 0B47 _ put form
        db 61H, 74H, 73H, 2CH, 20H, 75H, 73H, 65H       ; 0B4F _ ats, use
        db 20H, 2DH, 68H, 66H, 2EH, 0AH, 00H            ; 0B57 _  -hf...

?_372:                                                  ; byte
        db 46H, 6FH, 72H, 20H, 61H, 20H, 6CH, 69H       ; 0B5E _ For a li
        db 73H, 74H, 20H, 6FH, 66H, 20H, 64H, 65H       ; 0B66 _ st of de
        db 62H, 75H, 67H, 20H, 66H, 6FH, 72H, 6DH       ; 0B6E _ bug form
        db 61H, 74H, 73H, 2CH, 20H, 75H, 73H, 65H       ; 0B76 _ ats, use
        db 20H, 2DH, 66H, 20H, 3CH, 66H, 6FH, 72H       ; 0B7E _  -f <for
        db 6DH, 3EH, 20H, 2DH, 79H, 2EH, 0AH, 00H       ; 0B86 _ m> -y...

?_373:                                                  ; byte
        db 0AH, 76H, 61H, 6CH, 69H, 64H, 20H, 64H       ; 0B8E _ .valid d
        db 65H, 62H, 75H, 67H, 20H, 66H, 6FH, 72H       ; 0B96 _ ebug for
        db 6DH, 61H, 74H, 73H, 20H, 66H, 6FH, 72H       ; 0B9E _ mats for
        db 20H, 27H, 25H, 73H, 27H, 20H, 6FH, 75H       ; 0BA6 _  '%s' ou
        db 74H, 70H, 75H, 74H, 20H, 66H, 6FH, 72H       ; 0BAE _ tput for
        db 6DH, 61H, 74H, 20H, 61H, 72H, 65H, 20H       ; 0BB6 _ mat are 
        db 28H, 27H, 2AH, 27H, 20H, 64H, 65H, 6EH       ; 0BBE _ ('*' den
        db 6FH, 74H, 65H, 73H, 20H, 64H, 65H, 66H       ; 0BC6 _ otes def
        db 61H, 75H, 6CH, 74H, 29H, 3AH, 0AH, 00H       ; 0BCE _ ault):..

?_374:                                                  ; byte
        db 4EH, 41H, 53H, 4DH, 20H, 76H, 65H, 72H       ; 0BD6 _ NASM ver
        db 73H, 69H, 6FH, 6EH, 20H, 25H, 73H, 20H       ; 0BDE _ sion %s 
        db 63H, 6FH, 6DH, 70H, 69H, 6CH, 65H, 64H       ; 0BE6 _ compiled
        db 20H, 6FH, 6EH, 20H, 25H, 73H, 25H, 73H       ; 0BEE _  on %s%s
        db 0AH, 00H                                     ; 0BF6 _ ..

?_375:                                                  ; byte
        db 69H, 6EH, 76H, 61H, 6CH, 69H, 64H, 20H       ; 0BF8 _ invalid 
        db 6FH, 70H, 74H, 69H, 6FH, 6EH, 20H, 74H       ; 0C00 _ option t
        db 6FH, 20H, 60H, 2DH, 77H, 27H, 00H            ; 0C08 _ o `-w'.

?_376:                                                  ; byte
        db 61H, 6CH, 6CH, 00H                           ; 0C0F _ all.

?_377:                                                  ; byte
        db 6EH, 6FH, 6EH, 65H, 00H                      ; 0C13 _ none.

?_378:                                                  ; byte
        db 69H, 6EH, 76H, 61H, 6CH, 69H, 64H, 20H       ; 0C18 _ invalid 
        db 77H, 61H, 72H, 6EH, 69H, 6EH, 67H, 20H       ; 0C20 _ warning 
        db 60H, 25H, 73H, 27H, 00H                      ; 0C28 _ `%s'.

?_379:                                                  ; byte
        db 75H, 6EH, 6BH, 6EH, 6FH, 77H, 6EH, 20H       ; 0C2D _ unknown 
        db 64H, 65H, 70H, 65H, 6EH, 64H, 65H, 6EH       ; 0C35 _ dependen
        db 63H, 79H, 20H, 6FH, 70H, 74H, 69H, 6FH       ; 0C3D _ cy optio
        db 6EH, 20H, 60H, 2DH, 4DH, 25H, 63H, 27H       ; 0C45 _ n `-M%c'
        db 00H                                          ; 0C4D _ .

?_380:                                                  ; byte
        db 6FH, 70H, 74H, 69H, 6FH, 6EH, 20H, 60H       ; 0C4E _ option `
        db 2DH, 4DH, 25H, 63H, 27H, 20H, 72H, 65H       ; 0C56 _ -M%c' re
        db 71H, 75H, 69H, 72H, 65H, 73H, 20H, 61H       ; 0C5E _ quires a
        db 20H, 70H, 61H, 72H, 61H, 6DH, 65H, 74H       ; 0C66 _  paramet
        db 65H, 72H, 00H                                ; 0C6E _ er.

?_381:                                                  ; byte
        db 6FH, 70H, 74H, 69H, 6FH, 6EH, 20H, 60H       ; 0C71 _ option `
        db 2DH, 2DH, 25H, 73H, 27H, 20H, 72H, 65H       ; 0C79 _ --%s' re
        db 71H, 75H, 69H, 72H, 65H, 73H, 20H, 61H       ; 0C81 _ quires a
        db 6EH, 20H, 61H, 72H, 67H, 75H, 6DH, 65H       ; 0C89 _ n argume
        db 6EH, 74H, 00H                                ; 0C91 _ nt.

?_382:                                                  ; byte
        db 75H, 6EH, 72H, 65H, 63H, 6FH, 67H, 6EH       ; 0C94 _ unrecogn
        db 69H, 73H, 65H, 64H, 20H, 6FH, 70H, 74H       ; 0C9C _ ised opt
        db 69H, 6FH, 6EH, 20H, 60H, 2DH, 2DH, 25H       ; 0CA4 _ ion `--%
        db 73H, 27H, 00H                                ; 0CAC _ s'.

?_383:                                                  ; byte
        db 75H, 6EH, 72H, 65H, 63H, 6FH, 67H, 6EH       ; 0CAF _ unrecogn
        db 69H, 73H, 65H, 64H, 20H, 6FH, 70H, 74H       ; 0CB7 _ ised opt
        db 69H, 6FH, 6EH, 20H, 60H, 2DH, 25H, 63H       ; 0CBF _ ion `-%c
        db 27H, 00H                                     ; 0CC7 _ '.

?_384:                                                  ; byte
        db 6DH, 6FH, 72H, 65H, 20H, 74H, 68H, 61H       ; 0CC9 _ more tha
        db 6EH, 20H, 6FH, 6EH, 65H, 20H, 69H, 6EH       ; 0CD1 _ n one in
        db 70H, 75H, 74H, 20H, 66H, 69H, 6CH, 65H       ; 0CD9 _ put file
        db 20H, 73H, 70H, 65H, 63H, 69H, 66H, 69H       ; 0CE1 _  specifi
        db 65H, 64H, 00H                                ; 0CE9 _ ed.

?_385:                                                  ; byte
        db 0DH, 0AH, 1AH, 00H                           ; 0CEC _ ....

?_386:                                                  ; byte
        db 72H, 00H                                     ; 0CF0 _ r.

?_387:                                                  ; byte
        db 4EH, 41H, 53H, 4DH, 45H, 4EH, 56H, 00H       ; 0CF2 _ NASMENV.

?_388:                                                  ; byte
        db 75H, 6EH, 61H, 62H, 6CH, 65H, 20H, 74H       ; 0CFA _ unable t
        db 6FH, 20H, 6FH, 70H, 65H, 6EH, 20H, 72H       ; 0D02 _ o open r
        db 65H, 73H, 70H, 6FH, 6EH, 73H, 65H, 20H       ; 0D0A _ esponse 
        db 66H, 69H, 6CH, 65H, 20H, 60H, 25H, 73H       ; 0D12 _ file `%s
        db 27H, 00H                                     ; 0D1A _ '.

?_389:                                                  ; byte
        db 6EH, 6FH, 20H, 69H, 6EH, 70H, 75H, 74H       ; 0D1C _ no input
        db 20H, 66H, 69H, 6CH, 65H, 20H, 73H, 70H       ; 0D24 _  file sp
        db 65H, 63H, 69H, 66H, 69H, 65H, 64H, 00H       ; 0D2C _ ecified.

?_390:                                                  ; byte
        db 66H, 69H, 6CH, 65H, 20H, 60H, 25H, 73H       ; 0D34 _ file `%s
        db 27H, 20H, 69H, 73H, 20H, 62H, 6FH, 74H       ; 0D3C _ ' is bot
        db 68H, 20H, 69H, 6EH, 70H, 75H, 74H, 20H       ; 0D44 _ h input 
        db 61H, 6EH, 64H, 20H, 6FH, 75H, 74H, 70H       ; 0D4C _ and outp
        db 75H, 74H, 20H, 66H, 69H, 6CH, 65H, 00H       ; 0D54 _ ut file.

?_391:                                                  ; byte
        db 63H, 61H, 6EH, 6EH, 6FH, 74H, 20H, 6FH       ; 0D5C _ cannot o
        db 70H, 65H, 6EH, 20H, 66H, 69H, 6CH, 65H       ; 0D64 _ pen file
        db 20H, 60H, 25H, 73H, 27H, 20H, 66H, 6FH       ; 0D6C _  `%s' fo
        db 72H, 20H, 65H, 72H, 72H, 6FH, 72H, 20H       ; 0D74 _ r error 
        db 6DH, 65H, 73H, 73H, 61H, 67H, 65H, 73H       ; 0D7C _ messages
        db 00H                                          ; 0D84 _ .

?_392:                                                  ; byte
        db 63H, 6FH, 6DH, 6DH, 61H, 6EH, 64H, 20H       ; 0D85 _ command 
        db 6CH, 69H, 6EH, 65H, 3AH, 20H, 33H, 32H       ; 0D8D _ line: 32
        db 2DH, 62H, 69H, 74H, 20H, 73H, 65H, 67H       ; 0D95 _ -bit seg
        db 6DH, 65H, 6EH, 74H, 20H, 73H, 69H, 7AH       ; 0D9D _ ment siz
        db 65H, 20H, 72H, 65H, 71H, 75H, 69H, 72H       ; 0DA5 _ e requir
        db 65H, 73H, 20H, 61H, 20H, 68H, 69H, 67H       ; 0DAD _ es a hig
        db 68H, 65H, 72H, 20H, 63H, 70H, 75H, 00H       ; 0DB5 _ her cpu.

?_393:                                                  ; byte
        db 73H, 65H, 67H, 6DH, 65H, 6EH, 74H, 20H       ; 0DBD _ segment 
        db 6EH, 61H, 6DH, 65H, 20H, 60H, 25H, 73H       ; 0DC5 _ name `%s
        db 27H, 20H, 6EH, 6FH, 74H, 20H, 72H, 65H       ; 0DCD _ ' not re
        db 63H, 6FH, 67H, 6EH, 69H, 7AH, 65H, 64H       ; 0DD5 _ cognized
        db 00H                                          ; 0DDD _ .

?_394:                                                  ; byte
        db 73H, 65H, 67H, 6DH, 65H, 6EH, 74H, 20H       ; 0DDE _ segment 
        db 61H, 6CH, 69H, 67H, 6EH, 6DH, 65H, 6EH       ; 0DE6 _ alignmen
        db 74H, 20H, 60H, 25H, 73H, 27H, 20H, 69H       ; 0DEE _ t `%s' i
        db 73H, 20H, 6EH, 6FH, 74H, 20H, 70H, 6FH       ; 0DF6 _ s not po
        db 77H, 65H, 72H, 20H, 6FH, 66H, 20H, 74H       ; 0DFE _ wer of t
        db 77H, 6FH, 00H                                ; 0E06 _ wo.

?_395:                                                  ; byte
        db 69H, 64H, 65H, 6EH, 74H, 69H, 66H, 69H       ; 0E09 _ identifi
        db 65H, 72H, 20H, 65H, 78H, 70H, 65H, 63H       ; 0E11 _ er expec
        db 74H, 65H, 64H, 20H, 61H, 66H, 74H, 65H       ; 0E19 _ ted afte
        db 72H, 20H, 45H, 58H, 54H, 45H, 52H, 4EH       ; 0E21 _ r EXTERN
        db 00H                                          ; 0E29 _ .

?_396:                                                  ; byte
        db 69H, 64H, 65H, 6EH, 74H, 69H, 66H, 69H       ; 0E2A _ identifi
        db 65H, 72H, 20H, 65H, 78H, 70H, 65H, 63H       ; 0E32 _ er expec
        db 74H, 65H, 64H, 20H, 61H, 66H, 74H, 65H       ; 0E3A _ ted afte
        db 72H, 20H, 47H, 4CH, 4FH, 42H, 41H, 4CH       ; 0E42 _ r GLOBAL
        db 00H                                          ; 0E4A _ .

?_397:                                                  ; byte
        db 69H, 64H, 65H, 6EH, 74H, 69H, 66H, 69H       ; 0E4B _ identifi
        db 65H, 72H, 20H, 65H, 78H, 70H, 65H, 63H       ; 0E53 _ er expec
        db 74H, 65H, 64H, 20H, 61H, 66H, 74H, 65H       ; 0E5B _ ted afte
        db 72H, 20H, 43H, 4FH, 4DH, 4DH, 4FH, 4EH       ; 0E63 _ r COMMON
        db 00H                                          ; 0E6B _ .

?_398:                                                  ; byte
        db 69H, 6EH, 76H, 61H, 6CH, 69H, 64H, 20H       ; 0E6C _ invalid 
        db 73H, 69H, 7AH, 65H, 20H, 73H, 70H, 65H       ; 0E74 _ size spe
        db 63H, 69H, 66H, 69H, 65H, 64H, 20H, 69H       ; 0E7C _ cified i
        db 6EH, 20H, 43H, 4FH, 4DH, 4DH, 4FH, 4EH       ; 0E84 _ n COMMON
        db 20H, 64H, 65H, 63H, 6CH, 61H, 72H, 61H       ; 0E8C _  declara
        db 74H, 69H, 6FH, 6EH, 00H                      ; 0E94 _ tion.

?_399:                                                  ; byte
        db 6EH, 6FH, 20H, 73H, 69H, 7AH, 65H, 20H       ; 0E99 _ no size 
        db 73H, 70H, 65H, 63H, 69H, 66H, 69H, 65H       ; 0EA1 _ specifie
        db 64H, 20H, 69H, 6EH, 20H, 43H, 4FH, 4DH       ; 0EA9 _ d in COM
        db 4DH, 4FH, 4EH, 20H, 64H, 65H, 63H, 6CH       ; 0EB1 _ MON decl
        db 61H, 72H, 61H, 74H, 69H, 6FH, 6EH, 00H       ; 0EB9 _ aration.

?_400:                                                  ; byte
        db 63H, 61H, 6EH, 6EH, 6FH, 74H, 20H, 75H       ; 0EC1 _ cannot u
        db 73H, 65H, 20H, 6EH, 6FH, 6EH, 2DH, 72H       ; 0EC9 _ se non-r
        db 65H, 6CH, 6FH, 63H, 61H, 74H, 61H, 62H       ; 0ED1 _ elocatab
        db 6CH, 65H, 20H, 65H, 78H, 70H, 72H, 65H       ; 0ED9 _ le expre
        db 73H, 73H, 69H, 6FH, 6EH, 20H, 61H, 73H       ; 0EE1 _ ssion as
        db 20H, 41H, 42H, 53H, 4FH, 4CH, 55H, 54H       ; 0EE9 _  ABSOLUT
        db 45H, 20H, 61H, 64H, 64H, 72H, 65H, 73H       ; 0EF1 _ E addres
        db 73H, 00H                                     ; 0EF9 _ s.

?_401:                                                  ; byte
        db 69H, 6EH, 76H, 61H, 6CH, 69H, 64H, 20H       ; 0EFB _ invalid 
        db 41H, 42H, 53H, 4FH, 4CH, 55H, 54H, 45H       ; 0F03 _ ABSOLUTE
        db 20H, 61H, 64H, 64H, 72H, 65H, 73H, 73H       ; 0F0B _  address
        db 20H, 69H, 6EH, 20H, 70H, 61H, 73H, 73H       ; 0F13 _  in pass
        db 20H, 74H, 77H, 6FH, 00H                      ; 0F1B _  two.

?_402:                                                  ; byte
        db 69H, 64H, 65H, 6EH, 74H, 69H, 66H, 69H       ; 0F20 _ identifi
        db 65H, 72H, 20H, 65H, 78H, 70H, 65H, 63H       ; 0F28 _ er expec
        db 74H, 65H, 64H, 20H, 61H, 66H, 74H, 65H       ; 0F30 _ ted afte
        db 72H, 20H, 44H, 45H, 42H, 55H, 47H, 00H       ; 0F38 _ r DEBUG.

?_403:                                                  ; byte
        db 44H, 45H, 42H, 55H, 47H, 20H, 69H, 64H       ; 0F40 _ DEBUG id
        db 65H, 6EH, 74H, 69H, 66H, 69H, 65H, 72H       ; 0F48 _ entifier
        db 20H, 74H, 6FH, 6FH, 20H, 6CH, 6FH, 6EH       ; 0F50 _  too lon
        db 67H, 00H                                     ; 0F58 _ g.

?_404:                                                  ; byte
        db 69H, 6EH, 76H, 61H, 6CH, 69H, 64H, 20H       ; 0F5A _ invalid 
        db 77H, 61H, 72H, 6EH, 69H, 6EH, 67H, 20H       ; 0F62 _ warning 
        db 69H, 64H, 20H, 69H, 6EH, 20H, 57H, 41H       ; 0F6A _ id in WA
        db 52H, 4EH, 49H, 4EH, 47H, 20H, 64H, 69H       ; 0F72 _ RNING di
        db 72H, 65H, 63H, 74H, 69H, 76H, 65H, 00H       ; 0F7A _ rective.

?_405:                                                  ; byte
        db 75H, 6EH, 6BH, 6EH, 6FH, 77H, 6EH, 20H       ; 0F82 _ unknown 
        db 27H, 66H, 6CH, 6FH, 61H, 74H, 27H, 20H       ; 0F8A _ 'float' 
        db 64H, 69H, 72H, 65H, 63H, 74H, 69H, 76H       ; 0F92 _ directiv
        db 65H, 3AH, 20H, 25H, 73H, 00H                 ; 0F9A _ e: %s.

?_406:                                                  ; byte
        db 75H, 6EH, 72H, 65H, 63H, 6FH, 67H, 6EH       ; 0FA0 _ unrecogn
        db 69H, 73H, 65H, 64H, 20H, 64H, 69H, 72H       ; 0FA8 _ ised dir
        db 65H, 63H, 74H, 69H, 76H, 65H, 20H, 5BH       ; 0FB0 _ ective [
        db 25H, 73H, 5DH, 00H                           ; 0FB8 _ %s].

?_407:                                                  ; byte
        db 69H, 6EH, 76H, 61H, 6CH, 69H, 64H, 20H       ; 0FBC _ invalid 
        db 70H, 61H, 72H, 61H, 6DH, 65H, 74H, 65H       ; 0FC4 _ paramete
        db 72H, 20H, 74H, 6FH, 20H, 5BH, 25H, 73H       ; 0FCC _ r to [%s
        db 5DH, 20H, 64H, 69H, 72H, 65H, 63H, 74H       ; 0FD4 _ ] direct
        db 69H, 76H, 65H, 00H                           ; 0FDC _ ive.

?_408:                                                  ; byte
        db 45H, 51H, 55H, 20H, 6EH, 6FH, 74H, 20H       ; 0FE0 _ EQU not 
        db 70H, 72H, 65H, 63H, 65H, 64H, 65H, 64H       ; 0FE8 _ preceded
        db 20H, 62H, 79H, 20H, 6CH, 61H, 62H, 65H       ; 0FF0 _  by labe
        db 6CH, 00H                                     ; 0FF8 _ l.

?_409:                                                  ; byte
        db 62H, 61H, 64H, 20H, 73H, 79H, 6EH, 74H       ; 0FFA _ bad synt
        db 61H, 78H, 20H, 66H, 6FH, 72H, 20H, 45H       ; 1002 _ ax for E
        db 51H, 55H, 00H                                ; 100A _ QU.

?_410:                                                  ; byte
        db 70H, 68H, 61H, 73H, 65H, 20H, 65H, 72H       ; 100D _ phase er
        db 72H, 6FH, 72H, 20H, 64H, 65H, 74H, 65H       ; 1015 _ ror dete
        db 63H, 74H, 65H, 64H, 20H, 61H, 74H, 20H       ; 101D _ cted at 
        db 65H, 6EH, 64H, 20H, 6FH, 66H, 20H, 61H       ; 1025 _ end of a
        db 73H, 73H, 65H, 6DH, 62H, 6CH, 79H, 2EH       ; 102D _ ssembly.
        db 00H                                          ; 1035 _ .

?_411:                                                  ; byte
        db 43H, 61H, 6EH, 27H, 74H, 20H, 66H, 69H       ; 1036 _ Can't fi
        db 6EH, 64H, 20H, 76H, 61H, 6CH, 69H, 64H       ; 103E _ nd valid
        db 20H, 76H, 61H, 6CH, 75H, 65H, 73H, 20H       ; 1046 _  values 
        db 66H, 6FH, 72H, 20H, 61H, 6CH, 6CH, 20H       ; 104E _ for all 
        db 6CH, 61H, 62H, 65H, 6CH, 73H, 20H, 61H       ; 1056 _ labels a
        db 66H, 74H, 65H, 72H, 20H, 25H, 64H, 20H       ; 105E _ fter %d 
        db 70H, 61H, 73H, 73H, 65H, 73H, 2CH, 20H       ; 1066 _ passes, 
        db 67H, 69H, 76H, 69H, 6EH, 67H, 20H, 75H       ; 106E _ giving u
        db 70H, 2EH, 00H                                ; 1076 _ p..

?_412:                                                  ; byte
        db 50H, 6FH, 73H, 73H, 69H, 62H, 6CH, 65H       ; 1079 _ Possible
        db 20H, 63H, 61H, 75H, 73H, 65H, 73H, 3AH       ; 1081 _  causes:
        db 20H, 72H, 65H, 63H, 75H, 72H, 73H, 69H       ; 1089 _  recursi
        db 76H, 65H, 20H, 45H, 51H, 55H, 73H, 2CH       ; 1091 _ ve EQUs,
        db 20H, 6DH, 61H, 63H, 72H, 6FH, 20H, 61H       ; 1099 _  macro a
        db 62H, 75H, 73H, 65H, 2EH, 00H                 ; 10A1 _ buse..

?_413:                                                  ; byte
        db 69H, 6EH, 66H, 6FH, 3AH, 20H, 61H, 73H       ; 10A7 _ info: as
        db 73H, 65H, 6DH, 62H, 6CH, 79H, 20H, 72H       ; 10AF _ sembly r
        db 65H, 71H, 75H, 69H, 72H, 65H, 64H, 20H       ; 10B7 _ equired 
        db 31H, 2BH, 25H, 64H, 2BH, 31H, 20H, 70H       ; 10BF _ 1+%d+1 p
        db 61H, 73H, 73H, 65H, 73H, 0AH, 00H            ; 10C7 _ asses..

?_414:                                                  ; byte
        db 25H, 73H, 3AH, 25H, 6CH, 64H, 3AH, 20H       ; 10CE _ %s:%ld: 
        db 00H                                          ; 10D6 _ .

?_415:                                                  ; byte
        db 6EH, 61H, 73H, 6DH, 3AH, 20H, 00H            ; 10D7 _ nasm: .

?_416:                                                  ; byte
        db 25H, 73H, 28H, 25H, 6CH, 64H, 29H, 20H       ; 10DE _ %s(%ld) 
        db 3AH, 20H, 00H                                ; 10E6 _ : .

?_417:                                                  ; byte
        db 77H, 61H, 72H, 6EH, 69H, 6EH, 67H, 3AH       ; 10E9 _ warning:
        db 20H, 00H                                     ; 10F1 _  .

?_418:                                                  ; byte
        db 65H, 72H, 72H, 6FH, 72H, 3AH, 20H, 00H       ; 10F3 _ error: .

?_419:                                                  ; byte
        db 66H, 61H, 74H, 61H, 6CH, 3AH, 20H, 00H       ; 10FB _ fatal: .

?_420:                                                  ; byte
        db 70H, 61H, 6EH, 69H, 63H, 3AH, 20H, 00H       ; 1103 _ panic: .

?_421:                                                  ; byte
        db 64H, 65H, 62H, 75H, 67H, 3AH, 20H, 00H       ; 110B _ debug: .

?_422:                                                  ; byte
        db 25H, 73H, 25H, 73H, 0AH, 00H                 ; 1113 _ %s%s..

?_423:                                                  ; byte
        db 74H, 79H, 70H, 65H, 20H, 60H, 6EH, 61H       ; 1119 _ type `na
        db 73H, 6DH, 20H, 2DH, 68H, 27H, 20H, 66H       ; 1121 _ sm -h' f
        db 6FH, 72H, 20H, 68H, 65H, 6CH, 70H, 0AH       ; 1129 _ or help.
        db 00H                                          ; 1131 _ .

?_424:                                                  ; byte
        db 75H, 6EH, 61H, 62H, 6CH, 65H, 20H, 74H       ; 1132 _ unable t
        db 6FH, 20H, 6FH, 70H, 65H, 6EH, 20H, 69H       ; 113A _ o open i
        db 6EH, 70H, 75H, 74H, 20H, 66H, 69H, 6CH       ; 1142 _ nput fil
        db 65H, 20H, 60H, 25H, 73H, 27H, 00H            ; 114A _ e `%s'.

?_425:                                                  ; byte
        db 25H, 6CH, 69H, 6EH, 65H, 00H                 ; 1151 _ %line.

?_426:                                                  ; byte
        db 25H, 6CH, 64H, 2BH, 25H, 64H, 20H, 25H       ; 1157 _ %ld+%d %
        db 73H, 00H                                     ; 115F _ s.

?_427:                                                  ; byte
        db 38H, 30H, 38H, 36H, 00H                      ; 1161 _ 8086.

?_428:                                                  ; byte
        db 31H, 38H, 36H, 00H                           ; 1166 _ 186.

?_429:                                                  ; byte
        db 32H, 38H, 36H, 00H                           ; 116A _ 286.

?_430:                                                  ; byte
        db 33H, 38H, 36H, 00H                           ; 116E _ 386.

?_431:                                                  ; byte
        db 34H, 38H, 36H, 00H                           ; 1172 _ 486.

?_432:                                                  ; byte
        db 35H, 38H, 36H, 00H                           ; 1176 _ 586.

?_433:                                                  ; byte
        db 70H, 65H, 6EH, 74H, 69H, 75H, 6DH, 00H       ; 117A _ pentium.

?_434:                                                  ; byte
        db 36H, 38H, 36H, 00H                           ; 1182 _ 686.

?_435:                                                  ; byte
        db 70H, 70H, 72H, 6FH, 00H                      ; 1186 _ ppro.

?_436:                                                  ; byte
        db 70H, 65H, 6EH, 74H, 69H, 75H, 6DH, 70H       ; 118B _ pentiump
        db 72H, 6FH, 00H                                ; 1193 _ ro.

?_437:                                                  ; byte
        db 70H, 32H, 00H                                ; 1196 _ p2.

?_438:                                                  ; byte
        db 70H, 33H, 00H                                ; 1199 _ p3.

?_439:                                                  ; byte
        db 6BH, 61H, 74H, 6DH, 61H, 69H, 00H            ; 119C _ katmai.

?_440:                                                  ; byte
        db 70H, 34H, 00H                                ; 11A3 _ p4.

?_441:                                                  ; byte
        db 77H, 69H, 6CH, 6CH, 61H, 6DH, 65H, 74H       ; 11A6 _ willamet
        db 74H, 65H, 00H                                ; 11AE _ te.

?_442:                                                  ; byte
        db 70H, 72H, 65H, 73H, 63H, 6FH, 74H, 74H       ; 11B1 _ prescott
        db 00H                                          ; 11B9 _ .

?_443:                                                  ; byte
        db 78H, 36H, 34H, 00H                           ; 11BA _ x64.

?_444:                                                  ; byte
        db 78H, 38H, 36H, 2DH, 36H, 34H, 00H            ; 11BE _ x86-64.

?_445:                                                  ; byte
        db 69H, 61H, 36H, 34H, 00H                      ; 11C5 _ ia64.

?_446:                                                  ; byte
        db 69H, 61H, 2DH, 36H, 34H, 00H                 ; 11CA _ ia-64.

?_447:                                                  ; byte
        db 69H, 74H, 61H, 6EH, 69H, 75H, 6DH, 00H       ; 11D0 _ itanium.

?_448:                                                  ; byte
        db 69H, 74H, 61H, 6EH, 69H, 63H, 00H            ; 11D8 _ itanic.

?_449:                                                  ; byte
        db 6DH, 65H, 72H, 63H, 65H, 64H, 00H            ; 11DF _ merced.

?_450:                                                  ; byte
        db 75H, 6EH, 6BH, 6EH, 6FH, 77H, 6EH, 20H       ; 11E6 _ unknown 
        db 27H, 63H, 70H, 75H, 27H, 20H, 74H, 79H       ; 11EE _ 'cpu' ty
        db 70H, 65H, 00H                                ; 11F6 _ pe.

?_451:                                                  ; byte
        db 63H, 61H, 6EH, 6EH, 6FH, 74H, 20H, 73H       ; 11F9 _ cannot s
        db 70H, 65H, 63H, 69H, 66H, 79H, 20H, 33H       ; 1201 _ pecify 3
        db 32H, 2DH, 62H, 69H, 74H, 20H, 73H, 65H       ; 1209 _ 2-bit se
        db 67H, 6DH, 65H, 6EH, 74H, 20H, 6FH, 6EH       ; 1211 _ gment on
        db 20H, 70H, 72H, 6FH, 63H, 65H, 73H, 73H       ; 1219 _  process
        db 6FH, 72H, 20H, 62H, 65H, 6CH, 6FH, 77H       ; 1221 _ or below
        db 20H, 61H, 20H, 33H, 38H, 36H, 00H            ; 1229 _  a 386.

?_452:                                                  ; byte
        db 63H, 61H, 6EH, 6EH, 6FH, 74H, 20H, 73H       ; 1230 _ cannot s
        db 70H, 65H, 63H, 69H, 66H, 79H, 20H, 36H       ; 1238 _ pecify 6
        db 34H, 2DH, 62H, 69H, 74H, 20H, 73H, 65H       ; 1240 _ 4-bit se
        db 67H, 6DH, 65H, 6EH, 74H, 20H, 6FH, 6EH       ; 1248 _ gment on
        db 20H, 70H, 72H, 6FH, 63H, 65H, 73H, 73H       ; 1250 _  process
        db 6FH, 72H, 20H, 62H, 65H, 6CH, 6FH, 77H       ; 1258 _ or below
        db 20H, 61H, 6EH, 20H, 78H, 38H, 36H, 2DH       ; 1260 _  an x86-
        db 36H, 34H, 00H                                ; 1268 _ 64.

?_453:                                                  ; byte
        db 25H, 73H, 20H, 6FH, 75H, 74H, 70H, 75H       ; 126B _ %s outpu
        db 74H, 20H, 66H, 6FH, 72H, 6DH, 61H, 74H       ; 1273 _ t format
        db 20H, 64H, 6FH, 65H, 73H, 20H, 6EH, 6FH       ; 127B _  does no
        db 74H, 20H, 73H, 75H, 70H, 70H, 6FH, 72H       ; 1283 _ t suppor
        db 74H, 20H, 36H, 34H, 2DH, 62H, 69H, 74H       ; 128B _ t 64-bit
        db 20H, 63H, 6FH, 64H, 65H, 00H                 ; 1293 _  code.

?_454:                                                  ; byte
        db 60H, 25H, 73H, 27H, 20H, 69H, 73H, 20H       ; 1299 _ `%s' is 
        db 6EH, 6FH, 74H, 20H, 61H, 20H, 76H, 61H       ; 12A1 _ not a va
        db 6CH, 69H, 64H, 20H, 73H, 65H, 67H, 6DH       ; 12A9 _ lid segm
        db 65H, 6EH, 74H, 20H, 73H, 69H, 7AH, 65H       ; 12B1 _ ent size
        db 3BH, 20H, 6DH, 75H, 73H, 74H, 20H, 62H       ; 12B9 _ ; must b
        db 65H, 20H, 31H, 36H, 2CH, 20H, 33H, 32H       ; 12C1 _ e 16, 32
        db 20H, 6FH, 72H, 20H, 36H, 34H, 00H            ; 12C9 _  or 64.


SECTION ISORTAB3CONST2 align=2 noexecute                ; section number 3, data

        dd ISORTAB3_GROUP:?_305                         ; 0000 _ 00000000 (far)
        dd ISORTAB3_GROUP:?_306                         ; 0004 _ 00000006 (far)
        db 00H, 00H                                     ; 0008 _ ..
        dd ISORTAB3_GROUP:?_307                         ; 000A _ 0000001F (far)
        dd ISORTAB3_GROUP:?_308                         ; 000E _ 0000002C (far)
        db 01H, 00H                                     ; 0012 _ ..
        dd ISORTAB3_GROUP:?_309                         ; 0014 _ 00000053 (far)
        dd ISORTAB3_GROUP:?_310                         ; 0018 _ 00000061 (far)
        db 00H, 00H                                     ; 001C _ ..
        dd ISORTAB3_GROUP:?_311                         ; 001E _ 00000079 (far)
        dd ISORTAB3_GROUP:?_312                         ; 0022 _ 00000088 (far)
        db 01H, 00H                                     ; 0026 _ ..
        dd ISORTAB3_GROUP:?_313                         ; 0028 _ 000000BA (far)
        dd ISORTAB3_GROUP:?_314                         ; 002C _ 000000C8 (far)
        db 01H, 00H                                     ; 0030 _ ..
        dd ISORTAB3_GROUP:?_315                         ; 0032 _ 000000F3 (far)
        dd ISORTAB3_GROUP:?_316                         ; 0036 _ 00000103 (far)
        db 01H, 00H                                     ; 003A _ ..
        dd ISORTAB3_GROUP:?_317                         ; 003C _ 00000121 (far)
        dd ISORTAB3_GROUP:?_318                         ; 0040 _ 00000134 (far)
        db 00H, 00H                                     ; 0044 _ ..
        dd ISORTAB3_GROUP:?_319                         ; 0046 _ 0000016C (far)
        dd ISORTAB3_GROUP:?_320                         ; 004A _ 0000017B (far)
        db 01H, 00H                                     ; 004E _ ..
        dd ISORTAB3_GROUP:?_321                         ; 0050 _ 00000193 (far)
        dd ISORTAB3_GROUP:?_322                         ; 0054 _ 000001A0 (far)
        db 00H, 00H                                     ; 0058 _ ..
        dd ISORTAB3_GROUP:?_323                         ; 005A _ 000001B8 (far)
        dd ISORTAB3_GROUP:?_324                         ; 005E _ 000001C8 (far)
        db 00H, 00H                                     ; 0062 _ ..
        dd ISORTAB3_GROUP:?_325                         ; 0064 _ 000001E1 (far)
        dd ISORTAB3_GROUP:?_326                         ; 0068 _ 000001EF (far)
        db 01H, 00H                                     ; 006C _ ..
        dd ISORTAB3_GROUP:?_327                         ; 006E _ 00000218 (far)
        dd ISORTAB3_GROUP:?_328                         ; 0072 _ 0000021D (far)
        db 01H, 00H                                     ; 0076 _ ..


SECTION ISORTAB3_DATA align=2 noexecute                 ; section number 4, data

_tasm_compatible_mode:                                  ; byte
        db 00H                                          ; 0000 _ .

_maxbits:                                               ; byte
        db 00H, 00H                                     ; 0001 _ ..

_globalrel:                                             ; byte
        db 00H, 00H                                     ; 0003 _ ..

_ofmt:                                                  ; byte
        dd _of_bin                                      ; 0005 _ 00000000 (far)

_ofile:                                                 ; byte
        db 00H, 00H, 00H, 00H                           ; 0009 _ ....

_optimizing:                                            ; byte
        db 0FFH, 3FH, 10H, 00H, 00H, 00H, 00H, 0FH      ; 000D _ .?......
        db 00H, 00H, 00H, 0FH, 00H, 00H, 00H, 00H       ; 0015 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H                 ; 001D _ ......
        dd __STK                                        ; 0023 _ 00000000 (far)
        dd fputs_                                       ; 0027 _ 00000000 (far)
        dd fputc_                                       ; 002B _ 00000000 (far)

_user_nolist:                                           ; byte
        db 00H, 00H                                     ; 002F _ ..

_textopts:                                              ; byte
        dd ISORTAB3_GROUP:?_329                         ; 0031 _ 00000231 (far)
        db 00H, 00H                                     ; 0035 _ ..
        dd ISORTAB3_GROUP:?_330                         ; 0037 _ 00000238 (far)
        dd 00000001H, 00000000H                         ; 003B _ 1 0 
        db 00H                                          ; 0043 _ .


SECTION ISORTAB3_BSS align=2 noexecute                  ; section number 5, data

_global_offset_changed:                                 ; byte
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0000 _ ........

_prev_offset_changed:                                   ; byte
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0008 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0010 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0020 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0028 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0030 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0038 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0060 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0068 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0070 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0078 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0080 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0088 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0090 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0098 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00A0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00A8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00C0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00C8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00D0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00D8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00E0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00E8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00F0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00F8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0100 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0108 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0110 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0118 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0120 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0128 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0130 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0138 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0140 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0148 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0150 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0158 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0160 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0168 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0170 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0178 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0180 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0188 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0190 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0198 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01A0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01A8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01B8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01C0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01C8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01D0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01D8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01E0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01E8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01F0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01F8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0200 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0208 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0210 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0218 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0220 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0228 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0230 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0238 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0240 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0248 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0250 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0258 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0260 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0268 _ ........
        db 00H, 00H, 00H, 00H                           ; 0270 _ ....

_abs_offset:                                            ; byte
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0274 _ ........

_abs_seg:                                               ; byte
        db 00H, 00H, 00H, 00H                           ; 027C _ ....

_stall_count:                                           ; byte
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0280 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0288 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0290 _ ........

_dfmt:                                                  ; byte
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0298 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 02A0 _ ........
        db 00H, 00H, 00H, 00H                           ; 02A8 _ ....

_in_abs_seg:                                            ; byte
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 02AC _ ........

_pass0:                                                 ; byte
        db 00H, 00H                                     ; 02B4 _ ..

_passn:                                                 ; byte
        db 00H, 00H, 00H, 00H, 00H                      ; 02B6 _ .....


