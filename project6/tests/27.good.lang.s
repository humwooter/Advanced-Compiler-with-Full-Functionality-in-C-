# PROGRAM NODE
 .data
printstr: .asciz "%d\n"

 .text
 .globl Main_main
#### METHOD NODE (1): method prologue
class0_f0: push %ebp
 mov %esp, %ebp
 sub $24, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
 #INTEGER_LITERAL
 push $99
 #INTEGER_LITERAL
 push $9
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
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -24(%ebp)
 #INTEGER_LITERAL
 push $96
 #INTEGER_LITERAL
 push $247
 #INTEGER_LITERAL
 push $196
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
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -20(%ebp)
 #INTEGER_LITERAL
 push $44
 #INTEGER_LITERAL
 push $183
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $103
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
 #BOOLEAN_LITERAL
 push $0
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 #INTEGER_LITERAL
 push $92
 #INTEGER_LITERAL
 push $142
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $54
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -16(%ebp)
 #BOOLEAN_LITERAL
 push $0
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $232
 #INTEGER_LITERAL
 push $74
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
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
class0_f1: push %ebp
 mov %esp, %ebp
 sub $20, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
 #INTEGER_LITERAL
 push $141
 #INTEGER_LITERAL
 push $47
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -20(%ebp)
 #BOOLEAN_LITERAL
 push $1
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
 #BOOLEAN_LITERAL
 push $0
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 #INTEGER_LITERAL
 push $233
 #INTEGER_LITERAL
 push $187
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -16(%ebp)
 #INTEGER_LITERAL
 push $58
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $185
 #INTEGER_LITERAL
 push $184
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
# VARIABLE
   mov 8(%ebp), %eax
   mov 4(%eax), %eax
   push %eax
 #BOOLEAN_LITERAL
 push $1
 #BOOLEAN_LITERAL
 push $0
