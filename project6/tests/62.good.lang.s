# PROGRAM NODE
 .data
printstr: .asciz "%d\n"

 .text
 .globl Main_main
#### METHOD NODE (1): method prologue
class0_class0:
 push %ebp
 mov %esp, %ebp
 sub $0, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $96
 #INTEGER_LITERAL
 push $53
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov 8(%ebp), %eax
 pop 20(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 mov 8(%ebp), %eax
 pop 16(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $125
 #INTEGER_LITERAL
 push $222
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
 #INTEGER_LITERAL
 push $131
 mov 8(%ebp), %eax
 pop 0(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $27
 #INTEGER_LITERAL
 push $178
 #NEGATION
 pop %eax
 neg %eax
 push %eax
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov 8(%ebp), %eax
 pop 12(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $214
 mov 8(%ebp), %eax
 pop 8(%eax)
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
 sub $16, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $24
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
 push $130
 #INTEGER_LITERAL
 push $190
 #INTEGER_LITERAL
 push $227
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
 mov 28(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $20, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $11
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $245
 #INTEGER_LITERAL
 push $164
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $126
 pop -4(%ebp)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 20(%eax)
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $153
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 20(%eax)
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -4(%ebp)
# IF ELSE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_1
label_0:
# PRINT
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 4(%eax)
 push $printstr
 call printf
  jmp label_2
label_1:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $59
 pop -16(%ebp)
# WHILE
label_3:
 #INTEGER_LITERAL
 push $99
# VARIABLE
 mov -16(%ebp), %eax
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
  je label_4
#### ASSIGNMENT NODE
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $116
 pop -12(%ebp)
 jmp label_3
label_4:
# PRINT
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
 push $printstr
 call printf
label_2:
#### RETURN_STATEMENT
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 0(%eax)
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
#### NEW NODE (1): allocate space
 push $24
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
 push $47
 #INTEGER_LITERAL
 push $15
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
 #INTEGER_LITERAL
 push $33
 #BOOLEAN_LITERAL
 push $1
 #BOOLEAN_LITERAL
 push $1
 #BOOLEAN_LITERAL
 push $1
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
 mov 28(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $20, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -24(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $208
 pop -20(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
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
 push $46
 pop -12(%ebp)
# PRINT
#### MEMBER ACCESS NODE
 mov -24(%ebp), %eax
 push 20(%eax)
 #INTEGER_LITERAL
 push $37
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 push $printstr
 call printf
#### RETURN_STATEMENT
 #INTEGER_LITERAL
 push $133
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
 sub $8, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $50
 #INTEGER_LITERAL
 push $14
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $165
 pop -4(%ebp)
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
  je label_6
label_5:
# PRINT
 #INTEGER_LITERAL
 push $246
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $112
 pop -4(%ebp)
  jmp label_6
label_6:
#### ASSIGNMENT NODE
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -4(%ebp)
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
#### RETURN_STATEMENT
# VARIABLE
 mov 28(%ebp), %eax
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
 sub $28, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $24
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $48
 #INTEGER_LITERAL
 push $97
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 #INTEGER_LITERAL
 push $198
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
 #BOOLEAN_LITERAL
 push $0
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 #BOOLEAN_LITERAL
 push $0
 mov 28(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $20, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 mov 8(%ebp), %eax
 pop 20(%eax)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $24
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
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
 push $226
 #INTEGER_LITERAL
 push $27
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #BOOLEAN_LITERAL
 push $1
 #BOOLEAN_LITERAL
 push $1
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
 #BOOLEAN_LITERAL
 push $0
 mov 28(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $20, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 mov 8(%ebp), %eax
 pop 16(%eax)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $24
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $125
 #INTEGER_LITERAL
 push $69
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 #INTEGER_LITERAL
 push $235
 #INTEGER_LITERAL
 push $87
 #INTEGER_LITERAL
 push $66
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 #INTEGER_LITERAL
 push $119
 #INTEGER_LITERAL
 push $237
 #INTEGER_LITERAL
 push $126
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
 mov 28(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
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
 push $96
 #INTEGER_LITERAL
 push $168
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
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
 pop 0(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $4
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 mov 8(%ebp), %eax
 pop 12(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 mov 8(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $62
 #INTEGER_LITERAL
 push $132
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $24
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
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
 #INTEGER_LITERAL
 push $72
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #INTEGER_LITERAL
 push $142
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #INTEGER_LITERAL
 push $173
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 #BOOLEAN_LITERAL
 push $1
 mov 28(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $20, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -16(%ebp)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $24
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
 push $185
 #BOOLEAN_LITERAL
 push $0
 #BOOLEAN_LITERAL
 push $0
 #BOOLEAN_LITERAL
 push $0
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
 mov 28(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $20, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -12(%ebp)
# IF ELSE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
  pop %eax
  cmp $0, %eax
  je label_12
label_11:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $21
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -20(%ebp)
# WHILE
label_14:
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $81
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
  je label_15
#### ASSIGNMENT NODE
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $3
 #NEGATION
 pop %eax
 neg %eax
 push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -20(%ebp)
# PRINT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push %eax
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 push $printstr
 call printf
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
 jmp label_14
label_15:
# PRINT
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
 push $printstr
 call printf
  jmp label_13
label_12:
# IF ELSE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
  pop %eax
  cmp $0, %eax
  je label_17
label_16:
#### ASSIGNMENT NODE
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 pop -16(%ebp)
  jmp label_18
label_17:
#### ASSIGNMENT NODE
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
 pop -8(%ebp)
label_18:
label_13:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $6
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -24(%ebp)
# WHILE
label_19:
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $131
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
  je label_20
#### ASSIGNMENT NODE
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $5
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -24(%ebp)
# IF ELSE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_22
label_21:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $99
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -28(%ebp)
# WHILE
label_23:
 #INTEGER_LITERAL
 push $1048477
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
  je label_24
#### ASSIGNMENT NODE
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -28(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
 mov -12(%ebp), %eax
 pop 16(%eax)
# IF ELSE
 #INTEGER_LITERAL
 push $17
# VARIABLE
 mov 8(%ebp), %ebx
 mov 12(%ebx), %eax
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
  je label_27
label_26:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $179
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -8(%ebp)
  jmp label_27
label_27:
 jmp label_23
label_24:
#### ASSIGNMENT NODE
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $249
 pop -8(%ebp)
  jmp label_22
label_22:
# IF ELSE
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_29
label_28:
#### ASSIGNMENT NODE
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
 mov -12(%ebp), %eax
 pop 20(%eax)
# PRINT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 12(%ebx), %eax
 push %eax
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 12(%eax)
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 push $printstr
 call printf
  jmp label_29
label_29:
#### ASSIGNMENT NODE
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
 pop -16(%ebp)
 jmp label_19
label_20:
# PRINT
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
class2_class2:
 push %ebp
 mov %esp, %ebp
 sub $40, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $188
 #INTEGER_LITERAL
 push $82
 #INTEGER_LITERAL
 push $202
 #INTEGER_LITERAL
 push $17
 #BOOLEAN_LITERAL
 push $1
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class2_class1
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
#### NEW NODE (1): allocate space
 push $24
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
 push $7
 #BOOLEAN_LITERAL
 push $1
 #BOOLEAN_LITERAL
 push $0
 mov 28(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $20, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 mov 8(%ebp), %eax
 pop 28(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $166
 mov 8(%ebp), %eax
 pop 24(%eax)
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_31
label_30:
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
  jmp label_32
label_31:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $333
 pop -4(%ebp)
# WHILE
label_33:
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $37
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
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $3
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -4(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $231
 #INTEGER_LITERAL
 push $18
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $206
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 push $printstr
 call printf
 jmp label_33
label_34:
label_32:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $2
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -8(%ebp)
# WHILE
label_36:
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $16
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
  je label_37
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $1
 #NEGATION
 pop %eax
 neg %eax
 push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $92
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -12(%ebp)
# WHILE
label_38:
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $212
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
  je label_39
#### ASSIGNMENT NODE
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $6
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -12(%ebp)
# PRINT
# VARIABLE
 push %eax
 push $printstr
 call printf
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
  je label_41
label_40:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $55
 pop -16(%ebp)
# WHILE
label_43:
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $34
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_44
#### ASSIGNMENT NODE
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $7
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $40960
 pop -20(%ebp)
# WHILE
label_45:
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $80
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_46
#### ASSIGNMENT NODE
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $2
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -20(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $8748
 pop -24(%ebp)
# WHILE
label_47:
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $12
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_48
#### ASSIGNMENT NODE
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $3
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -24(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $19
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -28(%ebp)
# WHILE
label_49:
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $55
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
  je label_50
#### ASSIGNMENT NODE
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -28(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $320
 pop -32(%ebp)
# WHILE
label_52:
# VARIABLE
 mov -32(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $20
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
# IF ELSE
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 28(%ebx), %eax
 push 16(%eax)
 #BOOLEAN_LITERAL
 push $1
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
  pop %eax
  cmp $0, %eax
  je label_56
label_55:
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_58
label_57:
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
  jmp label_58
label_58:
  jmp label_56
label_56:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $94
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -36(%ebp)
# WHILE
label_59:
# VARIABLE
 mov -36(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $126
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
  je label_60
#### ASSIGNMENT NODE
# VARIABLE
 mov -36(%ebp), %eax
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
 pop -36(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $210
 push $printstr
 call printf
# PRINT
# VARIABLE
 push %eax
 push $printstr
 call printf
 jmp label_59
label_60:
 jmp label_52
label_53:
 jmp label_49
label_50:
 jmp label_47
label_48:
# IF ELSE
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 28(%ebx), %eax
 push 4(%eax)
  pop %eax
  cmp $0, %eax
  je label_63
label_62:
# PRINT
 #INTEGER_LITERAL
 push $111
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
# VARIABLE
 push %eax
# VARIABLE
 push %eax
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
 push $printstr
 call printf
  jmp label_63
label_63:
 jmp label_45
label_46:
 jmp label_43
label_44:
# PRINT
 #INTEGER_LITERAL
 push $71
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $205
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 push $printstr
 call printf
  jmp label_42
label_41:
# PRINT
 #INTEGER_LITERAL
 push $10
 #INTEGER_LITERAL
 push $175
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 push $printstr
 call printf
label_42:
 jmp label_38
label_39:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $6
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -40(%ebp)
# WHILE
label_65:
 #INTEGER_LITERAL
 push $114
# VARIABLE
 mov -40(%ebp), %eax
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
  je label_66
#### ASSIGNMENT NODE
# VARIABLE
 mov -40(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $5
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -40(%ebp)
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
# PRINT
# VARIABLE
 push %eax
 push $printstr
 call printf
 jmp label_65
label_66:
 jmp label_36
label_37:
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
 push $234
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $113
 pop -4(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
 push %eax
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
 push %eax
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -4(%ebp)
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
#### RETURN_STATEMENT
 #INTEGER_LITERAL
 push $132
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
 sub $28, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
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
 push $29
 #INTEGER_LITERAL
 push $69
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $97
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
#### NEW NODE (1): allocate space
 push $24
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $30
 #INTEGER_LITERAL
 push $185
 #INTEGER_LITERAL
 push $113
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #INTEGER_LITERAL
 push $87
 #BOOLEAN_LITERAL
 push $1
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
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $154
 pop -4(%ebp)
#### ASSIGNMENT NODE
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
 push $29
 #INTEGER_LITERAL
 push $5
 #INTEGER_LITERAL
 push $186
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
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
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $52
 pop -28(%ebp)
# WHILE
label_67:
 #INTEGER_LITERAL
 push $66
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
  je label_68
#### ASSIGNMENT NODE
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $7
 #NEGATION
 pop %eax
 neg %eax
 push %eax
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -28(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $196
 pop -4(%ebp)
 jmp label_67
label_68:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $85
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push %eax
 pop -20(%ebp)
#### RETURN_STATEMENT
 #INTEGER_LITERAL
 push $240
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
 sub $8, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $19
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -4(%ebp)
# WHILE
label_70:
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $47
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
  je label_71
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
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
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $10206
 pop -8(%ebp)
# WHILE
label_72:
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $14
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
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
 jmp label_72
label_73:
 jmp label_70
label_71:
#### RETURN_STATEMENT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 20(%ebx), %eax
 push %eax
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #INTEGER_LITERAL
 push $133
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
class3_f3:
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
 #BOOLEAN_LITERAL
 push $0
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $177
 pop -4(%ebp)
#### ASSIGNMENT NODE
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
 push $242
 #INTEGER_LITERAL
 push $56
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #INTEGER_LITERAL
 push $106
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #INTEGER_LITERAL
 push $106
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $198
 #NEGATION
 pop %eax
 neg %eax
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
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $199
 pop -12(%ebp)
#### RETURN_STATEMENT
# VARIABLE
 mov -12(%ebp), %eax
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
class3_f4:
 push %ebp
 mov %esp, %ebp
 sub $32, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
# IF ELSE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
 push %eax
# VARIABLE
 mov 8(%ebp), %ebx
 mov 20(%ebx), %eax
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
  je label_75
label_74:
# PRINT
 #INTEGER_LITERAL
 push $116
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $20
 pop -4(%ebp)
# WHILE
label_77:
 #INTEGER_LITERAL
 push $1048596
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
  je label_78
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -4(%ebp)
# PRINT
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push 8(%eax)
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 push $printstr
 call printf
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
 jmp label_77
label_78:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $208
 pop -8(%ebp)
# WHILE
label_79:
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $13
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_80
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $2
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $8
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -12(%ebp)
# WHILE
label_82:
 #INTEGER_LITERAL
 push $56
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
  je label_83
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
 push $1
 push $printstr
 call printf
# PRINT
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push 12(%eax)
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 push $printstr
 call printf
 jmp label_82
label_83:
 jmp label_79
label_80:
  jmp label_76
label_75:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $348
 pop -16(%ebp)
# WHILE
label_84:
# VARIABLE
 mov -16(%ebp), %eax
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
  je label_85
#### ASSIGNMENT NODE
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $2
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $67
 pop -20(%ebp)
# WHILE
label_86:
 #INTEGER_LITERAL
 push $200
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
  je label_87
#### ASSIGNMENT NODE
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $7
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -20(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $147
 push $printstr
 call printf
 jmp label_86
label_87:
 jmp label_84
label_85:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $57344
 pop -24(%ebp)
# WHILE
label_88:
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $56
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_89
#### ASSIGNMENT NODE
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $2
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -24(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $73
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -28(%ebp)
# WHILE
label_90:
 #INTEGER_LITERAL
 push $29
 #NEGATION
 pop %eax
 neg %eax
 push %eax
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
  je label_91
#### ASSIGNMENT NODE
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -28(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $72171
 pop -32(%ebp)
# WHILE
label_93:
# VARIABLE
 mov -32(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $33
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_94
#### ASSIGNMENT NODE
# VARIABLE
 mov -32(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $3
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -32(%ebp)
# PRINT
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push 0(%eax)
 push $printstr
 call printf
 jmp label_93
label_94:
 jmp label_90
label_91:
# PRINT
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push 12(%eax)
# VARIABLE
 mov 8(%ebp), %ebx
 mov 20(%ebx), %eax
 push %eax
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
 push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 push $printstr
 call printf
 jmp label_88
label_89:
label_76:
# IF ELSE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push %eax
 #BOOLEAN_LITERAL
 push $1
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
  pop %eax
  cmp $0, %eax
  je label_98
label_97:
# PRINT
 #INTEGER_LITERAL
 push $251
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push 24(%eax)
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 push $printstr
 call printf
# PRINT
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push 24(%eax)
 push $printstr
 call printf
# PRINT
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push 12(%eax)
 push $printstr
 call printf
  jmp label_99
label_98:
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
label_99:
 xor %eax, %eax
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
 sub $12, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $190
 mov 8(%ebp), %eax
 pop 20(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 mov 8(%ebp), %eax
 pop 16(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 mov 8(%ebp), %eax
 pop 4(%eax)
#### ASSIGNMENT NODE
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
 push $1
 #INTEGER_LITERAL
 push $116
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #INTEGER_LITERAL
 push $249
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
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
 pop 0(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 mov 8(%ebp), %eax
 pop 12(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $15
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 mov 8(%ebp), %eax
 pop 8(%eax)
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_101
label_100:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class3_f4
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
# IF ELSE
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push 0(%eax)
  pop %eax
  cmp $0, %eax
  je label_104
label_103:
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
  jmp label_104
label_104:
  jmp label_102
label_101:
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
label_102:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $17
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -4(%ebp)
# WHILE
label_105:
 #INTEGER_LITERAL
 push $16367
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
  je label_106
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -4(%ebp)
# IF ELSE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_108
label_107:
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_111
label_110:
# IF ELSE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 20(%ebx), %eax
 push %eax
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push 12(%eax)
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_113
label_112:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class3_f4
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
  jmp label_114
label_113:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $58
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -8(%ebp)
# WHILE
label_115:
 #INTEGER_LITERAL
 push $65478
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
  je label_116
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -8(%ebp)
# PRINT
# VARIABLE
 mov 20(%ebp), %eax
 push %eax
 push $printstr
 call printf
# PRINT
 #INTEGER_LITERAL
 push $123
 push $printstr
 call printf
 jmp label_115
label_116:
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_118
label_117:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class3_f4
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
  jmp label_119
label_118:
# PRINT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 16(%ebx), %eax
 push %eax
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 push $printstr
 call printf
label_119:
label_114:
  jmp label_111
label_111:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $76
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -12(%ebp)
# WHILE
label_120:
 #INTEGER_LITERAL
 push $16308
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
  je label_121
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
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class3_f4
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 jmp label_120
label_121:
  jmp label_109
label_108:
# PRINT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 20(%ebx), %eax
 push %eax
 #INTEGER_LITERAL
 push $198
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 push $printstr
 call printf
# PRINT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 12(%ebx), %eax
 push %eax
 push $printstr
 call printf
label_109:
 jmp label_105
label_106:
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class4_f0:
 push %ebp
 mov %esp, %ebp
 sub $16, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $243
 #INTEGER_LITERAL
 push $64
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $93
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $71
 pop -12(%ebp)
# IF ELSE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_123
label_122:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $96
 pop -16(%ebp)
  jmp label_124
label_123:
# PRINT
 #INTEGER_LITERAL
 push $170
 push $printstr
 call printf
label_124:
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 16(%ebx), %eax
 push 12(%eax)
 pop -12(%ebp)
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_126
label_125:
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 16(%ebx), %eax
 push 24(%eax)
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -4(%ebp)
  jmp label_126
label_126:
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 mov 8(%ebp), %ebx
 mov 16(%ebx), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class2_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -4(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 20(%ebx), %eax
 push %eax
 pop -8(%ebp)
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class4_f1:
 push %ebp
 mov %esp, %ebp
 sub $28, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $24
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
 push $180
 #INTEGER_LITERAL
 push $147
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
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
 mov 28(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $20, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -20(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $91
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -8(%ebp)
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
 pop -4(%ebp)
#### ASSIGNMENT NODE
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
 push $43
 #INTEGER_LITERAL
 push $175
 #INTEGER_LITERAL
 push $146
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
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
 pop -16(%ebp)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $24
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $226
 #INTEGER_LITERAL
 push $33
 #INTEGER_LITERAL
 push $236
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $226
 #INTEGER_LITERAL
 push $188
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #INTEGER_LITERAL
 push $147
 #INTEGER_LITERAL
 push $52
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #BOOLEAN_LITERAL
 push $1
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
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $11
 mov -16(%ebp), %eax
 pop 24(%eax)
# IF ELSE
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 16(%eax)
  pop %eax
  cmp $0, %eax
  je label_128
label_127:
# IF ELSE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_131
label_130:
# IF ELSE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_134
label_133:
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $0
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class4_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
  jmp label_134
label_134:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $31
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -24(%ebp)
# WHILE
label_135:
 #INTEGER_LITERAL
 push $14
 #NEGATION
 pop %eax
 neg %eax
 push %eax
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
  je label_136
#### ASSIGNMENT NODE
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $1
 #NEGATION
 pop %eax
 neg %eax
 push %eax
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -24(%ebp)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 0(%eax)
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $217
 pop -8(%ebp)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 20(%eax)
 mov -16(%ebp), %eax
 pop 24(%eax)
 jmp label_135
label_136:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $6
 mov -20(%ebp), %eax
 pop 20(%eax)
  jmp label_132
label_131:
# IF ELSE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 20(%ebx), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_138
label_137:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $0
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class4_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
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
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class4_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
  jmp label_139
label_138:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -4(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $99
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class4_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
label_139:
label_132:
  jmp label_129
label_128:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $2
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 20(%eax)
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $55
 pop -28(%ebp)
# WHILE
label_140:
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $20
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_141
#### ASSIGNMENT NODE
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $5
 #NEGATION
 pop %eax
 neg %eax
 push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -28(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $79
 pop -8(%ebp)
 jmp label_140
label_141:
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 8(%eax)
 pop -8(%ebp)
label_129:
# PRINT
 #INTEGER_LITERAL
 push $15
 push $printstr
 call printf
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 12(%eax)
 mov -20(%ebp), %eax
 pop 12(%eax)
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class4_f2:
 push %ebp
 mov %esp, %ebp
 sub $16, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $201
 pop -4(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $22
 #INTEGER_LITERAL
 push $129
 #NEGATION
 pop %eax
 neg %eax
 push %eax
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 push $printstr
 call printf
#### ASSIGNMENT NODE
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
 pop -4(%ebp)
# PRINT
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $0
 mov 8(%ebp), %ebx
 mov 16(%ebx), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class2_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 push $printstr
 call printf
# IF ELSE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 12(%ebx), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_143
label_142:
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 16(%ebx), %eax
 push 12(%eax)
 pop -4(%ebp)
# IF ELSE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_145
label_144:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $46
 pop -4(%ebp)
# PRINT
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 push $printstr
 call printf
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $240
 mov 8(%ebp), %ebx
 mov 16(%ebx), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class2_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -4(%ebp)
  jmp label_145
label_145:
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_147
label_146:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $91854
 pop -8(%ebp)
# WHILE
label_149:
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $42
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_150
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
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class4_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $25
 pop -12(%ebp)
# WHILE
label_152:
 #INTEGER_LITERAL
 push $163
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
  je label_153
#### ASSIGNMENT NODE
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $6
 #NEGATION
 pop %eax
 neg %eax
 push %eax
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -12(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class4_f1
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
 #BOOLEAN_LITERAL
 push $1
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class4_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 jmp label_152
label_153:
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 16(%ebx), %eax
 push 12(%eax)
 #INTEGER_LITERAL
 push $73
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 16(%ebx), %eax
 push 12(%eax)
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -4(%ebp)
 jmp label_149
label_150:
#### ASSIGNMENT NODE
# VARIABLE
 mov 20(%ebp), %eax
 push %eax
 pop -4(%ebp)
  jmp label_148
label_147:
# IF ELSE
#### MEMBER ACCESS NODE
 mov 8(%ebp), %ebx
 mov 16(%ebx), %eax
 push 0(%eax)
  pop %eax
  cmp $0, %eax
  je label_156
label_155:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $7
 pop -16(%ebp)
# WHILE
label_158:
 #INTEGER_LITERAL
 push $15
# VARIABLE
 mov -16(%ebp), %eax
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
  je label_159
#### ASSIGNMENT NODE
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $2
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -16(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov 8(%ebp), %ebx
 mov 12(%ebx), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class4_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $0
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class4_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 jmp label_158
label_159:
  jmp label_157
label_156:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class4_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
label_157:
# PRINT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push %eax
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 push $printstr
 call printf
label_148:
  jmp label_143
label_143:
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
 sub $20, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 mov 8(%ebp), %eax
 pop 20(%eax)
#### ASSIGNMENT NODE
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
 push $158
 #INTEGER_LITERAL
 push $254
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
 pop 16(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 mov 8(%ebp), %eax
 pop 4(%eax)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $24
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $212
 #INTEGER_LITERAL
 push $182
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $195
 #INTEGER_LITERAL
 push $151
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #INTEGER_LITERAL
 push $147
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class3_class3
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 mov 8(%ebp), %eax
 pop 0(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 mov 8(%ebp), %eax
 pop 12(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 mov 8(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $24
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $116
 #INTEGER_LITERAL
 push $223
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #INTEGER_LITERAL
 push $218
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $234
 #INTEGER_LITERAL
 push $83
 #INTEGER_LITERAL
 push $83
 #INTEGER_LITERAL
 push $0
 #INTEGER_LITERAL
 push $220
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $45
 #INTEGER_LITERAL
 push $9
 #INTEGER_LITERAL
 push $28
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
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
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -4(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov 20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $216
 #INTEGER_LITERAL
 push $2
 #INTEGER_LITERAL
 push $103
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class4_f2
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
 #INTEGER_LITERAL
 push $29
 pop -12(%ebp)
# WHILE
label_162:
 #INTEGER_LITERAL
 push $119
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
  je label_163
#### ASSIGNMENT NODE
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $6
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 mov -8(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 20(%ebx), %eax
 push %eax
 mov -8(%ebp), %eax
 pop 8(%eax)
 jmp label_162
label_163:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $5
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -16(%ebp)
# WHILE
label_165:
 #INTEGER_LITERAL
 push $59044
# VARIABLE
 mov -16(%ebp), %eax
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
  je label_166
#### ASSIGNMENT NODE
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $3
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $50
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -20(%ebp)
# WHILE
label_167:
 #INTEGER_LITERAL
 push $10
 #NEGATION
 pop %eax
 neg %eax
 push %eax
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
  je label_168
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
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 8(%eax)
  pop %eax
  cmp $0, %eax
  je label_170
label_169:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
# VARIABLE
 mov 20(%ebp), %eax
 push %eax
 #BOOLEAN_LITERAL
 push $1
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class4_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
  jmp label_171
label_170:
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
label_171:
 jmp label_167
label_168:
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 0(%eax)
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 mov -8(%ebp), %eax
 pop 8(%eax)
# PRINT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 12(%ebx), %eax
 push %eax
 push $printstr
 call printf
 jmp label_165
label_166:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class4_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
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
Main_main:
 push %ebp
 mov %esp, %ebp
 sub $52, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $56
 pop -4(%ebp)
# WHILE
label_172:
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $14
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_173
#### ASSIGNMENT NODE
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
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $23
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -8(%ebp)
# WHILE
label_175:
 #INTEGER_LITERAL
 push $20
 #NEGATION
 pop %eax
 neg %eax
 push %eax
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
  je label_176
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $3
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $6
 pop -12(%ebp)
# WHILE
label_178:
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $2
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_179
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
 push $46
 #INTEGER_LITERAL
 push $112
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 push $printstr
 call printf
 jmp label_178
label_179:
 jmp label_175
label_176:
 jmp label_172
label_173:
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_181
label_180:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $67
 pop -16(%ebp)
# WHILE
label_182:
 #INTEGER_LITERAL
 push $99
# VARIABLE
 mov -16(%ebp), %eax
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
  je label_183
#### ASSIGNMENT NODE
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $2
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -16(%ebp)
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $5376
 pop -20(%ebp)
# WHILE
label_184:
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $42
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_185
#### ASSIGNMENT NODE
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $2
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -20(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $1
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -24(%ebp)
# WHILE
label_187:
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $37
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
  je label_188
#### ASSIGNMENT NODE
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $2
 #NEGATION
 pop %eax
 neg %eax
 push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -24(%ebp)
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_190
label_189:
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_192
label_191:
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
  jmp label_192
label_192:
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_194
label_193:
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
  jmp label_195
label_194:
# PRINT
 #BOOLEAN_LITERAL
 push $1
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $39
 pop -28(%ebp)
# WHILE
label_196:
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $19
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_197
#### ASSIGNMENT NODE
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $2
 #NEGATION
 pop %eax
 neg %eax
 push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -28(%ebp)
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
 jmp label_196
label_197:
label_195:
# PRINT
 #INTEGER_LITERAL
 push $21
 #INTEGER_LITERAL
 push $30
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 push $printstr
 call printf
  jmp label_190
label_190:
 jmp label_187
label_188:
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $34
 pop -32(%ebp)
# WHILE
label_198:
 #INTEGER_LITERAL
 push $43
# VARIABLE
 mov -32(%ebp), %eax
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
  je label_199
#### ASSIGNMENT NODE
# VARIABLE
 mov -32(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $3
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -32(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $2
 pop -36(%ebp)
# WHILE
label_200:
# VARIABLE
 mov -36(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $26
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
  je label_201
#### ASSIGNMENT NODE
# VARIABLE
 mov -36(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $7
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -36(%ebp)
# IF ELSE
 #INTEGER_LITERAL
 push $50
 #INTEGER_LITERAL
 push $22
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_204
label_203:
# PRINT
 #INTEGER_LITERAL
 push $166
 #INTEGER_LITERAL
 push $106
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 push $printstr
 call printf
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_206
label_205:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $58
 pop -40(%ebp)
# WHILE
label_207:
 #INTEGER_LITERAL
 push $1082
# VARIABLE
 mov -40(%ebp), %eax
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
  je label_208
#### ASSIGNMENT NODE
# VARIABLE
 mov -40(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -40(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $240
 #INTEGER_LITERAL
 push $10
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #INTEGER_LITERAL
 push $24
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 push $printstr
 call printf
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
 jmp label_207
label_208:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $20480
 pop -44(%ebp)
# WHILE
label_210:
# VARIABLE
 mov -44(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $20
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_211
#### ASSIGNMENT NODE
# VARIABLE
 mov -44(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $2
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -44(%ebp)
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
# IF ELSE
 #INTEGER_LITERAL
 push $3
 #INTEGER_LITERAL
 push $125
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_214
label_213:
# IF ELSE
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
  pop %eax
  cmp $0, %eax
  je label_216
label_215:
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $54
 pop -48(%ebp)
# WHILE
label_218:
 #INTEGER_LITERAL
 push $206
# VARIABLE
 mov -48(%ebp), %eax
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
  je label_219
#### ASSIGNMENT NODE
# VARIABLE
 mov -48(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $8
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -48(%ebp)
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
 jmp label_218
label_219:
  jmp label_217
label_216:
# PRINT
 #INTEGER_LITERAL
 push $83
 push $printstr
 call printf
label_217:
# PRINT
 #INTEGER_LITERAL
 push $72
 push $printstr
 call printf
  jmp label_214
label_214:
# PRINT
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
 #BOOLEAN_LITERAL
 push $0
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 push $printstr
 call printf
 jmp label_210
label_211:
  jmp label_206
label_206:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $1323
 pop -52(%ebp)
# WHILE
label_221:
# VARIABLE
 mov -52(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $49
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_222
#### ASSIGNMENT NODE
# VARIABLE
 mov -52(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $3
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -52(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $213
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #INTEGER_LITERAL
 push $7
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 push $printstr
 call printf
 jmp label_221
label_222:
  jmp label_204
label_204:
 jmp label_200
label_201:
 jmp label_198
label_199:
 jmp label_184
label_185:
# PRINT
 #INTEGER_LITERAL
 push $55
 push $printstr
 call printf
 jmp label_182
label_183:
  jmp label_181
label_181:
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
