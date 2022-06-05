# PROGRAM NODE
 .data
printstr: .asciz "%d\n"

 .text
 .globl Main_main
#### METHOD NODE (1): method prologue
class0_f0:
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
 push $149
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $63
 #INTEGER_LITERAL
 push $36
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
 push $54
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
 mov -4(%ebp), %eax
 push %eax
 push $printstr
 call printf
# PRINT
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 push $printstr
 call printf
  jmp label_2
label_2:
# PRINT
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 push $printstr
 call printf
# IF ELSE
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_4
label_3:
# PRINT
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
 push $printstr
 call printf
  jmp label_4
label_4:
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
 push $188
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $218
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $129
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $16
 pop -16(%ebp)
# WHILE
label_5:
 #INTEGER_LITERAL
 push $80
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
  je label_6
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
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $46
 pop -4(%ebp)
 jmp label_5
label_6:
# IF ELSE
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_9
label_8:
# PRINT
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
# VARIABLE
 mov 8(%ebp), %ebx
 mov 12(%ebx), %eax
 push %eax
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 push $printstr
 call printf
  jmp label_10
label_9:
#### ASSIGNMENT NODE
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $206
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -4(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $173
# VARIABLE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
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
 mov 8(%ebx), %eax
 push %eax
 pop -12(%ebp)
label_10:
#### RETURN_STATEMENT
 #INTEGER_LITERAL
 push $10
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
 sub $4, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $163840
 pop -4(%ebp)
# WHILE
label_11:
# VARIABLE
 mov -4(%ebp), %eax
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
  je label_12
#### ASSIGNMENT NODE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -4(%ebp)
# PRINT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push %eax
 push $printstr
 call printf
 jmp label_11
label_12:
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
class0_f3:
 push %ebp
 mov %esp, %ebp
 sub $20, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $18
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -16(%ebp)
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
 pop -12(%ebp)
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_14
label_13:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $67
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -20(%ebp)
# WHILE
label_16:
 #INTEGER_LITERAL
 push $16317
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
  je label_17
#### ASSIGNMENT NODE
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -20(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $0
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $151
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
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 push $printstr
 call printf
 jmp label_16
label_17:
  jmp label_15
label_14:
#### ASSIGNMENT NODE
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 pop -16(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 pop -12(%ebp)
label_15:
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
# PRINT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
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
 sub $20, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $165
 #INTEGER_LITERAL
 push $204
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 mov 8(%ebp), %eax
 pop 4(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $176
 #INTEGER_LITERAL
 push $47
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 mov 8(%ebp), %eax
 pop 0(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $245
 mov 8(%ebp), %eax
 pop 12(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $67
 mov 8(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $173
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -20(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $30
 #INTEGER_LITERAL
 push $46
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $117
 #INTEGER_LITERAL
 push $92
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -12(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
 #INTEGER_LITERAL
 push $171
 #INTEGER_LITERAL
 push $196
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
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
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -8(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $143
 #NEGATION
 pop %eax
 neg %eax
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
 push $113
 #INTEGER_LITERAL
 push $13
 #INTEGER_LITERAL
 push $168
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $32
 #BOOLEAN_LITERAL
 push $0
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
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
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
 push $216
 #INTEGER_LITERAL
 push $255
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #INTEGER_LITERAL
 push $78
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
 #INTEGER_LITERAL
 push $81
 #INTEGER_LITERAL
 push $91
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 mov 8(%ebp), %eax
 pop 16(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $30
 #INTEGER_LITERAL
 push $57
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $1
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
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
 push $41
 #INTEGER_LITERAL
 push $124
 #INTEGER_LITERAL
 push $95
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $180
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $229
 #INTEGER_LITERAL
 push $183
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
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $134
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #INTEGER_LITERAL
 push $253
 #INTEGER_LITERAL
 push $248
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
 pop -12(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $230
# VARIABLE
 push %eax
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 push -16(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f3
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $124
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 mov -16(%ebp), %eax
 pop 12(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -4(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $12
 push -16(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f3
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
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
 sub $36, %esp
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
 push $24
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
 call class1_class1
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $4, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -4(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $103
 push $printstr
 call printf
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f3
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
 #INTEGER_LITERAL
 push $206
 #NEGATION
 pop %eax
 neg %eax
 push %eax
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 16(%eax)
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f3
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 16(%eax)
 mov -4(%ebp), %eax
 pop 16(%eax)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f3
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $98
 pop -12(%ebp)
# WHILE
label_19:
 #INTEGER_LITERAL
 push $146
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
 push $2
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
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $32076
 pop -16(%ebp)
# WHILE
label_22:
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $44
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
 mov -16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $3
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -16(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $111
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f3
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 jmp label_22
label_23:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $87
 mov -4(%ebp), %eax
 pop 16(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 16(%eax)
 mov -4(%ebp), %eax
 pop 16(%eax)
 jmp label_19
label_20:
# IF ELSE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_26
label_25:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 12(%eax)
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f3
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $85
 pop -20(%ebp)
# WHILE
label_28:
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $35
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
  je label_29
#### ASSIGNMENT NODE
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $8
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -20(%ebp)
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
# PRINT
 #INTEGER_LITERAL
 push $156
 push $printstr
 call printf
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 16(%eax)
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f3
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 jmp label_28
label_29:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $47
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f3
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
  jmp label_27
label_26:
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 pop -8(%ebp)
label_27:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 12(%eax)
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f3
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
# IF ELSE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_31
label_30:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f3
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
  jmp label_32
label_31:
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_34
label_33:
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 pop -8(%ebp)
# PRINT
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 push $printstr
 call printf
  jmp label_35
label_34:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 16(%eax)
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #INTEGER_LITERAL
 push $3
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f3
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -8(%ebp)
label_35:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $201
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f3
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
label_32:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $6400
 pop -24(%ebp)
# WHILE
label_36:
# VARIABLE
 mov -24(%ebp), %eax
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
  je label_37
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
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $115
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f3
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 jmp label_36
label_37:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $112
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f3
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $81
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -28(%ebp)
# WHILE
label_38:
 #INTEGER_LITERAL
 push $17
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
  je label_39
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
  je label_42
label_41:
# PRINT
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 16(%eax)
 push $printstr
 call printf
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $42
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f3
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $16
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -32(%ebp)
# WHILE
label_43:
 #INTEGER_LITERAL
 push $6545
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
  je label_44
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
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
 jmp label_43
label_44:
  jmp label_42
label_42:
 jmp label_38
label_39:
# PRINT
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 push $printstr
 call printf
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f3
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $42496
 pop -36(%ebp)
# WHILE
label_45:
# VARIABLE
 mov -36(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $83
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_46
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
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
# PRINT
 #INTEGER_LITERAL
 push $141
 push $printstr
 call printf
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_49
label_48:
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
  jmp label_49
label_49:
 jmp label_45
label_46:
# PRINT
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 16(%eax)
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 push $printstr
 call printf
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $106
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f3
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
# PRINT
 #INTEGER_LITERAL
 push $88
 #INTEGER_LITERAL
 push $170
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
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
