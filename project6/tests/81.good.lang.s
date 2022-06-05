# PROGRAM NODE
 .data
printstr: .asciz "%d\n"

 .text
 .globl Main_main
#### METHOD NODE (1): method prologue
class0_class0:
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
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 mov 8(%ebp), %eax
 pop 20(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 mov 8(%ebp), %eax
 pop 16(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $31
 mov 8(%ebp), %eax
 pop 4(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $176
 mov 8(%ebp), %eax
 pop 0(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $92
 #INTEGER_LITERAL
 push $74
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov 8(%ebp), %eax
 pop 12(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $144
 mov 8(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 #INTEGER_LITERAL
 push $4
 #INTEGER_LITERAL
 push $105
 #INTEGER_LITERAL
 push $3
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
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
 pop -20(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $251
 #INTEGER_LITERAL
 push $94
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $110
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $13
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $11
 #INTEGER_LITERAL
 push $121
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $75
 #INTEGER_LITERAL
 push $119
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $24
 pop -24(%ebp)
# WHILE
label_1:
 #INTEGER_LITERAL
 push $138
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
  je label_2
#### ASSIGNMENT NODE
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $6
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -24(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $129
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $149
 pop -16(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 16(%ebx), %eax
 push %eax
 pop -20(%ebp)
 jmp label_1
label_2:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $201
 pop -16(%ebp)
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
 #BOOLEAN_LITERAL
 push $1
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -4(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $145
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $210
 pop -8(%ebp)
# WHILE
label_3:
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $70
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
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 pop -4(%ebp)
# PRINT
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
 push $printstr
 call printf
 jmp label_3
label_4:
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
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
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_6
label_5:
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 pop -4(%ebp)
# IF ELSE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_8
label_7:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $6
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -12(%ebp)
# WHILE
label_10:
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $138
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
  je label_11
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
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $116
 #INTEGER_LITERAL
 push $203
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $119
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -4(%ebp)
 jmp label_10
label_11:
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 pop -4(%ebp)
  jmp label_9
label_8:
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
 #BOOLEAN_LITERAL
 push $0
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 pop -4(%ebp)
label_9:
  jmp label_6
label_6:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
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
# PRINT
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 push $printstr
 call printf
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $19
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -16(%ebp)
# WHILE
label_13:
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $61
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
  je label_14
#### ASSIGNMENT NODE
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $3
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -4(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 pop -4(%ebp)
# IF ELSE
 #INTEGER_LITERAL
 push $154
 #INTEGER_LITERAL
 push $39
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
label_16:
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 pop -4(%ebp)
  jmp label_18
label_17:
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
label_18:
 jmp label_13
label_14:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $132
 pop -20(%ebp)
# WHILE
label_19:
# VARIABLE
 mov -20(%ebp), %eax
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
  je label_20
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
 #BOOLEAN_LITERAL
 push $1
 pop -4(%ebp)
 jmp label_19
label_20:
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 pop -4(%ebp)
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_22
label_21:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -4(%ebp)
  jmp label_22
label_22:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -4(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 pop -4(%ebp)
# PRINT
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 push $printstr
 call printf
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -4(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -4(%ebp)
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
