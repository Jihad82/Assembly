.MODEL SMALL

.STACK 100H
.DATA

R1 DB "UPPER CASE$"
R2 DB "LOWER CASE$"
R3 DB "CASE NOT SPECIFIED$"
NL DB 0DH , 0AH, '$'

.CODE

MAIN PROC
   
    MOV AX, @DATA
    MOV DS, AX
   
   
   
    MOV AH,1
    INT 21H
    MOV BL,AL
   
    LEA DX,NL
    MOV AH,9
    INT 21H
   
   
    CMP BL, 65
    JGE POSSIBLE2
    JMP RESULT3
   
    POSSIBLE2:
        CMP BL ,90
        JLE RESULT1
        CMP BL, 97
        JGE POSSIBLE3
        JMP RESULT3
       
    POSSIBLE3:
        CMP BL ,122
        JLE RESULT2
        JMP RESULT3
         
   
    RESULT1:
            ; PRINT UPPER CASE
           
            LEA DX, R1
            MOV AH,9
            INT 21H
            JMP EXIT
           
   
    RESULT2:
            ; PRINT LOWER CASE
            LEA DX, R2
            MOV AH,9
            INT 21H
            ;EXIT
            JMP EXIT
           
    RESULT3:
            ; PRINT CASE NOT SPECIFIED
            LEA DX, R3
            MOV AH,9
            INT 21H
            JMP EXIT
    EXIT:
           
    MAIN ENDP
END MAIN

Output:
l

LOWER CASE
