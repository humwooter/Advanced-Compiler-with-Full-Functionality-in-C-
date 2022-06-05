# PROGRAM NODE
 .data
printstr: .asciz "%d\n"

 .text
 .globl Main_main
#### METHOD NODE (1): method prologue
Float_Float:
 push %ebp
 mov %esp, %ebp
 sub $0, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### ASSIGNMENT NODE
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
 mov 8(%ebp), %eax
 pop 0(%eax)
#### ASSIGNMENT NODE
# VARIABLE
 mov 16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $127
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 mov 8(%ebp), %eax
 pop 4(%eax)
#### ASSIGNMENT NODE
# VARIABLE
 mov 20(%ebp), %eax
 push %eax
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
Float_printval:
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
 mov 0(%ebx), %eax
 push %eax
 push $printstr
 call printf
# PRINT
# VARIABLE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push %eax
 #INTEGER_LITERAL
 push $127
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
Float_copy:
 push %ebp
 mov %esp, %ebp
 sub $0, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### RETURN_STATEMENT
#### NEW NODE (1): allocate space
 push $12
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov 8(%ebp), %ebx
 mov 8(%ebx), %eax
 push %eax
# VARIABLE
 mov 8(%ebp), %ebx
 mov 4(%ebx), %eax
 push %eax
 #INTEGER_LITERAL
 push $127
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
# VARIABLE
 mov 8(%ebp), %ebx
 mov 0(%ebx), %eax
 push %eax
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
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
FloatOps_add:
 push %ebp
 mov %esp, %ebp
 sub $20, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
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
 #INTEGER_LITERAL
 push $0
 #INTEGER_LITERAL
 push $0
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -12(%ebp)
# IF ELSE
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 4(%eax)
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 4(%eax)
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
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 push 16(%ebp)
#### METHOD CALL NODE (2): call instruction
 call Float_copy
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -4(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 push 12(%ebp)
#### METHOD CALL NODE (2): call instruction
 call Float_copy
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -8(%ebp)
  jmp label_3
label_2:
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 push 12(%ebp)
#### METHOD CALL NODE (2): call instruction
 call Float_copy
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -4(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 push 16(%ebp)
#### METHOD CALL NODE (2): call instruction
 call Float_copy
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -8(%ebp)
label_3:
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 4(%eax)
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -16(%ebp)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $8388608
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 mov -4(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $8388608
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 8(%eax)
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 mov -8(%ebp), %eax
 pop 8(%eax)
# IF ELSE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 0(%eax)
  pop %eax
  cmp $0, %eax
  je label_5
label_4:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $1
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
 mov -4(%ebp), %eax
 pop 8(%eax)
  jmp label_5
label_5:
# IF ELSE
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 0(%eax)
  pop %eax
  cmp $0, %eax
  je label_7
label_6:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $1
 #NEGATION
 pop %eax
 neg %eax
 push %eax
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 8(%eax)
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 mov -8(%ebp), %eax
 pop 8(%eax)
  jmp label_7
label_7:
#### ASSIGNMENT NODE
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 pop -20(%ebp)
# WHILE
label_8:
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $0
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
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $1
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -20(%ebp)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $2
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 mov -8(%ebp), %eax
 pop 8(%eax)
 jmp label_8
label_9:
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
#### MEMBER ACCESS NODE
 mov -8(%ebp), %eax
 push 8(%eax)
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 mov -12(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
 mov -12(%ebp), %eax
 pop 4(%eax)
# IF ELSE
 #INTEGER_LITERAL
 push $0
#### MEMBER ACCESS NODE
 mov -12(%ebp), %eax
 push 8(%eax)
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
label_12:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $1
 #NEGATION
 pop %eax
 neg %eax
 push %eax
#### MEMBER ACCESS NODE
 mov -12(%ebp), %eax
 push 8(%eax)
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 mov -12(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 mov -12(%ebp), %eax
 pop 0(%eax)
  jmp label_14
label_13:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 mov -12(%ebp), %eax
 pop 0(%eax)
label_14:
# IF ELSE
#### MEMBER ACCESS NODE
 mov -12(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $0
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
  pop %eax
  cmp $0, %eax
  je label_16
label_15:
# WHILE
label_18:
 #INTEGER_LITERAL
 push $8388608
#### MEMBER ACCESS NODE
 mov -12(%ebp), %eax
 push 8(%eax)
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_19
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -12(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $2
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 mov -12(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -12(%ebp), %eax
 push 4(%eax)
 #INTEGER_LITERAL
 push $1
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov -12(%ebp), %eax
 pop 4(%eax)
 jmp label_18
label_19:
# WHILE
label_21:
#### MEMBER ACCESS NODE
 mov -12(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $16777216
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_22
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -12(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $2
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 mov -12(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -12(%ebp), %eax
 push 4(%eax)
 #INTEGER_LITERAL
 push $1
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 mov -12(%ebp), %eax
 pop 4(%eax)
 jmp label_21
label_22:
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -12(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $8388608
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov -12(%ebp), %eax
 pop 8(%eax)
  jmp label_17
label_16:
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $0
 mov -12(%ebp), %eax
 pop 4(%eax)
label_17:
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
FloatOps_sub:
 push %ebp
 mov %esp, %ebp
 sub $0, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### RETURN_STATEMENT
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### NEW NODE (1): allocate space
 push $12
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 8(%eax)
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 4(%eax)
 #INTEGER_LITERAL
 push $127
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 0(%eax)
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_add
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
FloatOps_mult:
 push %ebp
 mov %esp, %ebp
 sub $32, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
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
 #INTEGER_LITERAL
 push $0
 #INTEGER_LITERAL
 push $0
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -4(%ebp)
# IF ELSE
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 4(%eax)
 #INTEGER_LITERAL
 push $0
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $0
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
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 4(%eax)
 #INTEGER_LITERAL
 push $0
 #EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 sete %al
 movzx %al, %eax
 push %eax
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $0
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
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
  pop %eax
  cmp $0, %eax
  je label_24
label_23:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 mov -4(%ebp), %eax
 pop 0(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $0
 mov -4(%ebp), %eax
 pop 4(%eax)
#### ASSIGNMENT NODE
 #INTEGER_LITERAL
 push $0
 mov -4(%ebp), %eax
 pop 8(%eax)
  jmp label_25
label_24:
# IF ELSE
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 0(%eax)
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 0(%eax)
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 0(%eax)
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 0(%eax)
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
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
  pop %eax
  cmp $0, %eax
  je label_27
label_26:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 mov -4(%ebp), %eax
 pop 0(%eax)
  jmp label_28
label_27:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 mov -4(%ebp), %eax
 pop 0(%eax)
label_28:
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 4(%eax)
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 4(%eax)
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $127
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov -4(%ebp), %eax
 pop 4(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $8388608
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 mov 12(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $8388608
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 mov 16(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $4096
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -12(%ebp)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 8(%eax)
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4096
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
 pop -24(%ebp)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $4096
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 pop -16(%ebp)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 8(%eax)
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4096
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
 pop -28(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
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
 mov -28(%ebp), %eax
 push %eax
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 pop -20(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4096
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
 pop -8(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $4096
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
 pop -20(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 mov -4(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
 #INTEGER_LITERAL
 push $1
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 mov -4(%ebp), %eax
 pop 4(%eax)
# IF ELSE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $0
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
  pop %eax
  cmp $0, %eax
  je label_30
label_29:
# WHILE
label_31:
 #INTEGER_LITERAL
 push $8388608
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_32
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $2
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 mov -4(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
 #INTEGER_LITERAL
 push $1
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov -4(%ebp), %eax
 pop 4(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $1024
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
 mov -4(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $1024
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
 pop -20(%ebp)
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
 jmp label_31
label_32:
# WHILE
label_34:
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $16777216
 #GREATER_THAN_OR_EQUAL
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setge %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_35
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $2
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 mov -4(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
 #INTEGER_LITERAL
 push $1
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 mov -4(%ebp), %eax
 pop 4(%eax)
 jmp label_34
label_35:
  jmp label_30
label_30:
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $8388608
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov -4(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $8388608
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov 12(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $8388608
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov 16(%ebp), %eax
 pop 8(%eax)
label_25:
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
FloatOps_div:
 push %ebp
 mov %esp, %ebp
 sub $4, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
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
 #INTEGER_LITERAL
 push $0
 #INTEGER_LITERAL
 push $0
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -4(%ebp)
# IF ELSE
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 0(%eax)
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 0(%eax)
  # OR
  pop %ebx
  pop %eax
  orl %ebx, %eax
  andl $1, %eax
  push %eax
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 0(%eax)
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 0(%eax)
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
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
  pop %eax
  cmp $0, %eax
  je label_37
label_36:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 mov -4(%ebp), %eax
 pop 0(%eax)
  jmp label_38
label_37:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 mov -4(%ebp), %eax
 pop 0(%eax)
label_38:
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 4(%eax)
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 4(%eax)
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 #INTEGER_LITERAL
 push $127
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 mov -4(%ebp), %eax
 pop 4(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $8388608
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 mov 12(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $8388608
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 mov 16(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $128
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 mov 12(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 8(%eax)
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 8(%eax)
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 mov -4(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
 #INTEGER_LITERAL
 push $16
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 mov -4(%ebp), %eax
 pop 4(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $128
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 mov 12(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $8388608
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov 12(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $8388608
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov 16(%ebp), %eax
 pop 8(%eax)
# IF ELSE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $0
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
  pop %eax
  cmp $0, %eax
  je label_40
label_39:
# WHILE
label_41:
 #INTEGER_LITERAL
 push $8388608
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 #GREATER_THAN
  pop %ebx
  pop %eax
  cmp %ebx, %eax
 setg %al
 movzx %al, %eax
 push %eax
  pop %eax
  cmp $0, %eax
  je label_42
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $2
  # MULTIPLY
  pop %edx
  pop %eax
  imul %edx, %eax
  push %eax
 mov -4(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
 #INTEGER_LITERAL
 push $1
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov -4(%ebp), %eax
 pop 4(%eax)
 jmp label_41
label_42:
# WHILE
label_44:
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $16777216
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
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $2
  # DIVIDE
  pop %ebx
  pop %eax
 cdq
  idiv %ebx
  push %eax
 mov -4(%ebp), %eax
 pop 8(%eax)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 4(%eax)
 #INTEGER_LITERAL
 push $1
  # PLUS
  pop %edx
  pop %eax
  add %edx, %eax
  push %eax
 mov -4(%ebp), %eax
 pop 4(%eax)
 jmp label_44
label_45:
  jmp label_40
label_40:
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov -4(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $8388608
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 mov -4(%ebp), %eax
 pop 8(%eax)
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
FloatOps_lt:
 push %ebp
 mov %esp, %ebp
 sub $8, %esp
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
 push $0
 pop -8(%ebp)
# IF ELSE
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 0(%eax)
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 0(%eax)
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
  pop %eax
  cmp $0, %eax
  je label_47
label_46:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -4(%ebp)
  jmp label_47
label_47:
# IF ELSE
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 0(%eax)
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 0(%eax)
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
  pop %eax
  cmp $0, %eax
  je label_49
label_48:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -4(%ebp)
  jmp label_49
label_49:
# IF ELSE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 4(%eax)
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 4(%eax)
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
  pop %eax
  cmp $0, %eax
  je label_52
label_51:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -4(%ebp)
  jmp label_52
label_52:
# IF ELSE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 4(%eax)
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 4(%eax)
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
  pop %eax
  cmp $0, %eax
  je label_55
label_54:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -8(%ebp)
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -4(%ebp)
  jmp label_55
label_55:
# IF ELSE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 8(%eax)
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 8(%eax)
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
  pop %eax
  cmp $0, %eax
  je label_58
label_57:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $1
 pop -8(%ebp)
  jmp label_58
label_58:
# IF ELSE
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 8(%eax)
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 8(%eax)
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
  pop %eax
  cmp $0, %eax
  je label_61
label_60:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 pop -8(%ebp)
  jmp label_61
label_61:
# IF ELSE
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 0(%eax)
#### MEMBER ACCESS NODE
 mov 16(%ebp), %eax
 push 0(%eax)
  # AND
  pop %ebx
  pop %eax
  andl %ebx, %eax
  andl $1, %eax
  push %eax
  pop %eax
  cmp $0, %eax
  je label_63
label_62:
#### ASSIGNMENT NODE
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
  # NOT
  pop %eax
  not %eax
  andl $1, %eax
  push %eax
 pop -8(%ebp)
  jmp label_63
label_63:
#### RETURN_STATEMENT
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
FloatOps_exp:
 push %ebp
 mov %esp, %ebp
 sub $48, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
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
 #INTEGER_LITERAL
 push $3012692
 #INTEGER_LITERAL
 push $1
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -12(%ebp)
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
 #INTEGER_LITERAL
 push $0
 #INTEGER_LITERAL
 push $0
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -16(%ebp)
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
 #INTEGER_LITERAL
 push $0
 #INTEGER_LITERAL
 push $0
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -20(%ebp)
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
 #INTEGER_LITERAL
 push $0
 #INTEGER_LITERAL
 push $0
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -28(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 push 12(%ebp)
#### METHOD CALL NODE (2): call instruction
 call Float_copy
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -24(%ebp)
# IF ELSE
#### MEMBER ACCESS NODE
 mov -24(%ebp), %eax
 push 0(%eax)
  pop %eax
  cmp $0, %eax
  je label_65
label_64:
#### ASSIGNMENT NODE
 #BOOLEAN_LITERAL
 push $0
 mov -24(%ebp), %eax
 pop 0(%eax)
  jmp label_65
label_65:
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
 #INTEGER_LITERAL
 push $0
 #INTEGER_LITERAL
 push $1
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -32(%ebp)
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
 #INTEGER_LITERAL
 push $2796203
 #INTEGER_LITERAL
 push $2
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -36(%ebp)
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
 #INTEGER_LITERAL
 push $0
 #INTEGER_LITERAL
 push $2
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -40(%ebp)
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
 #INTEGER_LITERAL
 push $5033165
 #INTEGER_LITERAL
 push $3
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -44(%ebp)
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
 #INTEGER_LITERAL
 push $2796203
 #INTEGER_LITERAL
 push $3
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -48(%ebp)
# WHILE
label_66:
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_lt
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
  pop %eax
  cmp $0, %eax
  je label_67
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -20(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_sub
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -24(%ebp)
 jmp label_66
label_67:
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -28(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -48(%ebp), %eax
 push %eax
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -28(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_add
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -28(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -28(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -44(%ebp), %eax
 push %eax
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -28(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_add
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -28(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -28(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -40(%ebp), %eax
 push %eax
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -28(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_add
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -28(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -28(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -36(%ebp), %eax
 push %eax
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -28(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_add
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -28(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -28(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -32(%ebp), %eax
 push %eax
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -28(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_add
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -28(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -28(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_add
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -28(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -28(%ebp)
# IF ELSE
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 0(%eax)
  pop %eax
  cmp $0, %eax
  je label_69
label_68:
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_div
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -28(%ebp)
  jmp label_69
label_69:
#### RETURN_STATEMENT
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
FloatOps_ln:
 push %ebp
 mov %esp, %ebp
 sub $40, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
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
 #INTEGER_LITERAL
 push $3240472
 #INTEGER_LITERAL
 push $1
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -4(%ebp)
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
 #INTEGER_LITERAL
 push $0
 #INTEGER_LITERAL
 push $0
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -36(%ebp)
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
 #INTEGER_LITERAL
 push $0
 #INTEGER_LITERAL
 push $1
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -20(%ebp)
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
 #INTEGER_LITERAL
 push $2796203
 #INTEGER_LITERAL
 push $1
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -24(%ebp)
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
 #INTEGER_LITERAL
 push $4194304
 #INTEGER_LITERAL
 push $1
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -28(%ebp)
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
 #INTEGER_LITERAL
 push $5033165
 #INTEGER_LITERAL
 push $1
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -32(%ebp)
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
 #INTEGER_LITERAL
 push $0
 #INTEGER_LITERAL
 push $127
 #NEGATION
 pop %eax
 neg %eax
 push %eax
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -12(%ebp)
#### ASSIGNMENT NODE
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 4(%eax)
 #INTEGER_LITERAL
 push $127
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -40(%ebp)
# WHILE
label_70:
# VARIABLE
 mov -40(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $0
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
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -36(%ebp), %eax
 push %eax
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_add
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -12(%ebp)
#### ASSIGNMENT NODE
# VARIABLE
 mov -40(%ebp), %eax
 push %eax
 #INTEGER_LITERAL
 push $1
  # MINUS
  pop %edx
  pop %eax
  sub %edx, %eax
  push %eax
 pop -40(%ebp)
 jmp label_70
label_71:
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -12(%ebp)
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
#### MEMBER ACCESS NODE
 mov 12(%ebp), %eax
 push 8(%eax)
 #INTEGER_LITERAL
 push $0
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -8(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -36(%ebp), %eax
 push %eax
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_sub
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -8(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -32(%ebp), %eax
 push %eax
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -16(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
# VARIABLE
 mov -36(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_add
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -16(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -16(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -16(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
# VARIABLE
 mov -36(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_sub
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -16(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -16(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -16(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
# VARIABLE
 mov -36(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_add
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -16(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -16(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -16(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
# VARIABLE
 mov -36(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_sub
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -16(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -16(%ebp)
#### RETURN_STATEMENT
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -16(%ebp), %eax
 push %eax
# VARIABLE
 mov -12(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_add
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### METHOD NODE (3): method epilogue
 pop %edi
 pop %esi
 pop %ebx
 mov %ebp, %esp
 pop %ebp
 ret
#### METHOD NODE (1): method prologue
FloatOps_pow:
 push %ebp
 mov %esp, %ebp
 sub $0, %esp
 push %ebx
 push %esi
 push %edi
#### METHOD NODE (2): method body (visit children)
#### RETURN_STATEMENT
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov 12(%ebp), %eax
 push %eax
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_ln
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
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
   mov 8(%ebp), %eax
   push %eax
#### METHOD CALL NODE (2): call instruction
 call FloatOps_exp
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
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
#### NEW NODE (1): allocate space
 push $12
 call malloc
 add $4, %esp
 push %eax
#### NEW NODE (2): constructor call - pre-call sequence
 push %eax
 push %ecx
 push %edx
 #INTEGER_LITERAL
 push $4194304
 #INTEGER_LITERAL
 push $0
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -4(%ebp)
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
 #INTEGER_LITERAL
 push $4613734
 #INTEGER_LITERAL
 push $2
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -8(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 push -16(%ebp)
#### METHOD CALL NODE (2): call instruction
 call FloatOps_add
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -12(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 push -12(%ebp)
#### METHOD CALL NODE (2): call instruction
 call Float_printval
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 push -16(%ebp)
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -12(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 push -12(%ebp)
#### METHOD CALL NODE (2): call instruction
 call Float_printval
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 push -16(%ebp)
#### METHOD CALL NODE (2): call instruction
 call FloatOps_div
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -12(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 push -12(%ebp)
#### METHOD CALL NODE (2): call instruction
 call Float_printval
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 push -16(%ebp)
#### METHOD CALL NODE (2): call instruction
 call FloatOps_exp
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -12(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 push -12(%ebp)
#### METHOD CALL NODE (2): call instruction
 call Float_printval
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
 push -16(%ebp)
#### METHOD CALL NODE (2): call instruction
 call FloatOps_ln
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -12(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 push -12(%ebp)
#### METHOD CALL NODE (2): call instruction
 call Float_printval
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -8(%ebp), %eax
 push %eax
# VARIABLE
 mov -4(%ebp), %eax
 push %eax
 push -16(%ebp)
#### METHOD CALL NODE (2): call instruction
 call FloatOps_pow
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -12(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 push -12(%ebp)
#### METHOD CALL NODE (2): call instruction
 call Float_printval
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
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
 #INTEGER_LITERAL
 push $0
 #INTEGER_LITERAL
 push $0
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -20(%ebp)
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
 #INTEGER_LITERAL
 push $754975
 #INTEGER_LITERAL
 push $0
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -24(%ebp)
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
 #INTEGER_LITERAL
 push $786432
 #INTEGER_LITERAL
 push $5
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -28(%ebp)
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
 #INTEGER_LITERAL
 push $1851392
 #INTEGER_LITERAL
 push $12
 #BOOLEAN_LITERAL
 push $0
 mov 24(%esp), %eax
 push %eax
#### NEW NODE (2): constructor call - call instruction
 call Float_Float
#### NEW CALL NODE (3): constructor call - post-return sequence
 add $16, %esp
 pop %edx
 pop %ecx
 pop %eax
#### Done with new
 pop -32(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 push -16(%ebp)
#### METHOD CALL NODE (2): call instruction
 call FloatOps_sub
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
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -28(%ebp), %eax
 push %eax
# VARIABLE
 mov -24(%ebp), %eax
 push %eax
 push -16(%ebp)
#### METHOD CALL NODE (2): call instruction
 call FloatOps_pow
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
# VARIABLE
 mov -20(%ebp), %eax
 push %eax
 push -16(%ebp)
#### METHOD CALL NODE (2): call instruction
 call FloatOps_sub
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 push -16(%ebp)
#### METHOD CALL NODE (2): call instruction
 call FloatOps_div
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -36(%ebp)
#### ASSIGNMENT NODE
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
# VARIABLE
 mov -32(%ebp), %eax
 push %eax
# VARIABLE
 mov -36(%ebp), %eax
 push %eax
 push -16(%ebp)
#### METHOD CALL NODE (2): call instruction
 call FloatOps_mult
 mov %eax, %ebx
#### METHOD CALL NODE (3): post-return sequence
 pop %ecx
 pop %ecx
 pop %edx
 pop %ecx
 pop %eax
 push %ebx
 pop -36(%ebp)
#### METHOD CALL NODE (1): pre-call sequence
 push %eax
 push %ecx
 push %edx
 push -36(%ebp)
#### METHOD CALL NODE (2): call instruction
 call Float_printval
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
