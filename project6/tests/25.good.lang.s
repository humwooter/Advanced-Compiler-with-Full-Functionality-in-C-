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
   mov 8(%ebp), %eax
   mov 0(%eax), %eax
   mov %ecx, %eax
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
   mov 8(%ebp), %eax
   mov 4(%eax), %eax
   mov %ecx, %eax
# VARIABLE
   mov 20(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
   mov 8(%ebp), %eax
   mov 8(%eax), %eax
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
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 mov 8(%eax), %eax
 mov 4(%eax), %eax
 push %eax
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 mov 8(%eax), %eax
 mov 4(%eax), %eax
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
  je label_2
label_1:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov 16(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call Float_copy
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov 12(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call Float_copy
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
  jmp label_3
label_2:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov 12(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call Float_copy
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov 16(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call Float_copy
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
label_3:
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %eax
 mov 4(%eax), %eax
 push %eax
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 mov 8(%eax), %eax
 mov 4(%eax), %eax
 push %eax
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -16(%ebp)
 #INTEGER_LITERAL
 push $8388608
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
 push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
 mov %ecx, %eax
 #INTEGER_LITERAL
 push $8388608
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
 push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov -8(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
 mov %ecx, %eax
# IF ELSE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %eax
 mov 0(%eax), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_5
label_4:
 #INTEGER_LITERAL
 push $1
 #NEGATION
 pop %eax
 neg %eax
 push %eax
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
 push %eax
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
 mov %ecx, %eax
  jmp label_5
label_5:
# IF ELSE
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 mov 8(%eax), %eax
 mov 0(%eax), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_7
label_6:
 #INTEGER_LITERAL
 push $1
 #NEGATION
 pop %eax
 neg %eax
 push %eax
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
 push %eax
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov -8(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
 mov %ecx, %eax
  jmp label_7
label_7:
# VARIABLE
   mov -16(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -20(%ebp)
# WHILE
label_8:
# VARIABLE
   mov -20(%ebp), %eax
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
  pop %eax
  cmp $0, %eax
  je label_9
# VARIABLE
   mov -20(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $1
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -20(%ebp)
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
 push %eax
 #INTEGER_LITERAL
 push $2
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov -8(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
 mov %ecx, %eax
 jmp label_8
label_9:
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
 push %eax
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
 push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov -12(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
 mov %ecx, %eax
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %eax
 mov 4(%eax), %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov -12(%ebp), %eax
 mov 8(%eax), %eax
 mov 4(%eax), %eax
 mov %ecx, %eax
# IF ELSE
 #INTEGER_LITERAL
 push $0
#### MEMBER ACCESS NODE
 mov -12(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
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
  je label_13
label_12:
 #INTEGER_LITERAL
 push $1
 #NEGATION
 pop %eax
 neg %eax
 push %eax
#### MEMBER ACCESS NODE
 mov -12(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
 push %eax
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov -12(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
 mov %ecx, %eax
 #BOOLEAN_LITERAL
 push $1
 pop %ecx
#### ASSIGNMENT NODE
 mov -12(%ebp), %eax
 mov 8(%eax), %eax
 mov 0(%eax), %eax
 mov %ecx, %eax
  jmp label_14
label_13:
 #BOOLEAN_LITERAL
 push $0
 pop %ecx
#### ASSIGNMENT NODE
 mov -12(%ebp), %eax
 mov 8(%eax), %eax
 mov 0(%eax), %eax
 mov %ecx, %eax
label_14:
# IF ELSE
#### MEMBER ACCESS NODE
 mov -12(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
 push %eax
 #INTEGER_LITERAL
 push $0
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
  pop %eax
  cmp $0, %eax
  je label_16
label_15:
# WHILE
label_18:
 #INTEGER_LITERAL
 push $8388608
#### MEMBER ACCESS NODE
 mov -12(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
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
  je label_19
#### MEMBER ACCESS NODE
 mov -12(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
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
 mov -12(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
 mov %ecx, %eax
#### MEMBER ACCESS NODE
 mov -12(%ebp), %eax
 mov 8(%eax), %eax
 mov 4(%eax), %eax
 push %eax
 #INTEGER_LITERAL
 push $1
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov -12(%ebp), %eax
 mov 8(%eax), %eax
 mov 4(%eax), %eax
 mov %ecx, %eax
 jmp label_18
label_19:
# WHILE
label_21:
#### MEMBER ACCESS NODE
 mov -12(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
 push %eax
 #INTEGER_LITERAL
 push $16777216
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_22
#### MEMBER ACCESS NODE
 mov -12(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
 push %eax
 #INTEGER_LITERAL
 push $2
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov -12(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
 mov %ecx, %eax
#### MEMBER ACCESS NODE
 mov -12(%ebp), %eax
 mov 8(%eax), %eax
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
 mov -12(%ebp), %eax
 mov 8(%eax), %eax
 mov 4(%eax), %eax
 mov %ecx, %eax
 jmp label_21
label_22:
#### MEMBER ACCESS NODE
 mov -12(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
 push %eax
 #INTEGER_LITERAL
 push $8388608
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov -12(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
 mov %ecx, %eax
  jmp label_17
label_16:
 #INTEGER_LITERAL
 push $0
 pop %ecx
#### ASSIGNMENT NODE
 mov -12(%ebp), %eax
 mov 8(%eax), %eax
 mov 4(%eax), %eax
 mov %ecx, %eax
label_17:
#### RETURN_STATEMENT
# VARIABLE
   mov -12(%ebp), %eax
   push %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
FloatOps_sub: push %ebp
 mov %esp, %ebp
 sub $0, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### RETURN_STATEMENT
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### NEW NODE (1): allocate space
 push $12
 call malloc
 add $4, %esp
 push %eax
# VARIABLE
   mov 12(%ebp), %eax
   push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_add
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
FloatOps_mult: push %ebp
 mov %esp, %ebp
 sub $32, %esp
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
 mov %ecx, -4(%ebp)
# IF ELSE
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 mov 8(%eax), %eax
 mov 4(%eax), %eax
 push %eax
 #INTEGER_LITERAL
 push $0
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
 push %eax
 #INTEGER_LITERAL
 push $0
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 mov 8(%eax), %eax
 mov 4(%eax), %eax
 push %eax
 #INTEGER_LITERAL
 push $0
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 mov 8(%eax), %eax
 mov 8(%eax), %eax
 push %eax
 #INTEGER_LITERAL
 push $0
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
  pop %eax
  cmp $0, %eax
  je label_24
label_23:
 #BOOLEAN_LITERAL
 push $0
 pop %ecx
#### ASSIGNMENT NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %eax
 mov 0(%eax), %eax
 mov %ecx, %eax
 #INTEGER_LITERAL
