# PROGRAM NODE
 .data
 printstr: .asciz %d

 .text
 .globl Main_main:
# PRINT
 push $printstr
 call printf
