#include "codegeneration.hpp"

//bool local;
//bool param;
int currLocalOffset = 0;
int currParamOffset = 0;

// CodeGenerator Visitor Functions: These are the functions
// you will complete to generate the x86 assembly code. Not
// all functions must have code, many may be left empty.

/* -------------------------------- helper functions ----------------------------------*/
void setOffset(ClassTable* classTable, std::string currClassName, ClassInfo currClassInfo, int& offset) {                                                    
  //this function should return the accumulated offset for parent classes                                                                                    
                                                                                                                                                             
  if (classTable->find(currClassName) != classTable->end()) {                                                                                                 
    ClassInfo superClassInfo = classTable->at(currClassInfo.superClassName);                                                                                 
    offset += 4*(superClassInfo.membersSize);                                                                                                                
    setOffset(classTable, currClassInfo.superClassName, superClassInfo, offset);                                                                             
  }                                                                                                                                                          
  else if (classTable->find(currClassName) == classTable->end()) {                                                                                           
    return;                                                                                                                                                  
  }                                                                                                                                                           
}    
/* -------------------------------- helper functions ----------------------------------*/


void CodeGenerator::visitProgramNode(ProgramNode* node) {
    // WRITEME: Replace with code if necessary
  std::cout << "# PROGRAM NODE" << std::endl;
  std::cout << " .data" << std::endl; //check
  std::cout << "printstr: .asciz \"%d\\n\"" << std::endl << std::endl;
  std::cout << " .text" << std::endl;
  std::cout << " .globl Main_main" << std::endl;
  node->visit_children(this);
}

void CodeGenerator::visitClassNode(ClassNode* node) {
  /* STUFF FROM TYPECHECK + EXTRA STUFF FOR PROJECT 6 */
  this->currentClassName = node->identifier_1->name;
  std::string superclass = (node->identifier_2) ? node->identifier_2->name : "";

  // create ClassInfo
  VariableTable *members = new VariableTable();
  MethodTable *methods = new MethodTable();
  

  //loca = false;
  //param = false;

  int currentMemberOffset = 0;
  node->identifier_1->accept(this); // class name

  if (node->identifier_2) { // superclass
    node->identifier_2->accept(this);
  }

  if (node->declaration_list) {
    for(std::list<DeclarationNode*>::iterator iter = node->declaration_list->begin();
        iter != node->declaration_list->end(); iter++) {
      (*iter)->accept(this);
    }
  }
  int member_size = currentMemberOffset;
  ClassInfo current_class_info = {superclass, methods, members, member_size};

  // setOffset(classTable, currentClassName, current_class_info, member_size);
  
  this->currentClassInfo = current_class_info;

  std::pair<std::string, ClassInfo> current_class = std::make_pair(this->currentClassName, current_class_info);

 
  this->classTable->insert(current_class);

  if (node->method_list) {
    for(std::list<MethodNode*>::iterator iter = node->method_list->begin();
        iter != node->method_list->end(); iter++) {
      (*iter)->accept(this);
    }
  }
  /* STUFF FROM TYPECHECK + EXTRA STUFF FOR CLASS NODE */       
  
}

