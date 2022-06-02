#include "codegeneration.hpp"

// CodeGenerator Visitor Functions: These are the functions
// you will complete to generate the x86 assembly code. Not
// all functions must have code, many may be left empty.

void CodeGenerator::visitProgramNode(ProgramNode* node) {
    // WRITEME: Replace with code if necessary
  std::string wub = "%d\n"; 
  std::cout << "# PROGRAM NODE" << std::endl;
  std::cout << " .data" << std::endl; //check
  //std::cout << " printstr: .asciz \"%d\n\" " << std::endl; //check
  std::cout << " printstr: .asciz " << wub << std::endl; //check
  std::cout << " .text" << std::endl;
  std::cout << " .globl Main_main:" << std::endl;
  node->visit_children(this);
}

void CodeGenerator::visitClassNode(ClassNode* node) {
    // WRITEME: Replace with code if necessary
  node->visit_children(this);
}

void CodeGenerator::visitMethodNode(MethodNode* node) {
    // WRITEME: Replace with code if necessary
  node->visit_children(this);
}

void CodeGenerator::visitMethodBodyNode(MethodBodyNode* node) {
    // WRITEME: Replace with code if necessary
  node->visit_children(this);
}

void CodeGenerator::visitParameterNode(ParameterNode* node) {
    // WRITEME: Replace with code if necessary
  node->visit_children(this);
}

void CodeGenerator::visitDeclarationNode(DeclarationNode* node) {
    // WRITEME: Replace with code if necessary
}

void CodeGenerator::visitReturnStatementNode(ReturnStatementNode* node) {
  // WRITEME: Replace with code if necessary
}

void CodeGenerator::visitAssignmentNode(AssignmentNode* node) { //could be wrong
  // WRITEME: Replace with code if necessary
  // std::cout << "# ASSIGNMENT" << std::endl;
  // node->visit_children(this);
  // std::cout << "  pop %eax" << std::endl;
  // std::cout <<  "  mov %eax, " << offset << "(%ebp)" << std::endl;
}

void CodeGenerator::visitCallNode(CallNode* node) {
  // WRITEME: Replace with code if necessary
}

void CodeGenerator::visitIfElseNode(IfElseNode* node) { //could be wrong
  // WRITEME: Replace with code if necessary
  std::cout << "# IF ELSE" << std::endl;
  node->accept(this);

  std::string ifLabel = "label_" + std::to_string(nextLabel());
  std::cout << "  pop %ebx" << std::endl; //reg2 (check)
  std::cout << "  pop %eax" << std::endl; //reg1 (check)
   
  std::cout << "  cmp %eax, %ebx" << std::endl;
  std::cout << "  je " << ifLabel << std::endl;
  node->visit_children(this); //is this how we do it
  //how to not do this if if loop is taken? 
  std::string elseLabel = "label_" + std::to_string(nextLabel());
  std::cout << "  jne " << elseLabel << std::endl;
  node->visit_children(this); //wub>
   
}

void CodeGenerator::visitWhileNode(WhileNode* node) { //might be wrong
  //WRITEME: Replace with code if necessary
  std::cout << "# WHILE" << std::endl;
  node->accept(this);
  std::string whileLabel = "label_" + std::to_string(nextLabel()); 
  std::cout << "  pop %ebx" << std::endl; //reg2 (check)
  std::cout << "  pop %eax" << std::endl; //reg1 (check)
   
  std::cout << "  cmp %eax, %ebx" << std::endl;
  std::cout << "  je " << whileLabel << std::endl;
  std::string after_whileLabel = "label_" + std::to_string(nextLabel());
  std::cout << "  jne " << after_whileLabel << std::endl; 
}

void CodeGenerator::visitPrintNode(PrintNode* node) {
  // WRITEME: Replace with code if necessary
  std::cout << "# PRINT" << std::endl;
  std::cout << " push $printstr" << std::endl;
  std::cout << " call printf" << std::endl;
  //std::cout << " pop $printstr" << std::endl; 
  
}

void CodeGenerator::visitDoWhileNode(DoWhileNode* node) {
  // WRITEME: Replace with code if necessary
  std::cout << "# DO WHILE" << std::endl;
}

void CodeGenerator::visitPlusNode(PlusNode* node) {
  node->visit_children(this);
  std::cout << "  # PLUS" << std::endl;
  std::cout << "  pop %edx" << std::endl; //reg2
  std::cout << "  pop %eax" << std::endl; //reg1
  std::cout << "  add %edx, %eax" << std::endl; //(reg1 + reg2) -> reg1
  std::cout << "  push %eax" << std::endl; //push reg1
  // WRITEME: Replace with code if necessary
}

void CodeGenerator::visitMinusNode(MinusNode* node) {
  node->visit_children(this);
  std::cout << "  # MINUS" << std::endl;
  std::cout << "  pop %edx" << std::endl; //reg2
  std::cout << "  pop %eax" << std::endl; //reg1
  std::cout << "  sub %eax, %edx" << std::endl; //(reg2 - reg1) -> reg2
  std::cout << "  push %edx" << std::endl; //push reg2
  // WRITEME: Replace with code if necessary
}

void CodeGenerator::visitTimesNode(TimesNode* node) {
  node->visit_children(this);
  std::cout << "  # MULTIPLY" << std::endl;
  std::cout << "  pop %edx" << std::endl; //reg2
  std::cout << "  pop %eax" << std::endl; //reg1
  std::cout << "  imul %edx, %eax" << std::endl; //(reg1 * reg2) -> reg1
  std::cout << "  push %eax" << std::endl; //push reg1
  // WRITEME: Replace with code if necessary
}

