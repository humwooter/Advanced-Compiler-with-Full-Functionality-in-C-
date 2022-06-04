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
# VARIABLE
   mov 12(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
   mov 8(%ebp), %eax
   mov 0(%eax), %eax
   mov %ecx, %eax
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
 #INTEGER_LITERAL
 push $1
 pop %ecx
#### ASSIGNMENT NODE
   mov 8(%ebp), %eax
   mov 0(%eax), %eax
   mov %ecx, %eax
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
classB_fib: push %ebp
 mov %esp, %ebp
 sub $4, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
# VARIABLE
   mov 8(%ebp), %eax
   mov 0(%eax), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
# VARIABLE
   mov 8(%ebp), %eax
   mov 0(%eax), %eax
   push %eax
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 mov 8(%eax), %eax
 mov 0(%eax), %eax
 push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
   mov 8(%ebp), %eax
   mov 0(%eax), %eax
   mov %ecx, %eax
# PRINT
# VARIABLE
   mov 8(%ebp), %eax
   mov 0(%eax), %eax
   push %eax
 push $printstr
 call printf
#### RETURN_STATEMENT
#### NEW NODE (1): allocate space
 push $4
 call malloc
 add $4, %esp
 push %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
classB_dofib: push %ebp
 mov %esp, %ebp
 sub $0, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
# PRINT
 #INTEGER_LITERAL
 push $1
 push $printstr
 call printf
# PRINT
 #INTEGER_LITERAL
 push $1
 push $printstr
 call printf
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### NEW NODE (1): allocate space
 push $4
 call malloc
 add $4, %esp
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call classB_fib
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call classB_fib
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call classB_fib
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call classB_fib
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call classB_fib
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call classB_fib
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call classB_fib
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call classB_fib
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
Main_main: push %ebp
 mov %esp, %ebp
 sub $4, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### NEW NODE (1): allocate space
 push $4
 call malloc
 add $4, %esp
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov -4(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call classB_dofib
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
