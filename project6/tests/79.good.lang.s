# PROGRAM NODE
 .data
printstr: .asciz "%d\n"

 .text
 .globl Main_main
#### METHOD NODE (1): method prologue
class0_f0:
 push %ebp
 mov %esp, %ebp
 sub $12, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $9
 #INTEGER_LITERAL
 push $80
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $248
 pop -4(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 12(%ebx), %eax
 push %eax
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $78
 pop -12(%ebp)
# WHILE
label_0:
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $24
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_1
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
 #INTEGER_LITERAL
 push $191
 pop -4(%ebp)
 jmp label_0
label_1:
# PRINT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 12(%ebx), %eax
 push %eax
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $23
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $201
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -4(%ebp)
#### RETURN_STATEMENT
 #BOOLEAN_LITERAL
 push $1
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
 sub $8, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $216
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $39
# VARIABLE
 mov 20(%ebp), %eax
 push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $177
 #INTEGER_LITERAL
 push $5
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $52
 pop -8(%ebp)
# WHILE
label_3:
 #INTEGER_LITERAL
 push $63
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
  je label_4
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $1
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -8(%ebp)
# PRINT
# VARIABLE
 mov 24(%ebp), %eax
 push %eax
 push $printstr
 call printf
 jmp label_3
label_4:
# PRINT
# VARIABLE
 mov 16(%ebp), %eax
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
class0_f2:
 push %ebp
 mov %esp, %ebp
 sub $12, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $50
 #INTEGER_LITERAL
 push $242
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $214
 pop -4(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $215
 push $printstr
 call printf
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $66
 pop -12(%ebp)
# WHILE
label_6:
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $58
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
 mov -12(%ebp), %eax
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
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $47
 #INTEGER_LITERAL
 push $26
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -8(%ebp)
 jmp label_6
label_7:
#### RETURN_STATEMENT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
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
 #BOOLEAN_LITERAL
 push $0
 pop -20(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $2
 pop -8(%ebp)
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
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $112
 pop -12(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
# VARIABLE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push %eax
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $1
 #INTEGER_LITERAL
 push $164
 #BOOLEAN_LITERAL
 push $1
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
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
 #INTEGER_LITERAL
 push $242
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f1
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
#### ASSIGNMENT NODE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push %eax
 pop -4(%ebp)
# PRINT
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
 push $printstr
 call printf
#### RETURN_STATEMENT
 #BOOLEAN_LITERAL
 push $0
  # NOT
  pop %eax
  not %eax
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
class0_class0:
 push %ebp
 mov %esp, %ebp
 sub $8, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $164
 #INTEGER_LITERAL
 push $82
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
 push $83
 #INTEGER_LITERAL
 push $102
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 mov 8(%ebp), %eax
 pop 0(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $232
 mov 8(%ebp), %eax
 pop 12(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $145
 #INTEGER_LITERAL
 push $30
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #INTEGER_LITERAL
 push $227
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 mov 8(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $54
 pop -4(%ebp)
# IF ELSE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_10
label_9:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
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
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov 8(%ebp), %ebx
 mov 12(%ebx), %eax
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
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 #INTEGER_LITERAL
 push $75
# VARIABLE
 mov 8(%ebp), %ebx
 mov 12(%ebx), %eax
 push %eax
 #INTEGER_LITERAL
 push $253
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 #INTEGER_LITERAL
 push $239
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f1
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
# PRINT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push %eax
 push $printstr
 call printf
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $1
# VARIABLE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push %eax
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f1
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
  jmp label_10
label_10:
#### ASSIGNMENT NODE
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
 push %eax
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $26
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -8(%ebp)
# WHILE
label_12:
 #INTEGER_LITERAL
 push $79
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
  je label_13
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
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
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $136
 pop -4(%ebp)
 jmp label_12
label_13:
 xor %eax, %eax
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
 sub $20, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $198
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -4(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $70
 #INTEGER_LITERAL
 push $155
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -12(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $47
 push $printstr
 call printf
# PRINT
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $0
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 12(%eax)
# VARIABLE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
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
 #INTEGER_LITERAL
 push $255
# VARIABLE
 push %eax
 push 12(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class0_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
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
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 12(%eax)
 #INTEGER_LITERAL
 push $84
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
 pop -16(%ebp)
# PRINT
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 12(%eax)
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $100
 pop -20(%ebp)
# WHILE
label_16:
 #INTEGER_LITERAL
 push $225
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
 push $5
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -20(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push %eax
 #NEGATION
 pop %eax
 neg %eax
 push %eax
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 8(%eax)
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $123
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 pop -16(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 push %eax
# VARIABLE
 mov 8(%ebp), %ebx
 mov 12(%ebx), %eax
 push %eax
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop -8(%ebp)
 jmp label_16
label_17:
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
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $217
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_class0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $203
 mov 8(%ebp), %eax
 pop 20(%eax)
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
 push $205
 #INTEGER_LITERAL
 push $180
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
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
 mov 8(%ebp), %eax
 pop 16(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $100
 mov 8(%ebp), %eax
 pop 28(%eax)
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
 push $66
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
 mov 8(%ebp), %eax
 pop 24(%eax)
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
 push $194
 #INTEGER_LITERAL
 push $10
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
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
 mov 8(%ebp), %eax
 pop 32(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -4(%ebp)
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
 sub $36, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $224
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #BOOLEAN_LITERAL
 push $1
 #INTEGER_LITERAL
 push $120
 #INTEGER_LITERAL
 push $16
 #INTEGER_LITERAL
 push $222
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
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 #INTEGER_LITERAL
 push $3
 #INTEGER_LITERAL
 push $164
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
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
 push $16
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $33
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
 mov 8(%ebp), %eax
 pop 40(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $190
 mov 8(%ebp), %eax
 pop 36(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $3
 mov 8(%ebp), %eax
 pop 44(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $7
 mov 8(%ebp), %eax
 pop 48(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $105
 #INTEGER_LITERAL
 push $43
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $242
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 pop -24(%ebp)
#### ASSIGNMENT NODE
#### NEW NODE (1): allocate space
 push $36
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $8
 #INTEGER_LITERAL
 push $106
 #INTEGER_LITERAL
 push $157
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 #INTEGER_LITERAL
 push $241
 #INTEGER_LITERAL
 push $80
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $167
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #INTEGER_LITERAL
 push $91
 #INTEGER_LITERAL
 push $59
 #INTEGER_LITERAL
 push $57
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
 #INTEGER_LITERAL
 push $99
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
 #BOOLEAN_LITERAL
 push $1
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $170
 #INTEGER_LITERAL
 push $162
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $96
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
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $126
 pop -12(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $102400
 pop -28(%ebp)
# WHILE
label_24:
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $25
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
 push $4
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -28(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $1
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $98
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 #INTEGER_LITERAL
 push $141
 #INTEGER_LITERAL
 push $78
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
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
# VARIABLE
 push %eax
 push -20(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
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
 push $162
# VARIABLE
 mov 20(%ebp), %eax
 push %eax
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
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 pop -16(%ebp)
 jmp label_24
label_25:
#### ASSIGNMENT NODE
# VARIABLE
 mov 20(%ebp), %eax
 push %eax
 pop -12(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 12(%eax)
 #INTEGER_LITERAL
 push $234
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
 #INTEGER_LITERAL
 push $167
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 4(%eax)
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 12(%eax)
 push -20(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
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
 push $90
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -32(%ebp)
# WHILE
label_27:
# VARIABLE
 mov -32(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $120
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
#### ASSIGNMENT NODE
# VARIABLE
 mov -32(%ebp), %eax
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
 pop -32(%ebp)
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_31
label_30:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $0
 #BOOLEAN_LITERAL
 push $0
# VARIABLE
 push %eax
 #BOOLEAN_LITERAL
 push $0
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 20(%eax)
 push -20(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
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
  jmp label_32
label_31:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
# VARIABLE
 push %eax
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 32(%eax)
 push -20(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f4
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
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 4(%eax)
 pop -16(%ebp)
label_32:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $912
 pop -36(%ebp)
# WHILE
label_33:
# VARIABLE
 mov -36(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $57
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
 #INTEGER_LITERAL
 push $202
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 12(%eax)
# VARIABLE
 push %eax
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
#### MEMBER ACCESS NODE
 mov -20(%ebp), %eax
 push 12(%eax)
 push -20(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
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
 jmp label_33
label_34:
 jmp label_27
label_28:
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
#### NEW NODE (1): allocate space
 push $36
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $78
 #INTEGER_LITERAL
 push $156
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #BOOLEAN_LITERAL
 push $1
 #INTEGER_LITERAL
 push $177
 #BOOLEAN_LITERAL
 push $0
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 #INTEGER_LITERAL
 push $217
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
# IF ELSE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
  pop %eax
  cmp $0, %eax
  je label_38
label_37:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $250
 mov -4(%ebp), %eax
 pop 28(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $128
 mov -4(%ebp), %eax
 pop 28(%eax)
  jmp label_39
label_38:
# PRINT
 #INTEGER_LITERAL
 push $248
 push $printstr
 call printf
# PRINT
 #INTEGER_LITERAL
 push $162
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $93
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 push $printstr
 call printf
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
  pop %eax
  cmp $0, %eax
  je label_41
label_40:
# PRINT
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 28(%eax)
 push $printstr
 call printf
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
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
  jmp label_42
label_41:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $230
 mov -4(%ebp), %eax
 pop 28(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $250
 mov -4(%ebp), %eax
 pop 20(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $30
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -8(%ebp)
# WHILE
label_43:
 #INTEGER_LITERAL
 push $1048546
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
  je label_44
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
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
# PRINT
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 12(%eax)
 push $printstr
 call printf
# IF ELSE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
  pop %eax
  cmp $0, %eax
  je label_47
label_46:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $0
 #INTEGER_LITERAL
 push $158
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
 push $223
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
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f4
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
 mov -4(%ebp), %eax
 push 0(%eax)
 #BOOLEAN_LITERAL
 push $0
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 #INTEGER_LITERAL
 push $173
 #BOOLEAN_LITERAL
 push $0
 #INTEGER_LITERAL
 push $139
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
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
# PRINT
 #INTEGER_LITERAL
 push $233
 #INTEGER_LITERAL
 push $113
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 push $printstr
 call printf
  jmp label_48
label_47:
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_50
label_49:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $7
 mov -4(%ebp), %eax
 pop 20(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $7
 pop -12(%ebp)
# WHILE
label_52:
 #INTEGER_LITERAL
 push $19
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
  je label_53
#### ASSIGNMENT NODE
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $2
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -12(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $241
 push $printstr
 call printf
 jmp label_52
label_53:
  jmp label_51
label_50:
# IF ELSE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
  pop %eax
  cmp $0, %eax
  je label_56
label_55:
# PRINT
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $9
 mov -4(%ebp), %eax
 pop 20(%eax)
  jmp label_57
label_56:
# IF ELSE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
  pop %eax
  cmp $0, %eax
  je label_59
label_58:
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_61
label_60:
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 12(%eax)
 mov -4(%ebp), %eax
 pop 20(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $22
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 12(%eax)
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 mov -4(%ebp), %eax
 pop 20(%eax)
# PRINT
 #INTEGER_LITERAL
 push $245
 push $printstr
 call printf
  jmp label_61
label_61:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $0
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
 #INTEGER_LITERAL
 push $174
 #BOOLEAN_LITERAL
 push $0
 #INTEGER_LITERAL
 push $155
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
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
 push $225
 #INTEGER_LITERAL
 push $18
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 mov -4(%ebp), %eax
 pop 20(%eax)
  jmp label_59
label_59:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $221
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #INTEGER_LITERAL
 push $158
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #BOOLEAN_LITERAL
 push $1
 #INTEGER_LITERAL
 push $164
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
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
label_57:
label_51:
label_48:
 jmp label_43
label_44:
label_42:
label_39:
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
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 20(%eax)
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
 push $77
 #INTEGER_LITERAL
 push $176
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
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
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f4
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
 push $194
 mov -4(%ebp), %eax
 pop 28(%eax)
# PRINT
 #INTEGER_LITERAL
 push $43
 push $printstr
 call printf
# PRINT
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
 push $printstr
 call printf
# PRINT
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
 push $printstr
 call printf
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $129
 mov -4(%ebp), %eax
 pop 20(%eax)
# PRINT
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
 push $printstr
 call printf
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $0
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 20(%eax)
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 #INTEGER_LITERAL
 push $113
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
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
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 20(%eax)
 #INTEGER_LITERAL
 push $36
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov -4(%ebp), %eax
 pop 20(%eax)
# IF ELSE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
  pop %eax
  cmp $0, %eax
  je label_63
label_62:
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
  jmp label_63
label_63:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $19
 mov -4(%ebp), %eax
 pop 28(%eax)
# IF ELSE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
  pop %eax
  cmp $0, %eax
  je label_65
label_64:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
 #INTEGER_LITERAL
 push $122
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 20(%eax)
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
 #BOOLEAN_LITERAL
 push $1
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 28(%eax)
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
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
 push $117
 mov -4(%ebp), %eax
 pop 28(%eax)
  jmp label_66
label_65:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $83
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop -16(%ebp)
# WHILE
label_67:
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $181
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
  je label_68
#### ASSIGNMENT NODE
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $7
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
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $162
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 20(%eax)
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 mov -4(%ebp), %eax
 pop 20(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $220
 #INTEGER_LITERAL
 push $174
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov -4(%ebp), %eax
 pop 20(%eax)
 jmp label_67
label_68:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $100
 pop -20(%ebp)
# WHILE
label_70:
 #INTEGER_LITERAL
 push $228
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
  je label_71
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
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $153
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 20(%eax)
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 mov -4(%ebp), %eax
 pop 20(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $26
 #INTEGER_LITERAL
 push $216
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 mov -4(%ebp), %eax
 pop 28(%eax)
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
 jmp label_70
label_71:
label_66:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
 #BOOLEAN_LITERAL
 push $0
 #INTEGER_LITERAL
 push $153
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 20(%eax)
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
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
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 28(%eax)
 mov -4(%ebp), %eax
 pop 28(%eax)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $1
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
 #INTEGER_LITERAL
 push $194
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
#### NEW NODE (1): allocate space
 push $16
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 28(%eax)
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
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f4
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
 push $85
 mov -4(%ebp), %eax
 pop 20(%eax)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $1
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
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
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $61
 #INTEGER_LITERAL
 push $151
 push -4(%ebp)
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
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 12(%eax)
 #BOOLEAN_LITERAL
 push $0
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 28(%eax)
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
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
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 mov -4(%ebp), %eax
 pop 20(%eax)
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
 #BOOLEAN_LITERAL
 push $1
 #INTEGER_LITERAL
 push $53
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 28(%eax)
 #NEGATION
 pop %eax
 neg %eax
 push %eax
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
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
 pop %ecx
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
# PRINT
 #INTEGER_LITERAL
 push $226
 push $printstr
 call printf
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $79
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 mov -4(%ebp), %eax
 pop 20(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 12(%eax)
 mov -4(%ebp), %eax
 pop 28(%eax)
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_73
label_72:
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 12(%eax)
 mov -4(%ebp), %eax
 pop 20(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $46
 mov -4(%ebp), %eax
 pop 20(%eax)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 28(%eax)
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
 push $125
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
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f4
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
  jmp label_74
label_73:
# IF ELSE
 #INTEGER_LITERAL
 push $134
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 20(%eax)
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_77
label_76:
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 28(%eax)
 mov -4(%ebp), %eax
 pop 28(%eax)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $0
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 28(%eax)
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 20(%eax)
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 mov -4(%ebp), %eax
 pop 20(%eax)
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
  jmp label_78
label_77:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $34
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 mov -4(%ebp), %eax
 pop 20(%eax)
label_78:
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
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $22
 #INTEGER_LITERAL
 push $75
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 push -4(%ebp)
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
 #INTEGER_LITERAL
 push $198
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
 push $118
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
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f4
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
label_74:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 28(%eax)
 #INTEGER_LITERAL
 push $103
 #INTEGER_LITERAL
 push $174
 #INTEGER_LITERAL
 push $222
 #INTEGER_LITERAL
 push $4
 push -4(%ebp)
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
 #INTEGER_LITERAL
 push $179
 #BOOLEAN_LITERAL
 push $1
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 push -4(%ebp)
#### METHOD CALL NODE (2): call instruction
 call class1_f1
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
