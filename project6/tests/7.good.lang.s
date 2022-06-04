# PROGRAM NODE
 .data
printstr: .asciz "%d\n"

 .text
 .globl Main_main
#### METHOD NODE (1): method prologue
Main_main: push %ebp
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
 mov %ecx, -8(%ebp)
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
 mov %ecx, -4(%ebp)
# IF ELSE
# VARIABLE
   mov -8(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $2
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_1
label_0:
# PRINT
 #INTEGER_LITERAL
 push $0
 push $printstr
 call printf
  jmp label_2
label_1:
# PRINT
 #INTEGER_LITERAL
 push $1
 push $printstr
 call printf
label_2:
# IF ELSE
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $2
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_4
label_3:
# PRINT
 #INTEGER_LITERAL
 push $2
 push $printstr
 call printf
  jmp label_5
label_4:
# PRINT
 #INTEGER_LITERAL
 push $3
 push $printstr
 call printf
label_5:
# IF ELSE
 #INTEGER_LITERAL
 push $3
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
 #INTEGER_LITERAL
 push $3
# VARIABLE
   mov -8(%ebp), %eax
   push %eax
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
  pop %eax
  cmp $0, %eax
  je label_9
label_8:
# PRINT
 #INTEGER_LITERAL
 push $4
 push $printstr
 call printf
  jmp label_10
label_9:
# PRINT
 #INTEGER_LITERAL
 push $5
 push $printstr
 call printf
label_10:
# IF ELSE
 #INTEGER_LITERAL
 push $3
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
 #INTEGER_LITERAL
 push $3
# VARIABLE
   mov -8(%ebp), %eax
   push %eax
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
  pop %eax
  cmp $0, %eax
  je label_14
label_13:
# PRINT
 #INTEGER_LITERAL
 push $6
 push $printstr
 call printf
  jmp label_15
label_14:
# PRINT
 #INTEGER_LITERAL
 push $7
 push $printstr
 call printf
label_15:
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
