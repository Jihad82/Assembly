org 100h


.model small
.stack 100h

.data

  c db ? ; an undefined value
  a db "This is A$"
  b db "This is not A$"
  nl db 0ah,0dh,"$"
 
 
.code

    main proc
       
        ;move data to ds register
        mov dx,@data
        mov ds,dx
       
       
        ;input a char
        mov ah,1   ; use ah,1 for input single char
        int 21h
        mov c,al   ; save that value to c
         
       
        cmp c,'a'  ;compare c variable with char c
        je print   ; if            
        jmp wrongPrint  ;else if

;block
print:

     lea dx,nl
     mov ah,9
     int 21h
   
     lea dx,a
     mov ah,9
     int 21h
     jmp exit ;call exit block
   
wrongPrint:
     
     lea dx,nl
     mov ah,9
     int 21h

     lea dx,b
     mov ah,9
     int 21h
     jmp exit ;call exit block

   
exit:
     mov ah,4ch
     int 21h

    endp      ; end main function
    end main  ;end the file

;Output:
;a

;This is A

 
