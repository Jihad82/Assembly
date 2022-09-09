org 100h


.model small
.stack 100h
.data

    input db ?
    yes db "Yes it is a vowel$"
    no db "No it is not a vowel$"
   
.code

    main proc
       
        mov dx,@data
        mov ds,dx
           
        ;input
        mov ah,7
        int 21h
        mov input,al
       
        cmp input,"a"
        je vowel
       
        cmp input,"e"
        je vowel
       
        cmp input,"i"
        je vowel
       
        cmp input,"o"
        je vowel
       
        cmp input,"u"
        je vowel
             
        jmp consonant
             
vowel:
     
      lea dx,yes
      mov ah,9
      int 21h
      jmp exit  
     
consonant:
   
      lea dx,no
      mov ah,9
      int 21h
      jmp exit
           
exit:
   
      mov ah,4ch
      int 21h
   
    endp
    end main
 

Output:
Yes it is a vowel