void CodeGenerator::visitMethodNode(MethodNode* node) {
    // WRITEME: Replace with code if necessary
    std::cout << "#### METHOD NODE (1): method prologue" << std::endl;
    std::string methodName = node->identifier->name;
    std::string methodLabel = currentClassName + "_" + methodName + ":"; 
    // push old %ebp
    std::cout << methodLabel << std::endl; 
    std::cout << " push %ebp" << std::endl;
    // Set new %ebp (may want to set to current %esp)
    std::cout << " mov %esp, %ebp" << std::endl;
    // allocate space for local variables
    //      subtract from stack pointer
    //      look into localSize of MethodInfo  MARKER: ask katya about this
    std::cout << " sub $" << currentMethodInfo.localsSize << ", %esp" << std::endl;
        // MARKER: does localSize get set before this (i.e. not in the visit_children called below?)
    // save callee-save registers
    /* SPECS: The callee save registers are: %ebx, %esi, and %edi. */
    /* CORNELL: (callee) ebx, esi, edi, ebp, esp */
    std::cout << " push %ebx" << std::endl;
    std::cout << " push %esi" << std::endl;
    std::cout << " push %edi" << std::endl;

    // run method by visit_children    
    std::cout << "#### METHOD NODE (2): method body (visit children)" << std::endl;
    node->visit_children(this);
    
    std::cout << "#### METHOD NODE (3): method epilogue" << std::endl;
    // (1) restore callee-save registers
    std::cout << " pop %edi" << std::endl;
    std::cout << " pop %esi" << std::endl;
    std::cout << " pop %ebx" << std::endl;
   
    // (2) deallocate local space by moving stack pointer (%esp) to base pointer (%ebp)
    std::cout << " mov %ebp, %esp" << std::endl;
    // (3) restore base pointer by popping old %ebp from the stack
    // (4) return using return address (ret instruction)
    std::cout << " pop %ebp" << std::endl;
    std::cout << " ret" << std::endl; // does this require operands?
    // N.B. Store the return value in %eax before Epilogue phase
}

void CodeGenerator::visitMethodBodyNode(MethodBodyNode* node) {
    // WRITEME: Replace with code if necessary
  node->visit_children(this);
  if (!node->returnstatement) std::cout << " xor %eax, %eax" << std::endl; 
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
  std::cout << "#RETURN_STATEMENT" << std::endl;
  
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
  node->expression->accept(this);

  std::string ifLabel = "label_" + std::to_string(nextLabel()) + ":";
  std::string elseLabel = "label_" + std::to_string(nextLabel()) + ":";
  std::string after_if_elseLabel = "label_" + std::to_string(nextLabel());   
  std::cout << "  pop %eax" << std::endl; //reg1 (check)
   
  std::cout << "  cmp $0, %eax" << std::endl;
  std::cout << "  je " << elseLabel << std::endl;
  std::cout << ifLabel << std::endl; 
  for (std::list<StatementNode*>::iterator it = node->statement_list_1->begin(); it != node->statement_list_1->end(); it++) {
    (*it)->accept(this);
  }
  std::cout << "  jne " << after_if_elseLabel << std::endl;

  std::cout << elseLabel << std::endl; 
  for (std::list<StatementNode*>::iterator it = node->statement_list_2->begin(); it != node->statement_list_2->end(); it++) {
    (*it)->accept(this);
  }
  std::cout << after_if_elseLabel << std::endl; 
}

void CodeGenerator::visitWhileNode(WhileNode* node) { //might be wrong
  //WRITEME: Replace with code if necessary
  std::cout << "# WHILE" << std::endl;
  std::string whileLabel = "label_" + std::to_string(nextLabel()) + ":";
  std::string after_whileLabel = "label_" + std::to_string(nextLabel()) + ":";
 
  
  std::cout << whileLabel << std::endl; 
  node->expression->accept(this);
  std::cout << "  pop %eax" << std::endl; //reg1 (check) 
  std::cout << "  cmp $0, $eax" << std::endl; //comparison statement at beginning of while loop
  std::cout << "  je " << after_whileLabel << std::endl; //jumping to body of while loop
  
    for (std::list<StatementNode*>::iterator it = node->statement_list->begin(); it != node->statement_list->end(); it++) {
      (*it)->accept(this);
    }
  std::cout << " jmp " << whileLabel << std::endl;
  std::cout << after_whileLabel << std::endl; 
}

void CodeGenerator::visitPrintNode(PrintNode* node) {
  // WRITEME: Replace with code if necessary
  std::cout << "# PRINT" << std::endl;
  node->visit_children(this);
  std::cout << " push $printstr" << std::endl;
  std::cout << " call printf" << std::endl;  
}

