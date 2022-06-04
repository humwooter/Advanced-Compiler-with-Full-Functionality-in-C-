# PROGRAM NODE
 .data
printstr: .asciz "%d\n"

 .text
 .globl Main_main
#### METHOD NODE (1): method prologue
Main_main: push %ebp
 mov %esp, %ebp
 sub $12, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
 #INTEGER_LITERAL
 push $0
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 #INTEGER_LITERAL
 push $1
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
 #BOOLEAN_LITERAL
 push $0
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
# WHILE
label_0:
 #INTEGER_LITERAL
 push $8
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_1
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $2
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #INTEGER_LITERAL
 push $2
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $0
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
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
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
# IF ELSE
# VARIABLE
   mov -12(%ebp), %eax
   push %eax
  pop %eax
  cmp $0, %eax
  je label_4
label_3:
# VARIABLE
   mov -8(%ebp), %eax
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
 mov %ecx, -8(%ebp)
  jmp label_5
label_4:
# VARIABLE
   mov -8(%ebp), %eax
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
 mov %ecx, -8(%ebp)
label_5:
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
