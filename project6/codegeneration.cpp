#include "codegeneration.hpp"

int offset;

// CodeGenerator Visitor Functions: These are the functions
// you will complete to generate the x86 assembly code. Not
// all functions must have code, many may be left empty.

/* -------------------------------- helper functions ----------------------------------*/

/*
void addMembers(ClassInfo classInfo, ClassInfo superClassInfo) {
  for (std::pair<std::string,VariableInfo> var : *(superClassInfo.members)) {
    classInfo.members->insert(var);
    classInfo.membersSize += 4;
  }
}
 */

 /*
void addMembers(ClassTable* classTable, std::string className, ClassInfo classInfo, ClassInfo currClassInfo) {
  if (classTable->find(className) != classTable->end()) {
    if (classTable->find(classInfo.superClassName) != classTable->end()) {
        ClassInfo superClassInfo = classTable->at(classInfo.superClassName);
        addMembers(currClassInfo, superClassInfo);
        addMembers(classTable, classInfo.superClassName, superClassInfo, currClassInfo);
      }
      else {
        return;
      }
  }
  else {
    return;
  }
    
}
*/

void var_to_eax(std::string name, MethodInfo methodInfo, ClassInfo classInfo) {

  //local variable or parameter
  if (methodInfo.variables->find(name) != methodInfo.variables->end()) {
    offset = methodInfo.variables->at(name).offset;
    std::cout <<  " mov " << offset << "(%ebp), %eax" << std::endl;   
  }

  //member variable
  else {
    if (classInfo.members->find(name) != classInfo.members->end()) {
      offset = classInfo.members->at(name).offset;
      std::cout << " mov 8(%ebp), %ebx" << std::endl; //getting to self pointer
      std::cout << " mov " << offset << "(%ebx), %eax" << std::endl; 
    }
  }
}

void var_to_eax(std::string name, ClassInfo classInfo) {


  //member variable
    if (classInfo.members->find(name) != classInfo.members->end()) {
      offset = classInfo.members->at(name).offset;
      std::cout << " mov 8(%ebp), %ebx" << std::endl; //getting to self pointer
      std::cout << " mov " << offset << "(%ebx), %eax" << std::endl; 
    }
}

/*
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
*/

bool isLocal(std::string memberName, MethodInfo methodInfo) {
    VariableTable* currentVariableTable = methodInfo.variables;
    return (currentVariableTable->find(memberName) != currentVariableTable->end());
}

int findOffset(std::string memberName, MethodInfo methodInfo, std::string className, ClassTable *classTable) {
  if (isLocal(memberName, methodInfo)) {
    return ((methodInfo.variables)->at(memberName)).offset;
  } else {
    int tempOffset = 0;
    ClassInfo tempClassInfo = classTable->at(className);
    VariableTable *tempVariableTable = tempClassInfo.members;

    // find out which class contains the member
    while (tempVariableTable->find(memberName) == tempVariableTable->end()) {
      tempClassInfo = classTable->at(tempClassInfo.superClassName);
      tempVariableTable = tempClassInfo.members;
    }

    // add local offset of member within its direct class
    tempOffset += (tempVariableTable->at(memberName)).offset;

    // recursively traverse superclasses and accumulate membersize of all superclasses
    std::string tempSuperclassName = tempClassInfo.superClassName;
    while (tempSuperclassName != "") {
      tempClassInfo = classTable->at(tempSuperclassName);
      tempOffset += tempClassInfo.membersSize;
      tempSuperclassName = tempClassInfo.superClassName;
    }

    return tempOffset;
  }
}

// can prob rewrite with classInfo instead of className
// for nonLocal case
int findOffset(ClassTable* classTable, std::string memberName, std::string className) {
  int tempOffset = 0;
  ClassInfo tempClassInfo = classTable->at(className);
  VariableTable *tempVariableTable = tempClassInfo.members;

  // find out which class contains the member
  while (tempVariableTable->find(memberName) == tempVariableTable->end()) {
    // tempOffset += tempClassInfo.membersSize;
    tempClassInfo = classTable->at(tempClassInfo.superClassName);
    tempVariableTable = tempClassInfo.members;
  }
  // add local offset of member within its direct class
  tempOffset += (tempVariableTable->at(memberName)).offset;

  // recursively traverse superclasses and accumulate membersize of all superclasses
  std::string tempSuperclassName = tempClassInfo.superClassName;
  while (tempSuperclassName != "") {
    tempClassInfo = classTable->at(tempSuperclassName);
    tempOffset += tempClassInfo.membersSize;
    tempSuperclassName = tempClassInfo.superClassName;
  }
  
  return tempOffset;
}