void CodeGenerator::visitDoWhileNode(DoWhileNode* node) {
  // WRITEME: Replace with code if necessary
  std::cout << "# DO WHILE" << std::endl;
  std::string do_whileLabel = "label_" + std::to_string(nextLabel()) + ":";
  std::string after_whileLabel = "label_" + std::to_string(nextLabel()) + ":";   
 
  std::cout << do_whileLabel << std::endl; 
  for (std::list<StatementNode*>::iterator it = node->statement_list->begin(); it != node->statement_list->end(); it++) {
    (*it)->accept(this);
  }
    node->expression->accept(this);

  std::cout << "  pop %eax" << std::endl; //reg1 (check)
  std::cout << "  cmp $0, $eax" << std::endl; //comparison statement at beginning of while loop
  std::cout << " jne " << do_whileLabel << std::endl;
  //std::cout << after_whileLabel << std::endl;
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
  std::cout << "  sub %edx, %eax" << std::endl; //(reg2 - reg1) -> reg2
  std::cout << "  push %eax" << std::endl; //push reg2
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
  std::string greaterLabel = "label_" + std::to_string(nextLabel()) + ":";
  std::cout << "  pop %ebx" << std::endl; //reg2
  std::cout << "  pop %eax" << std::endl; //reg1  
  std::cout << "  cmp %ebx, %eax" << std::endl;
  std::cout << " setg %al" << std::endl;
  std::cout << " movzx %al, %eax" << std::endl;
  std::cout << " push %eax" << std::endl; 

  // std::cout << "  jg " << greaterLabel << std::endl;
  // std::string label = "label_" + std::to_string(nextLabel()) + ":";
  // std::cout << " jmp  " << label << std::endl;
  
}
//check
void CodeGenerator::visitGreaterEqualNode(GreaterEqualNode* node) { //jump instr using cmp and jge
  // WRITEME: Replace with code if necessary
  node->visit_children(this);
  std::cout << " #GREATER_THAN_OR_EQUAL" << std::endl; 
  //std::string greater_equalLabel = "label_" + std::to_string(nextLabel()) + ":";
  std::cout << "  pop %ebx" << std::endl; //reg2
  std::cout << "  pop %eax" << std::endl; //reg1  
  std::cout << "  cmp %ebx, %eax" << std::endl;
  std::cout << " setge %al" << std::endl;
  std::cout << " movzx %al, %eax" << std::endl;
  std::cout << " push %eax" << std::endl; 

  // std::cout << "  jge " << greater_equalLabel << std::endl;
  // std::string label = "label_" + std::to_string(nextLabel()) + ":";
  // std::cout << " jmp  " << label << std::endl;
    
  //might be wrong
}
//check
void CodeGenerator::visitEqualNode(EqualNode* node) { //jump instr using cmp and je
  node->visit_children(this);
  std::cout << " #EQUAL" << std::endl; 
  std::cout << "  pop %ebx" << std::endl; //reg2
  std::cout << "  pop %eax" << std::endl; //reg1  
  std::cout << "  cmp %ebx, %eax" << std::endl;
  std::cout << " sete %al" << std::endl;
  std::cout << " movzx %al, %eax" << std::endl;
  std::cout << " push %eax" << std::endl; 

}

void CodeGenerator::visitAndNode(AndNode* node) { //might be wrong
  // WRITEME: Replace with code if necessary
  node->visit_children(this);
  std::cout << "  # AND" << std::endl;
  std::cout << "  pop %ebx" << std::endl; //reg2
  std::cout << "  pop %eax" << std::endl; //reg1
  std::cout << "  andl %ebx, %eax" << std::endl; //(reg1 && reg2) -> reg1
  std::cout << "  andl $1, %eax" << std::endl; 
  std::cout << "  push %eax" << std::endl; //push reg1
}

