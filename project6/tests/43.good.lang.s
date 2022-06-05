# PROGRAM NODE
 .data
printstr: .asciz "%d\n"

 .text
 .globl Main_main
#### METHOD NODE (1): method prologue
class0_f0:
 push %ebp
 mov %esp, %ebp
 sub $8, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $179
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $152
 #INTEGER_LITERAL
 push $39
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 pop -4(%ebp)
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -4(%ebp)
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
class0_f1:
 push %ebp
 mov %esp, %ebp
 sub $16, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $222
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $125
 pop -12(%ebp)
#### RETURN_STATEMENT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 16(%ebx), %eax
 push %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class0_f2:
 push %ebp
 mov %esp, %ebp
 sub $8, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $51
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -4(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $197
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
# VARIABLE
 mov 8(%ebp), %ebx
 mov 12(%ebx), %eax
 push %eax
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 pop -4(%ebp)
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
class0_f3:
 push %ebp
 mov %esp, %ebp
 sub $4, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -4(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -4(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $54
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
class0_class0:
 push %ebp
 mov %esp, %ebp
 sub $4, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 mov 8(%ebp), %eax
 pop 16(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $162
 #INTEGER_LITERAL
 push $173
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 mov 8(%ebp), %eax
 pop 4(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 #BOOLEAN_LITERAL
 push $1
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
 mov 8(%ebp), %eax
 pop 0(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 mov 8(%ebp), %eax
 pop 12(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $94
 #INTEGER_LITERAL
 push $133
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 mov 8(%ebp), %eax
 pop 8(%eax)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $1
 #INTEGER_LITERAL
 push $197
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f3
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
# IF ELSE
 #INTEGER_LITERAL
 push $42
 #INTEGER_LITERAL
 push $217
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $100
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
# PRINT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
 push %eax
 push $printstr
 call printf
# PRINT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push %eax
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $74
 pop -4(%ebp)
# WHILE
label_4:
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $74
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_5
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $0
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -4(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $1
 #INTEGER_LITERAL
 push $117
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f3
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
# VARIABLE
 mov 20(%ebp), %eax
 push %eax
# VARIABLE
 mov 20(%ebp), %eax
 push %eax
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
 push %eax
 #INTEGER_LITERAL
 push $130
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f3
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 jmp label_4
label_5:
  jmp label_3
label_2:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $243
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
# VARIABLE
 mov 20(%ebp), %eax
 push %eax
 #BOOLEAN_LITERAL
 push $1
 #BOOLEAN_LITERAL
 push $0
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
label_3:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
 push %eax
# VARIABLE
 mov 20(%ebp), %eax
 push %eax
# VARIABLE
 mov 20(%ebp), %eax
 push %eax
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 #BOOLEAN_LITERAL
 push $0
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
 push %eax
# VARIABLE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
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
class1_f0:
 push %ebp
 mov %esp, %ebp
 sub $32, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $60
 #INTEGER_LITERAL
 push $83
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $17
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $1
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -16(%ebp)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $22
 #INTEGER_LITERAL
 push $127
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $130
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -12(%ebp)
# PRINT
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 push $printstr
 call printf
#### ASSIGNMENT NODE
# VARIABLE
 mov 20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $112
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $59
 pop -20(%ebp)
# WHILE
label_8:
 #INTEGER_LITERAL
 push $73
# VARIABLE
 mov -20(%ebp), %eax
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
  je label_9
#### ASSIGNMENT NODE
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $2
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -20(%ebp)
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_11
label_10:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $557056
 pop -24(%ebp)
# WHILE
label_12:
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $34
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
#### ASSIGNMENT NODE
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -24(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 mov -12(%ebp), %eax
 pop 0(%eax)
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 mov -12(%ebp), %eax
 pop 16(%eax)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
 push -12(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f3
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 jmp label_12
label_13:
  jmp label_11
label_11:
 jmp label_8
label_9:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $40
 pop -28(%ebp)
# WHILE
label_15:
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $10
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_16
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
 push $5701632
 pop -32(%ebp)
# WHILE
label_18:
# VARIABLE
 mov -32(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $87
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_19
#### ASSIGNMENT NODE
# VARIABLE
 mov -32(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -32(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 mov -12(%ebp), %eax
 pop 0(%eax)
 jmp label_18
label_19:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $179
 mov -12(%ebp), %eax
 pop 8(%eax)
 jmp label_15
label_16:
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -12(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $134
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
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
class1_f1:
 push %ebp
 mov %esp, %ebp
 sub $16, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
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
 #INTEGER_LITERAL
 push $63
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 #BOOLEAN_LITERAL
 push $0
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
 pop -12(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 #INTEGER_LITERAL
 push $106
 #INTEGER_LITERAL
 push $161
 #INTEGER_LITERAL
 push $30
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #BOOLEAN_LITERAL
 push $1
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
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
 pop %ecx
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
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $150
 #INTEGER_LITERAL
 push $38
 #BOOLEAN_LITERAL
 push $1
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 #INTEGER_LITERAL
 push $86
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
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
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
 pop -16(%ebp)
#### RETURN_STATEMENT
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
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
 sub $4, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $55
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -4(%ebp)
# WHILE
label_20:
 #INTEGER_LITERAL
 push $21
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
  je label_21
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -4(%ebp)
# PRINT
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 8(%eax)
 #NEGATION
 pop %eax
 neg %eax
 push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 push $printstr
 call printf
 jmp label_20
label_21:
#### RETURN_STATEMENT
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 8(%eax)
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
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
 sub $16, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $44
 #INTEGER_LITERAL
 push $46
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -4(%ebp)
# IF ELSE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 12(%eax)
  pop %eax
  cmp $0, %eax
  je label_23
label_22:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 mov -4(%ebp), %eax
 pop 12(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $63
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -8(%ebp)
# WHILE
label_24:
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $71
 #NEGATION
 pop %eax
 neg %eax
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
  je label_25
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -8(%ebp)
# PRINT
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 push $printstr
 call printf
# PRINT
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $50
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $92
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -12(%ebp)
# WHILE
label_27:
 #INTEGER_LITERAL
 push $89
 #NEGATION
 pop %eax
 neg %eax
 push %eax
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
  je label_28
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
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $0
 #INTEGER_LITERAL
 push $144
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f3
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
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $156
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 #INTEGER_LITERAL
 push $136
 #INTEGER_LITERAL
 push $65
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
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
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 jmp label_27
label_28:
 jmp label_24
label_25:
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
 #BOOLEAN_LITERAL
 push $0
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
  pop %eax
  cmp $0, %eax
  je label_31
label_30:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 mov -4(%ebp), %eax
 pop 16(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 mov -4(%ebp), %eax
 pop 12(%eax)
  jmp label_32
label_31:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $64
 pop -16(%ebp)
# WHILE
label_33:
 #INTEGER_LITERAL
 push $262208
# VARIABLE
 mov -16(%ebp), %eax
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
  je label_34
#### ASSIGNMENT NODE
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -16(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $46
 push $printstr
 call printf
 jmp label_33
label_34:
# PRINT
 #INTEGER_LITERAL
 push $87
 push $printstr
 call printf
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 mov -4(%ebp), %eax
 pop 0(%eax)
label_32:
  jmp label_23
label_23:
# PRINT
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
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
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $129
 #BOOLEAN_LITERAL
 push $0
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 16(%eax)
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 #INTEGER_LITERAL
 push $35
 #INTEGER_LITERAL
 push $23
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $13
 #BOOLEAN_LITERAL
 push $1
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 12(%eax)
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
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
 pop %ecx
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
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $100
 #INTEGER_LITERAL
 push $84
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 12(%eax)
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 #BOOLEAN_LITERAL
 push $0
 #BOOLEAN_LITERAL
 push $1
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f2
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
 #INTEGER_LITERAL
 push $70
 #BOOLEAN_LITERAL
 push $0
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $91
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $250
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 16(%eax)
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
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
 pop %ecx
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
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $39
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 #BOOLEAN_LITERAL
 push $1
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $88
 #BOOLEAN_LITERAL
 push $1
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f0
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
#### RETURN_STATEMENT
# VARIABLE
 mov 20(%ebp), %eax
 push %eax
# VARIABLE
 mov 20(%ebp), %eax
 push %eax
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
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
 sub $4, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $24
 #INTEGER_LITERAL
 push $155
 #BOOLEAN_LITERAL
 push $1
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #INTEGER_LITERAL
 push $188
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $58
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $80
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $250
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $241
 #INTEGER_LITERAL
 push $76
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
# VARIABLE
 mov 20(%ebp), %eax
 push %eax
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
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
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
# IF ELSE
 #INTEGER_LITERAL
 push $116
 #INTEGER_LITERAL
 push $72
 #INTEGER_LITERAL
 push $134
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
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
  je label_37
label_36:
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_40
label_39:
# PRINT
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
 push $printstr
 call printf
  jmp label_40
label_40:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $53
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -4(%ebp)
# WHILE
label_41:
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $189
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
  je label_42
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $8
 #NEGATION
 pop %eax
 neg %eax
 push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -4(%ebp)
# PRINT
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
# VARIABLE
 mov 20(%ebp), %eax
 push %eax
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $249
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $71
 #INTEGER_LITERAL
 push $142
 #INTEGER_LITERAL
 push $16
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #BOOLEAN_LITERAL
 push $1
 #BOOLEAN_LITERAL
 push $0
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
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
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 push $printstr
 call printf
 jmp label_41
label_42:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $217
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #BOOLEAN_LITERAL
 push $1
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $62
 #BOOLEAN_LITERAL
 push $1
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $10
 #INTEGER_LITERAL
 push $96
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $145
 #INTEGER_LITERAL
 push $23
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
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
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
  jmp label_38
label_37:
# PRINT
 #INTEGER_LITERAL
 push $88
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 push $printstr
 call printf
label_38:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $36
 #INTEGER_LITERAL
 push $7
# VARIABLE
 mov 20(%ebp), %eax
 push %eax
# VARIABLE
 mov 20(%ebp), %eax
 push %eax
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $156
# VARIABLE
 mov 20(%ebp), %eax
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
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $100
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
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
 pop %ecx
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
 sub $12, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $221
 #INTEGER_LITERAL
 push $208
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $253
 #INTEGER_LITERAL
 push $255
 #INTEGER_LITERAL
 push $251
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $109
 #INTEGER_LITERAL
 push $123
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -12(%ebp)
# PRINT
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $130
 pop -12(%ebp)
 xor %eax, %eax
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
 sub $20, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $213
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -20(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $27
 #INTEGER_LITERAL
 push $15
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -16(%ebp)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $0
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $136
 #INTEGER_LITERAL
 push $25
 #INTEGER_LITERAL
 push $208
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #BOOLEAN_LITERAL
 push $1
 #INTEGER_LITERAL
 push $57
 #INTEGER_LITERAL
 push $116
 #INTEGER_LITERAL
 push $151
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 mov 28(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class1_class1
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $20, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -12(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 pop -16(%ebp)
# IF ELSE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_44
label_43:
#### ASSIGNMENT NODE
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 pop -16(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $201
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 #INTEGER_LITERAL
 push $133
 #INTEGER_LITERAL
 push $166
 #INTEGER_LITERAL
 push $195
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #BOOLEAN_LITERAL
 push $1
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $111
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $231
 #INTEGER_LITERAL
 push $102
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 push -12(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f0
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
  jmp label_44
label_44:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
 push -12(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class2_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
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
class2_f2:
 push %ebp
 mov %esp, %ebp
 sub $16, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $106
 #INTEGER_LITERAL
 push $170
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $198
 #INTEGER_LITERAL
 push $61
 #INTEGER_LITERAL
 push $95
 #INTEGER_LITERAL
 push $201
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -4(%ebp)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $0
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $229
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #INTEGER_LITERAL
 push $255
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #BOOLEAN_LITERAL
 push $1
 #INTEGER_LITERAL
 push $172
 #BOOLEAN_LITERAL
 push $0
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 mov 28(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class1_class1
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $20, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $158
 #INTEGER_LITERAL
 push $133
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #INTEGER_LITERAL
 push $142
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -12(%ebp)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 mov -4(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 mov -4(%ebp), %eax
 pop 4(%eax)
#### ASSIGNMENT NODE
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $195
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 pop -8(%ebp)
# PRINT
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
 push $printstr
 call printf
#### RETURN_STATEMENT
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class2_f3:
 push %ebp
 mov %esp, %ebp
 sub $16, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $201
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -12(%ebp)
# PRINT
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $232
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 push $printstr
 call printf
# IF ELSE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $223
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_48
label_47:
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_50
label_49:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
# VARIABLE
 mov 20(%ebp), %eax
 push %eax
 #BOOLEAN_LITERAL
 push $1
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $153
 #INTEGER_LITERAL
 push $150
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #BOOLEAN_LITERAL
 push $1
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 #BOOLEAN_LITERAL
 push $1
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 #BOOLEAN_LITERAL
 push $1
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 #INTEGER_LITERAL
 push $206
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $26
 #INTEGER_LITERAL
 push $31
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
# VARIABLE
 mov 20(%ebp), %eax
 push %eax
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 push 16(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f2
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
# VARIABLE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push %eax
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $65
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 push 16(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f0
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
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $89
 pop -16(%ebp)
# WHILE
label_52:
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $131
 #NEGATION
 pop %eax
 neg %eax
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
  je label_53
#### ASSIGNMENT NODE
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $10
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -16(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $85
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 push $printstr
 call printf
# PRINT
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 push $printstr
 call printf
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### NEW NODE (1): allocate space
 push $0
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $6
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $154
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
# VARIABLE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push %eax
 #BOOLEAN_LITERAL
 push $1
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 mov 28(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class1_class1
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $20, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $228
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $130
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class2_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 jmp label_52
label_53:
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $75
 push 16(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -4(%ebp)
  jmp label_51
label_50:
#### ASSIGNMENT NODE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -12(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $86
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $169
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 #INTEGER_LITERAL
 push $5
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $3
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
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $78
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 push 16(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f0
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
label_51:
  jmp label_48
label_48:
#### RETURN_STATEMENT
 #INTEGER_LITERAL
 push $248
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
 sub $16, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $0
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $12
 #BOOLEAN_LITERAL
 push $1
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 #INTEGER_LITERAL
 push $142
 #BOOLEAN_LITERAL
 push $1
 mov 28(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class1_class1
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $20, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 mov 8(%ebp), %eax
 pop 4(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $178
 #INTEGER_LITERAL
 push $142
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 mov 8(%ebp), %eax
 pop 0(%eax)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $0
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $161
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
 #INTEGER_LITERAL
 push $144
 #BOOLEAN_LITERAL
 push $0
 mov 28(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class1_class1
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $20, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -8(%ebp)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $20
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
 push $237
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #BOOLEAN_LITERAL
 push $1
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -4(%ebp)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $156
 #INTEGER_LITERAL
 push $205
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $240
 pop -16(%ebp)
# WHILE
label_56:
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $60
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_57
#### ASSIGNMENT NODE
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -16(%ebp)
# IF ELSE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push %eax
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
  pop %eax
  cmp $0, %eax
  je label_59
label_58:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 mov -4(%ebp), %eax
 pop 12(%eax)
  jmp label_60
label_59:
#### ASSIGNMENT NODE
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $246
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $141
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 mov -12(%ebp), %eax
 pop 0(%eax)
# PRINT
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
# VARIABLE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push %eax
# VARIABLE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push %eax
 #INTEGER_LITERAL
 push $235
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 push -8(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f2
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
 #BOOLEAN_LITERAL
 push $1
 #BOOLEAN_LITERAL
 push $1
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 mov -12(%ebp), %eax
 pop 4(%eax)
label_60:
# PRINT
 #INTEGER_LITERAL
 push $249
 push $printstr
 call printf
 jmp label_56
label_57:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $210
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 #INTEGER_LITERAL
 push $203
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
 #BOOLEAN_LITERAL
 push $1
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $159
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $77
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
# VARIABLE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 push -8(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f0
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
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class3_f4:
 push %ebp
 mov %esp, %ebp
 sub $20, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $25
 #INTEGER_LITERAL
 push $215
 #INTEGER_LITERAL
 push $98
 #INTEGER_LITERAL
 push $68
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -20(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $124
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
 #INTEGER_LITERAL
 push $165
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $187
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $88
 #INTEGER_LITERAL
 push $157
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 mov -20(%ebp), %eax
 pop 8(%eax)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 16(%eax)
 #INTEGER_LITERAL
 push $40
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $236
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 push -20(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 #INTEGER_LITERAL
 push $253
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 push -20(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 mov -20(%ebp), %eax
 pop 0(%eax)
# PRINT
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $159
 pop -16(%ebp)
#### RETURN_STATEMENT
 #INTEGER_LITERAL
 push $78
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class3_f5:
 push %ebp
 mov %esp, %ebp
 sub $4, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
# IF ELSE
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 4(%eax)
  pop %eax
  cmp $0, %eax
  je label_63
label_62:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $59
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 #INTEGER_LITERAL
 push $160
 push 12(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f3
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
  jmp label_64
label_63:
# PRINT
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 16(%eax)
 push $printstr
 call printf
label_64:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $11
 pop -4(%ebp)
# WHILE
label_65:
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $129
 #NEGATION
 pop %eax
 neg %eax
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
  je label_66
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $10
 #NEGATION
 pop %eax
 neg %eax
 push %eax
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
 #BOOLEAN_LITERAL
 push $0
 #INTEGER_LITERAL
 push $9
 #INTEGER_LITERAL
 push $240
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 4(%eax)
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 #BOOLEAN_LITERAL
 push $1
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 push 12(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 jmp label_65
label_66:
# PRINT
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push %eax
 #INTEGER_LITERAL
 push $119
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class3_f4
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 #INTEGER_LITERAL
 push $210
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 push $printstr
 call printf
# PRINT
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
 push $printstr
 call printf
#### RETURN_STATEMENT
 #INTEGER_LITERAL
 push $174
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class3_f6:
 push %ebp
 mov %esp, %ebp
 sub $0, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push 4(%eax)
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $14
 #INTEGER_LITERAL
 push $103
 #INTEGER_LITERAL
 push $189
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $117
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 #INTEGER_LITERAL
 push $118
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class2_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### RETURN_STATEMENT
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
 push $216
 #INTEGER_LITERAL
 push $153
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $203
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #INTEGER_LITERAL
 push $219
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 mov 20(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class2_class2
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $12, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
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
 sub $16, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $233
 #BOOLEAN_LITERAL
 push $0
 #INTEGER_LITERAL
 push $152
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #BOOLEAN_LITERAL
 push $1
 #INTEGER_LITERAL
 push $71
 #INTEGER_LITERAL
 push $198
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
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class3_class1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
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
 push $65
 #INTEGER_LITERAL
 push $211
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #INTEGER_LITERAL
 push $38
 #INTEGER_LITERAL
 push $201
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #INTEGER_LITERAL
 push $106
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 mov 20(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class2_class2
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $12, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 mov 8(%ebp), %eax
 pop 4(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 mov 8(%ebp), %eax
 pop 0(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $63
 #INTEGER_LITERAL
 push $83
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 #BOOLEAN_LITERAL
 push $1
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 mov 8(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $190
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
 #INTEGER_LITERAL
 push $166
 #INTEGER_LITERAL
 push $140
 #INTEGER_LITERAL
 push $94
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 mov 20(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class2_class2
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $12, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $49
 pop -16(%ebp)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $0
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $216
 #INTEGER_LITERAL
 push $83
 #INTEGER_LITERAL
 push $101
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 #INTEGER_LITERAL
 push $120
 #BOOLEAN_LITERAL
 push $1
 #BOOLEAN_LITERAL
 push $1
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
 mov 28(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class1_class1
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $20, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -12(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 pop -16(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $119
 #INTEGER_LITERAL
 push $2
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -16(%ebp)
# IF ELSE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_71
label_70:
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 pop -8(%ebp)
  jmp label_71
label_71:
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class4_class4:
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
 #INTEGER_LITERAL
 push $48
 #INTEGER_LITERAL
 push $62
 #BOOLEAN_LITERAL
 push $1
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class4_class0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -8(%ebp)
#### ASSIGNMENT NODE
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
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -12(%ebp)
# PRINT
# VARIABLE
 push %eax
 push $printstr
 call printf
# PRINT
# VARIABLE
 push %eax
# VARIABLE
 push %eax
# VARIABLE
 push %eax
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
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
Main_main:
 push %ebp
 mov %esp, %ebp
 sub $20, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $99
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -4(%ebp)
# WHILE
label_72:
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $252
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
  je label_73
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $9
 #NEGATION
 pop %eax
 neg %eax
 push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -4(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $235
 push $printstr
 call printf
 jmp label_72
label_73:
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $26
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -8(%ebp)
# WHILE
label_74:
 #INTEGER_LITERAL
 push $24
 #NEGATION
 pop %eax
 neg %eax
 push %eax
# VARIABLE
 mov -8(%ebp), %eax
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
  je label_75
#### ASSIGNMENT NODE
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
 pop -8(%ebp)
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_77
label_76:
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_79
label_78:
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_82
label_81:
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
  jmp label_83
label_82:
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_85
label_84:
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
  jmp label_86
label_85:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $82
 pop -12(%ebp)
# WHILE
label_87:
 #INTEGER_LITERAL
 push $16466
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
  je label_88
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
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
# PRINT
 #INTEGER_LITERAL
 push $185
 push $printstr
 call printf
 jmp label_87
label_88:
label_86:
# PRINT
 #INTEGER_LITERAL
 push $230
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 push $printstr
 call printf
label_83:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $52
 pop -16(%ebp)
# WHILE
label_89:
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $137
 #NEGATION
 pop %eax
 neg %eax
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
  je label_90
#### ASSIGNMENT NODE
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $9
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -16(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $11
 push $printstr
 call printf
 jmp label_89
label_90:
  jmp label_80
label_79:
# IF ELSE
 #INTEGER_LITERAL
 push $228
 #INTEGER_LITERAL
 push $158
 #INTEGER_LITERAL
 push $25
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_93
label_92:
# PRINT
 #BOOLEAN_LITERAL
 push $1
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 push $printstr
 call printf
  jmp label_94
label_93:
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_96
label_95:
# PRINT
 #INTEGER_LITERAL
 push $242
 #INTEGER_LITERAL
 push $218
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 push $printstr
 call printf
  jmp label_96
label_96:
label_94:
# IF ELSE
 #INTEGER_LITERAL
 push $197
 #INTEGER_LITERAL
 push $95
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_99
label_98:
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
  jmp label_100
label_99:
# PRINT
 #INTEGER_LITERAL
 push $174
 push $printstr
 call printf
# PRINT
 #INTEGER_LITERAL
 push $54
 #INTEGER_LITERAL
 push $177
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 push $printstr
 call printf
label_100:
label_80:
  jmp label_77
label_77:
 jmp label_74
label_75:
# PRINT
 #INTEGER_LITERAL
 push $212
 #INTEGER_LITERAL
 push $183
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $26
 pop -20(%ebp)
# WHILE
label_101:
 #INTEGER_LITERAL
 push $53
# VARIABLE
 mov -20(%ebp), %eax
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
  je label_102
#### ASSIGNMENT NODE
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $3
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -20(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $62
 #INTEGER_LITERAL
 push $45
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 push $printstr
 call printf
# PRINT
 #INTEGER_LITERAL
 push $146
 #INTEGER_LITERAL
 push $227
 #INTEGER_LITERAL
 push $66
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 push $printstr
 call printf
 jmp label_101
label_102:
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