// can prob replace className with currentClassInfo
VariableInfo findVariableInfo(std::string memberName, MethodInfo methodInfo, std::string className, ClassTable* classTable) {
  // can assume exist bc typechecking
  
  // bool isLocal(std::string memberName, MethodInfo methodInfo) {
  if (isLocal(memberName, methodInfo)) {
    return (methodInfo.variables)->at(memberName);
  } else { // check class and then recursively check superclasses

    ClassInfo tempClassInfo = classTable->at(className);
    VariableTable *tempVariableTable = tempClassInfo.members;

    if (tempVariableTable->find(memberName) != tempVariableTable->end()) {
      return tempVariableTable->at(memberName);
    } else {
      std::string tempSuperclassName = tempClassInfo.superClassName;

      while (tempSuperclassName != "") {
        tempClassInfo = classTable->at(tempSuperclassName);
        tempVariableTable = tempClassInfo.members;
        if (tempVariableTable->find(memberName) != tempVariableTable->end()) {
          return tempVariableTable->at(memberName);
        }
        tempSuperclassName = tempClassInfo.superClassName;
      }

    }

  }
  return classTable->at(className).members->at(memberName);
}

MethodInfo findMethodInfo(std::string methodName, std::string className, ClassTable* classTable) {
    // can assume exist bc typechecking

      ClassInfo tempClassInfo = classTable->at(className);
      MethodTable *tempMethodTable = tempClassInfo.methods;

      if (tempMethodTable->find(methodName) != tempMethodTable->end()) {
        return tempMethodTable->at(methodName);
      } else {
        std::string tempSuperclassName = tempClassInfo.superClassName;

        while (tempSuperclassName != "") {
          tempClassInfo = classTable->at(tempSuperclassName);
          tempMethodTable = tempClassInfo.methods;
          if (tempMethodTable->find(methodName) != tempMethodTable->end()) {
            return tempMethodTable->at(methodName);
          }
          tempSuperclassName = tempClassInfo.superClassName;
        }

      }
      return tempMethodTable->at(methodName);
}

std::string findClassNameFromMethodName(std::string methodName, std::string className, ClassTable* classTable) {
    // can assume exist bc typechecking

      ClassInfo tempClassInfo = classTable->at(className);
      MethodTable *tempMethodTable = tempClassInfo.methods;

      if (tempMethodTable->find(methodName) != tempMethodTable->end()) {
        return className;
      } else {
        std::string tempSuperclassName = tempClassInfo.superClassName;

        while (tempSuperclassName != "") {
          tempClassInfo = classTable->at(tempSuperclassName);
          tempMethodTable = tempClassInfo.methods;
          if (tempMethodTable->find(methodName) != tempMethodTable->end()) {
            return tempSuperclassName;
          }
          tempSuperclassName = tempClassInfo.superClassName;
        }

      }
      return "";
}

int findClassSize(std::string className, ClassTable* classTable) {
  int size = 0;
  ClassInfo currentClassInfo = classTable->at(className);
  size += currentClassInfo.membersSize;
  std::string currentSuperclassName = currentClassInfo.superClassName;

  while (currentSuperclassName != "") {
    currentClassInfo = classTable->at(currentSuperclassName);
    size += currentClassInfo.membersSize;
    currentSuperclassName = currentClassInfo.superClassName;
  }

  return size;
}

bool constructor_exists(ClassTable* classTable, std::string className) {                                                                                                                                    
  bool valid = false;                                                                                                                                                                                       
  if (classTable->find(className) == classTable->end()) return false;                                                                                                                                       
                                                                                                                                                                                                            
  else {                                                                                                                                                                                                    
    ClassInfo currClassInfo = classTable->at(className);                                                                                                                                                    
    MethodTable *currMethods = currClassInfo.methods;                                                                                                                                                       
    if (currMethods->find(className) != currMethods->end()) return true;                                                                                                                                    
  }                                                                                                                                                                                                         
  return false;                                                                                                                                                                                             
}

