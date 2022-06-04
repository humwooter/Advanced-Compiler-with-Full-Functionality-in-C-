# PROGRAM NODE
 .data
printstr: .asciz "%d\n"

 .text
 .globl Main_main
#### METHOD NODE (1): method prologue
class0_f0: push %ebp
 mov %esp, %ebp
 sub $28, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
 #INTEGER_LITERAL
 push $125
 #INTEGER_LITERAL
 push $166
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -24(%ebp)
 #INTEGER_LITERAL
 push $213
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -20(%ebp)
 #INTEGER_LITERAL
 push $17
 #INTEGER_LITERAL
 push $32
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
 #INTEGER_LITERAL
 push $74
 #INTEGER_LITERAL
 push $91
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
 mov %ecx, -16(%ebp)
 #INTEGER_LITERAL
 push $203
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
# IF ELSE
# VARIABLE
   mov -16(%ebp), %eax
   push %eax
  pop %eax
  cmp $0, %eax
  je label_1
label_0:
# IF ELSE
# VARIABLE
   mov 8(%ebp), %eax
   mov 4(%eax), %eax
   push %eax
# VARIABLE
   mov 8(%ebp), %eax
   mov 12(%eax), %eax
   push %eax
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
  pop %eax
  cmp $0, %eax
  je label_4
label_3:
 #BOOLEAN_LITERAL
 push $0
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -16(%ebp)
  jmp label_5
