# PROGRAM NODE
 .data
printstr: .asciz "%d\n"

 .text
 .globl Main_main
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
 mov 8(%ebp), %edx
 mov 0(%edx), %ebx
 mov %ecx, 0(%ebx)
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
 #INTEGER_LITERAL
 push $2
 pop %ecx
#### ASSIGNMENT NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %ebx
 mov -4(%ebx), %eax
 mov %ecx, %eax
 #INTEGER_LITERAL
 push $3
 pop %ecx
#### ASSIGNMENT NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %ebx
 mov -4(%ebx), %eax
 mov %ecx, %eax
# PRINT
 mov -4(%ebp), %ebx
