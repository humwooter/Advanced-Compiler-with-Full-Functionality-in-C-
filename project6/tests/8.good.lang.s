# PROGRAM NODE
 .data
printstr: .asciz "%d\n"

 .text
 .globl Main_main
#### METHOD NODE (1): method prologue
Main_main:
 push %ebp
 mov %esp, %ebp
 sub $8, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $0
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $0
 pop -8(%ebp)
# WHILE
label_0:
 #INTEGER_LITERAL
 push $5
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_1
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $2
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $1
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -4(%ebp)
# PRINT
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 push $printstr
 call printf
 jmp label_0
label_1:
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
