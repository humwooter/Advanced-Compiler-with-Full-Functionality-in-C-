# PROGRAM NODE
 .data
printstr: .asciz "%d\n"

 .text
 .globl Main_main
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
 push $178
 #INTEGER_LITERAL
 push $164
 #INTEGER_LITERAL
 push $254
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
 mov 8(%ebp), %eax
 pop 4(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $179
 mov 8(%ebp), %eax
 pop 0(%eax)
#### ASSIGNMENT NODE
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
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $246
 #INTEGER_LITERAL
 push $56
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $198
 pop -16(%ebp)
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
 pop -12(%ebp)
# IF ELSE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_2
label_1:
#### ASSIGNMENT NODE
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $249
 pop -4(%ebp)
  jmp label_3
label_2:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -12(%ebp)
label_3:
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
 sub $16, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $17
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $97
 #INTEGER_LITERAL
 push $216
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $19
 #INTEGER_LITERAL
 push $118
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $61
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $181
 pop -16(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
 pop -16(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $107
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $67
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
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
Main_main:
 push %ebp
 mov %esp, %ebp
 sub $96, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
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
 push $110
 #INTEGER_LITERAL
 push $153
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $247
 #BOOLEAN_LITERAL
 push $0
 #INTEGER_LITERAL
 push $7
 #INTEGER_LITERAL
 push $195
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
 #BOOLEAN_LITERAL
 push $1
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 #BOOLEAN_LITERAL
 push $0
  # NOT
  pop %eax
  not %eax
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
 push $166
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #INTEGER_LITERAL
 push $159
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #INTEGER_LITERAL
 push $230
 #INTEGER_LITERAL
 push $232
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $127
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $216
 #INTEGER_LITERAL
 push $71
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
 #INTEGER_LITERAL
 push $4
 #INTEGER_LITERAL
 push $179
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $188
 #INTEGER_LITERAL
 push $49
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
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
 push $8
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $222
 #INTEGER_LITERAL
 push $226
 #INTEGER_LITERAL
 push $165
 #INTEGER_LITERAL
 push $103
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 #INTEGER_LITERAL
 push $254
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
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $900
 pop -20(%ebp)
# WHILE
label_6:
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $100
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
 push $56
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -24(%ebp)
# WHILE
label_8:
 #INTEGER_LITERAL
 push $65480
# VARIABLE
 mov -24(%ebp), %eax
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
  je label_9
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
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $87
 pop -28(%ebp)
# WHILE
label_11:
 #INTEGER_LITERAL
 push $215
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
  je label_12
#### ASSIGNMENT NODE
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $8
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -28(%ebp)
# PRINT
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 push $printstr
 call printf
 jmp label_11
label_12:
 jmp label_8
label_9:
# IF ELSE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_14
label_13:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 mov -12(%ebp), %eax
 pop 4(%eax)
  jmp label_14
label_14:
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_16
label_15:
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $104
 mov -12(%ebp), %eax
 pop 0(%eax)
  jmp label_17
label_16:
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
 mov -12(%ebp), %eax
 pop 4(%eax)
label_17:
 jmp label_6
label_7:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $34
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -32(%ebp)
# WHILE
label_18:
# VARIABLE
 mov -32(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $43
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
  je label_19
#### ASSIGNMENT NODE
# VARIABLE
 mov -32(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $9
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -32(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $24
 pop -36(%ebp)
# WHILE
label_20:
# VARIABLE
 mov -36(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $12
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_21
#### ASSIGNMENT NODE
# VARIABLE
 mov -36(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $2
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -36(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $4050
 pop -40(%ebp)
# WHILE
label_23:
# VARIABLE
 mov -40(%ebp), %eax
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
  je label_24
#### ASSIGNMENT NODE
# VARIABLE
 mov -40(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $3
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -40(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $67
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -44(%ebp)
# WHILE
label_25:
 #INTEGER_LITERAL
 push $87
# VARIABLE
 mov -44(%ebp), %eax
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
  je label_26
#### ASSIGNMENT NODE
# VARIABLE
 mov -44(%ebp), %eax
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
 pop -44(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $160
 #INTEGER_LITERAL
 push $163
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $144
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
 pop -8(%ebp)
 jmp label_25
label_26:
 jmp label_23
label_24:
 jmp label_20
label_21:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -8(%ebp)
 jmp label_18
label_19:
# PRINT
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 push $printstr
 call printf
# IF ELSE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_28
label_27:
# PRINT
 #INTEGER_LITERAL
 push $175
 #INTEGER_LITERAL
 push $241
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 push $printstr
 call printf
# PRINT
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 push $printstr
 call printf
  jmp label_29
label_28:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $69
 pop -48(%ebp)
# WHILE
label_30:
 #INTEGER_LITERAL
 push $259
# VARIABLE
 mov -48(%ebp), %eax
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
  je label_31
#### ASSIGNMENT NODE
# VARIABLE
 mov -48(%ebp), %eax
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
 pop -48(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $21
 push $printstr
 call printf
 jmp label_30
label_31:
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
# PRINT
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 push $printstr
 call printf
label_29:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 mov -12(%ebp), %eax
 pop 4(%eax)
# IF ELSE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
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
  je label_33
label_32:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $18944
 pop -52(%ebp)
# WHILE
label_35:
# VARIABLE
 mov -52(%ebp), %eax
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
  je label_36
#### ASSIGNMENT NODE
# VARIABLE
 mov -52(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $2
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -52(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $34
 pop -56(%ebp)
# WHILE
label_37:
 #INTEGER_LITERAL
 push $66
# VARIABLE
 mov -56(%ebp), %eax
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
  je label_38
#### ASSIGNMENT NODE
# VARIABLE
 mov -56(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $2
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -56(%ebp)
# IF ELSE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
  pop %eax
  cmp $0, %eax
  je label_40
label_39:
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_42
label_41:
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $178
 #INTEGER_LITERAL
 push $68
 #INTEGER_LITERAL
 push $68
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
 pop -8(%ebp)
  jmp label_43
label_42:
# PRINT
 #INTEGER_LITERAL
 push $90
 push $printstr
 call printf
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_45
label_44:
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_48
label_47:
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_51
label_50:
# PRINT
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 push $printstr
 call printf
# IF ELSE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_54
label_53:
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $69
 pop -60(%ebp)
# WHILE
label_55:
 #INTEGER_LITERAL
 push $126
# VARIABLE
 mov -60(%ebp), %eax
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
  je label_56
#### ASSIGNMENT NODE
# VARIABLE
 mov -60(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $3
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -60(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $66
 push $printstr
 call printf
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #BOOLEAN_LITERAL
 push $1
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 pop -8(%ebp)
 jmp label_55
label_56:
  jmp label_54
label_54:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $33
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -64(%ebp)
# WHILE
label_57:
# VARIABLE
 mov -64(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $45
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
  je label_58
#### ASSIGNMENT NODE
# VARIABLE
 mov -64(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $6
 #NEGATION
 pop %eax
 neg %eax
 push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -64(%ebp)
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
  je label_61
label_60:
# IF ELSE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_64
label_63:
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_67
label_66:
# IF ELSE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_70
label_69:
# PRINT
 #INTEGER_LITERAL
 push $122
 #INTEGER_LITERAL
 push $84
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 push $printstr
 call printf
  jmp label_70
label_70:
  jmp label_68
label_67:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $56
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -68(%ebp)
# WHILE
label_71:
 #INTEGER_LITERAL
 push $40
 #NEGATION
 pop %eax
 neg %eax
 push %eax
# VARIABLE
 mov -68(%ebp), %eax
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
  je label_72
#### ASSIGNMENT NODE
# VARIABLE
 mov -68(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -68(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 pop -8(%ebp)
 jmp label_71
label_72:
# PRINT
 #INTEGER_LITERAL
 push $180
 #INTEGER_LITERAL
 push $34
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
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
 push $printstr
 call printf
label_68:
  jmp label_65
label_64:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $33
 pop -72(%ebp)
# WHILE
label_75:
# VARIABLE
 mov -72(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $114
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
  je label_76
#### ASSIGNMENT NODE
# VARIABLE
 mov -72(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $7
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -72(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $28
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -76(%ebp)
# WHILE
label_77:
 #INTEGER_LITERAL
 push $1048548
# VARIABLE
 mov -76(%ebp), %eax
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
 mov -76(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -76(%ebp)
# IF ELSE
 #INTEGER_LITERAL
 push $94
 #INTEGER_LITERAL
 push $128
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_80
label_79:
# PRINT
 #INTEGER_LITERAL
 push $119
 #INTEGER_LITERAL
 push $22
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #INTEGER_LITERAL
 push $64
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 push $printstr
 call printf
  jmp label_81
label_80:
# IF ELSE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_83
label_82:
# PRINT
 #INTEGER_LITERAL
 push $96
 #INTEGER_LITERAL
 push $155
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 push $printstr
 call printf
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
  jmp label_83
label_83:
label_81:
 jmp label_77
label_78:
 jmp label_75
label_76:
label_65:
  jmp label_62
label_61:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $44
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -80(%ebp)
# WHILE
label_85:
 #INTEGER_LITERAL
 push $64
# VARIABLE
 mov -80(%ebp), %eax
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
  je label_86
#### ASSIGNMENT NODE
# VARIABLE
 mov -80(%ebp), %eax
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
 pop -80(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $215
 push $printstr
 call printf
 jmp label_85
label_86:
label_62:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $92
 #INTEGER_LITERAL
 push $179
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 mov -12(%ebp), %eax
 pop 0(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -8(%ebp)
 jmp label_57
label_58:
  jmp label_52
label_51:
# PRINT
 #INTEGER_LITERAL
 push $203
 push $printstr
 call printf
label_52:
# PRINT
 #INTEGER_LITERAL
 push $0
 #INTEGER_LITERAL
 push $249
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $49
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 push $printstr
 call printf
  jmp label_49
label_48:
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_89
label_88:
# IF ELSE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
  pop %eax
  cmp $0, %eax
  je label_92
label_91:
# IF ELSE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_94
label_93:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $53
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -84(%ebp)
# WHILE
label_96:
# VARIABLE
 mov -84(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $123
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
  je label_97
#### ASSIGNMENT NODE
# VARIABLE
 mov -84(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $7
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -84(%ebp)
# IF ELSE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_100
label_99:
# PRINT
 #INTEGER_LITERAL
 push $157
 push $printstr
 call printf
# IF ELSE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_103
label_102:
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 pop -8(%ebp)
  jmp label_103
label_103:
  jmp label_101
label_100:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 mov -12(%ebp), %eax
 pop 4(%eax)
label_101:
 jmp label_96
label_97:
  jmp label_95
label_94:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $161
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 mov -12(%ebp), %eax
 pop 0(%eax)
# IF ELSE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_105
label_104:
# IF ELSE
 #INTEGER_LITERAL
 push $14
 #INTEGER_LITERAL
 push $219
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $46
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_107
label_106:
# PRINT
 #INTEGER_LITERAL
 push $155
 push $printstr
 call printf
  jmp label_108
label_107:
# PRINT
 #INTEGER_LITERAL
 push $161
 #INTEGER_LITERAL
 push $140
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $119
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $41
 pop -88(%ebp)
# WHILE
label_109:
# VARIABLE
 mov -88(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $5
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_110
#### ASSIGNMENT NODE
# VARIABLE
 mov -88(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $9
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -88(%ebp)
# IF ELSE
 #INTEGER_LITERAL
 push $109
 #INTEGER_LITERAL
 push $223
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_112
label_111:
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_115
label_114:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $245760
 pop -92(%ebp)
# WHILE
label_116:
# VARIABLE
 mov -92(%ebp), %eax
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
  je label_117
#### ASSIGNMENT NODE
# VARIABLE
 mov -92(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -92(%ebp)
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
 jmp label_116
label_117:
  jmp label_115
label_115:
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 pop -8(%ebp)
  jmp label_113
label_112:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $43740
 pop -96(%ebp)
# WHILE
label_119:
# VARIABLE
 mov -96(%ebp), %eax
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
  je label_120
#### ASSIGNMENT NODE
# VARIABLE
 mov -96(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $3
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -96(%ebp)
# PRINT
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 push $printstr
 call printf
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 pop -8(%ebp)
 jmp label_119
label_120:
# PRINT
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 push $printstr
 call printf
label_113:
 jmp label_109
label_110:
# PRINT
 #INTEGER_LITERAL
 push $199
 push $printstr
 call printf
label_108:
  jmp label_105
label_105:
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 pop -8(%ebp)
label_95:
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -8(%ebp)
  jmp label_92
label_92:
  jmp label_90
label_89:
# PRINT
 #INTEGER_LITERAL
 push $34
 push $printstr
 call printf
label_90:
label_49:
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 mov -12(%ebp), %eax
 pop 4(%eax)
# PRINT
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 push $printstr
 call printf
  jmp label_46
label_45:
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 pop -8(%ebp)
label_46:
label_43:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $14
 #INTEGER_LITERAL
 push $99
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 pop -8(%ebp)
  jmp label_40
label_40:
# PRINT
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 push $printstr
 call printf
 jmp label_37
label_38:
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $134
 #INTEGER_LITERAL
 push $202
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
 mov -12(%ebp), %eax
 pop 4(%eax)
 jmp label_35
label_36:
  jmp label_34
label_33:
# PRINT
 #INTEGER_LITERAL
 push $202
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 push $printstr
 call printf
label_34:
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_124
label_123:
# IF ELSE
 #INTEGER_LITERAL
 push $137
 #INTEGER_LITERAL
 push $89
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #INTEGER_LITERAL
 push $54
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_126
label_125:
# PRINT
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 push $printstr
 call printf
  jmp label_126
label_126:
  jmp label_124
label_124:
# PRINT
# VARIABLE
 mov -8(%ebp), %eax
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
