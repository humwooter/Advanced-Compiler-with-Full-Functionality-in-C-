# PROGRAM NODE
 .data
printstr: .asciz "%d\n"

 .text
 .globl Main_main
#### METHOD NODE (1): method prologue
classA_classA: push %ebp
 mov %esp, %ebp
 sub $0, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
 #INTEGER_LITERAL
 push $0
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 0(%edx), %ebx
 mov %ecx, 0(%ebx)
 #INTEGER_LITERAL
 push $0
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 4(%edx), %ebx
 mov %ecx, 4(%ebx)
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
classB_classB: push %ebp
 mov %esp, %ebp
 sub $0, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
# VARIABLE
   mov 12(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 0(%edx), %ebx
 mov %ecx, 0(%ebx)
# VARIABLE
   mov 16(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 4(%edx), %ebx
 mov %ecx, 4(%ebx)
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
classB_makeA: push %ebp
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
 mov 12(%ebp), %ebx