/* -------------------------------- helper functions ----------------------------------*/


void CodeGenerator::visitProgramNode(ProgramNode* node) {
  // std::cout << "# PROGRAM NODE" << std::endl;
  std::cout << " .data" << std::endl; //check
  std::cout << "printstr: .asciz \"%d\\n\"" << std::endl << std::endl;
  std::cout << " .text" << std::endl;
  std::cout << " .globl Main_main" << std::endl;
  node->visit_children(this);
}

void CodeGenerator::visitClassNode(ClassNode* node) {
  this->currentClassName = node->identifier_1->name;
  this->currentClassInfo = this->classTable->at(this->currentClassName);
  node->visit_children(this);
}

void CodeGenerator::visitMethodNode(MethodNode* node) {
    // std::cout << "#### METHOD NODE (1): method prologue" << std::endl;
    this->currentMethodName = node->identifier->name;
    this->currentMethodInfo = (currentClassInfo.methods)->at(this->currentMethodName);
    
    std::cout << this->currentClassName << "_" << this->currentMethodName << ":" << std::endl;
    // push old %ebp
    std::cout << " push %ebp" << std::endl;
    // Set new %ebp (may want to set to current %esp)
    std::cout << " mov %esp, %ebp" << std::endl;
    // allocate space for local variables
    //      subtract from stack pointer
    //      look into localSize of MethodInfo
    std::cout << " sub $" << currentMethodInfo.localsSize << ", %esp" << std::endl;
    // save callee-save registers
    /* SPECS: The callee save registers are: %ebx, %esi, and %edi. */
    /* CORNELL: (callee) ebx, esi, edi, ebp, esp */
    std::cout << " push %ebx" << std::endl;
    std::cout << " push %esi" << std::endl;
    std::cout << " push %edi" << std::endl;

    // run method by visit_children    
    // std::cout << "#### METHOD NODE (2): method body (visit children)" << std::endl;
    node->visit_children(this);
    
    // std::cout << "#### METHOD NODE (3): method epilogue" << std::endl;
    // (1) restore callee-save registers
    std::cout << " pop %edi" << std::endl;
    std::cout << " pop %esi" << std::endl;
    std::cout << " pop %ebx" << std::endl;
   
    // (2) deallocate local space by moving stack pointer (%esp) to base pointer (%ebp)
    std::cout << " mov %ebp, %esp" << std::endl;
    // (3) restore base pointer by popping old %ebp from the stack
    std::cout << " pop %ebp" << std::endl;
    // (4) return using return address (ret instruction)
    std::cout << " ret" << std::endl; // does this require operands?
    // N.B. Store the return value in %eax before Epilogue phase
}

void CodeGenerator::visitMethodBodyNode(MethodBodyNode* node) {
  node->visit_children(this);
  if (!node->returnstatement) std::cout << " xor %eax, %eax" << std::endl; 
}

void CodeGenerator::visitParameterNode(ParameterNode* node) {
    // WRITEME: Replace with code if necessary
}

void CodeGenerator::visitDeclarationNode(DeclarationNode* node) {
    // WRITEME: Replace with code if necessary
}

void CodeGenerator::visitReturnStatementNode(ReturnStatementNode* node) {
    // std::cout << "#### RETURN_STATEMENT" << std::endl;
    node->visit_children(this);
    std::cout << " pop %eax" << std::endl;
}

