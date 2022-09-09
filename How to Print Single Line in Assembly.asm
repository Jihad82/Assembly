org 100h


.model small

.data
   
   msg db "Hello World$"


.code

 
   lea dx,msg  ;get string
   mov ah,9    ;display string function
   int 21h     ;display that msg

ret


;Output:
;Hello World
