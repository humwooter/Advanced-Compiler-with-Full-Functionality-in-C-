# PROGRAM NODE
 .data
printstr: .asciz "%d\n"

 .text
 .globl Main_main
#### METHOD NODE (1): method prologue
classA_f0: push %ebp
 mov %esp, %ebp
 sub $0, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### RETURN_STATEMENT
# VARIABLE
   mov 12(%ebp), %eax
   push %eax
# VARIABLE
   mov 12(%ebp), %eax
   push %eax
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
classA_doAll: push %ebp
 mov %esp, %ebp
 sub $8, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
 #INTEGER_LITERAL
 push $1
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 #INTEGER_LITERAL
 push $2
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
# PRINT
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $5
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call classA_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
 push $printstr
 call printf
# PRINT
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $6
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call classA_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
 push $printstr
 call printf
# PRINT
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
# VARIABLE
   mov -8(%ebp), %eax
   push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
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
Main_main: push %ebp
 mov %esp, %ebp
 sub $4, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov -4(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call classA_doAll
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