void CodeGenerator::visitAssignmentNode(AssignmentNode* node) { 
  // std::cout << "#### ASSIGNMENT NODE" << std::endl;
  node->visit_children(this);

  if(node->identifier_2) { // local.member or member.member
      int offset1;
      if (isLocal(node->identifier_1->name, this->currentMethodInfo)) // local.member
      {
        offset1 = ((currentMethodInfo.variables)->at(node->identifier_1->name)).offset;
        std::cout << " mov " << offset1 << "(%ebp), %eax" << std::endl;
      } else { // member.member
        std::cout << " mov 8(%ebp), %ebx" << std::endl;
        offset1 = findOffset(this->classTable, node->identifier_1->name, this->currentClassName);
        std::cout << " mov " << offset1 << "(%ebx), %eax" << std::endl;
      }
      // %eax should hold pointer to identifier_1
      VariableInfo tempVariableInfo = findVariableInfo(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
      int offset2 = findOffset(this->classTable, node->identifier_2->name, tempVariableInfo.type.objectClassName);
      std::cout << " pop " << offset2 << "(%eax)" << std::endl;
        
      } else { // local or member
        if (isLocal(node->identifier_1->name, this->currentMethodInfo)) { // local --> DEFINITELY WORKS
            int offset = findOffset(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
            std::cout << " pop " << offset << "(%ebp)" << std::endl;
        } else { // member
            
            int memberOffset = findOffset(this->classTable, node->identifier_1->name, this->currentClassName);
            std::cout << " mov " << "8(%ebp), %eax" << std::endl; 

            std::cout << " pop " << memberOffset << "(%eax)" << std::endl;
        }
    }

}

void CodeGenerator::visitCallNode(CallNode* node) {
  node->visit_children(this);
}

void CodeGenerator::visitIfElseNode(IfElseNode* node) {
  // std::cout << "# IF ELSE" << std::endl;
  node->expression->accept(this);
  bool else_taken = node->statement_list_2;

  std::string ifLabel = "label_" + std::to_string(nextLabel()) ;
  std::string elseLabel = "";
  if (else_taken) elseLabel = "label_" + std::to_string(nextLabel()) ;
  std::string after_if_elseLabel = "label_" + std::to_string(nextLabel()) ;   
  std::cout << "  pop %eax" << std::endl; //reg1 (check)
   
  std::cout << "  cmp $0, %eax" << std::endl;
  if (else_taken) std::cout << "  je " << elseLabel << std::endl;
  else  std::cout << "  je " << after_if_elseLabel  << std::endl; 
  std::cout << ifLabel << ":" << std::endl; 
  for (std::list<StatementNode*>::iterator it = node->statement_list_1->begin(); it != node->statement_list_1->end(); it++) {
    (*it)->accept(this);
  }
  std::cout << "  jmp " << after_if_elseLabel << std::endl;
  
  if (else_taken)  {
    std::cout << elseLabel << ":" << std::endl; 
    for (std::list<StatementNode*>::iterator it = node->statement_list_2->begin(); it != node->statement_list_2->end(); it++) {
      (*it)->accept(this);
    }
  }
  
  std::cout << after_if_elseLabel << ":" << std::endl; 
}

void CodeGenerator::visitWhileNode(WhileNode* node) {
  // std::cout << "# WHILE" << std::endl;
  std::string whileLabel = "label_" + std::to_string(nextLabel()) ;
  std::string after_whileLabel = "label_" + std::to_string(nextLabel()) ;
 
  
  std::cout << whileLabel << ":" << std::endl; 
  node->expression->accept(this);
  std::cout << "  pop %eax" << std::endl; //reg1 (check) 
  std::cout << "  cmp $0, %eax" << std::endl; //comparison statement at beginning of while loop
  std::cout << "  je " << after_whileLabel << std::endl; //jumping to body of while loop
  
    for (std::list<StatementNode*>::iterator it = node->statement_list->begin(); it != node->statement_list->end(); it++) {
      (*it)->accept(this);
    }
  std::cout << " jmp " << whileLabel <<  std::endl;
  std::cout << after_whileLabel << ":" << std::endl; 
}

void CodeGenerator::visitPrintNode(PrintNode* node) {
  // std::cout << "# PRINT" << std::endl;
  node->visit_children(this);
  std::cout << " push $printstr" << std::endl;
  std::cout << " call printf" << std::endl;  
}

void CodeGenerator::visitDoWhileNode(DoWhileNode* node) {
  // std::cout << "# DO WHILE" << std::endl;
  std::string do_whileLabel = "label_" + std::to_string(nextLabel()) ; 
 
  std::cout << do_whileLabel << ":" << std::endl; 
  for (std::list<StatementNode*>::iterator it = node->statement_list->begin(); it != node->statement_list->end(); it++) {
    (*it)->accept(this);
  }
    node->expression->accept(this);

  std::cout << "  pop %eax" << std::endl; //reg1 (check)
  std::cout << "  cmp $0, %eax" << std::endl; //comparison statement at beginning of while loop
  std::cout << " jne " << do_whileLabel << std::endl;
}

void CodeGenerator::visitPlusNode(PlusNode* node) {
  node->visit_children(this);
  std::cout << "  # PLUS" << std::endl;
  std::cout << "  pop %edx" << std::endl; //reg2
  std::cout << "  pop %eax" << std::endl; //reg1
  std::cout << "  add %edx, %eax" << std::endl; //(reg1 + reg2) -> reg1
  std::cout << "  push %eax" << std::endl; //push reg1
}

void CodeGenerator::visitMinusNode(MinusNode* node) {
  node->visit_children(this);
  std::cout << "  # MINUS" << std::endl;
  std::cout << "  pop %edx" << std::endl; //reg2
  std::cout << "  pop %eax" << std::endl; //reg1
  std::cout << "  sub %edx, %eax" << std::endl; //(reg2 - reg1) -> reg2
  std::cout << "  push %eax" << std::endl; //push reg2
}

void CodeGenerator::visitTimesNode(TimesNode* node) {
  node->visit_children(this);
  std::cout << "  # MULTIPLY" << std::endl;
  std::cout << "  pop %edx" << std::endl; //reg2
  std::cout << "  pop %eax" << std::endl; //reg1
  std::cout << "  imul %edx, %eax" << std::endl; //(reg1 * reg2) -> reg1
  std::cout << "  push %eax" << std::endl; //push reg1
}

void CodeGenerator::visitDivideNode(DivideNode* node) {
  node->visit_children(this);
  std::cout << "  # DIVIDE" << std::endl;
  std::cout << "  pop %ebx" << std::endl; //reg2 = denominator 
  std::cout << "  pop %eax" << std::endl; //reg1 = numerator
  std::cout << " cdq" << std::endl; //sign extending eax into edx for numerator
  std::cout << "  idiv %ebx" << std::endl; //(%edx : %eax) / %ebx -> %eax
  std::cout << "  push %eax" << std::endl; //quotient result of division
}

void CodeGenerator::visitGreaterNode(GreaterNode* node) {
  node->visit_children(this);
  std::cout << " #GREATER_THAN" << std::endl; 
  std::string greaterLabel = "label_" + std::to_string(nextLabel()) + ":";
  std::cout << "  pop %ebx" << std::endl; //reg2
  std::cout << "  pop %eax" << std::endl; //reg1  
  std::cout << "  cmp %ebx, %eax" << std::endl;
  std::cout << " setg %al" << std::endl;
  std::cout << " movzx %al, %eax" << std::endl;
  std::cout << " push %eax" << std::endl;
}

void CodeGenerator::visitGreaterEqualNode(GreaterEqualNode* node) {
  node->visit_children(this);
  std::cout << " #GREATER_THAN_OR_EQUAL" << std::endl;
  std::cout << "  pop %ebx" << std::endl; //reg2
  std::cout << "  pop %eax" << std::endl; //reg1  
  std::cout << "  cmp %ebx, %eax" << std::endl;
  std::cout << " setge %al" << std::endl;
  std::cout << " movzx %al, %eax" << std::endl;
  std::cout << " push %eax" << std::endl;
}

void CodeGenerator::visitEqualNode(EqualNode* node) {
  node->visit_children(this);
  std::cout << " #EQUAL" << std::endl; 
  std::cout << "  pop %ebx" << std::endl; //reg2
  std::cout << "  pop %eax" << std::endl; //reg1  
  std::cout << "  cmp %ebx, %eax" << std::endl;
  std::cout << " sete %al" << std::endl;
  std::cout << " movzx %al, %eax" << std::endl;
  std::cout << " push %eax" << std::endl; 

}

void CodeGenerator::visitAndNode(AndNode* node) {
  node->visit_children(this);
  std::cout << "  # AND" << std::endl;
  std::cout << "  pop %ebx" << std::endl; //reg2
  std::cout << "  pop %eax" << std::endl; //reg1
  std::cout << "  andl %ebx, %eax" << std::endl; //(reg1 && reg2) -> reg1
  std::cout << "  andl $1, %eax" << std::endl; 
  std::cout << "  push %eax" << std::endl; //push reg1
}

void CodeGenerator::visitOrNode(OrNode* node) {
  node->visit_children(this);
  std::cout << "  # OR" << std::endl;
  std::cout << "  pop %ebx" << std::endl; //reg2
  std::cout << "  pop %eax" << std::endl; //reg1
  std::cout << "  orl %ebx, %eax" << std::endl; //(reg1 && reg2) -> reg1
  std::cout << "  andl $1, %eax" << std::endl; 
  std::cout << "  push %eax" << std::endl; //push reg1
}

void CodeGenerator::visitNotNode(NotNode* node) {
  node->visit_children(this);
  std::cout << "  # NOT" << std::endl;
  std::cout << "  pop %eax" << std::endl; //reg1
  std::cout << "  not %eax" << std::endl; //(!reg1) -> reg1
  std::cout << "  andl $1, %eax" << std::endl; 
  std::cout << "  push %eax" << std::endl; //push reg1
}

void CodeGenerator::visitNegationNode(NegationNode* node) {
  node->visit_children(this);
  std::cout << " #NEGATION" << std::endl;
  std::cout << " pop %eax" << std::endl;
  std::cout << " neg %eax" << std::endl;
  std::cout << " push %eax" << std::endl; 
}

void CodeGenerator::visitMethodCallNode(MethodCallNode* node) {
    
    // std::cout << "#### METHOD CALL NODE (1): pre-call sequence" << std::endl;
    // (1) save caller registers
    std::cout << " push %eax" << std::endl;
    std::cout << " push %ecx" << std::endl;
    std::cout << " push %edx" << std::endl;

    // (2) push arguments + self pointer on the stack
    // reference: https://piazza.com/class/l189pz66aj36k8?cid=343
     if(node->expression_list){
        for(auto it = node->expression_list->rbegin(); it != node->expression_list->rend(); ++it){
            (*it)->accept(this);
        }
    }
    
    // self pointer
    if(node->identifier_2) {
      int offset;
      if (isLocal(node->identifier_1->name, currentMethodInfo))
      {
        // get local offset
        offset = ((currentMethodInfo.variables)->at(node->identifier_1->name)).offset;
        std::cout << " push " << offset << "(%ebp)" << std::endl;
      } else { // class or superclass
        std::cout << " mov 8(%ebp), %ebx" << std::endl;
        offset = findOffset(this->classTable, node->identifier_1->name, this->currentClassName);
        std::cout << " mov " << offset << "(%ebx), %eax" << std::endl;
        std::cout << " push %eax" << std::endl;
      }
    } else {
        if (this->currentClassName != "Main") {
            std::cout << "   mov 8(%ebp), %eax" << std::endl;
            std::cout << "   push %eax" << std::endl;
        } else {
            std::cout << "   add $-4, %esp" << std::endl;
        }
    }

    // std::cout << "#### METHOD CALL NODE (2): call instruction" << std::endl;
    if (node->identifier_2) {
      VariableInfo memberInfo = findVariableInfo(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
      std::string tempClassName = findClassNameFromMethodName(node->identifier_2->name, memberInfo.type.objectClassName, this->classTable);
      std::cout << " call " << tempClassName << "_" << node->identifier_2->name << std::endl;
    } else {
      std::string tempClassName = findClassNameFromMethodName(node->identifier_1->name, this->currentClassName, this->classTable);
      std::cout << " call " << tempClassName << "_" << node->identifier_1->name << std::endl;
    }

    // std::cout << "#### METHOD CALL NODE (3): post-return sequence" << std::endl;
      int arg_size = 4;
      if (node->expression_list) {
        arg_size += 4 * node->expression_list->size();
      }
      
      std::cout << " add $" << std::to_string(arg_size) << ", %esp" << std::endl;

      std::cout << " mov %eax, %ebx" << std::endl; // store return value in %ebx

    // restore caller-save
    std::cout << " pop %edx" << std::endl;
    std::cout << " pop %ecx" << std::endl;
    std::cout << " pop %eax" << std::endl; // pop stack bottom back into %eax

    // push return to stack
    std::cout << " push %ebx" << std::endl;
}

void CodeGenerator::visitMemberAccessNode(MemberAccessNode* node) {
  // std::cout << "#### MEMBER ACCESS NODE" << std::endl;

  int offset1;
  if (isLocal(node->identifier_1->name, this->currentMethodInfo)) // local.member
  {
    offset1 = ((currentMethodInfo.variables)->at(node->identifier_1->name)).offset;
    std::cout << " mov " << offset1 << "(%ebp), %eax" << std::endl;
  } else { // member.member
    std::cout << " mov 8(%ebp), %ebx" << std::endl;
    offset1 = findOffset(this->classTable, node->identifier_1->name, this->currentClassName);
    std::cout << " mov " << offset1 << "(%ebx), %eax" << std::endl;
  }
  // %eax should hold pointer to identifier_1
  VariableInfo tempVariableInfo = findVariableInfo(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
  int offset2 = findOffset(this->classTable, node->identifier_2->name, tempVariableInfo.type.objectClassName);
  std::cout << " push " << offset2 << "(%eax)" << std::endl;

}

void CodeGenerator::visitVariableNode(VariableNode* node) {

  // std::cout << "# VARIABLE" << std::endl;
  if (!(isLocal(node->identifier->name, this->currentMethodInfo))) { 
        int memberOffset = findOffset(this->classTable, node->identifier->name, this->currentClassName);
        std::cout << "   mov " << "8(%ebp), %eax" << std::endl; 
        std::cout << "   mov " << memberOffset << "(%eax), %eax" << std::endl;
        std::cout << "   push %eax" << std::endl;
    } else { 				
        std::cout << "   mov " << currentMethodInfo.variables->at(node->identifier->name).offset << "(%ebp), %eax" << std::endl;
        std::cout << "   push %eax" << std::endl; 
  }

}

void CodeGenerator::visitIntegerLiteralNode(IntegerLiteralNode* node) {
  node->visit_children(this);  
  std::cout << " #INTEGER_LITERAL" << std::endl; 
  std::cout << " push $" << std::to_string(node->integer->value) << std::endl; 
}

void CodeGenerator::visitBooleanLiteralNode(BooleanLiteralNode* node) {
  node->visit_children(this);
  std::cout << " #BOOLEAN_LITERAL" << std::endl; 
  std::cout << " push $" << std::to_string(node->integer->value) << std::endl; 
}

void CodeGenerator::visitNewNode(NewNode* node) {
  // std::cout << "#### NEW NODE (1): allocate space" << std::endl;
  // 1. allocate space
  std::string objectTypeName = node->identifier->name;
  int size = findClassSize(objectTypeName, this->classTable);

  std::cout << " push $" << size << std::endl;
  std::cout << " call malloc" << std::endl;
  std::cout << " add $4, %esp" << std::endl;
  std::cout << " push %eax" << std::endl;

  // check constructor exists
  int i = 0;
  if (constructor_exists(this->classTable, objectTypeName)) {  
      // 2. call constructor
    // std::cout << "#### NEW NODE (2): constructor call - pre-call sequence" << std::endl;
    // (1) save caller registers
    std::cout << " push %eax" << std::endl;
    std::cout << " push %ecx" << std::endl;
    std::cout << " push %edx" << std::endl;

    i += 12;
    // (2) push arguments + self pointer on the stack
    // reference: https://piazza.com/class/l189pz66aj36k8?cid=343
    if(node->expression_list){
      for(auto it = node->expression_list->rbegin(); it != node->expression_list->rend(); ++it){
        (*it)->accept(this);
        i += 4;
      }
    }
    std::cout << " mov " << i << "(%esp), %eax" << std::endl;
    std::cout << " push %eax" << std::endl;

    // std::cout << "#### NEW NODE (2): constructor call - call instruction" << std::endl;
    std::cout << " call " << objectTypeName  << "_" << objectTypeName << std::endl;

    // std::cout << "#### NEW CALL NODE (3): constructor call - post-return sequence" << std::endl;
    int arg_size = 4 + (i-12);                                                                                                                                                                                
    std::cout << " add $" << arg_size << ", %esp" << std::endl;                                                                                                                                               
  
    // restore caller-save
    std::cout << " pop %edx" << std::endl;
    std::cout << " pop %ecx" << std::endl;
    std::cout << " pop %eax" << std::endl; // pop stack bottom back into %eax
    
  }
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