void CodeGenerator::visitOrNode(OrNode* node) { //might be wrong
  node->visit_children(this);
  std::cout << "  # OR" << std::endl;
  std::cout << "  pop %ebx" << std::endl; //reg2
  std::cout << "  pop %eax" << std::endl; //reg1
  std::cout << "  orl %ebx, %eax" << std::endl; //(reg1 && reg2) -> reg1
  std::cout << "  andl $1, %eax" << std::endl; 
  std::cout << "  push %eax" << std::endl; //push reg1
  // WRITEME: Replace with code if necessary
}

void CodeGenerator::visitNotNode(NotNode* node) { //might be wrong
  // WRITEME: Replace with code if necessary
  node->visit_children(this);
  std::cout << "  # NOT" << std::endl;
  std::cout << "  pop %eax" << std::endl; //reg1
  std::cout << "  not %eax" << std::endl; //(!reg1) -> reg1
  std::cout << "  andl $1, %eax" << std::endl; 
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
  this->currentMethodName = node->identifier_1->name;
  if (this->currentClassInfo.methods->find(this->currentMethodName) != this->currentClassInfo.methods->end()) {
    this->currentMethodInfo = this->currentClassInfo.methods->at(this->currentMethodName); // typechecker checks that this exists in table??
  }
    std::cout << "#### METHOD CALL NODE (1): pre-call sequence" << std::endl;
    // (1) save caller registers
    std::cout << " push %eax" << std::endl;
    std::cout << " push %ecx" << std::endl;
    std::cout << " push %edx" << std::endl;

    // (2) push arguments + self pointer on the stack
    // reference: https://piazza.com/class/l189pz66aj36k8?cid=343
     if(node->expression_list){
        for(auto it = node->expression_list->rbegin(); it != node->expression_list->rend(); ++it){
          //visitExpressionNode((*it), this);
            (*it)->accept(this);
        }
    }
    std::cout << " push 8(%ebp)" << std::endl; // it might also be -4(%ebp) (discussion slide 51)
    std::cout << "#### METHOD CALL NODE (2): call instruction" << std::endl;
    std::cout << " call " << currentClassName << "_" << node->identifier_1->name << std::endl;
    std::cout << "#### METHOD CALL NODE (3): post-return sequence" << std::endl;
         if(node->expression_list){
        for(auto it = node->expression_list->rbegin(); it != node->expression_list->rend(); ++it){
            // visitExpressionNode((*it), this);
            std::cout << " pop %ecx" << std::endl; // pop arguments to %ecx which will later be overwritten
            // idk if theres some specific/more standard/legit/efficient way we are supposed to remove the arguments
        }
    }
    std::cout << " push %eax" << std::endl;
    std::cout << " pop %eax" << std::endl; // pop stack bottom back into %eax
    std::cout << " pop %ecx" << std::endl;
    std::cout << " pop %edx" << std::endl;
}

void CodeGenerator::visitMemberAccessNode(MemberAccessNode* node) {
  // WRITEME: Replace with code if necessary
}

void CodeGenerator::visitVariableNode(VariableNode* node) {
  // WRITEME: Replace with code if necessary
}

void CodeGenerator::visitIntegerLiteralNode(IntegerLiteralNode* node) {
  // WRITEME: Replace with code if necessary
  node->visit_children(this);
  //std::string action = "mov $" + node->integer->value + ", eax";
  std::string action = "";
  action += " mov $";
  action += std::to_string(node->integer->value);
  action += ", %eax";
  
  std::cout << " #INTEGER_LITERAL" << std::endl; 
  std::cout << action << std::endl;
  std::cout << " push %eax" << std::endl; 
}

void CodeGenerator::visitBooleanLiteralNode(BooleanLiteralNode* node) {
  // WRITEME: Replace with code if necessary
  node->visit_children(this);
  //std::string action = "mov $" + (node->integer->value) + ", eax";
  std::string action = "";
  action += " mov $";
  action += std::to_string(node->integer->value);
  action += ", %eax";
  
  std::cout << " #BOOLEAN_LITERAL" << std::endl; 
  std::cout << action << std::endl; 
  std::cout << " push %eax" << std::endl;  
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
  node->visit_children(this);
}
