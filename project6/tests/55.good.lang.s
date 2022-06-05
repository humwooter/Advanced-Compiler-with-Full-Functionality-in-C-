# PROGRAM NODE
 .data
printstr: .asciz "%d\n"

 .text
 .globl Main_main
#### METHOD NODE (1): method prologue
class0_f0:
 push %ebp
 mov %esp, %ebp
 sub $20, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $82
 pop -20(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $184
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $118
 #INTEGER_LITERAL
 push $195
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #INTEGER_LITERAL
 push $196
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $157
 pop -12(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $17
 pop -12(%ebp)
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
class0_f1:
 push %ebp
 mov %esp, %ebp
 sub $12, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $228
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $171
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $41
 pop -12(%ebp)
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_2
label_1:
# PRINT
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
 push $printstr
 call printf
  jmp label_3
label_2:
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
label_3:
#### ASSIGNMENT NODE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push %eax
 pop -12(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $0
 #INTEGER_LITERAL
 push $82
 #INTEGER_LITERAL
 push $71
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
 push $80
 #INTEGER_LITERAL
 push $227
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $172
 #INTEGER_LITERAL
 push $218
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
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
# VARIABLE
 mov -4(%ebp), %eax
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
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -12(%ebp)
# PRINT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
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
 push $169
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 mov 8(%ebp), %eax
 pop 4(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $197
 #INTEGER_LITERAL
 push $231
 #NEGATION
 pop %eax
 neg %eax
 push %eax
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
 #INTEGER_LITERAL
 push $54
 #INTEGER_LITERAL
 push $241
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 mov 8(%ebp), %eax
 pop 12(%eax)
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
 mov 8(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $228
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $33
 pop -12(%ebp)
# WHILE
label_4:
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $11
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
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $59
 pop -16(%ebp)
# WHILE
label_6:
 #INTEGER_LITERAL
 push $19742
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
  je label_7
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
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $1
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
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
 #INTEGER_LITERAL
 push $228
 pop -4(%ebp)
 jmp label_6
label_7:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $192
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -4(%ebp)
 jmp label_4
label_5:
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
 sub $24, %esp
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
 mov 12(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $4, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -24(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $43
 pop -20(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $38
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $185
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $66
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $217
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -20(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
 push -24(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 pop -20(%ebp)
#### RETURN_STATEMENT
#### MEMBER ACCESS NODE
 mov -24(%ebp), %eax
 push 4(%eax)
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
 #INTEGER_LITERAL
 push $90
 pop -20(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $60
 #INTEGER_LITERAL
 push $191
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
 #INTEGER_LITERAL
 push $160
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $236
 #INTEGER_LITERAL
 push $0
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $178
 pop -12(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $230
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $195
 pop -4(%ebp)
# IF ELSE
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $137
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_10
label_9:
#### ASSIGNMENT NODE
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 pop -8(%ebp)
  jmp label_10
label_10:
# PRINT
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $164
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
class1_class1:
 push %ebp
 mov %esp, %ebp
 sub $4, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $110
 mov 8(%ebp), %eax
 pop 0(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -4(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
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
class2_f0:
 push %ebp
 mov %esp, %ebp
 sub $8, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $255
 pop -8(%ebp)
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
 mov 12(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $4, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -4(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $0
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
# PRINT
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 12(%eax)
 push $printstr
 call printf
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 pop -8(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $165
 #NEGATION
 pop %eax
 neg %eax
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
 push $printstr
 call printf
#### ASSIGNMENT NODE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push %eax
 pop -8(%ebp)
#### RETURN_STATEMENT
 #BOOLEAN_LITERAL
 push $0
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
 sub $24, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $42
 #INTEGER_LITERAL
 push $233
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -24(%ebp)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $4
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $114
 #BOOLEAN_LITERAL
 push $0
 #BOOLEAN_LITERAL
 push $1
 #INTEGER_LITERAL
 push $185
 #INTEGER_LITERAL
 push $92
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
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
 pop -20(%ebp)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $4
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $138
 #BOOLEAN_LITERAL
 push $0
 #BOOLEAN_LITERAL
 push $0
 #INTEGER_LITERAL
 push $167
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
 #BOOLEAN_LITERAL
 push $1
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $173
 #INTEGER_LITERAL
 push $205
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $17
 #INTEGER_LITERAL
 push $207
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -12(%ebp)
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
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
class2_f2:
 push %ebp
 mov %esp, %ebp
 sub $8, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $4
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $112
 #INTEGER_LITERAL
 push $128
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $34
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #BOOLEAN_LITERAL
 push $1
 #BOOLEAN_LITERAL
 push $1
 #INTEGER_LITERAL
 push $4
 #NEGATION
 pop %eax
 neg %eax
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
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $87
 mov -4(%ebp), %eax
 pop 0(%eax)
# PRINT
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
 push $printstr
 call printf
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $2
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
 push %eax
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $58
 pop -8(%ebp)
# WHILE
label_11:
 #INTEGER_LITERAL
 push $114
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
  je label_12
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
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
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $73
 mov -4(%ebp), %eax
 pop 0(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $205
 #INTEGER_LITERAL
 push $229
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $73
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov -4(%ebp), %eax
 pop 0(%eax)
 jmp label_11
label_12:
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
class2_class2:
 push %ebp
 mov %esp, %ebp
 sub $32, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $71
 #INTEGER_LITERAL
 push $174
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 mov 8(%ebp), %eax
 pop 16(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $79
 #INTEGER_LITERAL
 push $81
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 mov 8(%ebp), %eax
 pop 4(%eax)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $4
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
 push $69
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #BOOLEAN_LITERAL
 push $0
 #BOOLEAN_LITERAL
 push $0
 #INTEGER_LITERAL
 push $97
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
 pop 0(%eax)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $4
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $179
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
 #INTEGER_LITERAL
 push $218
 #INTEGER_LITERAL
 push $213
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 #INTEGER_LITERAL
 push $157
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
 pop 12(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $126
 #INTEGER_LITERAL
 push $60
 #INTEGER_LITERAL
 push $114
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #INTEGER_LITERAL
 push $222
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
 mov 8(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $4
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $176
 #INTEGER_LITERAL
 push $30
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #BOOLEAN_LITERAL
 push $1
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
 #BOOLEAN_LITERAL
 push $0
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
 #INTEGER_LITERAL
 push $240
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
 pop -24(%ebp)
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
 pop -20(%ebp)
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
 mov 12(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $4, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $111
 #INTEGER_LITERAL
 push $72
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -16(%ebp)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $4
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $198
 #NEGATION
 pop %eax
 neg %eax
 push %eax
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
 #INTEGER_LITERAL
 push $52
 #INTEGER_LITERAL
 push $34
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
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
 #INTEGER_LITERAL
 push $103
 mov -24(%ebp), %eax
 pop 0(%eax)
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_14
label_13:
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $1
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 #BOOLEAN_LITERAL
 push $1
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
   mov 8(%ebp), %eax
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
 pop -20(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $200
 push -24(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
  jmp label_15
label_14:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $78
 push -24(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push %eax
 mov -12(%ebp), %eax
 pop 0(%eax)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $201
 #INTEGER_LITERAL
 push $103
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 push -24(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
label_15:
# IF ELSE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $1
   mov 8(%ebp), %eax
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
  pop %eax
  cmp $0, %eax
  je label_17
label_16:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $242
 mov -24(%ebp), %eax
 pop 0(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $13056
 pop -28(%ebp)
# WHILE
label_19:
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $51
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
 mov -20(%ebp), %eax
 push %eax
 pop -16(%ebp)
 jmp label_19
label_20:
  jmp label_18
label_17:
# IF ELSE
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_23
label_22:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $19
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #INTEGER_LITERAL
 push $120
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 push -24(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
  jmp label_24
label_23:
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -24(%ebp), %eax
 push 0(%eax)
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $90
 mov -24(%ebp), %eax
 pop 0(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $88
 pop -32(%ebp)
# WHILE
label_25:
# VARIABLE
 mov -32(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $79
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
 mov -32(%ebp), %eax
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
 pop -32(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -24(%ebp), %eax
 push 0(%eax)
 push -24(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 jmp label_25
label_26:
label_24:
label_18:
 xor %eax, %eax
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
 sub $16, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $210
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 pop -16(%ebp)
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
 mov 12(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $4, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -12(%ebp)
# PRINT
 #BOOLEAN_LITERAL
 push $0
# VARIABLE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push %eax
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
 push $printstr
 call printf
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $224
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
 push -12(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### RETURN_STATEMENT
 #INTEGER_LITERAL
 push $28
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
 sub $24, %esp
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
 mov 12(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $4, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -24(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $239
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -20(%ebp)
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
 mov 12(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class2_class2
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $4, %esp
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
 mov 12(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class2_class2
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $4, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $12
 #INTEGER_LITERAL
 push $176
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
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
 push -24(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f1
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
#### MEMBER ACCESS NODE
 mov -24(%ebp), %eax
 push 0(%eax)
 #BOOLEAN_LITERAL
 push $0
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 push -24(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f1
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### RETURN_STATEMENT
#### MEMBER ACCESS NODE
 mov -24(%ebp), %eax
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
 sub $8, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class3_class0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
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
 #BOOLEAN_LITERAL
 push $0
 mov 8(%ebp), %eax
 pop 16(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $159
 mov 8(%ebp), %eax
 pop 28(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $170
 #INTEGER_LITERAL
 push $183
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov 8(%ebp), %eax
 pop 24(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $179
 #INTEGER_LITERAL
 push $77
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov 8(%ebp), %eax
 pop 32(%eax)
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
 mov 12(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class2_class2
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $4, %esp
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
 mov 12(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class2_class2
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $4, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -4(%ebp)
# PRINT
# VARIABLE
 push %eax
 push $printstr
 call printf
#### ASSIGNMENT NODE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
 push %eax
 mov -8(%ebp), %eax
 pop 4(%eax)
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
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov 12(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class2_class2
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $4, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $25
 pop -12(%ebp)
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_29
label_28:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $18
 mov -4(%ebp), %eax
 pop 8(%eax)
  jmp label_30
label_29:
# IF ELSE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_32
label_31:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $138
 mov -4(%ebp), %eax
 pop 4(%eax)
# IF ELSE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 16(%eax)
  pop %eax
  cmp $0, %eax
  je label_35
label_34:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -8(%ebp)
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_37
label_36:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $42
 pop -16(%ebp)
# WHILE
label_39:
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $12
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
  je label_40
#### ASSIGNMENT NODE
# VARIABLE
 mov -16(%ebp), %eax
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
 pop -16(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 pop -8(%ebp)
 jmp label_39
label_40:
# PRINT
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
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
 push $printstr
 call printf
  jmp label_38
label_37:
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 pop -12(%ebp)
label_38:
  jmp label_35
label_35:
  jmp label_33
label_32:
# PRINT
 #INTEGER_LITERAL
 push $152
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
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
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $93
 pop -12(%ebp)
# IF ELSE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_43
label_42:
# PRINT
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 push $printstr
 call printf
# PRINT
 #INTEGER_LITERAL
 push $122
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 push $printstr
 call printf
  jmp label_44
label_43:
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 pop -12(%ebp)
label_44:
label_33:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $62
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $25088
 pop -20(%ebp)
# WHILE
label_46:
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $98
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_47
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
# PRINT
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 16(%eax)
 push $printstr
 call printf
 jmp label_46
label_47:
label_30:
# PRINT
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
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 mov -4(%ebp), %eax
 pop 16(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $102
 pop -24(%ebp)
# WHILE
label_48:
# VARIABLE
 mov -24(%ebp), %eax
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
  je label_49
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
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 mov -4(%ebp), %eax
 pop 16(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $83
 pop -12(%ebp)
 jmp label_48
label_49:
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 pop -12(%ebp)
# PRINT
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
 push $printstr
 call printf
#### ASSIGNMENT NODE
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $183
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 mov -4(%ebp), %eax
 pop 8(%eax)
# IF ELSE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_51
label_50:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $49283072
 pop -28(%ebp)
# WHILE
label_52:
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $47
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_53
#### ASSIGNMENT NODE
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -28(%ebp)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 16(%eax)
 pop -8(%ebp)
 jmp label_52
label_53:
# PRINT
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #BOOLEAN_LITERAL
 push $1
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 push $printstr
 call printf
  jmp label_51
label_51:
# IF ELSE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $240
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_55
label_54:
# PRINT
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $69
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -32(%ebp)
# WHILE
label_57:
 #INTEGER_LITERAL
 push $34
 #NEGATION
 pop %eax
 neg %eax
 push %eax
# VARIABLE
 mov -32(%ebp), %eax
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
 mov -32(%ebp), %eax
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
 pop -32(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $21
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -12(%ebp)
 jmp label_57
label_58:
  jmp label_56
label_55:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $122
 pop -12(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### NEW NODE (1): allocate space
 push $16
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov 12(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $4, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 #BOOLEAN_LITERAL
 push $0
 #BOOLEAN_LITERAL
 push $0
#### NEW NODE (1): allocate space
 push $16
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov 12(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call class0_class0
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $4, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class2_f1
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
 mov -4(%ebp), %eax
 pop 4(%eax)
label_56:
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