label_4:
# VARIABLE
   mov 24(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
# IF ELSE
# VARIABLE
   mov 8(%ebp), %eax
   mov 0(%eax), %eax
   push %eax
 #INTEGER_LITERAL
 push $152
 #INTEGER_LITERAL
 push $211
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
  pop %eax
  cmp $0, %eax
  je label_7
label_6:
# VARIABLE
   mov 16(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $163
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
# VARIABLE
   mov 20(%ebp), %eax
   push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -20(%ebp)
# PRINT
# VARIABLE
   mov 8(%ebp), %eax
   mov 8(%eax), %eax
   push %eax
 push $printstr
 call printf
  jmp label_7
label_7:
label_5:
# VARIABLE
   mov 8(%ebp), %eax
   mov 8(%eax), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -16(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $207
# VARIABLE
   mov -8(%ebp), %eax
   push %eax
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 push $printstr
 call printf
  jmp label_2
label_1:
# VARIABLE
   mov 8(%ebp), %eax
   mov 0(%eax), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
 #INTEGER_LITERAL
 push $32256
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -28(%ebp)
# WHILE
label_8:
# VARIABLE
   mov -28(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $63
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
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -28(%ebp)
# VARIABLE
   mov -8(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $50
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
   mov 16(%eax), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
# VARIABLE
   mov -20(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 jmp label_8
label_9:
# VARIABLE
   mov -12(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $30
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
label_2:
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
class0_f1: push %ebp
 mov %esp, %ebp
 sub $8, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
 #BOOLEAN_LITERAL
 push $1
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
 #INTEGER_LITERAL
 push $28
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 #INTEGER_LITERAL
 push $141
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $77
 push $printstr
 call printf
# VARIABLE
   mov 16(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 #INTEGER_LITERAL
 push $233
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
#### RETURN_STATEMENT
 #INTEGER_LITERAL
 push $72
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
 sub $20, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
 #INTEGER_LITERAL
 push $162
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -20(%ebp)
 #INTEGER_LITERAL
 push $3
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #INTEGER_LITERAL
 push $214
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
 #INTEGER_LITERAL
 push $217
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 #BOOLEAN_LITERAL
 push $1
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -16(%ebp)
 #INTEGER_LITERAL
 push $190
 #INTEGER_LITERAL
 push $19
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
 xor %eax, %eax
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
 sub $8, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
 #INTEGER_LITERAL
 push $201
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 16(%edx), %ebx
 mov %ecx, 16(%ebx)
 #INTEGER_LITERAL
 push $203
 #INTEGER_LITERAL
 push $90
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 4(%edx), %ebx
 mov %ecx, 4(%ebx)
 #INTEGER_LITERAL
 push $152
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 0(%edx), %ebx
 mov %ecx, 0(%ebx)
 #BOOLEAN_LITERAL
 push $1
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 12(%edx), %ebx
 mov %ecx, 12(%ebx)
 #INTEGER_LITERAL
 push $208
 #INTEGER_LITERAL
 push $79
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 8(%edx), %ebx
 mov %ecx, 8(%ebx)
 #INTEGER_LITERAL
 push $248
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
 #INTEGER_LITERAL
 push $164
 #INTEGER_LITERAL
 push $105
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
# IF ELSE
 #INTEGER_LITERAL
 push $151
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
  pop %eax
  cmp $0, %eax
  je label_15
label_14:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
  jmp label_16
label_15:
# PRINT
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
 push $printstr
 call printf
# VARIABLE
   mov 16(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
label_16:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
# PRINT
# VARIABLE
   mov 8(%ebp), %eax
   mov 4(%eax), %eax
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
class1_f3: push %ebp
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
 mov 16(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
 #INTEGER_LITERAL
 push $41
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
# WHILE
label_17:
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $199
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
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
 jmp label_17
label_18:
 #INTEGER_LITERAL
 push $176128
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
# WHILE
label_19:
# VARIABLE
   mov -8(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $43
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
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $98
 push $printstr
 call printf
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov 16(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
 jmp label_19
label_20:
#### RETURN_STATEMENT
 #INTEGER_LITERAL
 push $48
# VARIABLE
   mov 8(%ebp), %eax
   mov 24(%eax), %eax
   push %eax
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class1_f4: push %ebp
 mov %esp, %ebp
 sub $8, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
 #INTEGER_LITERAL
 push $136
 #INTEGER_LITERAL
 push $135
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
 #BOOLEAN_LITERAL
 push $1
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov 12(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
# VARIABLE
   mov 20(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
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
class1_f5: push %ebp
 mov %esp, %ebp
 sub $12, %esp
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
 mov %ecx, -4(%ebp)
# VARIABLE
   mov 8(%ebp), %eax
   mov 12(%eax), %eax
   push %eax
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %ebx
 mov -4(%ebx), %eax
 mov %ecx, %eax
# IF ELSE
 mov -4(%ebp), %ebx
 push 4(%eax)
  pop %eax
  cmp $0, %eax
  je label_23
label_22:
# IF ELSE
 mov -4(%ebp), %ebx
 push 12(%eax)
  pop %eax
  cmp $0, %eax
  je label_26
label_25:
 #INTEGER_LITERAL
 push $63
 #INTEGER_LITERAL
 push $70
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %ebx
 mov -4(%ebx), %eax
 mov %ecx, %eax
 #INTEGER_LITERAL
 push $25
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
# WHILE
label_27:
 #INTEGER_LITERAL
 push $33
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
  je label_28
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
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
 #INTEGER_LITERAL
 push $40
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
# WHILE
label_30:
 #INTEGER_LITERAL
 push $296
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
  je label_31
# VARIABLE
   mov -12(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $2
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
# IF ELSE
# VARIABLE
   mov 8(%ebp), %eax
   mov 4(%eax), %eax
   push %eax
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
  pop %eax
  cmp $0, %eax
  je label_34
label_33:
# PRINT
 mov -4(%ebp), %ebx
 push 4(%eax)
 push $printstr
 call printf
# PRINT
# VARIABLE
   mov 8(%ebp), %eax
   mov 12(%eax), %eax
   push %eax
 push $printstr
 call printf
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov -4(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
  jmp label_35
label_34:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $1
 #BOOLEAN_LITERAL
 push $1
 #INTEGER_LITERAL
 push $203
# VARIABLE
   mov 20(%ebp), %eax
   push %eax
 mov -4(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f1
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
# VARIABLE
   mov 8(%ebp), %eax
   mov 16(%eax), %eax
   push %eax
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %ebx
 mov -4(%ebx), %eax
 mov %ecx, %eax
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov -4(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
# IF ELSE
# VARIABLE
   mov 8(%ebp), %eax
   mov 20(%eax), %eax
   push %eax
  pop %eax
  cmp $0, %eax
  je label_38
label_37:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov -4(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
 mov -4(%ebp), %ebx
 push 8(%eax)
 pop %ecx
#### ASSIGNMENT NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %ebx
 mov -4(%ebx), %eax
 mov %ecx, %eax
  jmp label_38
label_38:
label_35:
 mov -4(%ebp), %ebx
 push 0(%eax)
 pop %ecx
#### ASSIGNMENT NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %ebx
 mov -4(%ebx), %eax
 mov %ecx, %eax
 jmp label_30
label_31:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov -4(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
 jmp label_27
label_28:
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_40
label_39:
 #BOOLEAN_LITERAL
 push $0
 pop %ecx
#### ASSIGNMENT NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %ebx
 mov -4(%ebx), %eax
 mov %ecx, %eax
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_42
label_41:
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
# IF ELSE
# VARIABLE
   mov 8(%ebp), %eax
   mov 4(%eax), %eax
   push %eax
  pop %eax
  cmp $0, %eax
  je label_44
label_43:
# PRINT
# VARIABLE
   mov 8(%ebp), %eax
   mov 20(%eax), %eax
   push %eax
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 push $printstr
 call printf
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_46
label_45:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov -4(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov -4(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
  jmp label_47
label_46:
# VARIABLE
   mov 20(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $149
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %ebx
 mov -4(%ebx), %eax
 mov %ecx, %eax
# PRINT
# VARIABLE
   mov 8(%ebp), %eax
   mov 24(%eax), %eax
   push %eax
 push $printstr
 call printf
label_47:
  jmp label_44
label_44:
 #INTEGER_LITERAL
 push $246
 mov -4(%ebp), %ebx
 push 0(%eax)
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %ebx
 mov -4(%ebx), %eax
 mov %ecx, %eax
  jmp label_42
label_42:
 #BOOLEAN_LITERAL
 push $1
 pop %ecx
#### ASSIGNMENT NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %ebx
 mov -4(%ebx), %eax
 mov %ecx, %eax
  jmp label_40
label_40:
  jmp label_26
label_26:
  jmp label_24
label_23:
 #BOOLEAN_LITERAL
 push $0
 pop %ecx
#### ASSIGNMENT NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %ebx
 mov -4(%ebx), %eax
 mov %ecx, %eax
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov -4(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
label_24:
 #INTEGER_LITERAL
 push $126
 mov -4(%ebp), %ebx
 push 0(%eax)
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $239
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %ebx
 mov -4(%ebx), %eax
 mov %ecx, %eax
#### RETURN_STATEMENT
# VARIABLE
   mov 8(%ebp), %eax
   mov 4(%eax), %eax
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
 sub $0, %esp
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
 #INTEGER_LITERAL
 push $119
 #INTEGER_LITERAL
 push $114
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_class0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
 #BOOLEAN_LITERAL
 push $1
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 20(%edx), %ebx
 mov %ecx, 20(%ebx)
 #INTEGER_LITERAL
 push $234
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 24(%edx), %ebx
 mov %ecx, 24(%ebx)
# PRINT
 #INTEGER_LITERAL
 push $48
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
class2_f3: push %ebp
 mov %esp, %ebp
 sub $24, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
 #INTEGER_LITERAL
 push $148
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -20(%ebp)
 #INTEGER_LITERAL
 push $10
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
 #INTEGER_LITERAL
 push $101
 #INTEGER_LITERAL
 push $23
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
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
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 #INTEGER_LITERAL
 push $244
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -16(%ebp)
 #INTEGER_LITERAL
 push $33
 #INTEGER_LITERAL
 push $72
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
# IF ELSE
 mov 20(%ebp), %ebx
 push 4(%eax)
  pop %eax
  cmp $0, %eax
  je label_49
label_48:
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_51
label_50:
 #INTEGER_LITERAL
 push $13
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -20(%ebp)
 #INTEGER_LITERAL
 push $116
 #INTEGER_LITERAL
 push $152
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
 #INTEGER_LITERAL
 push $217
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -16(%ebp)
  jmp label_52
label_51:
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
 #INTEGER_LITERAL
 push $134
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov 20(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
label_52:
  jmp label_49
label_49:
 #INTEGER_LITERAL
 push $21
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -24(%ebp)
# WHILE
label_53:
 #INTEGER_LITERAL
 push $59070
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
# VARIABLE
   mov -24(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $3
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -24(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov 20(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
 #INTEGER_LITERAL
 push $86
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov 20(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
 jmp label_53
label_54:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov 20(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
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
class2_f4: push %ebp
 mov %esp, %ebp
 sub $16, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
 #INTEGER_LITERAL
 push $208
 #INTEGER_LITERAL
 push $31
 #INTEGER_LITERAL
 push $150
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
 mov %ecx, -8(%ebp)
#### NEW NODE (1): allocate space
 push $28
 call malloc
 add $4, %esp
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 #INTEGER_LITERAL
 push $103
 #INTEGER_LITERAL
 push $151
 #INTEGER_LITERAL
 push $37
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 #INTEGER_LITERAL
 push $206
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $213
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
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -16(%ebp)
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
 #BOOLEAN_LITERAL
 push $0
 pop %ecx
#### ASSIGNMENT NODE
 mov -12(%ebp), %eax
 mov 8(%eax), %ebx
 mov -12(%ebx), %eax
 mov %ecx, %eax
#### RETURN_STATEMENT
 #INTEGER_LITERAL
 push $224
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class2_f5: push %ebp
 mov %esp, %ebp
 sub $16, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
 #INTEGER_LITERAL
 push $155
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
 #BOOLEAN_LITERAL
 push $1
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
#### NEW NODE (1): allocate space
 push $28
 call malloc
 add $4, %esp
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
 #INTEGER_LITERAL
 push $73400320
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -16(%ebp)
# WHILE
label_55:
# VARIABLE
   mov -16(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $70
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_56
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
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -16(%ebp)
# PRINT
# VARIABLE
   mov 8(%ebp), %eax
   mov 16(%eax), %eax
   push %eax
 push $printstr
 call printf
# PRINT
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov -12(%ebp), %ebx
 push 24(%eax)
 #INTEGER_LITERAL
 push $111
 #INTEGER_LITERAL
 push $77
# VARIABLE
   mov 8(%ebp), %eax
   mov 8(%eax), %eax
   push %eax
 mov -12(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f0
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
 push $printstr
 call printf
 jmp label_55
label_56:
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class2_f6: push %ebp
 mov %esp, %ebp
 sub $24, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
 #INTEGER_LITERAL
 push $242
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -20(%ebp)
 #INTEGER_LITERAL
 push $79
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
 #BOOLEAN_LITERAL
 push $0
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 #INTEGER_LITERAL
 push $232
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -16(%ebp)
 #INTEGER_LITERAL
 push $82
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
   mov 8(%ebp), %eax
   mov 24(%eax), %eax
   push %eax
#### NEW NODE (1): allocate space
 push $28
 call malloc
 add $4, %esp
 push %eax
 #INTEGER_LITERAL
 push $87
 #NEGATION
 pop %eax
 neg %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class2_f5
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
 #INTEGER_LITERAL
 push $117
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
 #INTEGER_LITERAL
 push $50
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -24(%ebp)
# WHILE
label_58:
 #INTEGER_LITERAL
 push $1048626
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
  je label_59
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
# VARIABLE
   mov 8(%ebp), %eax
   mov 32(%eax), %eax
   push %eax
 #INTEGER_LITERAL
 push $56
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
# VARIABLE
   mov 8(%ebp), %eax
   mov 32(%eax), %eax
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
 push $1
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -16(%ebp)
 jmp label_58
label_59:
#### RETURN_STATEMENT
#### NEW NODE (1): allocate space
 push $28
 call malloc
 add $4, %esp
 push %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class2_f7: push %ebp
 mov %esp, %ebp
 sub $12, %esp
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
 push $128
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 #INTEGER_LITERAL
 push $170
 #INTEGER_LITERAL
 push $166
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
 #BOOLEAN_LITERAL
 push $1
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
# PRINT
 mov -8(%ebp), %ebx
 push 16(%eax)
 mov -8(%ebp), %ebx
 push 0(%eax)
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 mov -8(%ebp), %ebx
 push 0(%eax)
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 push $printstr
 call printf
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
class2_class2: push %ebp
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
 #BOOLEAN_LITERAL
 push $0
 #INTEGER_LITERAL
 push $176
 #INTEGER_LITERAL
 push $239
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class2_class0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 20(%edx), %ebx
 mov %ecx, 20(%ebx)
 #INTEGER_LITERAL
 push $224
 #INTEGER_LITERAL
 push $215
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $55
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $77
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 28(%edx), %ebx
 mov %ecx, 28(%ebx)
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 24(%edx), %ebx
 mov %ecx, 24(%ebx)
#### NEW NODE (1): allocate space
 push $20
 call malloc
 add $4, %esp
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 36(%edx), %ebx
 mov %ecx, 36(%ebx)
 #INTEGER_LITERAL
 push $203
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 32(%edx), %ebx
 mov %ecx, 32(%ebx)
# PRINT
 #INTEGER_LITERAL
 push $142
 push $printstr
 call printf
 #INTEGER_LITERAL
 push $40
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
# WHILE
label_61:
# VARIABLE
   mov -4(%ebp), %eax
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
  je label_62
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $5
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov 8(%ebp), %ebx
 mov 20(%ebx), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class0_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
# PRINT
 #INTEGER_LITERAL
 push $27
 mov 8(%ebp), %edx
 mov 20(%edx), %ebx
 push 16(%eax)
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 push $printstr
 call printf
 jmp label_61
label_62:
# IF ELSE
# VARIABLE
   mov 8(%ebp), %eax
   mov 4(%eax), %eax
   push %eax
  pop %eax
  cmp $0, %eax
  je label_66
label_65:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
   mov 8(%ebp), %eax
   mov 36(%eax), %eax
   push %eax
#### NEW NODE (1): allocate space
 push $28
 call malloc
 add $4, %esp
 push %eax
# VARIABLE
   mov 8(%ebp), %eax
   mov 32(%eax), %eax
   push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class2_f5
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
# PRINT
# VARIABLE
   mov 8(%ebp), %eax
   mov 32(%eax), %eax
   push %eax
 push $printstr
 call printf
  jmp label_66
label_66:
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class3_f3: push %ebp
 mov %esp, %ebp
 sub $16, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
 #INTEGER_LITERAL
 push $26
 #INTEGER_LITERAL
 push $237
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
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
# PRINT
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $249
 #INTEGER_LITERAL
 push $233
# VARIABLE
   mov 8(%ebp), %eax
   mov 28(%eax), %eax
   push %eax
 #BOOLEAN_LITERAL
 push $1
 mov 8(%ebp), %ebx
 mov 24(%ebx), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f0
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
 push $printstr
 call printf
# PRINT
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
 mov 8(%ebp), %edx
 mov 24(%edx), %ebx
 push 24(%eax)
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 push $printstr
 call printf
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov 8(%ebp), %ebx
 mov 24(%ebx), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
 #INTEGER_LITERAL
 push $97
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
# WHILE
label_67:
 #INTEGER_LITERAL
 push $55
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
  je label_68
# VARIABLE
   mov -8(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $8
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
 #INTEGER_LITERAL
 push $544563
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
# WHILE
label_70:
# VARIABLE
   mov -12(%ebp), %eax
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
  je label_71
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
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
# VARIABLE
   mov 12(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 jmp label_70
label_71:
 #INTEGER_LITERAL
 push $61
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -16(%ebp)
# WHILE
label_73:
 #INTEGER_LITERAL
 push $63
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
  je label_74
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
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -16(%ebp)
# PRINT
 #BOOLEAN_LITERAL
 push $1
 mov 8(%ebp), %edx
 mov 24(%edx), %ebx
 push 20(%eax)
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
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
# IF ELSE
 mov 8(%ebp), %edx
 mov 24(%edx), %ebx
 push 4(%eax)
  pop %eax
  cmp $0, %eax
  je label_77
label_76:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov 8(%ebp), %ebx
 mov 24(%ebx), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
# IF ELSE
 mov 8(%ebp), %edx
 mov 24(%edx), %ebx
 push 8(%eax)
  pop %eax
  cmp $0, %eax
  je label_79
label_78:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov 8(%ebp), %ebx
 mov 24(%ebx), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov 8(%ebp), %ebx
 mov 24(%ebx), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
  jmp label_80
label_79:
 mov 8(%ebp), %edx
 mov 24(%edx), %ebx
 push 16(%eax)
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 #INTEGER_LITERAL
 push $64
 mov 8(%ebp), %edx
 mov 24(%edx), %ebx
 push 16(%eax)
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
label_80:
# PRINT
 mov 8(%ebp), %edx
 mov 24(%edx), %ebx
 push 8(%eax)
 push $printstr
 call printf
  jmp label_77
label_77:
 jmp label_73
label_74:
 jmp label_67
label_68:
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class3_f4: push %ebp
 mov %esp, %ebp
 sub $4, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### NEW NODE (1): allocate space
 push $40
 call malloc
 add $4, %esp
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $5
 push $printstr
 call printf
 #INTEGER_LITERAL
 push $250
 pop %ecx
#### ASSIGNMENT NODE
 mov -4(%ebp), %eax
 mov 8(%eax), %ebx
 mov -4(%ebx), %eax
 mov %ecx, %eax
# PRINT
 mov -4(%ebp), %ebx
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
#### METHOD NODE (1): method prologue
class3_f5: push %ebp
 mov %esp, %ebp
 sub $20, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
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
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -20(%ebp)
 #INTEGER_LITERAL
 push $223
 #INTEGER_LITERAL
 push $165
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
 #INTEGER_LITERAL
 push $43
 #INTEGER_LITERAL
 push $246
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 #INTEGER_LITERAL
 push $189
 #INTEGER_LITERAL
 push $176
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $210
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -16(%ebp)
 #BOOLEAN_LITERAL
 push $1
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov 8(%ebp), %edx
 mov 24(%edx), %ebx
 push 0(%eax)
 #NEGATION
 pop %eax
 neg %eax
 push %eax
#### NEW NODE (1): allocate space
 push $40
 call malloc
 add $4, %esp
 push %eax
 #INTEGER_LITERAL
 push $104
 #BOOLEAN_LITERAL
 push $1
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class3_f4
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
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class3_f6: push %ebp
 mov %esp, %ebp
 sub $8, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### NEW NODE (1): allocate space
 push $28
 call malloc
 add $4, %esp
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
 #INTEGER_LITERAL
 push $186
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
 #INTEGER_LITERAL
 push $26
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov -8(%ebp), %ebx
 push 24(%eax)
#### NEW NODE (1): allocate space
 push $40
 call malloc
 add $4, %esp
 push %eax
 #INTEGER_LITERAL
 push $90
 #BOOLEAN_LITERAL
 push $1
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class3_f4
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
# PRINT
 #INTEGER_LITERAL
 push $123
 push $printstr
 call printf
# PRINT
 #BOOLEAN_LITERAL
 push $1
 push $printstr
 call printf
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
class3_f7: push %ebp
 mov %esp, %ebp
 sub $20, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
 #BOOLEAN_LITERAL
 push $1
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -20(%ebp)
 #INTEGER_LITERAL
 push $22
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
 #INTEGER_LITERAL
 push $151
 #INTEGER_LITERAL
 push $161
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $183
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 #INTEGER_LITERAL
 push $254
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -16(%ebp)
#### NEW NODE (1): allocate space
 push $28
 call malloc
 add $4, %esp
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
 #BOOLEAN_LITERAL
 push $1
 pop %ecx
#### ASSIGNMENT NODE
 mov -12(%ebp), %eax
 mov 8(%eax), %ebx
 mov -12(%ebx), %eax
 mov %ecx, %eax
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov -12(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_82
label_81:
# PRINT
# VARIABLE
   mov 8(%ebp), %eax
   mov 12(%eax), %eax
   push %eax
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 push $printstr
 call printf
# PRINT
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov -12(%ebp), %ebx
 push 4(%eax)
# VARIABLE
   mov 24(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $156
 mov -12(%ebp), %ebx
 push 16(%eax)
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
 #INTEGER_LITERAL
 push $215
 mov -12(%ebp), %ebx
 push 16(%eax)
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
# VARIABLE
   mov -16(%ebp), %eax
   push %eax
 mov -12(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f1
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
# VARIABLE
   mov 8(%ebp), %eax
   mov 28(%eax), %eax
   push %eax
 #INTEGER_LITERAL
 push $28
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 #BOOLEAN_LITERAL
 push $1
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #BOOLEAN_LITERAL
 push $0
# VARIABLE
   mov 20(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $23
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #INTEGER_LITERAL
 push $189
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
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
# VARIABLE
   mov -8(%ebp), %eax
   push %eax
 mov -12(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f1
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
 push $5
# VARIABLE
   mov 8(%ebp), %eax
   mov 28(%eax), %eax
   push %eax
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 mov -12(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class1_f1
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
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class3_f5
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
  jmp label_83
label_82:
 mov -12(%ebp), %ebx
 push 0(%eax)
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
label_83:
 #INTEGER_LITERAL
 push $218
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -16(%ebp)
#### RETURN_STATEMENT
# VARIABLE
   mov 8(%ebp), %eax
   mov 28(%eax), %eax
   push %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
class3_class3: push %ebp
 mov %esp, %ebp
 sub $28, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $198
 #INTEGER_LITERAL
 push $136
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
 #INTEGER_LITERAL
 push $93
 #INTEGER_LITERAL
 push $89
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class3_class0
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %ecx
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
 #INTEGER_LITERAL
 push $140
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 20(%edx), %ebx
 mov %ecx, 20(%ebx)
 #INTEGER_LITERAL
 push $186
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 28(%edx), %ebx
 mov %ecx, 28(%ebx)
#### NEW NODE (1): allocate space
 push $28
 call malloc
 add $4, %esp
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov 8(%ebp), %edx
 mov 24(%edx), %ebx
 mov %ecx, 24(%ebx)
#### NEW NODE (1): allocate space
 push $40
 call malloc
 add $4, %esp
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -24(%ebp)
 #INTEGER_LITERAL
 push $117
 #INTEGER_LITERAL
 push $134
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -20(%ebp)
 #INTEGER_LITERAL
 push $12
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
 #INTEGER_LITERAL
 push $199
 #INTEGER_LITERAL
 push $3
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
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -16(%ebp)
 #BOOLEAN_LITERAL
 push $0
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
 #INTEGER_LITERAL
 push $218
# VARIABLE
   mov 8(%ebp), %eax
   mov 28(%eax), %eax
   push %eax
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 mov -24(%ebp), %ebx
 push 28(%eax)
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov -24(%ebp), %eax
 mov 8(%eax), %ebx
 mov -24(%ebx), %eax
 mov %ecx, %eax
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov -24(%ebp), %eax
 push %eax
#### METHOD CALL NODE (2): call instruction
 call class2_f2
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
 #INTEGER_LITERAL
 push $47
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -28(%ebp)
# WHILE
label_86:
# VARIABLE
   mov -28(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $43
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
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -28(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 mov -24(%ebp), %ebx
 push 16(%eax)
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call class3_f3
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %eax
 pop %ecx
 pop %edx
 push %ebx
 jmp label_86
label_87:
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
 sub $28, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
 #BOOLEAN_LITERAL
 push $1
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
# VARIABLE
   mov -4(%ebp), %eax
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
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
 #BOOLEAN_LITERAL
 push $1
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_89
label_88:
# PRINT
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
 push $printstr
 call printf
 #BOOLEAN_LITERAL
 push $0
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
  jmp label_90
label_89:
 #BOOLEAN_LITERAL
 push $0
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
label_90:
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $105
 push $printstr
 call printf
# PRINT
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
 push $printstr
 call printf
 #BOOLEAN_LITERAL
 push $0
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 #BOOLEAN_LITERAL
 push $1
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $140
 #INTEGER_LITERAL
 push $183
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $203
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 push $printstr
 call printf
 #INTEGER_LITERAL
 push $70
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
# WHILE
label_91:
# VARIABLE
   mov -8(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $70
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
  je label_92
# VARIABLE
   mov -8(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $0
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -8(%ebp)
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 jmp label_91
label_92:
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_95
label_94:
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
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 #BOOLEAN_LITERAL
 push $0
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
  jmp label_95
label_95:
# IF ELSE
 #BOOLEAN_LITERAL
 push $1
  pop %eax
  cmp $0, %eax
  je label_97
label_96:
# IF ELSE
 #INTEGER_LITERAL
 push $204
 #INTEGER_LITERAL
 push $41
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
  pop %eax
  cmp $0, %eax
  je label_100
label_99:
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
  jmp label_101
label_100:
 #BOOLEAN_LITERAL
 push $0
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
 #INTEGER_LITERAL
 push $12
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
# WHILE
label_102:
 #INTEGER_LITERAL
 push $30
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
  je label_103
# VARIABLE
   mov -12(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $7
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -12(%ebp)
# PRINT
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
 push $printstr
 call printf
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
# IF ELSE
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
  pop %eax
  cmp $0, %eax
  je label_106
label_105:
 #INTEGER_LITERAL
 push $72
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -16(%ebp)
# WHILE
label_108:
 #INTEGER_LITERAL
 push $135
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
  je label_109
# VARIABLE
   mov -16(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $9
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -16(%ebp)
# PRINT
 #INTEGER_LITERAL
 push $230
 #INTEGER_LITERAL
 push $143
 #INTEGER_LITERAL
 push $94
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
 jmp label_108
label_109:
  jmp label_107
label_106:
# IF ELSE
 #INTEGER_LITERAL
 push $207
 #INTEGER_LITERAL
 push $31
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_111
label_110:
# PRINT
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
 push $printstr
 call printf
 #INTEGER_LITERAL
 push $2125764
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -20(%ebp)
# WHILE
label_113:
# VARIABLE
   mov -20(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $36
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_114
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
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -20(%ebp)
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
# IF ELSE
 #INTEGER_LITERAL
 push $168
 #INTEGER_LITERAL
 push $77
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
label_115:
# PRINT
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
 push $printstr
 call printf
  jmp label_117
label_116:
# PRINT
 #INTEGER_LITERAL
 push $166
 push $printstr
 call printf
label_117:
 jmp label_113
label_114:
  jmp label_112
label_111:
# IF ELSE
 #BOOLEAN_LITERAL
 push $0
  pop %eax
  cmp $0, %eax
  je label_119
label_118:
 #BOOLEAN_LITERAL
 push $0
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
  jmp label_120
label_119:
# IF ELSE
 #INTEGER_LITERAL
 push $75
 #INTEGER_LITERAL
 push $234
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_122
label_121:
 #INTEGER_LITERAL
 push $233
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #INTEGER_LITERAL
 push $236
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 #INTEGER_LITERAL
 push $36864
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -24(%ebp)
# WHILE
label_123:
# VARIABLE
   mov -24(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $36
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_124
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
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -24(%ebp)
 #INTEGER_LITERAL
 push $140
 #INTEGER_LITERAL
 push $231
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 #BOOLEAN_LITERAL
 push $0
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
 #INTEGER_LITERAL
 push $254
 push $printstr
 call printf
 jmp label_123
label_124:
 #INTEGER_LITERAL
 push $105
 #INTEGER_LITERAL
 push $7
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
  jmp label_122
label_122:
label_120:
label_112:
 #INTEGER_LITERAL
 push $62
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -28(%ebp)
# WHILE
label_127:
# VARIABLE
   mov -28(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $148
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
  je label_128
# VARIABLE
   mov -28(%ebp), %eax
   push %eax
 #INTEGER_LITERAL
 push $10
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -28(%ebp)
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
 jmp label_127
label_128:
label_107:
 jmp label_102
label_103:
label_101:
 #BOOLEAN_LITERAL
 push $1
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
  jmp label_98
label_97:
 #BOOLEAN_LITERAL
 push $1
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
label_98:
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
# PRINT
 #BOOLEAN_LITERAL
 push $0
 push $printstr
 call printf
# PRINT
 #INTEGER_LITERAL
 push $190
 #INTEGER_LITERAL
 push $207
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 push $printstr
 call printf
# VARIABLE
   mov -4(%ebp), %eax
   push %eax
 pop %ecx
#### ASSIGNMENT NODE
 mov %ecx, -4(%ebp)
 xor %eax, %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
