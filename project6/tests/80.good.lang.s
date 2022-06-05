# PROGRAM NODE
 .data
printstr: .asciz "%d\n"

 .text
 .globl Main_main
#### METHOD NODE (1): method prologue
class0_f0:
 push %ebp
 mov %esp, %ebp
 sub $0, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
# PRINT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
 push %eax
 push $printstr
 call printf
#### RETURN_STATEMENT
 #INTEGER_LITERAL
 push $103
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
 sub $24, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $173
 #INTEGER_LITERAL
 push $115
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
 #INTEGER_LITERAL
 push $107
 #INTEGER_LITERAL
 push $254
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -20(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $167
 #INTEGER_LITERAL
 push $89
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $176
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $220
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $164
 pop -16(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
 pop -20(%ebp)
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
 sub $16, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $88
 mov 8(%ebp), %eax
 pop 4(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $68
 #INTEGER_LITERAL
 push $10
 #INTEGER_LITERAL
 push $100
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #INTEGER_LITERAL
 push $137
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
 mov 8(%ebp), %eax
 pop 0(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 mov 8(%ebp), %eax
 pop 12(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $73
 mov 8(%ebp), %eax
 pop 8(%eax)
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
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $64
 #INTEGER_LITERAL
 push $209
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $245
 #INTEGER_LITERAL
 push $117
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $145
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $233
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -16(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $66
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 push $printstr
 call printf
# PRINT
 #BOOLEAN_LITERAL
 push $1
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
 sub $36, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $16
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $1
 mov 16(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $8, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $176
 #INTEGER_LITERAL
 push $177
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $16
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $1
 mov 16(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $8, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $39
 #INTEGER_LITERAL
 push $214
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $97
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $2
 pop -20(%ebp)
# WHILE
label_1:
 #INTEGER_LITERAL
 push $514
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
  je label_2
#### ASSIGNMENT NODE
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $2
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -20(%ebp)
# IF ELSE
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 8(%eax)
# VARIABLE
 mov -12(%ebp), %eax
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
  je label_4
label_3:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $405
 pop -24(%ebp)
# WHILE
label_6:
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $15
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_7
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
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
# IF ELSE
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 12(%eax)
  pop %eax
  cmp $0, %eax
  je label_10
label_9:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $170
 mov -8(%ebp), %eax
 pop 4(%eax)
  jmp label_10
label_10:
 jmp label_6
label_7:
# PRINT
 #INTEGER_LITERAL
 push $151
 push $printstr
 call printf
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $38
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 12(%eax)
 push -8(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
  jmp label_5
label_4:
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 12(%eax)
 mov -16(%ebp), %eax
 pop 12(%eax)
#### ASSIGNMENT NODE
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 pop -12(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push %eax
 mov -16(%ebp), %eax
 pop 0(%eax)
label_5:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $4
 pop -28(%ebp)
# WHILE
label_12:
 #INTEGER_LITERAL
 push $31
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
  je label_13
#### ASSIGNMENT NODE
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $3
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -28(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $24057
 pop -32(%ebp)
# WHILE
label_15:
# VARIABLE
 mov -32(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $33
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
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $24
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -36(%ebp)
# WHILE
label_17:
# VARIABLE
 mov -36(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $79
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
  je label_18
#### ASSIGNMENT NODE
# VARIABLE
 mov -36(%ebp), %eax
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
 pop -36(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $96
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 0(%eax)
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 0(%eax)
 #INTEGER_LITERAL
 push $129
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 8(%eax)
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 push -8(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 jmp label_17
label_18:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
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
 #BOOLEAN_LITERAL
 push $1
 push -8(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 jmp label_15
label_16:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 8(%eax)
 #BOOLEAN_LITERAL
 push $0
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 0(%eax)
 push -8(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 jmp label_12
label_13:
 jmp label_1
label_2:
#### RETURN_STATEMENT
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
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
 sub $20, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $16
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $31
 #INTEGER_LITERAL
 push $124
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 mov 16(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $8, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -20(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $112
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $124
 pop -4(%ebp)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $16
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $132
 #INTEGER_LITERAL
 push $109
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 mov 16(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $8, %esp
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
# VARIABLE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push %eax
 pop -12(%ebp)
#### RETURN_STATEMENT
# VARIABLE
 mov -20(%ebp), %eax
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
 sub $28, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $96
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
 push $0
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $226
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $62
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $6
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -28(%ebp)
# WHILE
label_20:
 #INTEGER_LITERAL
 push $94
# VARIABLE
 mov -28(%ebp), %eax
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
 mov -28(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $5
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
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $212
 #BOOLEAN_LITERAL
 push $1
# VARIABLE
 mov 20(%ebp), %eax
 push %eax
 push 12(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 jmp label_20
label_21:
#### RETURN_STATEMENT
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
 sub $40, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 #INTEGER_LITERAL
 push $53
 #INTEGER_LITERAL
 push $2
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
 pop -20(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $51
 #INTEGER_LITERAL
 push $199
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $174
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $250
 #INTEGER_LITERAL
 push $142
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $142
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $223
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $8
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -24(%ebp)
# WHILE
label_22:
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $152
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
  je label_23
#### ASSIGNMENT NODE
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $6
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -24(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $5632
 pop -28(%ebp)
# WHILE
label_24:
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $88
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_25
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
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
 push %eax
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -8(%ebp)
# IF ELSE
#### MEMBER ACCESS NODE
 mov 20(%ebp), %eax
 push 0(%eax)
  pop %eax
  cmp $0, %eax
  je label_27
label_26:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $94
 pop -32(%ebp)
# WHILE
label_28:
# VARIABLE
 mov -32(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $86
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_29
#### ASSIGNMENT NODE
# VARIABLE
 mov -32(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $2
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -32(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
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
 #INTEGER_LITERAL
 push $220
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
 push %eax
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 #BOOLEAN_LITERAL
 push $1
 push 20(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 push $printstr
 call printf
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
 push $226
 #BOOLEAN_LITERAL
 push $0
 #INTEGER_LITERAL
 push $114
# VARIABLE
 mov 20(%ebp), %eax
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
 push $printstr
 call printf
 jmp label_28
label_29:
#### ASSIGNMENT NODE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push %eax
 pop -20(%ebp)
  jmp label_27
label_27:
 jmp label_24
label_25:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $146
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $60
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -36(%ebp)
# WHILE
label_30:
 #INTEGER_LITERAL
 push $140
# VARIABLE
 mov -36(%ebp), %eax
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
  je label_31
#### ASSIGNMENT NODE
# VARIABLE
 mov -36(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $8
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -36(%ebp)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov 20(%ebp), %eax
 push 12(%eax)
 pop -20(%ebp)
 jmp label_30
label_31:
 jmp label_22
label_23:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $154
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
 pop -20(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov 20(%ebp), %eax
 push 8(%eax)
 #BOOLEAN_LITERAL
 push $1
# VARIABLE
 mov -16(%ebp), %eax
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
 push 20(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f1
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
 push $224
 #INTEGER_LITERAL
 push $197
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $696
 pop -40(%ebp)
# WHILE
label_35:
# VARIABLE
 mov -40(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $87
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
 mov -40(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $2
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -40(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $169
 pop -16(%ebp)
 jmp label_35
label_36:
#### RETURN_STATEMENT
# VARIABLE
 mov 20(%ebp), %eax
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
 sub $4, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -4(%ebp)
# PRINT
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 push $printstr
 call printf
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
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
  je label_39
label_38:
# PRINT
 #INTEGER_LITERAL
 push $36
 push $printstr
 call printf
  jmp label_40
label_39:
# IF ELSE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
 push %eax
 #INTEGER_LITERAL
 push $228
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
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
  pop %eax
  cmp $0, %eax
  je label_42
label_41:
#### ASSIGNMENT NODE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push %eax
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
 pop -4(%ebp)
  jmp label_43
label_42:
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
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -4(%ebp)
label_43:
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
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -4(%ebp)
label_40:
 xor %eax, %eax
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
 #INTEGER_LITERAL
 push $222
 #INTEGER_LITERAL
 push $237
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $127
 #INTEGER_LITERAL
 push $154
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
 mov 8(%ebp), %eax
 pop 4(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 mov 8(%ebp), %eax
 pop 0(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $2
 mov 8(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $100
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $114
 pop -4(%ebp)
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
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $209
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $328050
 pop -20(%ebp)
# WHILE
label_44:
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $50
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
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $1600
 pop -24(%ebp)
# WHILE
label_46:
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $25
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
 #INTEGER_LITERAL
 push $38
 pop -28(%ebp)
# WHILE
label_49:
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $57
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
 push $5
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -28(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
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
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $1
 #INTEGER_LITERAL
 push $240
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov -12(%ebp), %eax
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
 pop -12(%ebp)
 jmp label_49
label_50:
 jmp label_46
label_47:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f4
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 jmp label_44
label_45:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $224
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
 #INTEGER_LITERAL
 push $150
 #INTEGER_LITERAL
 push $213
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class2_class1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
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
 #BOOLEAN_LITERAL
 push $1
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 #INTEGER_LITERAL
 push $21
 #INTEGER_LITERAL
 push $28
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 mov 20(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class1_class1
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
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $170
 pop -4(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov 8(%ebp), %ebx
 mov 12(%ebx), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f4
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
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
 sub $16, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $16
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $49
 #INTEGER_LITERAL
 push $97
 #INTEGER_LITERAL
 push $48
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $39
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
 mov 16(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $8, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -8(%ebp)
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
 #BOOLEAN_LITERAL
 push $1
 #INTEGER_LITERAL
 push $182
 #INTEGER_LITERAL
 push $43
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 mov 20(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class1_class1
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $12, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -4(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $168
 push $printstr
 call printf
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 4(%eax)
 #INTEGER_LITERAL
 push $253
 #INTEGER_LITERAL
 push $99
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $77
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
 mov -8(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 12(%eax)
 mov -4(%ebp), %eax
 pop 0(%eax)
# PRINT
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 4(%eax)
 push $printstr
 call printf
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
 pop 12(%eax)
# PRINT
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 12(%eax)
 push $printstr
 call printf
# PRINT
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 8(%eax)
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 8(%eax)
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $174
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 8(%eax)
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov -8(%ebp), %eax
 pop 4(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $144
 mov -8(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $102
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 mov -4(%ebp), %eax
 pop 8(%eax)
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_53
label_52:
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 12(%eax)
 mov -8(%ebp), %eax
 pop 12(%eax)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $221
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 8(%eax)
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 8(%eax)
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 #BOOLEAN_LITERAL
 push $1
 push -8(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
  jmp label_54
label_53:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $25
 #INTEGER_LITERAL
 push $36
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 mov -8(%ebp), %eax
 pop 12(%eax)
# PRINT
 #INTEGER_LITERAL
 push $246
 push $printstr
 call printf
# PRINT
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 12(%eax)
 push $printstr
 call printf
label_54:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $91
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $140
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 #BOOLEAN_LITERAL
 push $1
 push -8(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f1
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
 push $195
 mov -8(%ebp), %eax
 pop 8(%eax)
# IF ELSE
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 12(%eax)
  pop %eax
  cmp $0, %eax
  je label_57
label_56:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $56
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -12(%ebp)
# WHILE
label_59:
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $56
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
  je label_60
#### ASSIGNMENT NODE
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $0
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 0(%eax)
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
 mov -4(%ebp), %eax
 pop 0(%eax)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $112
 #BOOLEAN_LITERAL
 push $0
 #BOOLEAN_LITERAL
 push $0
 push -8(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 jmp label_59
label_60:
  jmp label_58
label_57:
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 8(%eax)
 mov -4(%ebp), %eax
 pop 8(%eax)
# PRINT
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 8(%eax)
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 4(%eax)
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 push $printstr
 call printf
label_58:
# PRINT
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 12(%eax)
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $11
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -16(%ebp)
# WHILE
label_61:
 #INTEGER_LITERAL
 push $9
 #NEGATION
 pop %eax
 neg %eax
 push %eax
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
  je label_62
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
 #INTEGER_LITERAL
 push $250
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 4(%eax)
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #BOOLEAN_LITERAL
 push $1
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 0(%eax)
 #BOOLEAN_LITERAL
 push $1
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
 push -8(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 jmp label_61
label_62:
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 4(%eax)
 #INTEGER_LITERAL
 push $55
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 8(%eax)
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov -8(%ebp), %eax
 pop 8(%eax)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 12(%eax)
 #BOOLEAN_LITERAL
 push $0
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 push -8(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 12(%eax)
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 #BOOLEAN_LITERAL
 push $0
 push -8(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
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
 #INTEGER_LITERAL
 push $105
 #BOOLEAN_LITERAL
 push $0
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 12(%eax)
 push -8(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
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
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 8(%eax)
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 4(%eax)
 #INTEGER_LITERAL
 push $80
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 8(%eax)
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
 #BOOLEAN_LITERAL
 push $1
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 #BOOLEAN_LITERAL
 push $1
 push -8(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f1
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
