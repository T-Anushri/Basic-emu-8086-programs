.DATA
MSG DB "The Give No is a Prime No$"
NMSG DB "The Given No is not a Prime No$"
NUM DB 02H ;number to be checked
    
.CODE

START:
MOV AX,@DATA
MOV DS,AX
MOV AL,NUM
MOV BL,02H      
MOV DX,0000H    
MOV AH,00H      
CMP AL,02H
JE TRUE
L1:
DIV BL
CMP AH,00H     
JNE NEXT
INC BH
NEXT:          
MOV AL,NUM     
CMP BL,NUM     
JNE L1
CMP BH,01H
JNC FALSE      
TRUE: 
LEA DX,MSG
MOV AH,09H 
INT 21H
JMP EXIT
FALSE: 
LEA DX,NMSG
MOV AH,09H   
INT 21H             
EXIT:
MOV AH,4CH
INT 21H
END START