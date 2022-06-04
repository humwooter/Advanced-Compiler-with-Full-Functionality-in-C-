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
#### NEW NODE (1): allocate space
 push $8
 call malloc
 add $4, %esp
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 #INTEGER_LITERAL
 push $5
 pop %ecx
#### ASSIGNMENT NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %ebx
 mov -4(%ebx), %eax
 mov %ecx, %eax
 #INTEGER_LITERAL
 push $6
 pop %ecx
#### ASSIGNMENT NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %ebx
 mov -4(%ebx), %eax
 mov %ecx, %eax
# PRINT
 mov -4(%ebp), %ebx
