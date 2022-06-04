# PROGRAM NODE
 .data
printstr: .asciz "%d\n"

 .text
 .globl Main_main
#### METHOD NODE (1): method prologue
Float_Float: push %ebp
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
 #INTEGER_LITERAL
 push $127
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 4(%edx), %ebx
 mov %ecx, 4(%ebx)
# VARIABLE
   mov 20(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 8(%edx), %ebx
 mov %ecx, 8(%ebx)
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
Float_printval: push %ebp
 mov %esp, %ebp
 sub $0, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
# PRINT
# VARIABLE
   mov 8(%ebp), %eax
   mov 0(%eax), %eax
   push %eax
 push $printstr
 call printf
# PRINT
# VARIABLE
   mov 8(%ebp), %eax
   mov 4(%eax), %eax
   push %eax
 #INTEGER_LITERAL
 push $127
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 push $printstr
 call printf
# PRINT
# VARIABLE
   mov 8(%ebp), %eax
   mov 8(%eax), %eax
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
#### METHOD NODE (1): method prologue
Float_copy: push %ebp
 mov %esp, %ebp
 sub $0, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### RETURN_STATEMENT
#### NEW NODE (1): allocate space
 push $12
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
   mov 8(%ebp), %eax
   mov 8(%eax), %eax
   push %eax
# VARIABLE
   mov 8(%ebp), %eax
   mov 4(%eax), %eax
   push %eax
 #INTEGER_LITERAL
 push $127
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
# VARIABLE
   mov 8(%ebp), %eax
   mov 0(%eax), %eax
   push %eax
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
FloatOps_add: push %ebp
 mov %esp, %ebp
 sub $20, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### NEW NODE (1): allocate space
 push $12
 call malloc
 add $4, %esp
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
# IF ELSE
 mov 16(%ebp), %ebx
