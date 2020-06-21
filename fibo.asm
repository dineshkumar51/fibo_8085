LXI H,2200h              ;initializing base address
MVI M,0h                  ;initializing first element to 0
INX H                       ;incrementing the address
MVI M,01h                ;initializing the second element to 1
MVI D,09h                ;initializing the loop
LOOP: DCX H            ;moving to previous element
      MOV A,M            ;moving the content pointed by the HL pair to A
      INX H                 ;moving to next element
      ADD M                ;ADD the content of A with content pointed by
                               ; HL pair and store the result in A
       
      INX H                ;moving to next element 
      MOV M,A           ;moving the content of A to Address stored in HL pair
      DCR D               ;decrementing control variable
      JNZ LOOP         ;if the condition is satisfied jump back to LOOP
HLT 
