/* This file auto-generated from insns.dat by insns.pl - don't edit it */

#include "nasm.h"
#include "insns.h"

static struct itemplate instrux_AAA[] = {
    {I_AAA, 0, {0,0,0}, "\1\x37", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_AAD[] = {
    {I_AAD, 0, {0,0,0}, "\2\xD5\x0A", IF_8086},
    {I_AAD, 1, {IMMEDIATE,0,0}, "\1\xD5\24", IF_8086|IF_SB},
    ITEMPLATE_END
};

static struct itemplate instrux_AAM[] = {
    {I_AAM, 0, {0,0,0}, "\2\xD4\x0A", IF_8086},
    {I_AAM, 1, {IMMEDIATE,0,0}, "\1\xD4\24", IF_8086|IF_SB},
    ITEMPLATE_END
};

static struct itemplate instrux_AAS[] = {
    {I_AAS, 0, {0,0,0}, "\1\x3F", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_ADC[] = {
    {I_ADC, 2, {MEMORY,REG8,0}, "\300\1\x10\101", IF_8086|IF_SM},
    {I_ADC, 2, {REG8,REG8,0}, "\1\x10\101", IF_8086},
    {I_ADC, 2, {MEMORY,REG16,0}, "\320\300\1\x11\101", IF_8086|IF_SM},
    {I_ADC, 2, {REG16,REG16,0}, "\320\1\x11\101", IF_8086},
    {I_ADC, 2, {REG8,MEMORY,0}, "\301\1\x12\110", IF_8086|IF_SM},
    {I_ADC, 2, {REG8,REG8,0}, "\1\x12\110", IF_8086},
    {I_ADC, 2, {REG16,MEMORY,0}, "\320\301\1\x13\110", IF_8086|IF_SM},
    {I_ADC, 2, {REG16,REG16,0}, "\320\1\x13\110", IF_8086},
    {I_ADC, 2, {REGMEM|BITS16,IMMEDIATE|BITS8,0}, "\320\300\1\x83\202\15", IF_8086},
    {I_ADC, 2, {REG_AL,IMMEDIATE,0}, "\1\x14\21", IF_8086|IF_SM},
    {I_ADC, 2, {REG_AX,SBYTE,0}, "\320\1\x83\202\15", IF_8086|IF_SM},
    {I_ADC, 2, {REG_AX,IMMEDIATE,0}, "\320\1\x15\31", IF_8086|IF_SM},
    {I_ADC, 2, {REGMEM|BITS8,IMMEDIATE,0}, "\300\1\x80\202\21", IF_8086|IF_SM},
    {I_ADC, 2, {REGMEM|BITS16,IMMEDIATE,0}, "\320\300\134\1\x81\202\131", IF_8086|IF_SM},
    {I_ADC, 2, {MEMORY,IMMEDIATE|BITS8,0}, "\300\1\x80\202\21", IF_8086|IF_SM},
    {I_ADC, 2, {MEMORY,IMMEDIATE|BITS16,0}, "\320\300\134\1\x81\202\131", IF_8086|IF_SM},
	ITEMPLATE_END
};

static struct itemplate instrux_ADD[] = {
    {I_ADD, 2, {MEMORY,REG8,0}, "\300\17\101", IF_8086|IF_SM},
    {I_ADD, 2, {REG8,REG8,0}, "\17\101", IF_8086},
    {I_ADD, 2, {MEMORY,REG16,0}, "\320\300\1\x01\101", IF_8086|IF_SM},
    {I_ADD, 2, {REG16,REG16,0}, "\320\1\x01\101", IF_8086},
    {I_ADD, 2, {REG8,MEMORY,0}, "\301\1\x02\110", IF_8086|IF_SM},
    {I_ADD, 2, {REG8,REG8,0}, "\1\x02\110", IF_8086},
    {I_ADD, 2, {REG16,MEMORY,0}, "\320\301\1\x03\110", IF_8086|IF_SM},
    {I_ADD, 2, {REG16,REG16,0}, "\320\1\x03\110", IF_8086},
    {I_ADD, 2, {REGMEM|BITS16,IMMEDIATE|BITS8,0}, "\320\300\1\x83\200\15", IF_8086},
    {I_ADD, 2, {REG_AL,IMMEDIATE,0}, "\1\x04\21", IF_8086|IF_SM},
    {I_ADD, 2, {REG_AX,SBYTE,0}, "\320\1\x83\200\15", IF_8086|IF_SM},
    {I_ADD, 2, {REG_AX,IMMEDIATE,0}, "\320\1\x05\31", IF_8086|IF_SM},
    {I_ADD, 2, {REGMEM|BITS8,IMMEDIATE,0}, "\300\1\x80\200\21", IF_8086|IF_SM},
    {I_ADD, 2, {REGMEM|BITS16,IMMEDIATE,0}, "\320\300\134\1\x81\200\131", IF_8086|IF_SM},
    {I_ADD, 2, {MEMORY,IMMEDIATE|BITS8,0}, "\300\1\x80\200\21", IF_8086|IF_SM},
    {I_ADD, 2, {MEMORY,IMMEDIATE|BITS16,0}, "\320\300\134\1\x81\200\131", IF_8086|IF_SM},
    ITEMPLATE_END
};

static struct itemplate instrux_AND[] = {
    {I_AND, 2, {MEMORY,REG8,0}, "\300\1\x20\101", IF_8086|IF_SM},
    {I_AND, 2, {REG8,REG8,0}, "\1\x20\101", IF_8086},
    {I_AND, 2, {MEMORY,REG16,0}, "\320\300\1\x21\101", IF_8086|IF_SM},
    {I_AND, 2, {REG16,REG16,0}, "\320\1\x21\101", IF_8086},
    {I_AND, 2, {REG8,MEMORY,0}, "\301\1\x22\110", IF_8086|IF_SM},
    {I_AND, 2, {REG8,REG8,0}, "\1\x22\110", IF_8086},
    {I_AND, 2, {REG16,MEMORY,0}, "\320\301\1\x23\110", IF_8086|IF_SM},
    {I_AND, 2, {REG16,REG16,0}, "\320\1\x23\110", IF_8086},
    {I_AND, 2, {REGMEM|BITS16,IMMEDIATE|BITS8,0}, "\320\300\1\x83\204\15", IF_8086},
    {I_AND, 2, {REG_AL,IMMEDIATE,0}, "\1\x24\21", IF_8086|IF_SM},
    {I_AND, 2, {REG_AX,SBYTE,0}, "\320\1\x83\204\15", IF_8086|IF_SM},
    {I_AND, 2, {REG_AX,IMMEDIATE,0}, "\320\1\x25\31", IF_8086|IF_SM},
    {I_AND, 2, {REGMEM|BITS8,IMMEDIATE,0}, "\300\1\x80\204\21", IF_8086|IF_SM},
    {I_AND, 2, {REGMEM|BITS16,IMMEDIATE,0}, "\320\300\134\1\x81\204\131", IF_8086|IF_SM},
    {I_AND, 2, {MEMORY,IMMEDIATE|BITS8,0}, "\300\1\x80\204\21", IF_8086|IF_SM},
    {I_AND, 2, {MEMORY,IMMEDIATE|BITS16,0}, "\320\300\134\1\x81\204\131", IF_8086|IF_SM},
    ITEMPLATE_END
};

static struct itemplate instrux_CALL[] = {
    {I_CALL, 1, {IMMEDIATE,0,0}, "\322\1\xE8\64", IF_8086},
    {I_CALL, 1, {IMMEDIATE|NEAR,0,0}, "\322\1\xE8\64", IF_8086},
    {I_CALL, 1, {IMMEDIATE|FAR,0,0}, "\322\1\x9A\34\37", IF_8086},
    {I_CALL, 1, {IMMEDIATE|BITS16,0,0}, "\320\1\xE8\64", IF_8086},
    {I_CALL, 1, {IMMEDIATE|BITS16|NEAR,0,0}, "\320\1\xE8\64", IF_8086},
    {I_CALL, 1, {IMMEDIATE|BITS16|FAR,0,0}, "\320\1\x9A\34\37", IF_8086},
    {I_CALL, 2, {IMMEDIATE|COLON,IMMEDIATE,0}, "\322\1\x9A\35\30", IF_8086},
    {I_CALL, 2, {IMMEDIATE|BITS16|COLON,IMMEDIATE,0}, "\320\1\x9A\31\30", IF_8086},
    {I_CALL, 2, {IMMEDIATE|COLON,IMMEDIATE|BITS16,0}, "\320\1\x9A\31\30", IF_8086},
    {I_CALL, 1, {MEMORY|FAR,0,0}, "\322\300\1\xFF\203", IF_8086},
    {I_CALL, 1, {MEMORY|BITS16|FAR,0,0}, "\320\300\1\xFF\203", IF_8086},
    {I_CALL, 1, {MEMORY|NEAR,0,0}, "\322\300\1\xFF\202", IF_8086},
    {I_CALL, 1, {MEMORY|BITS16|NEAR,0,0}, "\320\300\1\xFF\202", IF_8086},
    {I_CALL, 1, {REG16,0,0}, "\320\300\1\xFF\202", IF_8086},
    {I_CALL, 1, {MEMORY,0,0}, "\322\300\1\xFF\202", IF_8086},
    {I_CALL, 1, {MEMORY|BITS16,0,0}, "\320\300\1\xFF\202", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_CBW[] = {
    {I_CBW, 0, {0,0,0}, "\320\1\x98", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_CLC[] = {
    {I_CLC, 0, {0,0,0}, "\1\xF8", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_CLD[] = {
    {I_CLD, 0, {0,0,0}, "\1\xFC", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_CLI[] = {
    {I_CLI, 0, {0,0,0}, "\1\xFA", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_CMC[] = {
    {I_CMC, 0, {0,0,0}, "\1\xF5", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_CMP[] = {
    {I_CMP, 2, {MEMORY,REG8,0}, "\300\1\x38\101", IF_8086|IF_SM},
    {I_CMP, 2, {REG8,REG8,0}, "\1\x38\101", IF_8086},
    {I_CMP, 2, {MEMORY,REG16,0}, "\320\300\1\x39\101", IF_8086|IF_SM},
    {I_CMP, 2, {REG16,REG16,0}, "\320\1\x39\101", IF_8086},
    {I_CMP, 2, {REG8,MEMORY,0}, "\301\1\x3A\110", IF_8086|IF_SM},
    {I_CMP, 2, {REG8,REG8,0}, "\1\x3A\110", IF_8086},
    {I_CMP, 2, {REG16,MEMORY,0}, "\320\301\1\x3B\110", IF_8086|IF_SM},
    {I_CMP, 2, {REG16,REG16,0}, "\320\1\x3B\110", IF_8086},
    {I_CMP, 2, {REGMEM|BITS16,IMMEDIATE|BITS8,0}, "\320\300\1\x83\207\15", IF_8086},
    {I_CMP, 2, {REG_AL,IMMEDIATE,0}, "\1\x3C\21", IF_8086|IF_SM},
    {I_CMP, 2, {REG_AX,SBYTE,0}, "\320\1\x83\207\15", IF_8086|IF_SM},
    {I_CMP, 2, {REG_AX,IMMEDIATE,0}, "\320\1\x3D\31", IF_8086|IF_SM},
    {I_CMP, 2, {REGMEM|BITS8,IMMEDIATE,0}, "\300\1\x80\207\21", IF_8086|IF_SM},
    {I_CMP, 2, {REGMEM|BITS16,IMMEDIATE,0}, "\320\300\134\1\x81\207\131", IF_8086|IF_SM},
    {I_CMP, 2, {MEMORY,IMMEDIATE|BITS8,0}, "\300\1\x80\207\21", IF_8086|IF_SM},
    {I_CMP, 2, {MEMORY,IMMEDIATE|BITS16,0}, "\320\300\134\1\x81\207\131", IF_8086|IF_SM},
    ITEMPLATE_END
};

static struct itemplate instrux_CMPSB[] = {
    {I_CMPSB, 0, {0,0,0}, "\332\1\xA6", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_CMPSW[] = {
    {I_CMPSW, 0, {0,0,0}, "\332\320\1\xA7", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_CWD[] = {
    {I_CWD, 0, {0,0,0}, "\320\1\x99", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_DAA[] = {
    {I_DAA, 0, {0,0,0}, "\1\x27", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_DAS[] = {
    {I_DAS, 0, {0,0,0}, "\1\x2F", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_DB[] = {
    ITEMPLATE_END
};

static struct itemplate instrux_DD[] = {
    ITEMPLATE_END
};

static struct itemplate instrux_DEC[] = {
    {I_DEC, 1, {REG16,0,0}, "\320\10\x48", IF_8086},
    {I_DEC, 1, {REGMEM|BITS8,0,0}, "\300\1\xFE\201", IF_8086},
    {I_DEC, 1, {REGMEM|BITS16,0,0}, "\320\300\1\xFF\201", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_DIV[] = {
    {I_DIV, 1, {REGMEM|BITS8,0,0}, "\300\1\xF6\206", IF_8086},
    {I_DIV, 1, {REGMEM|BITS16,0,0}, "\320\300\1\xF7\206", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_DQ[] = {
    ITEMPLATE_END
};

static struct itemplate instrux_DT[] = {
    ITEMPLATE_END
};

static struct itemplate instrux_DW[] = {
    ITEMPLATE_END
};

static struct itemplate instrux_EQU[] = {
    {I_EQU, 1, {IMMEDIATE,0,0}, "\0", IF_8086},
    {I_EQU, 2, {IMMEDIATE|COLON,IMMEDIATE,0}, "\0", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_F2XM1[] = {
    {I_F2XM1, 0, {0,0,0}, "\2\xD9\xF0", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FABS[] = {
    {I_FABS, 0, {0,0,0}, "\2\xD9\xE1", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FADD[] = {
    {I_FADD, 1, {MEMORY|BITS32,0,0}, "\300\1\xD8\200", IF_8086|IF_FPU},
    {I_FADD, 1, {MEMORY|BITS64,0,0}, "\300\1\xDC\200", IF_8086|IF_FPU},
    {I_FADD, 1, {FPUREG|TO,0,0}, "\1\xDC\10\xC0", IF_8086|IF_FPU},
    {I_FADD, 1, {FPUREG,0,0}, "\1\xD8\10\xC0", IF_8086|IF_FPU},
    {I_FADD, 2, {FPUREG,FPU0,0}, "\1\xDC\10\xC0", IF_8086|IF_FPU},
    {I_FADD, 2, {FPU0,FPUREG,0}, "\1\xD8\11\xC0", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FADDP[] = {
    {I_FADDP, 1, {FPUREG,0,0}, "\1\xDE\10\xC0", IF_8086|IF_FPU},
    {I_FADDP, 2, {FPUREG,FPU0,0}, "\1\xDE\10\xC0", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FBLD[] = {
    {I_FBLD, 1, {MEMORY|BITS80,0,0}, "\300\1\xDF\204", IF_8086|IF_FPU},
    {I_FBLD, 1, {MEMORY,0,0}, "\300\1\xDF\204", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FBSTP[] = {
    {I_FBSTP, 1, {MEMORY|BITS80,0,0}, "\300\1\xDF\206", IF_8086|IF_FPU},
    {I_FBSTP, 1, {MEMORY,0,0}, "\300\1\xDF\206", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FCHS[] = {
    {I_FCHS, 0, {0,0,0}, "\2\xD9\xE0", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FCLEX[] = {
    {I_FCLEX, 0, {0,0,0}, "\3\x9B\xDB\xE2", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FCOM[] = {
    {I_FCOM, 1, {MEMORY|BITS32,0,0}, "\300\1\xD8\202", IF_8086|IF_FPU},
    {I_FCOM, 1, {MEMORY|BITS64,0,0}, "\300\1\xDC\202", IF_8086|IF_FPU},
    {I_FCOM, 1, {FPUREG,0,0}, "\1\xD8\10\xD0", IF_8086|IF_FPU},
    {I_FCOM, 2, {FPU0,FPUREG,0}, "\1\xD8\11\xD0", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FCOMP[] = {
    {I_FCOMP, 1, {MEMORY|BITS32,0,0}, "\300\1\xD8\203", IF_8086|IF_FPU},
    {I_FCOMP, 1, {MEMORY|BITS64,0,0}, "\300\1\xDC\203", IF_8086|IF_FPU},
    {I_FCOMP, 1, {FPUREG,0,0}, "\1\xD8\10\xD8", IF_8086|IF_FPU},
    {I_FCOMP, 2, {FPU0,FPUREG,0}, "\1\xD8\11\xD8", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FCOMPP[] = {
    {I_FCOMPP, 0, {0,0,0}, "\2\xDE\xD9", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FDECSTP[] = {
    {I_FDECSTP, 0, {0,0,0}, "\2\xD9\xF6", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FDISI[] = {
    {I_FDISI, 0, {0,0,0}, "\3\x9B\xDB\xE1", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FDIV[] = {
    {I_FDIV, 1, {MEMORY|BITS32,0,0}, "\300\1\xD8\206", IF_8086|IF_FPU},
    {I_FDIV, 1, {MEMORY|BITS64,0,0}, "\300\1\xDC\206", IF_8086|IF_FPU},
    {I_FDIV, 1, {FPUREG|TO,0,0}, "\1\xDC\10\xF8", IF_8086|IF_FPU},
    {I_FDIV, 2, {FPUREG,FPU0,0}, "\1\xDC\10\xF8", IF_8086|IF_FPU},
    {I_FDIV, 1, {FPUREG,0,0}, "\1\xD8\10\xF0", IF_8086|IF_FPU},
    {I_FDIV, 2, {FPU0,FPUREG,0}, "\1\xD8\11\xF0", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FDIVP[] = {
    {I_FDIVP, 2, {FPUREG,FPU0,0}, "\1\xDE\10\xF8", IF_8086|IF_FPU},
    {I_FDIVP, 1, {FPUREG,0,0}, "\1\xDE\10\xF8", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FDIVR[] = {
    {I_FDIVR, 1, {MEMORY|BITS32,0,0}, "\300\1\xD8\207", IF_8086|IF_FPU},
    {I_FDIVR, 1, {MEMORY|BITS64,0,0}, "\300\1\xDC\207", IF_8086|IF_FPU},
    {I_FDIVR, 1, {FPUREG|TO,0,0}, "\1\xDC\10\xF0", IF_8086|IF_FPU},
    {I_FDIVR, 2, {FPUREG,FPU0,0}, "\1\xDC\10\xF0", IF_8086|IF_FPU},
    {I_FDIVR, 1, {FPUREG,0,0}, "\1\xD8\10\xF8", IF_8086|IF_FPU},
    {I_FDIVR, 2, {FPU0,FPUREG,0}, "\1\xD8\11\xF8", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FDIVRP[] = {
    {I_FDIVRP, 1, {FPUREG,0,0}, "\1\xDE\10\xF0", IF_8086|IF_FPU},
    {I_FDIVRP, 2, {FPUREG,FPU0,0}, "\1\xDE\10\xF0", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FENI[] = {
    {I_FENI, 0, {0,0,0}, "\3\x9B\xDB\xE0", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FFREE[] = {
    {I_FFREE, 1, {FPUREG,0,0}, "\1\xDD\10\xC0", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FIADD[] = {
    {I_FIADD, 1, {MEMORY|BITS32,0,0}, "\300\1\xDA\200", IF_8086|IF_FPU},
    {I_FIADD, 1, {MEMORY|BITS16,0,0}, "\300\1\xDE\200", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FICOM[] = {
    {I_FICOM, 1, {MEMORY|BITS32,0,0}, "\300\1\xDA\202", IF_8086|IF_FPU},
    {I_FICOM, 1, {MEMORY|BITS16,0,0}, "\300\1\xDE\202", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FICOMP[] = {
    {I_FICOMP, 1, {MEMORY|BITS32,0,0}, "\300\1\xDA\203", IF_8086|IF_FPU},
    {I_FICOMP, 1, {MEMORY|BITS16,0,0}, "\300\1\xDE\203", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FIDIV[] = {
    {I_FIDIV, 1, {MEMORY|BITS32,0,0}, "\300\1\xDA\206", IF_8086|IF_FPU},
    {I_FIDIV, 1, {MEMORY|BITS16,0,0}, "\300\1\xDE\206", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FIDIVR[] = {
    {I_FIDIVR, 1, {MEMORY|BITS32,0,0}, "\300\1\xDA\207", IF_8086|IF_FPU},
    {I_FIDIVR, 1, {MEMORY|BITS16,0,0}, "\300\1\xDE\207", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FILD[] = {
    {I_FILD, 1, {MEMORY|BITS32,0,0}, "\300\1\xDB\200", IF_8086|IF_FPU},
    {I_FILD, 1, {MEMORY|BITS16,0,0}, "\300\1\xDF\200", IF_8086|IF_FPU},
    {I_FILD, 1, {MEMORY|BITS64,0,0}, "\300\1\xDF\205", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FIMUL[] = {
    {I_FIMUL, 1, {MEMORY|BITS32,0,0}, "\300\1\xDA\201", IF_8086|IF_FPU},
    {I_FIMUL, 1, {MEMORY|BITS16,0,0}, "\300\1\xDE\201", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FINCSTP[] = {
    {I_FINCSTP, 0, {0,0,0}, "\2\xD9\xF7", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FINIT[] = {
    {I_FINIT, 0, {0,0,0}, "\3\x9B\xDB\xE3", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FIST[] = {
    {I_FIST, 1, {MEMORY|BITS32,0,0}, "\300\1\xDB\202", IF_8086|IF_FPU},
    {I_FIST, 1, {MEMORY|BITS16,0,0}, "\300\1\xDF\202", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FISTP[] = {
    {I_FISTP, 1, {MEMORY|BITS32,0,0}, "\300\1\xDB\203", IF_8086|IF_FPU},
    {I_FISTP, 1, {MEMORY|BITS16,0,0}, "\300\1\xDF\203", IF_8086|IF_FPU},
    {I_FISTP, 1, {MEMORY|BITS64,0,0}, "\300\1\xDF\207", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FISUB[] = {
    {I_FISUB, 1, {MEMORY|BITS32,0,0}, "\300\1\xDA\204", IF_8086|IF_FPU},
    {I_FISUB, 1, {MEMORY|BITS16,0,0}, "\300\1\xDE\204", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FISUBR[] = {
    {I_FISUBR, 1, {MEMORY|BITS32,0,0}, "\300\1\xDA\205", IF_8086|IF_FPU},
    {I_FISUBR, 1, {MEMORY|BITS16,0,0}, "\300\1\xDE\205", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FLD[] = {
    {I_FLD, 1, {MEMORY|BITS32,0,0}, "\300\1\xD9\200", IF_8086|IF_FPU},
    {I_FLD, 1, {MEMORY|BITS64,0,0}, "\300\1\xDD\200", IF_8086|IF_FPU},
    {I_FLD, 1, {MEMORY|BITS80,0,0}, "\300\1\xDB\205", IF_8086|IF_FPU},
    {I_FLD, 1, {FPUREG,0,0}, "\1\xD9\10\xC0", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FLD1[] = {
    {I_FLD1, 0, {0,0,0}, "\2\xD9\xE8", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FLDCW[] = {
    {I_FLDCW, 1, {MEMORY,0,0}, "\300\1\xD9\205", IF_8086|IF_FPU|IF_SW},
    ITEMPLATE_END
};

static struct itemplate instrux_FLDENV[] = {
    {I_FLDENV, 1, {MEMORY,0,0}, "\300\1\xD9\204", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FLDL2E[] = {
    {I_FLDL2E, 0, {0,0,0}, "\2\xD9\xEA", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FLDL2T[] = {
    {I_FLDL2T, 0, {0,0,0}, "\2\xD9\xE9", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FLDLG2[] = {
    {I_FLDLG2, 0, {0,0,0}, "\2\xD9\xEC", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FLDLN2[] = {
    {I_FLDLN2, 0, {0,0,0}, "\2\xD9\xED", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FLDPI[] = {
    {I_FLDPI, 0, {0,0,0}, "\2\xD9\xEB", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FLDZ[] = {
    {I_FLDZ, 0, {0,0,0}, "\2\xD9\xEE", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FMUL[] = {
    {I_FMUL, 1, {MEMORY|BITS32,0,0}, "\300\1\xD8\201", IF_8086|IF_FPU},
    {I_FMUL, 1, {MEMORY|BITS64,0,0}, "\300\1\xDC\201", IF_8086|IF_FPU},
    {I_FMUL, 1, {FPUREG|TO,0,0}, "\1\xDC\10\xC8", IF_8086|IF_FPU},
    {I_FMUL, 2, {FPUREG,FPU0,0}, "\1\xDC\10\xC8", IF_8086|IF_FPU},
    {I_FMUL, 1, {FPUREG,0,0}, "\1\xD8\10\xC8", IF_8086|IF_FPU},
    {I_FMUL, 2, {FPU0,FPUREG,0}, "\1\xD8\11\xC8", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FMULP[] = {
    {I_FMULP, 1, {FPUREG,0,0}, "\1\xDE\10\xC8", IF_8086|IF_FPU},
    {I_FMULP, 2, {FPUREG,FPU0,0}, "\1\xDE\10\xC8", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FNCLEX[] = {
    {I_FNCLEX, 0, {0,0,0}, "\2\xDB\xE2", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FNDISI[] = {
    {I_FNDISI, 0, {0,0,0}, "\2\xDB\xE1", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FNENI[] = {
    {I_FNENI, 0, {0,0,0}, "\2\xDB\xE0", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FNINIT[] = {
    {I_FNINIT, 0, {0,0,0}, "\2\xDB\xE3", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FNOP[] = {
    {I_FNOP, 0, {0,0,0}, "\2\xD9\xD0", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FNSAVE[] = {
    {I_FNSAVE, 1, {MEMORY,0,0}, "\300\1\xDD\206", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FNSTCW[] = {
    {I_FNSTCW, 1, {MEMORY,0,0}, "\300\1\xD9\207", IF_8086|IF_FPU|IF_SW},
    ITEMPLATE_END
};

static struct itemplate instrux_FNSTENV[] = {
    {I_FNSTENV, 1, {MEMORY,0,0}, "\300\1\xD9\206", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FNSTSW[] = {
    {I_FNSTSW, 1, {MEMORY,0,0}, "\300\1\xDD\207", IF_8086|IF_FPU|IF_SW},
    ITEMPLATE_END
};

static struct itemplate instrux_FPATAN[] = {
    {I_FPATAN, 0, {0,0,0}, "\2\xD9\xF3", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FPREM[] = {
    {I_FPREM, 0, {0,0,0}, "\2\xD9\xF8", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FPTAN[] = {
    {I_FPTAN, 0, {0,0,0}, "\2\xD9\xF2", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FRNDINT[] = {
    {I_FRNDINT, 0, {0,0,0}, "\2\xD9\xFC", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FRSTOR[] = {
    {I_FRSTOR, 1, {MEMORY,0,0}, "\300\1\xDD\204", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FSAVE[] = {
    {I_FSAVE, 1, {MEMORY,0,0}, "\300\2\x9B\xDD\206", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FSCALE[] = {
    {I_FSCALE, 0, {0,0,0}, "\2\xD9\xFD", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FSQRT[] = {
    {I_FSQRT, 0, {0,0,0}, "\2\xD9\xFA", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FST[] = {
    {I_FST, 1, {MEMORY|BITS32,0,0}, "\300\1\xD9\202", IF_8086|IF_FPU},
    {I_FST, 1, {MEMORY|BITS64,0,0}, "\300\1\xDD\202", IF_8086|IF_FPU},
    {I_FST, 1, {FPUREG,0,0}, "\1\xDD\10\xD0", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FSTCW[] = {
    {I_FSTCW, 1, {MEMORY,0,0}, "\300\2\x9B\xD9\207", IF_8086|IF_FPU|IF_SW},
    ITEMPLATE_END
};

static struct itemplate instrux_FSTENV[] = {
    {I_FSTENV, 1, {MEMORY,0,0}, "\300\2\x9B\xD9\206", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FSTP[] = {
    {I_FSTP, 1, {MEMORY|BITS32,0,0}, "\300\1\xD9\203", IF_8086|IF_FPU},
    {I_FSTP, 1, {MEMORY|BITS64,0,0}, "\300\1\xDD\203", IF_8086|IF_FPU},
    {I_FSTP, 1, {MEMORY|BITS80,0,0}, "\300\1\xDB\207", IF_8086|IF_FPU},
    {I_FSTP, 1, {FPUREG,0,0}, "\1\xDD\10\xD8", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FSTSW[] = {
    {I_FSTSW, 1, {MEMORY,0,0}, "\300\2\x9B\xDD\207", IF_8086|IF_FPU|IF_SW},
    ITEMPLATE_END
};

static struct itemplate instrux_FSUB[] = {
    {I_FSUB, 1, {MEMORY|BITS32,0,0}, "\300\1\xD8\204", IF_8086|IF_FPU},
    {I_FSUB, 1, {MEMORY|BITS64,0,0}, "\300\1\xDC\204", IF_8086|IF_FPU},
    {I_FSUB, 1, {FPUREG|TO,0,0}, "\1\xDC\10\xE8", IF_8086|IF_FPU},
    {I_FSUB, 2, {FPUREG,FPU0,0}, "\1\xDC\10\xE8", IF_8086|IF_FPU},
    {I_FSUB, 1, {FPUREG,0,0}, "\1\xD8\10\xE0", IF_8086|IF_FPU},
    {I_FSUB, 2, {FPU0,FPUREG,0}, "\1\xD8\11\xE0", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FSUBP[] = {
    {I_FSUBP, 1, {FPUREG,0,0}, "\1\xDE\10\xE8", IF_8086|IF_FPU},
    {I_FSUBP, 2, {FPUREG,FPU0,0}, "\1\xDE\10\xE8", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FSUBR[] = {
    {I_FSUBR, 1, {MEMORY|BITS32,0,0}, "\300\1\xD8\205", IF_8086|IF_FPU},
    {I_FSUBR, 1, {MEMORY|BITS64,0,0}, "\300\1\xDC\205", IF_8086|IF_FPU},
    {I_FSUBR, 1, {FPUREG|TO,0,0}, "\1\xDC\10\xE0", IF_8086|IF_FPU},
    {I_FSUBR, 2, {FPUREG,FPU0,0}, "\1\xDC\10\xE0", IF_8086|IF_FPU},
    {I_FSUBR, 1, {FPUREG,0,0}, "\1\xD8\10\xE8", IF_8086|IF_FPU},
    {I_FSUBR, 2, {FPU0,FPUREG,0}, "\1\xD8\11\xE8", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FSUBRP[] = {
    {I_FSUBRP, 1, {FPUREG,0,0}, "\1\xDE\10\xE0", IF_8086|IF_FPU},
    {I_FSUBRP, 2, {FPUREG,FPU0,0}, "\1\xDE\10\xE0", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FTST[] = {
    {I_FTST, 0, {0,0,0}, "\2\xD9\xE4", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FWAIT[] = {
    {I_FWAIT, 0, {0,0,0}, "\1\x9B", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_FXAM[] = {
    {I_FXAM, 0, {0,0,0}, "\2\xD9\xE5", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FXCH[] = {
    {I_FXCH, 0, {0,0,0}, "\2\xD9\xC9", IF_8086|IF_FPU},
    {I_FXCH, 1, {FPUREG,0,0}, "\1\xD9\10\xC8", IF_8086|IF_FPU},
    {I_FXCH, 2, {FPUREG,FPU0,0}, "\1\xD9\10\xC8", IF_8086|IF_FPU},
    {I_FXCH, 2, {FPU0,FPUREG,0}, "\1\xD9\11\xC8", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FXTRACT[] = {
    {I_FXTRACT, 0, {0,0,0}, "\2\xD9\xF4", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FYL2X[] = {
    {I_FYL2X, 0, {0,0,0}, "\2\xD9\xF1", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_FYL2XP1[] = {
    {I_FYL2XP1, 0, {0,0,0}, "\2\xD9\xF9", IF_8086|IF_FPU},
    ITEMPLATE_END
};

static struct itemplate instrux_HLT[] = {
    {I_HLT, 0, {0,0,0}, "\1\xF4", IF_8086|IF_PRIV},
    ITEMPLATE_END
};

static struct itemplate instrux_IDIV[] = {
    {I_IDIV, 1, {REGMEM|BITS8,0,0}, "\300\1\xF6\207", IF_8086},
    {I_IDIV, 1, {REGMEM|BITS16,0,0}, "\320\300\1\xF7\207", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_IMUL[] = {
    {I_IMUL, 1, {REGMEM|BITS8,0,0}, "\300\1\xF6\205", IF_8086},
    {I_IMUL, 1, {REGMEM|BITS16,0,0}, "\320\300\1\xF7\205", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_IN[] = {
    {I_IN, 2, {REG_AL,IMMEDIATE,0}, "\1\xE4\25", IF_8086|IF_SB},
    {I_IN, 2, {REG_AX,IMMEDIATE,0}, "\320\1\xE5\25", IF_8086|IF_SB},
    {I_IN, 2, {REG_AL,REG_DX,0}, "\1\xEC", IF_8086},
    {I_IN, 2, {REG_AX,REG_DX,0}, "\320\1\xED", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_INC[] = {
    {I_INC, 1, {REG16,0,0}, "\320\10\x40", IF_8086},
    {I_INC, 1, {REGMEM|BITS8,0,0}, "\300\1\xFE\200", IF_8086},
    {I_INC, 1, {REGMEM|BITS16,0,0}, "\320\300\1\xFF\200", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_INCBIN[] = {
    ITEMPLATE_END
};

static struct itemplate instrux_INT[] = {
    {I_INT, 1, {IMMEDIATE,0,0}, "\1\xCD\24", IF_8086|IF_SB},
    ITEMPLATE_END
};

static struct itemplate instrux_INT03[] = {
    {I_INT03, 0, {0,0,0}, "\1\xCC", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_INT3[] = {
    {I_INT3, 0, {0,0,0}, "\1\xCC", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_INTO[] = {
    {I_INTO, 0, {0,0,0}, "\1\xCE", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_IRET[] = {
    {I_IRET, 0, {0,0,0}, "\322\1\xCF", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_IRETW[] = {
    {I_IRETW, 0, {0,0,0}, "\320\1\xCF", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_JCXZ[] = {
    {I_JCXZ, 1, {IMMEDIATE,0,0}, "\310\1\xE3\50", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_JMP[] = {
    {I_JMP, 1, {IMMEDIATE|SHORT,0,0}, "\1\xEB\50", IF_8086},
    {I_JMP, 1, {IMMEDIATE,0,0}, "\371\1\xEB\50", IF_8086},
    {I_JMP, 1, {IMMEDIATE,0,0}, "\322\1\xE9\64", IF_8086},
    {I_JMP, 1, {IMMEDIATE|NEAR,0,0}, "\322\1\xE9\64", IF_8086},
    {I_JMP, 1, {IMMEDIATE|FAR,0,0}, "\322\1\xEA\34\37", IF_8086},
    {I_JMP, 1, {IMMEDIATE|BITS16,0,0}, "\320\1\xE9\64", IF_8086},
    {I_JMP, 1, {IMMEDIATE|BITS16|NEAR,0,0}, "\320\1\xE9\64", IF_8086},
    {I_JMP, 1, {IMMEDIATE|BITS16|FAR,0,0}, "\320\1\xEA\34\37", IF_8086},
    {I_JMP, 2, {IMMEDIATE|COLON,IMMEDIATE,0}, "\322\1\xEA\35\30", IF_8086},
    {I_JMP, 2, {IMMEDIATE|BITS16|COLON,IMMEDIATE,0}, "\320\1\xEA\31\30", IF_8086},
    {I_JMP, 2, {IMMEDIATE|COLON,IMMEDIATE|BITS16,0}, "\320\1\xEA\31\30", IF_8086},
    {I_JMP, 1, {MEMORY|FAR,0,0}, "\322\300\1\xFF\205", IF_8086},
    {I_JMP, 1, {MEMORY|BITS16|FAR,0,0}, "\320\300\1\xFF\205", IF_8086},
    {I_JMP, 1, {MEMORY|NEAR,0,0}, "\322\300\1\xFF\204", IF_8086},
    {I_JMP, 1, {MEMORY|BITS16|NEAR,0,0}, "\320\300\1\xFF\204", IF_8086},
    {I_JMP, 1, {REG16,0,0}, "\320\300\1\xFF\204", IF_8086},
    {I_JMP, 1, {MEMORY,0,0}, "\322\300\1\xFF\204", IF_8086},
    {I_JMP, 1, {MEMORY|BITS16,0,0}, "\320\300\1\xFF\204", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_LAHF[] = {
    {I_LAHF, 0, {0,0,0}, "\1\x9F", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_LDS[] = {
    {I_LDS, 2, {REG16,MEMORY,0}, "\320\301\1\xC5\110", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_LEA[] = {
    {I_LEA, 2, {REG16,MEMORY,0}, "\320\301\1\x8D\110", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_LES[] = {
    {I_LES, 2, {REG16,MEMORY,0}, "\320\301\1\xC4\110", IF_8086},
    ITEMPLATE_END
};


static struct itemplate instrux_LODSB[] = {
    {I_LODSB, 0, {0,0,0}, "\1\xAC", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_LODSW[] = {
    {I_LODSW, 0, {0,0,0}, "\320\1\xAD", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_LOOP[] = {
    {I_LOOP, 1, {IMMEDIATE,0,0}, "\312\1\xE2\50", IF_8086},
    {I_LOOP, 2, {IMMEDIATE,REG_CX,0}, "\310\1\xE2\50", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_LOOPE[] = {
    {I_LOOPE, 1, {IMMEDIATE,0,0}, "\312\1\xE1\50", IF_8086},
    {I_LOOPE, 2, {IMMEDIATE,REG_CX,0}, "\310\1\xE1\50", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_LOOPNE[] = {
    {I_LOOPNE, 1, {IMMEDIATE,0,0}, "\312\1\xE0\50", IF_8086},
    {I_LOOPNE, 2, {IMMEDIATE,REG_CX,0}, "\310\1\xE0\50", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_LOOPNZ[] = {
    {I_LOOPNZ, 1, {IMMEDIATE,0,0}, "\312\1\xE0\50", IF_8086},
    {I_LOOPNZ, 2, {IMMEDIATE,REG_CX,0}, "\310\1\xE0\50", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_LOOPZ[] = {
    {I_LOOPZ, 1, {IMMEDIATE,0,0}, "\312\1\xE1\50", IF_8086},
    {I_LOOPZ, 2, {IMMEDIATE,REG_CX,0}, "\310\1\xE1\50", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_MOV[] = {
    {I_MOV, 2, {MEMORY,REG_SREG,0}, "\300\1\x8C\101", IF_8086|IF_SM},
    {I_MOV, 2, {REG16,REG_SREG,0}, "\320\1\x8C\101", IF_8086},
    {I_MOV, 2, {REG_SREG,MEMORY,0}, "\301\1\x8E\110", IF_8086|IF_SM},
    {I_MOV, 2, {REG_SREG,REG16,0}, "\1\x8E\110", IF_8086},
    {I_MOV, 2, {REG_AL,MEM_OFFS,0}, "\301\1\xA0\45", IF_8086|IF_SM},
    {I_MOV, 2, {REG_AX,MEM_OFFS,0}, "\301\320\1\xA1\45", IF_8086|IF_SM},
    {I_MOV, 2, {MEM_OFFS,REG_AL,0}, "\300\1\xA2\44", IF_8086|IF_SM},
    {I_MOV, 2, {MEM_OFFS,REG_AX,0}, "\300\320\1\xA3\44", IF_8086|IF_SM},
    {I_MOV, 2, {MEMORY,REG8,0}, "\300\1\x88\101", IF_8086|IF_SM},
    {I_MOV, 2, {REG8,REG8,0}, "\1\x88\101", IF_8086},
    {I_MOV, 2, {MEMORY,REG16,0}, "\320\300\1\x89\101", IF_8086|IF_SM},
    {I_MOV, 2, {REG16,REG16,0}, "\320\1\x89\101", IF_8086},
    {I_MOV, 2, {REG8,MEMORY,0}, "\301\1\x8A\110", IF_8086|IF_SM},
    {I_MOV, 2, {REG8,REG8,0}, "\1\x8A\110", IF_8086},
    {I_MOV, 2, {REG16,MEMORY,0}, "\320\301\1\x8B\110", IF_8086|IF_SM},
    {I_MOV, 2, {REG16,REG16,0}, "\320\1\x8B\110", IF_8086},
    {I_MOV, 2, {REG8,IMMEDIATE,0}, "\10\xB0\21", IF_8086|IF_SM},
    {I_MOV, 2, {REG16,IMMEDIATE,0}, "\320\10\xB8\31", IF_8086|IF_SM},
    {I_MOV, 2, {REGMEM|BITS8,IMMEDIATE,0}, "\300\1\xC6\200\21", IF_8086|IF_SM},
    {I_MOV, 2, {REGMEM|BITS16,IMMEDIATE,0}, "\320\300\1\xC7\200\31", IF_8086|IF_SM},
    {I_MOV, 2, {MEMORY,IMMEDIATE|BITS8,0}, "\300\1\xC6\200\21", IF_8086|IF_SM},
    {I_MOV, 2, {MEMORY,IMMEDIATE|BITS16,0}, "\320\300\1\xC7\200\31", IF_8086|IF_SM},
    ITEMPLATE_END
};

static struct itemplate instrux_MOVSB[] = {
    {I_MOVSB, 0, {0,0,0}, "\1\xA4", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_MOVSW[] = {
    {I_MOVSW, 0, {0,0,0}, "\320\1\xA5", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_MUL[] = {
    {I_MUL, 1, {REGMEM|BITS8,0,0}, "\300\1\xF6\204", IF_8086},
    {I_MUL, 1, {REGMEM|BITS16,0,0}, "\320\300\1\xF7\204", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_NEG[] = {
    {I_NEG, 1, {REGMEM|BITS8,0,0}, "\300\1\xF6\203", IF_8086},
    {I_NEG, 1, {REGMEM|BITS16,0,0}, "\320\300\1\xF7\203", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_NOP[] = {
    {I_NOP, 0, {0,0,0}, "\1\x90", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_NOT[] = {
    {I_NOT, 1, {REGMEM|BITS8,0,0}, "\300\1\xF6\202", IF_8086},
    {I_NOT, 1, {REGMEM|BITS16,0,0}, "\320\300\1\xF7\202", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_OR[] = {
    {I_OR, 2, {MEMORY,REG8,0}, "\300\1\x08\101", IF_8086|IF_SM},
    {I_OR, 2, {REG8,REG8,0}, "\1\x08\101", IF_8086},
    {I_OR, 2, {MEMORY,REG16,0}, "\320\300\1\x09\101", IF_8086|IF_SM},
    {I_OR, 2, {REG16,REG16,0}, "\320\1\x09\101", IF_8086},
    {I_OR, 2, {REG8,MEMORY,0}, "\301\1\x0A\110", IF_8086|IF_SM},
    {I_OR, 2, {REG8,REG8,0}, "\1\x0A\110", IF_8086},
    {I_OR, 2, {REG16,MEMORY,0}, "\320\301\1\x0B\110", IF_8086|IF_SM},
    {I_OR, 2, {REG16,REG16,0}, "\320\1\x0B\110", IF_8086},
    {I_OR, 2, {REGMEM|BITS16,IMMEDIATE|BITS8,0}, "\320\300\1\x83\201\15", IF_8086},
    {I_OR, 2, {REG_AL,IMMEDIATE,0}, "\1\x0C\21", IF_8086|IF_SM},
    {I_OR, 2, {REG_AX,SBYTE,0}, "\320\1\x83\201\15", IF_8086|IF_SM},
    {I_OR, 2, {REG_AX,IMMEDIATE,0}, "\320\1\x0D\31", IF_8086|IF_SM},
    {I_OR, 2, {REGMEM|BITS8,IMMEDIATE,0}, "\300\1\x80\201\21", IF_8086|IF_SM},
    {I_OR, 2, {REGMEM|BITS16,IMMEDIATE,0}, "\320\300\134\1\x81\201\131", IF_8086|IF_SM},
    {I_OR, 2, {MEMORY,IMMEDIATE|BITS8,0}, "\300\1\x80\201\21", IF_8086|IF_SM},
    {I_OR, 2, {MEMORY,IMMEDIATE|BITS16,0}, "\320\300\134\1\x81\201\131", IF_8086|IF_SM},
    ITEMPLATE_END
};

static struct itemplate instrux_OUT[] = {
    {I_OUT, 2, {IMMEDIATE,REG_AL,0}, "\1\xE6\24", IF_8086|IF_SB},
    {I_OUT, 2, {IMMEDIATE,REG_AX,0}, "\320\1\xE7\24", IF_8086|IF_SB},
    {I_OUT, 2, {REG_DX,REG_AL,0}, "\1\xEE", IF_8086},
    {I_OUT, 2, {REG_DX,REG_AX,0}, "\320\1\xEF", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_POP[] = {
    {I_POP, 1, {REG16,0,0}, "\320\10\x58", IF_8086},
    {I_POP, 1, {REGMEM|BITS16,0,0}, "\320\300\1\x8F\200", IF_8086},
    {I_POP, 1, {REG_CS,0,0}, "\1\x0F", IF_8086|IF_UNDOC},
    {I_POP, 1, {REG_DESS,0,0}, "\4", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_POPF[] = {
    {I_POPF, 0, {0,0,0}, "\322\1\x9D", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_POPFW[] = {
    {I_POPFW, 0, {0,0,0}, "\320\1\x9D", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_PUSH[] = {
    {I_PUSH, 1, {REG16,0,0}, "\320\10\x50", IF_8086},
    {I_PUSH, 1, {REGMEM|BITS16,0,0}, "\320\300\1\xFF\206", IF_8086},
    {I_PUSH, 1, {REG_CS,0,0}, "\6", IF_8086},
    {I_PUSH, 1, {REG_DESS,0,0}, "\6", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_PUSHF[] = {
    {I_PUSHF, 0, {0,0,0}, "\322\1\x9C", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_PUSHFW[] = {
    {I_PUSHFW, 0, {0,0,0}, "\320\1\x9C", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_RCL[] = {
    {I_RCL, 2, {REGMEM|BITS8,UNITY,0}, "\300\1\xD0\202", IF_8086},
    {I_RCL, 2, {REGMEM|BITS8,REG_CL,0}, "\300\1\xD2\202", IF_8086},
    {I_RCL, 2, {REGMEM|BITS16,UNITY,0}, "\320\300\1\xD1\202", IF_8086},
    {I_RCL, 2, {REGMEM|BITS16,REG_CL,0}, "\320\300\1\xD3\202", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_RCR[] = {
    {I_RCR, 2, {REGMEM|BITS8,UNITY,0}, "\300\1\xD0\203", IF_8086},
    {I_RCR, 2, {REGMEM|BITS8,REG_CL,0}, "\300\1\xD2\203", IF_8086},
    {I_RCR, 2, {REGMEM|BITS16,UNITY,0}, "\320\300\1\xD1\203", IF_8086},
    {I_RCR, 2, {REGMEM|BITS16,REG_CL,0}, "\320\300\1\xD3\203", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_RESB[] = {
    {I_RESB, 1, {IMMEDIATE,0,0}, "\340", IF_8086},
    ITEMPLATE_END
};


static struct itemplate instrux_RESD[] = {
    ITEMPLATE_END
};

static struct itemplate instrux_RESQ[] = {
    ITEMPLATE_END
};

static struct itemplate instrux_REST[] = {
    ITEMPLATE_END
};

static struct itemplate instrux_RESW[] = {
    ITEMPLATE_END
};

static struct itemplate instrux_RET[] = {
    {I_RET, 0, {0,0,0}, "\1\xC3", IF_8086},
    {I_RET, 1, {IMMEDIATE,0,0}, "\1\xC2\30", IF_8086|IF_SW},
    ITEMPLATE_END
};

static struct itemplate instrux_RETF[] = {
    {I_RETF, 0, {0,0,0}, "\1\xCB", IF_8086},
    {I_RETF, 1, {IMMEDIATE,0,0}, "\1\xCA\30", IF_8086|IF_SW},
    ITEMPLATE_END
};

static struct itemplate instrux_RETN[] = {
    {I_RETN, 0, {0,0,0}, "\1\xC3", IF_8086},
    {I_RETN, 1, {IMMEDIATE,0,0}, "\1\xC2\30", IF_8086|IF_SW},
    ITEMPLATE_END
};

static struct itemplate instrux_ROL[] = {
    {I_ROL, 2, {REGMEM|BITS8,UNITY,0}, "\300\1\xD0\200", IF_8086},
    {I_ROL, 2, {REGMEM|BITS8,REG_CL,0}, "\300\1\xD2\200", IF_8086},
    {I_ROL, 2, {REGMEM|BITS16,UNITY,0}, "\320\300\1\xD1\200", IF_8086},
    {I_ROL, 2, {REGMEM|BITS16,REG_CL,0}, "\320\300\1\xD3\200", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_ROR[] = {
    {I_ROR, 2, {REGMEM|BITS8,UNITY,0}, "\300\1\xD0\201", IF_8086},
    {I_ROR, 2, {REGMEM|BITS8,REG_CL,0}, "\300\1\xD2\201", IF_8086},
    {I_ROR, 2, {REGMEM|BITS16,UNITY,0}, "\320\300\1\xD1\201", IF_8086},
    {I_ROR, 2, {REGMEM|BITS16,REG_CL,0}, "\320\300\1\xD3\201", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_SAHF[] = {
    {I_SAHF, 0, {0,0,0}, "\1\x9E", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_SAL[] = {
    {I_SAL, 2, {REGMEM|BITS8,UNITY,0}, "\300\1\xD0\204", IF_8086},
    {I_SAL, 2, {REGMEM|BITS8,REG_CL,0}, "\300\1\xD2\204", IF_8086},
    {I_SAL, 2, {REGMEM|BITS16,UNITY,0}, "\320\300\1\xD1\204", IF_8086},
    {I_SAL, 2, {REGMEM|BITS16,REG_CL,0}, "\320\300\1\xD3\204", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_SALC[] = {
    {I_SALC, 0, {0,0,0}, "\1\xD6", IF_8086|IF_UNDOC},
    ITEMPLATE_END
};

static struct itemplate instrux_SAR[] = {
    {I_SAR, 2, {REGMEM|BITS8,UNITY,0}, "\300\1\xD0\207", IF_8086},
    {I_SAR, 2, {REGMEM|BITS8,REG_CL,0}, "\300\1\xD2\207", IF_8086},
    {I_SAR, 2, {REGMEM|BITS16,UNITY,0}, "\320\300\1\xD1\207", IF_8086},
    {I_SAR, 2, {REGMEM|BITS16,REG_CL,0}, "\320\300\1\xD3\207", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_SBB[] = {
    {I_SBB, 2, {MEMORY,REG8,0}, "\300\1\x18\101", IF_8086|IF_SM},
    {I_SBB, 2, {REG8,REG8,0}, "\1\x18\101", IF_8086},
    {I_SBB, 2, {MEMORY,REG16,0}, "\320\300\1\x19\101", IF_8086|IF_SM},
    {I_SBB, 2, {REG16,REG16,0}, "\320\1\x19\101", IF_8086},
    {I_SBB, 2, {REG8,MEMORY,0}, "\301\1\x1A\110", IF_8086|IF_SM},
    {I_SBB, 2, {REG8,REG8,0}, "\1\x1A\110", IF_8086},
    {I_SBB, 2, {REG16,MEMORY,0}, "\320\301\1\x1B\110", IF_8086|IF_SM},
    {I_SBB, 2, {REG16,REG16,0}, "\320\1\x1B\110", IF_8086},
    {I_SBB, 2, {REGMEM|BITS16,IMMEDIATE|BITS8,0}, "\320\300\1\x83\203\15", IF_8086},
    {I_SBB, 2, {REG_AL,IMMEDIATE,0}, "\1\x1C\21", IF_8086|IF_SM},
    {I_SBB, 2, {REG_AX,SBYTE,0}, "\320\1\x83\203\15", IF_8086|IF_SM},
    {I_SBB, 2, {REG_AX,IMMEDIATE,0}, "\320\1\x1D\31", IF_8086|IF_SM},
    {I_SBB, 2, {REGMEM|BITS8,IMMEDIATE,0}, "\300\1\x80\203\21", IF_8086|IF_SM},
    {I_SBB, 2, {REGMEM|BITS16,IMMEDIATE,0}, "\320\300\134\1\x81\203\131", IF_8086|IF_SM},
    {I_SBB, 2, {MEMORY,IMMEDIATE|BITS8,0}, "\300\1\x80\203\21", IF_8086|IF_SM},
    {I_SBB, 2, {MEMORY,IMMEDIATE|BITS16,0}, "\320\300\134\1\x81\203\131", IF_8086|IF_SM},
    ITEMPLATE_END
};

static struct itemplate instrux_SCASB[] = {
    {I_SCASB, 0, {0,0,0}, "\332\1\xAE", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_SCASW[] = {
    {I_SCASW, 0, {0,0,0}, "\332\320\1\xAF", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_SHL[] = {
    {I_SHL, 2, {REGMEM|BITS8,UNITY,0}, "\300\1\xD0\204", IF_8086},
    {I_SHL, 2, {REGMEM|BITS8,REG_CL,0}, "\300\1\xD2\204", IF_8086},
    {I_SHL, 2, {REGMEM|BITS16,UNITY,0}, "\320\300\1\xD1\204", IF_8086},
    {I_SHL, 2, {REGMEM|BITS16,REG_CL,0}, "\320\300\1\xD3\204", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_SHR[] = {
    {I_SHR, 2, {REGMEM|BITS8,UNITY,0}, "\300\1\xD0\205", IF_8086},
    {I_SHR, 2, {REGMEM|BITS8,REG_CL,0}, "\300\1\xD2\205", IF_8086},
    {I_SHR, 2, {REGMEM|BITS16,UNITY,0}, "\320\300\1\xD1\205", IF_8086},
    {I_SHR, 2, {REGMEM|BITS16,REG_CL,0}, "\320\300\1\xD3\205", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_STC[] = {
    {I_STC, 0, {0,0,0}, "\1\xF9", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_STD[] = {
    {I_STD, 0, {0,0,0}, "\1\xFD", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_STI[] = {
    {I_STI, 0, {0,0,0}, "\1\xFB", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_STOSB[] = {
    {I_STOSB, 0, {0,0,0}, "\1\xAA", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_STOSW[] = {
    {I_STOSW, 0, {0,0,0}, "\320\1\xAB", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_SUB[] = {
    {I_SUB, 2, {MEMORY,REG8,0}, "\300\1\x28\101", IF_8086|IF_SM},
    {I_SUB, 2, {REG8,REG8,0}, "\1\x28\101", IF_8086},
    {I_SUB, 2, {MEMORY,REG16,0}, "\320\300\1\x29\101", IF_8086|IF_SM},
    {I_SUB, 2, {REG16,REG16,0}, "\320\1\x29\101", IF_8086},
    {I_SUB, 2, {REG8,MEMORY,0}, "\301\1\x2A\110", IF_8086|IF_SM},
    {I_SUB, 2, {REG8,REG8,0}, "\1\x2A\110", IF_8086},
    {I_SUB, 2, {REG16,MEMORY,0}, "\320\301\1\x2B\110", IF_8086|IF_SM},
    {I_SUB, 2, {REG16,REG16,0}, "\320\1\x2B\110", IF_8086},
    {I_SUB, 2, {REGMEM|BITS16,IMMEDIATE|BITS8,0}, "\320\300\1\x83\205\15", IF_8086},
    {I_SUB, 2, {REG_AL,IMMEDIATE,0}, "\1\x2C\21", IF_8086|IF_SM},
    {I_SUB, 2, {REG_AX,SBYTE,0}, "\320\1\x83\205\15", IF_8086|IF_SM},
    {I_SUB, 2, {REG_AX,IMMEDIATE,0}, "\320\1\x2D\31", IF_8086|IF_SM},
    {I_SUB, 2, {REGMEM|BITS8,IMMEDIATE,0}, "\300\1\x80\205\21", IF_8086|IF_SM},
    {I_SUB, 2, {REGMEM|BITS16,IMMEDIATE,0}, "\320\300\134\1\x81\205\131", IF_8086|IF_SM},
    {I_SUB, 2, {MEMORY,IMMEDIATE|BITS8,0}, "\300\1\x80\205\21", IF_8086|IF_SM},
    {I_SUB, 2, {MEMORY,IMMEDIATE|BITS16,0}, "\320\300\134\1\x81\205\131", IF_8086|IF_SM},
    ITEMPLATE_END
};

static struct itemplate instrux_TEST[] = {
    {I_TEST, 2, {MEMORY,REG8,0}, "\300\1\x84\101", IF_8086|IF_SM},
    {I_TEST, 2, {REG8,REG8,0}, "\1\x84\101", IF_8086},
    {I_TEST, 2, {MEMORY,REG16,0}, "\320\300\1\x85\101", IF_8086|IF_SM},
    {I_TEST, 2, {REG16,REG16,0}, "\320\1\x85\101", IF_8086},
    {I_TEST, 2, {REG8,MEMORY,0}, "\301\1\x84\110", IF_8086|IF_SM},
    {I_TEST, 2, {REG16,MEMORY,0}, "\320\301\1\x85\110", IF_8086|IF_SM},
    {I_TEST, 2, {REG_AL,IMMEDIATE,0}, "\1\xA8\21", IF_8086|IF_SM},
    {I_TEST, 2, {REG_AX,IMMEDIATE,0}, "\320\1\xA9\31", IF_8086|IF_SM},
    {I_TEST, 2, {REGMEM|BITS8,IMMEDIATE,0}, "\300\1\xF6\200\21", IF_8086|IF_SM},
    {I_TEST, 2, {REGMEM|BITS16,IMMEDIATE,0}, "\320\300\1\xF7\200\31", IF_8086|IF_SM},
    {I_TEST, 2, {MEMORY,IMMEDIATE|BITS8,0}, "\300\1\xF6\200\21", IF_8086|IF_SM},
    {I_TEST, 2, {MEMORY,IMMEDIATE|BITS16,0}, "\320\300\1\xF7\200\31", IF_8086|IF_SM},
    ITEMPLATE_END
};

static struct itemplate instrux_WAIT[] = {
    {I_WAIT, 0, {0,0,0}, "\1\x9B", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_XCHG[] = {
    {I_XCHG, 2, {REG_AX,REG16,0}, "\320\11\x90", IF_8086},
    {I_XCHG, 2, {REG16,REG_AX,0}, "\320\10\x90", IF_8086},
    {I_XCHG, 2, {REG8,MEMORY,0}, "\301\1\x86\110", IF_8086|IF_SM},
    {I_XCHG, 2, {REG8,REG8,0}, "\1\x86\110", IF_8086},
    {I_XCHG, 2, {REG16,MEMORY,0}, "\320\301\1\x87\110", IF_8086|IF_SM},
    {I_XCHG, 2, {REG16,REG16,0}, "\320\1\x87\110", IF_8086},
    {I_XCHG, 2, {MEMORY,REG8,0}, "\300\1\x86\101", IF_8086|IF_SM},
    {I_XCHG, 2, {REG8,REG8,0}, "\1\x86\101", IF_8086},
    {I_XCHG, 2, {MEMORY,REG16,0}, "\320\300\1\x87\101", IF_8086|IF_SM},
    {I_XCHG, 2, {REG16,REG16,0}, "\320\1\x87\101", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_XLAT[] = {
    {I_XLAT, 0, {0,0,0}, "\1\xD7", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_XLATB[] = {
    {I_XLATB, 0, {0,0,0}, "\1\xD7", IF_8086},
    ITEMPLATE_END
};

static struct itemplate instrux_XOR[] = {
    {I_XOR, 2, {MEMORY,REG8,0}, "\300\1\x30\101", IF_8086|IF_SM},
    {I_XOR, 2, {REG8,REG8,0}, "\1\x30\101", IF_8086},
    {I_XOR, 2, {MEMORY,REG16,0}, "\320\300\1\x31\101", IF_8086|IF_SM},
    {I_XOR, 2, {REG16,REG16,0}, "\320\1\x31\101", IF_8086},
    {I_XOR, 2, {REG8,MEMORY,0}, "\301\1\x32\110", IF_8086|IF_SM},
    {I_XOR, 2, {REG8,REG8,0}, "\1\x32\110", IF_8086},
    {I_XOR, 2, {REG16,MEMORY,0}, "\320\301\1\x33\110", IF_8086|IF_SM},
    {I_XOR, 2, {REG16,REG16,0}, "\320\1\x33\110", IF_8086},
    {I_XOR, 2, {REGMEM|BITS16,IMMEDIATE|BITS8,0}, "\320\300\1\x83\206\15", IF_8086},
    {I_XOR, 2, {REG_AL,IMMEDIATE,0}, "\1\x34\21", IF_8086|IF_SM},
    {I_XOR, 2, {REG_AX,SBYTE,0}, "\320\1\x83\206\15", IF_8086|IF_SM},
    {I_XOR, 2, {REG_AX,IMMEDIATE,0}, "\320\1\x35\31", IF_8086|IF_SM},
    {I_XOR, 2, {REGMEM|BITS8,IMMEDIATE,0}, "\300\1\x80\206\21", IF_8086|IF_SM},
    {I_XOR, 2, {REGMEM|BITS16,IMMEDIATE,0}, "\320\300\134\1\x81\206\131", IF_8086|IF_SM},
    {I_XOR, 2, {MEMORY,IMMEDIATE|BITS8,0}, "\300\1\x80\206\21", IF_8086|IF_SM},
    {I_XOR, 2, {MEMORY,IMMEDIATE|BITS16,0}, "\320\300\134\1\x81\206\131", IF_8086|IF_SM},
    ITEMPLATE_END
};

static struct itemplate instrux_Jcc[] = {
    {I_Jcc, 1, {IMMEDIATE|SHORT,0,0}, "\330\x70\50", IF_8086},
    {I_Jcc, 1, {IMMEDIATE,0,0}, "\370\330\x70\50", IF_8086},
    {I_Jcc, 1, {IMMEDIATE,0,0}, "\330\x71\373\1\xE9\64", IF_8086},
    {I_Jcc, 1, {IMMEDIATE,0,0}, "\330\x70\50", IF_8086},
    ITEMPLATE_END
};

struct itemplate *nasm_instructions[] = {
    instrux_AAA,
    instrux_AAD,
    instrux_AAM,
    instrux_AAS,
    instrux_ADC,
    instrux_ADD,
    instrux_AND,
    instrux_CALL,
    instrux_CBW,
    instrux_CLC,
    instrux_CLD,
    instrux_CLI,
    instrux_CMC,
    instrux_CMP,
    instrux_CMPSB,
    instrux_CMPSW,
    instrux_CWD,
    instrux_DAA,
    instrux_DAS,
	instrux_DB,
	instrux_DD,
    instrux_DEC,
    instrux_DIV,
	instrux_DQ,
	instrux_DT,
	instrux_DW,
    instrux_EQU,
    instrux_F2XM1,
    instrux_FABS,
    instrux_FADD,
    instrux_FADDP,
    instrux_FBLD,
    instrux_FBSTP,
    instrux_FCHS,
    instrux_FCLEX,
    instrux_FCOM,
    instrux_FCOMP,
    instrux_FCOMPP,
    instrux_FDECSTP,
    instrux_FDISI,
    instrux_FDIV,
    instrux_FDIVP,
    instrux_FDIVR,
    instrux_FDIVRP,
    instrux_FENI,
    instrux_FFREE,
    instrux_FIADD,
    instrux_FICOM,
    instrux_FICOMP,
    instrux_FIDIV,
    instrux_FIDIVR,
    instrux_FILD,
    instrux_FIMUL,
    instrux_FINCSTP,
    instrux_FINIT,
    instrux_FIST,
    instrux_FISTP,
    instrux_FISUB,
    instrux_FISUBR,
    instrux_FLD,
    instrux_FLD1,
    instrux_FLDCW,
    instrux_FLDENV,
    instrux_FLDL2E,
    instrux_FLDL2T,
    instrux_FLDLG2,
    instrux_FLDLN2,
    instrux_FLDPI,
    instrux_FLDZ,
    instrux_FMUL,
    instrux_FMULP,
    instrux_FNCLEX,
    instrux_FNDISI,
    instrux_FNENI,
    instrux_FNINIT,
    instrux_FNOP,
    instrux_FNSAVE,
    instrux_FNSTCW,
    instrux_FNSTENV,
    instrux_FNSTSW,
    instrux_FPATAN,
    instrux_FPREM,
    instrux_FPTAN,
    instrux_FRNDINT,
    instrux_FRSTOR,
    instrux_FSAVE,
    instrux_FSCALE,
    instrux_FSQRT,
    instrux_FST,
    instrux_FSTCW,
    instrux_FSTENV,
    instrux_FSTP,
    instrux_FSTSW,
    instrux_FSUB,
    instrux_FSUBP,
    instrux_FSUBR,
    instrux_FSUBRP,
    instrux_FTST,
    instrux_FWAIT,
    instrux_FXAM,
    instrux_FXCH,
    instrux_FXTRACT,
    instrux_FYL2X,
    instrux_FYL2XP1,
    instrux_HLT,
    instrux_IDIV,
    instrux_IMUL,
    instrux_IN,
    instrux_INC,
	instrux_INCBIN,
    instrux_INT,
    instrux_INT03,
    instrux_INT3,
    instrux_INTO,
    instrux_IRET,
    instrux_IRETW,
    instrux_JCXZ,
    instrux_JMP,
    instrux_LAHF,
    instrux_LDS,
    instrux_LEA,
    instrux_LES,
    instrux_LODSB,
    instrux_LODSW,
    instrux_LOOP,
    instrux_LOOPE,
    instrux_LOOPNE,
    instrux_LOOPNZ,
    instrux_LOOPZ,
    instrux_MOV,
    instrux_MOVSB,
    instrux_MOVSW,
    instrux_MUL,
    instrux_NEG,
    instrux_NOP,
    instrux_NOT,
    instrux_OR,
    instrux_OUT,
    instrux_POP,
    instrux_POPF,
    instrux_POPFW,
    instrux_PUSH,
    instrux_PUSHF,
    instrux_PUSHFW,
    instrux_RCL,
    instrux_RCR,
    instrux_RESB,
	instrux_RESD,
    instrux_RESQ,
    instrux_REST,
    instrux_RESW,
    instrux_RET,
    instrux_RETF,
    instrux_RETN,
    instrux_ROL,
    instrux_ROR,
    instrux_SAHF,
    instrux_SAL,
    instrux_SALC,
    instrux_SAR,
    instrux_SBB,
    instrux_SCASB,
    instrux_SCASW,
    instrux_SHL,
    instrux_SHR,
    instrux_STC,
    instrux_STD,
    instrux_STI,
    instrux_STOSB,
    instrux_STOSW,
    instrux_SUB,
    instrux_TEST,
    instrux_WAIT,
    instrux_XCHG,
    instrux_XLAT,
    instrux_XLATB,
    instrux_XOR,
    instrux_Jcc,
};
