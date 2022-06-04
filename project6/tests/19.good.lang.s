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
# VARIABLE
   mov 16(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
   mov 8(%ebp), %eax
   mov 4(%eax), %eax
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
classA_inc: push %ebp
 mov %esp, %ebp
 sub $0, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
# VARIABLE
   mov 8(%ebp), %eax
   mov 0(%eax), %eax
   push %eax
 #INTEGER_LITERAL
 push $2
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
   mov 8(%ebp), %eax
   mov 0(%eax), %eax
   mov %ecx, %eax
# VARIABLE
   mov 8(%ebp), %eax
   mov 4(%eax), %eax
   push %eax
 #INTEGER_LITERAL
 push $1
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
   mov 8(%ebp), %eax
   mov 4(%eax), %eax
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
Main_main: push %ebp
 mov %esp, %ebp
 sub $8, %esp
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
# PRINT
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %eax
 mov 0(%eax), %eax
 push %eax
 push $printstr
 call printf
# PRINT
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %eax
 mov 4(%eax), %eax
 push %eax
 push $printstr
 call printf
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov -4(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call classA_inc
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
# PRINT
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %eax
 mov 0(%eax), %eax
 push %eax
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %eax
 mov 4(%eax), %eax
 push %eax
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 push $printstr
 call printf
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
