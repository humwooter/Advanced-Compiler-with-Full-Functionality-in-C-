# PROGRAM NODE
 .data
printstr: .asciz "%d\n"

 .text
 .globl Main_main
#### METHOD NODE (1): method prologue
class0_class0:
 push %ebp
 mov %esp, %ebp
 sub $12, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 #BOOLEAN_LITERAL
 push $1
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 mov 8(%ebp), %eax
 pop 4(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $130
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 mov 8(%ebp), %eax
 pop 0(%eax)
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_1
label_0:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $13
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -4(%ebp)
# WHILE
label_3:
 #INTEGER_LITERAL
 push $51
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
  je label_4
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $2
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -4(%ebp)
# PRINT
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
 push $printstr
 call printf
 jmp label_3
label_4:
  jmp label_2
label_1:
# PRINT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push %eax
 push $printstr
 call printf
label_2:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $873
 pop -8(%ebp)
# WHILE
label_6:
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $97
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_7
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $3
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $170586
 pop -12(%ebp)
# WHILE
label_8:
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $26
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_9
#### ASSIGNMENT NODE
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $3
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -12(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $151
 push $printstr
 call printf
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
 jmp label_8
label_9:
 jmp label_6
label_7:
# PRINT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
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
class1_f0:
 push %ebp
 mov %esp, %ebp
 sub $8, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $99
 pop -4(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $16
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -8(%ebp)
# WHILE
label_10:
 #INTEGER_LITERAL
 push $4
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
  pop %eax
  cmp $0, %eax
  je label_11
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $10
 #NEGATION
 pop %eax
 neg %eax
 push %eax
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 pop -4(%ebp)
 jmp label_10
label_11:
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 pop -4(%ebp)
# PRINT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
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
class1_f1:
 push %ebp
 mov %esp, %ebp
 sub $24, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -20(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $39
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $151
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $185
 pop -16(%ebp)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $8
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $1
 #INTEGER_LITERAL
 push $233
 #INTEGER_LITERAL
 push $94
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov 20(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $12, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -12(%ebp)
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_14
label_13:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $21
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -24(%ebp)
# WHILE
label_15:
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $39
 #NEGATION
 pop %eax
 neg %eax
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
  je label_16
#### ASSIGNMENT NODE
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $3
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -24(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 push %eax
#### NEW NODE (1): allocate space
 push $8
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $0
 #INTEGER_LITERAL
 push $24
 mov 20(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $12, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $159
 #INTEGER_LITERAL
 push $182
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $111
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 jmp label_15
label_16:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $36
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -4(%ebp)
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
  pop %eax
  cmp $0, %eax
  je label_18
label_17:
# PRINT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 12(%ebx), %eax
 push %eax
 push $printstr
 call printf
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $195
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $40
#### NEW NODE (1): allocate space
 push $8
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -12(%ebp), %eax
 push 4(%eax)
 #INTEGER_LITERAL
 push $233
 mov 20(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $12, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
  jmp label_18
label_18:
  jmp label_14
label_14:
# PRINT
#### MEMBER ACCESS NODE
 mov -12(%ebp), %eax
 push 4(%eax)
 push $printstr
 call printf
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -12(%ebp), %eax
 push 0(%eax)
 pop -4(%ebp)
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class1_f2:
 push %ebp
 mov %esp, %ebp
 sub $12, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $8
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $1
 #INTEGER_LITERAL
 push $132
 #INTEGER_LITERAL
 push $69
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $4
 #INTEGER_LITERAL
 push $178
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 mov 20(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $12, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $44
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $25
 pop -12(%ebp)
# WHILE
label_19:
 #INTEGER_LITERAL
 push $65561
# VARIABLE
 mov -12(%ebp), %eax
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
  je label_20
#### ASSIGNMENT NODE
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -12(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 jmp label_19
label_20:
#### RETURN_STATEMENT
# VARIABLE
 push %eax
 #NEGATION
 pop %eax
 neg %eax
 push %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class1_f3:
 push %ebp
 mov %esp, %ebp
 sub $20, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 #BOOLEAN_LITERAL
 push $1
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $8
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $1
 #INTEGER_LITERAL
 push $105
 #INTEGER_LITERAL
 push $247
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov 20(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $12, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $173
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -12(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $240
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $269001
 pop -20(%ebp)
# WHILE
label_22:
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $41
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_23
#### ASSIGNMENT NODE
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $3
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -20(%ebp)
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_26
label_25:
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
  jmp label_26
label_26:
# PRINT
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
 push $printstr
 call printf
 jmp label_22
label_23:
#### RETURN_STATEMENT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class1_f4:
 push %ebp
 mov %esp, %ebp
 sub $24, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $8
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $1
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 #INTEGER_LITERAL
 push $52
 mov 20(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $12, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -24(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 pop -20(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $118
 #INTEGER_LITERAL
 push $159
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -12(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $180
 push $printstr
 call printf
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -24(%ebp), %eax
 push 0(%eax)
# VARIABLE
 mov 8(%ebp), %ebx
 mov 16(%ebx), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### RETURN_STATEMENT
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class1_class1:
 push %ebp
 mov %esp, %ebp
 sub $12, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $0
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 #INTEGER_LITERAL
 push $47
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_class0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 mov 8(%ebp), %eax
 pop 20(%eax)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $8
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $1
 #INTEGER_LITERAL
 push $213
 #INTEGER_LITERAL
 push $169
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 mov 20(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $12, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 mov 8(%ebp), %eax
 pop 16(%eax)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $8
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $0
 #INTEGER_LITERAL
 push $66
 #INTEGER_LITERAL
 push $232
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov 20(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $12, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 mov 8(%ebp), %eax
 pop 24(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $231
 mov 8(%ebp), %eax
 pop 12(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 mov 8(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $207
 #INTEGER_LITERAL
 push $142
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $153
 #INTEGER_LITERAL
 push $61
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $171
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov 28(%ebp), %eax
 push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $241
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -8(%ebp)
# IF ELSE
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 16(%ebx), %eax
 push 4(%eax)
  pop %eax
  cmp $0, %eax
  je label_28
label_27:
#### ASSIGNMENT NODE
# VARIABLE
 push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $65
 pop -12(%ebp)
# WHILE
label_29:
 #INTEGER_LITERAL
 push $59114
# VARIABLE
 mov -12(%ebp), %eax
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
  je label_30
#### ASSIGNMENT NODE
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $3
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -12(%ebp)
# PRINT
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 push %eax
# VARIABLE
 mov 8(%ebp), %ebx
 mov 16(%ebx), %eax
 push %eax
 #INTEGER_LITERAL
 push $1
# VARIABLE
 mov 28(%ebp), %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f3
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 push $printstr
 call printf
#### ASSIGNMENT NODE
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $97
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -8(%ebp)
 jmp label_29
label_30:
  jmp label_28
label_28:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $83
# VARIABLE
 mov 8(%ebp), %ebx
 mov 16(%ebx), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
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
class2_f0:
 push %ebp
 mov %esp, %ebp
 sub $28, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $85
 pop -24(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -20(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 #INTEGER_LITERAL
 push $86
 #INTEGER_LITERAL
 push $43
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $177
 #INTEGER_LITERAL
 push $111
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 #BOOLEAN_LITERAL
 push $1
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $224
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $136
 pop -28(%ebp)
# WHILE
label_32:
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $68
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_33
#### ASSIGNMENT NODE
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $2
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -28(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $119
 #INTEGER_LITERAL
 push $175
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #INTEGER_LITERAL
 push $146
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -8(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $25
 push $printstr
 call printf
 jmp label_32
label_33:
# PRINT
 #INTEGER_LITERAL
 push $120
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -8(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $184
 push $printstr
 call printf
# PRINT
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
 push $printstr
 call printf
#### RETURN_STATEMENT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 12(%ebx), %eax
 push %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class2_f1:
 push %ebp
 mov %esp, %ebp
 sub $8, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $254
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $99328
 pop -8(%ebp)
# WHILE
label_35:
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $97
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_36
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $5
 pop -4(%ebp)
# IF ELSE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 20(%ebx), %eax
 push %eax
 #INTEGER_LITERAL
 push $141
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_39
label_38:
# PRINT
# VARIABLE
 push %eax
 push $printstr
 call printf
  jmp label_40
label_39:
#### ASSIGNMENT NODE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 16(%ebx), %eax
 push %eax
 pop -4(%ebp)
# PRINT
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 0(%eax)
 push $printstr
 call printf
label_40:
 jmp label_35
label_36:
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class2_class2:
 push %ebp
 mov %esp, %ebp
 sub $8, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $1
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 #INTEGER_LITERAL
 push $144
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class2_class0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $77
 #INTEGER_LITERAL
 push $218
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
 mov 8(%ebp), %eax
 pop 20(%eax)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $8
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $0
 #BOOLEAN_LITERAL
 push $0
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 #INTEGER_LITERAL
 push $248
 #INTEGER_LITERAL
 push $127
 #INTEGER_LITERAL
 push $12
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 mov 20(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $12, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 mov 8(%ebp), %eax
 pop 16(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $170
 mov 8(%ebp), %eax
 pop 28(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $117
 mov 8(%ebp), %eax
 pop 24(%eax)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $8
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $0
 #INTEGER_LITERAL
 push $181
 #INTEGER_LITERAL
 push $178
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 mov 20(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $12, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 mov 8(%ebp), %eax
 pop 12(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 mov 8(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $19
 #INTEGER_LITERAL
 push $240
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
 pop -8(%ebp)
# IF ELSE
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 16(%ebx), %eax
 push 0(%eax)
# VARIABLE
 mov 8(%ebp), %ebx
 mov 16(%ebx), %eax
 push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
# VARIABLE
 mov 8(%ebp), %ebx
 mov 20(%ebx), %eax
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
  je label_43
label_42:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $0
# VARIABLE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class2_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $86
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -4(%ebp)
  jmp label_43
label_43:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -4(%ebp)
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class3_f0:
 push %ebp
 mov %esp, %ebp
 sub $8, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $158
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $2621440
 pop -8(%ebp)
# WHILE
label_44:
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $10
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_45
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -8(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
# PRINT
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push 12(%eax)
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $60
 pop -4(%ebp)
 jmp label_44
label_45:
#### RETURN_STATEMENT
 #INTEGER_LITERAL
 push $149
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class3_f1:
 push %ebp
 mov %esp, %ebp
 sub $16, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $167
 #INTEGER_LITERAL
 push $64
 #NEGATION
 pop %eax
 neg %eax
 push %eax
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $198
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $51
 #INTEGER_LITERAL
 push $64
 #NEGATION
 pop %eax
 neg %eax
 push %eax
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $203
 #INTEGER_LITERAL
 push $186
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -12(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 push 12(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $82
 pop -4(%ebp)
#### RETURN_STATEMENT
 #INTEGER_LITERAL
 push $82
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class3_f2:
 push %ebp
 mov %esp, %ebp
 sub $0, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
# PRINT
# VARIABLE
 mov 12(%ebp), %eax
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
class3_f3:
 push %ebp
 mov %esp, %ebp
 sub $4, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $18
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -4(%ebp)
# WHILE
label_46:
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
  pop %eax
  cmp $0, %eax
  je label_47
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $7
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -4(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### NEW NODE (1): allocate space
 push $32
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $147
 mov 16(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class2_class2
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $8, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 #INTEGER_LITERAL
 push $23
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class3_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### NEW NODE (1): allocate space
 push $32
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push 12(%eax)
 #INTEGER_LITERAL
 push $218
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov 16(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class2_class2
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $8, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 #INTEGER_LITERAL
 push $61
 #NEGATION
 pop %eax
 neg %eax
 push %eax
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push 12(%eax)
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class3_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 jmp label_46
label_47:
#### RETURN_STATEMENT
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push 12(%eax)
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class3_class3:
 push %ebp
 mov %esp, %ebp
 sub $24, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $28
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $138
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #INTEGER_LITERAL
 push $181
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $204
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $213
 #BOOLEAN_LITERAL
 push $1
 #INTEGER_LITERAL
 push $178
 #INTEGER_LITERAL
 push $151
 #INTEGER_LITERAL
 push $17
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
 mov 32(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class1_class1
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $24, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 mov 8(%ebp), %eax
 pop 4(%eax)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $8
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $231
 #INTEGER_LITERAL
 push $60
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 #INTEGER_LITERAL
 push $249
 #INTEGER_LITERAL
 push $193
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 mov 20(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $12, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 mov 8(%ebp), %eax
 pop 0(%eax)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $28
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $61
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #INTEGER_LITERAL
 push $93
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
 #INTEGER_LITERAL
 push $216
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
 mov 32(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class1_class1
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $24, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 mov 8(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $243
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -24(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $48
 pop -20(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $77
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $188
 #INTEGER_LITERAL
 push $108
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $70
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -12(%ebp)
# PRINT
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push 0(%eax)
 #INTEGER_LITERAL
 push $229
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 push $printstr
 call printf
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### NEW NODE (1): allocate space
 push $32
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $221
 mov 16(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class2_class2
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $8, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 #INTEGER_LITERAL
 push $131
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class3_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
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
Main_main:
 push %ebp
 mov %esp, %ebp
 sub $28, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $28
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $229
 #INTEGER_LITERAL
 push $37
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #INTEGER_LITERAL
 push $233
 #BOOLEAN_LITERAL
 push $0
 #INTEGER_LITERAL
 push $107
 #INTEGER_LITERAL
 push $134
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $7
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $56
 #INTEGER_LITERAL
 push $94
 #INTEGER_LITERAL
 push $173
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 mov 32(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class1_class1
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $24, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -20(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $150
 #INTEGER_LITERAL
 push $97
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $37
 pop -4(%ebp)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $28
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $168
 #INTEGER_LITERAL
 push $188
 #INTEGER_LITERAL
 push $79
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $192
 #INTEGER_LITERAL
 push $160
 #INTEGER_LITERAL
 push $200
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 #INTEGER_LITERAL
 push $237
 #INTEGER_LITERAL
 push $119
 #INTEGER_LITERAL
 push $191
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 mov 32(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class1_class1
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $24, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -16(%ebp)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $12
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $235
 mov 16(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class3_class3
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $8, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $141
 #NEGATION
 pop %eax
 neg %eax
 push %eax
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 12(%eax)
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 12(%eax)
 pop -4(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $192
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 24(%eax)
 push -20(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 push -20(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 push -20(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
# IF ELSE
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 4(%eax)
  pop %eax
  cmp $0, %eax
  je label_51
label_50:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $95
 pop -24(%ebp)
# WHILE
label_53:
 #INTEGER_LITERAL
 push $4191
# VARIABLE
 mov -24(%ebp), %eax
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
  je label_54
#### ASSIGNMENT NODE
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -24(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 push -20(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 jmp label_53
label_54:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 0(%eax)
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 16(%eax)
 push -20(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
  jmp label_52
label_51:
# IF ELSE
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 0(%eax)
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 0(%eax)
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_56
label_55:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 mov -20(%ebp), %eax
 pop 20(%eax)
  jmp label_56
label_56:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 push -20(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
label_52:
# PRINT
 #INTEGER_LITERAL
 push $106
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $25
 pop -28(%ebp)
# WHILE
label_57:
 #INTEGER_LITERAL
 push $281
# VARIABLE
 mov -28(%ebp), %eax
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
  je label_58
#### ASSIGNMENT NODE
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $2
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -28(%ebp)
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_61
label_60:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 0(%eax)
#### NEW NODE (1): allocate space
 push $8
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 4(%eax)
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 0(%eax)
 mov 20(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $12, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 push -20(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
# IF ELSE
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 8(%eax)
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
  pop %eax
  cmp $0, %eax
  je label_63
label_62:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 push -20(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
  jmp label_64
label_63:
# PRINT
 #BOOLEAN_LITERAL
 push $0
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 push $printstr
 call printf
# PRINT
 #INTEGER_LITERAL
 push $170
 push $printstr
 call printf
label_64:
# IF ELSE
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 8(%eax)
  pop %eax
  cmp $0, %eax
  je label_66
label_65:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 push -20(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $252
#### NEW NODE (1): allocate space
 push $8
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 20(%eax)
 #INTEGER_LITERAL
 push $140
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 mov 20(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $12, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 push -20(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
  jmp label_66
label_66:
  jmp label_61
label_61:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $56
 pop -4(%ebp)
 jmp label_57
label_58:
# PRINT
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 4(%eax)
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