void CodeGenerator::visitDivideNode(DivideNode* node) {
  // WRITEME: Replace with code if necessary
  node->visit_children(this);
  std::cout << "  # DIVIDE" << std::endl;
  std::cout << "  pop %ebx" << std::endl; //reg2 = denominator 
  std::cout << "  pop %eax" << std::endl; //reg1 = numerator
  std::cout << " cdq" << std::endl; //sign extending eax into edx for numerator
  std::cout << "  idiv %ebx" << std::endl; //(%edx : %eax) / %ebx -> %eax
  std::cout << "  push %eax" << std::endl; //quotient result of division
}
//check
void CodeGenerator::visitGreaterNode(GreaterNode* node) { //jump instr using cmp and jg
  // WRITEME: Replace with code if necessary
  node->visit_children(this);
  std::cout << " #GREATER_THAN" << std::endl; 
  std::string greaterLabel = "label_" + std::to_string(nextLabel());
  std::cout << "  pop %ebx" << std::endl; //reg2
  std::cout << "  pop %eax" << std::endl; //reg1  
  std::cout << "  cmp %eax, %ebx" << std::endl;
  std::cout << "  jg " << greaterLabel << std::endl;
}
//check
void CodeGenerator::visitGreaterEqualNode(GreaterEqualNode* node) { //jump instr using cmp and jge
  // WRITEME: Replace with code if necessary
  node->visit_children(this);
  std::cout << " #GREATER_THAN_OR_EQUAL" << std::endl; 
  std::string greater_equalLabel = "label_" + std::to_string(nextLabel());
  std::cout << "  pop %ebx" << std::endl; //reg2
  std::cout << "  pop %eax" << std::endl; //reg1  
  std::cout << "  cmp %eax, %ebx" << std::endl;
  std::cout << " setge %ebx" << std::endl;
  std::cout << " movzx %eax, %ebx" << std::endl;
  std::cout << " push %eax" << std::endl; 
  std::cout << "  jge " << greater_equalLabel << std::endl;
  //might be wrong
}
//check
void CodeGenerator::visitEqualNode(EqualNode* node) { //jump instr using cmp and je
  // WRITEME: Replace with code if necessar
  node->visit_children(this);
  std::cout << " #EQUAL" << std::endl; 
  std::string equalLabel = "label_" + std::to_string(nextLabel());
  std::cout << "  pop %ebx" << std::endl; //reg2
  std::cout << "  pop %eax" << std::endl; //reg1
  std::cout << "  cmp %eax, %ebx" << std::endl;
  std::cout << "  je " << equalLabel << std::endl;
  //might be wrong
}

void CodeGenerator::visitAndNode(AndNode* node) { //might be wrong
  // WRITEME: Replace with code if necessary
  node->visit_children(this);
  std::cout << "  # AND" << std::endl;
  std::cout << "  pop %ebx" << std::endl; //reg2
  std::cout << "  pop %eax" << std::endl; //reg1
  std::cout << "  andl %ebx, %eax" << std::endl; //(reg1 && reg2) -> reg1
  std::cout << "  push %eax" << std::endl; //push reg1
}

void CodeGenerator::visitOrNode(OrNode* node) { //might be wrong
  node->visit_children(this);
  std::cout << "  # OR" << std::endl;
  std::cout << "  pop %ebx" << std::endl; //reg2
  std::cout << "  pop %eax" << std::endl; //reg1
  std::cout << "  orl %ebx, %eax" << std::endl; //(reg1 && reg2) -> reg1
  std::cout << "  push %eax" << std::endl; //push reg1
  // WRITEME: Replace with code if necessary
}

void CodeGenerator::visitNotNode(NotNode* node) { //might be wrong
  // WRITEME: Replace with code if necessary
  node->visit_children(this);
  std::cout << "  # NOT" << std::endl;
  std::cout << "  pop %eax" << std::endl; //reg1
  std::cout << "  not %eax" << std::endl; //(!reg1) -> reg1
  std::cout << "  push %eax" << std::endl; //push reg1
}

void CodeGenerator::visitNegationNode(NegationNode* node) {
  // WRITEME: Replace with code if necessary
  node->visit_children(this);
  std::cout << " #NEGATION" << std::endl;
  std::cout << " pop %eax" << std::endl;
  std::cout << " neg %eax" << std::endl;
  std::cout << " push %eax" << std::endl; 
}

void CodeGenerator::visitMethodCallNode(MethodCallNode* node) {
  // WRITEME: Replace with code if necessary
}

void CodeGenerator::visitMemberAccessNode(MemberAccessNode* node) {
  // WRITEME: Replace with code if necessary
}

void CodeGenerator::visitVariableNode(VariableNode* node) {
  // WRITEME: Replace with code if necessary
}

void CodeGenerator::visitIntegerLiteralNode(IntegerLiteralNode* node) {
  // WRITEME: Replace with code if necessary
}

void CodeGenerator::visitBooleanLiteralNode(BooleanLiteralNode* node) {
  // WRITEME: Replace with code if necessary
}

void CodeGenerator::visitNewNode(NewNode* node) {
  // WRITEME: Replace with code if necessary
}

void CodeGenerator::visitIntegerTypeNode(IntegerTypeNode* node) {
  // WRITEME: Replace with code if necessary
}

void CodeGenerator::visitBooleanTypeNode(BooleanTypeNode* node) {
  // WRITEME: Replace with code if necessary
}

void CodeGenerator::visitObjectTypeNode(ObjectTypeNode* node) {
  // WRITEME: Replace with code if necessary
}

void CodeGenerator::visitNoneNode(NoneNode* node) {
  // WRITEME: Replace with code if necessary
}

void CodeGenerator::visitIdentifierNode(IdentifierNode* node) {
  // WRITEME: Replace with code if necessary
}

void CodeGenerator::visitIntegerNode(IntegerNode* node) {
  // WRITEME: Replace with code if necessary
}