# VARIABLE
   mov -20(%ebp), %eax
   push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %ecx
 pop %ecx
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
# VARIABLE
   mov -16(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
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
#### RETURN_STATEMENT
 #INTEGER_LITERAL
 push $153
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class0_f2: push %ebp
 mov %esp, %ebp
 sub $12, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
 #INTEGER_LITERAL
 push $169
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
 #INTEGER_LITERAL
 push $88
 #INTEGER_LITERAL
 push $158
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #INTEGER_LITERAL
 push $188
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $221
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
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
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
# VARIABLE
   mov 8(%ebp), %eax
   mov 4(%eax), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
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
class0_class0: push %ebp
 mov %esp, %ebp
 sub $24, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
 #INTEGER_LITERAL
 push $167
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 16(%edx), %ebx
 mov %ecx, 16(%ebx)
 #INTEGER_LITERAL
 push $116
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 4(%edx), %ebx
 mov %ecx, 4(%ebx)
 #INTEGER_LITERAL
 push $24
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 0(%edx), %ebx
 mov %ecx, 0(%ebx)
 #INTEGER_LITERAL
 push $189
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 12(%edx), %ebx
 mov %ecx, 12(%ebx)
 #INTEGER_LITERAL
 push $236
 #INTEGER_LITERAL
 push $154
 #INTEGER_LITERAL
 push $30
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
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 8(%edx), %ebx
 mov %ecx, 8(%ebx)
 #INTEGER_LITERAL
 push $99
 #INTEGER_LITERAL
 push $168
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
 #INTEGER_LITERAL
 push $178
 #INTEGER_LITERAL
 push $102
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 #INTEGER_LITERAL
 push $214
 #INTEGER_LITERAL
 push $239
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -16(%ebp)
 #BOOLEAN_LITERAL
 push $0
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $1
# VARIABLE
   mov 16(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $132
 #INTEGER_LITERAL
 push $107
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $35
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
# VARIABLE
   mov 8(%ebp), %eax
   mov 8(%eax), %eax
   push %eax
# VARIABLE
   mov 20(%ebp), %eax
   push %eax
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $78
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
# VARIABLE
   mov 24(%ebp), %eax
   push %eax
# VARIABLE
   mov 20(%ebp), %eax
   push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %ecx
 pop %ecx
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
 #INTEGER_LITERAL
 push $67
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -20(%ebp)
# WHILE
label_1:
 #INTEGER_LITERAL
 push $65
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
  je label_2
# VARIABLE
   mov -20(%ebp), %eax
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
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -20(%ebp)
 #INTEGER_LITERAL
 push $53
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -24(%ebp)
# WHILE
label_4:
 #INTEGER_LITERAL
 push $65589
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
  je label_5
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
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -24(%ebp)
 #INTEGER_LITERAL
 push $77
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 jmp label_4
label_5:
 #INTEGER_LITERAL
 push $166
 #INTEGER_LITERAL
 push $37
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
 jmp label_1
label_2:
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class1_f3: push %ebp
 mov %esp, %ebp
 sub $12, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
 #BOOLEAN_LITERAL
 push $0
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 #INTEGER_LITERAL
 push $96
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
# WHILE
label_8:
# VARIABLE
   mov -8(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $3
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
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_11
label_10:
 #INTEGER_LITERAL
 push $7
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
# WHILE
label_12:
 #INTEGER_LITERAL
 push $46
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
  je label_13
# VARIABLE
   mov -12(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $3
 #NEGATION
 pop %eax
 neg %eax
 push %eax
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
# VARIABLE
   mov 8(%ebp), %eax
   mov 24(%eax), %eax
   push %eax
# VARIABLE
   mov 8(%ebp), %eax
   mov 4(%eax), %eax
   push %eax
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 jmp label_12
label_13:
# PRINT
# VARIABLE
   mov 8(%ebp), %eax
   mov 12(%eax), %eax
   push %eax
 #INTEGER_LITERAL
 push $82
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
 push $printstr
 call printf
  jmp label_11
label_11:
# PRINT
 #INTEGER_LITERAL
 push $47
# VARIABLE
   mov 8(%ebp), %eax
   mov 12(%eax), %eax
   push %eax
# VARIABLE
   mov 8(%ebp), %eax
   mov 24(%eax), %eax
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
 jmp label_8
label_9:
 #BOOLEAN_LITERAL
 push $1
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
# PRINT
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
 push $printstr
 call printf
#### RETURN_STATEMENT
# VARIABLE
   mov 8(%ebp), %eax
   mov 8(%eax), %eax
   push %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class1_class1: push %ebp
 mov %esp, %ebp
 sub $20, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $9
 #INTEGER_LITERAL
 push $131
 #INTEGER_LITERAL
 push $5
 #INTEGER_LITERAL
 push $134
 #INTEGER_LITERAL
 push $111
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
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
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_class0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %ecx
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
 #INTEGER_LITERAL
 push $194
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 20(%edx), %ebx
 mov %ecx, 20(%ebx)
 #INTEGER_LITERAL
 push $63
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 24(%edx), %ebx
 mov %ecx, 24(%ebx)
 #INTEGER_LITERAL
 push $42
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
# WHILE
label_16:
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $30
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
  je label_17
# VARIABLE
   mov -4(%ebp), %eax
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
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
# PRINT
# VARIABLE
   mov 8(%ebp), %eax
   mov 0(%eax), %eax
   push %eax
# VARIABLE
   mov 8(%ebp), %eax
   mov 4(%eax), %eax
   push %eax
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 push $printstr
 call printf
 jmp label_16
label_17:
# PRINT
# VARIABLE
   mov 8(%ebp), %eax
   mov 24(%eax), %eax
   push %eax
 push $printstr
 call printf
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_20
label_19:
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_22
label_21:
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
 #INTEGER_LITERAL
 push $25
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
# WHILE
label_24:
 #INTEGER_LITERAL
 push $41
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
  je label_25
# VARIABLE
   mov -8(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $2
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
 #INTEGER_LITERAL
 push $57
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
# WHILE
label_27:
# VARIABLE
   mov -12(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $127
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
  je label_28
# VARIABLE
   mov -12(%ebp), %eax
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
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $214
 push $printstr
 call printf
 jmp label_27
label_28:
 jmp label_24
label_25:
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
  jmp label_23
label_22:
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_31
label_30:
# PRINT
# VARIABLE
   mov 8(%ebp), %eax
   mov 20(%eax), %eax
   push %eax
 push $printstr
 call printf
# PRINT
 #INTEGER_LITERAL
 push $109
 #INTEGER_LITERAL
 push $62
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 push $printstr
 call printf
  jmp label_32
label_31:
# PRINT
# VARIABLE
   mov 12(%ebp), %eax
   push %eax
 push $printstr
 call printf
label_32:
label_23:
  jmp label_20
label_20:
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_34
label_33:
 #INTEGER_LITERAL
 push $83
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -16(%ebp)
# WHILE
label_36:
 #INTEGER_LITERAL
 push $29
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
  je label_37
# VARIABLE
   mov -16(%ebp), %eax
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
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -16(%ebp)
# IF ELSE
 #INTEGER_LITERAL
 push $26
# VARIABLE
   mov 8(%ebp), %eax
   mov 20(%eax), %eax
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
label_38:
 #INTEGER_LITERAL
 push $53
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -20(%ebp)
# WHILE
label_40:
 #INTEGER_LITERAL
 push $13
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
  je label_41
# VARIABLE
   mov -20(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $4
 #NEGATION
 pop %eax
 neg %eax
 push %eax
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -20(%ebp)
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
# PRINT
# VARIABLE
   mov 8(%ebp), %eax
   mov 12(%eax), %eax
   push %eax
# VARIABLE
   mov 8(%ebp), %eax
   mov 16(%eax), %eax
   push %eax
 #NEGATION
 pop %eax
 neg %eax
 push %eax
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $240
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
# VARIABLE
   mov 12(%ebp), %eax
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
 jmp label_40
label_41:
  jmp label_39
label_39:
 jmp label_36
label_37:
  jmp label_35
label_34:
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
# PRINT
 #INTEGER_LITERAL
 push $99
 push $printstr
 call printf
label_35:
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
 sub $20, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
 #INTEGER_LITERAL
 push $250
 #INTEGER_LITERAL
 push $124
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 #BOOLEAN_LITERAL
 push $0
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
 #INTEGER_LITERAL
 push $239
 pop %ecx
#### ASSIGNMENT NODE
 mov -8(%ebp), %eax
 mov 8(%eax), %ebx
 mov -8(%ebx), %eax
 mov %ecx, %eax
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $0
 mov -8(%ebp), %ebx
