org 100h


.model samll

.data
     ones db 0

.code

main proc
   
   
    mov ax,100
   
    mov cx,16 ;for count total 16 bit
   
    L1:
        test ax,1       ;and operation
        jz lastbitzero  ;if both value are not same
        jnz lastbitone   ;if both value same 1&1
       
        lastbitzero:  
        jmp done
       
        lastbitone:      
        inc ones
       
        done:
        rcr ax,1 ;shift right use carry
       
        loop L1 ;calll L1 while cx>0
                                         
                                   
ret
