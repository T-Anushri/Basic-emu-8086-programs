INCLUDE EMU8086.INC 
ORG 100H 
MOV CX,150 
MOV AX,CX 
DEFINE_PRINT_NUM 
DEFINE_PRINT_NUM_UNS 
CALL PRINT_NUM 
RET 