# PROGRAM NODE
 .data
printstr: .asciz "%d\n"

 .text
 .globl Main_main
#### METHOD NODE (1): method prologue
Main_main: push %ebp
 mov %esp, %ebp
 sub $4, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
# ASSIGNMENT
#### NEW NODE (1): allocate space
 push $8
 call malloc
 add $4, %esp
 push %eax
 pop -4(%ebp)
# ASSIGNMENT
 #INTEGER_LITERAL
 push $5
#### my friends!!# ASSIGNMENT
 #INTEGER_LITERAL
 push $6
#### my friends!!# PRINT
 mov -4(%ebp), %ebx
