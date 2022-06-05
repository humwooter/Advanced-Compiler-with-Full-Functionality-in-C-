#include "codegeneration.hpp"

//bool local;
//bool param;
// int currLocalOffset = 0;
// int currParamOffset = 0;
int offset;
// CodeGenerator Visitor Functions: These are the functions
// you will complete to generate the x86 assembly code. Not
// all functions must have code, many may be left empty.

/* -------------------------------- helper functions ----------------------------------*/

void addMembers(ClassInfo classInfo, ClassInfo superClassInfo) {
  for (std::pair<std::string,VariableInfo> var : *(superClassInfo.members)) {
    classInfo.members->insert(var);
    classInfo.membersSize += 4;
  }
}
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

// could prob rewrite using currentMethodInfo lmao
bool isLocal(ClassTable* classTable, std::string memberName, std::string methodName, std::string className) {
    VariableTable* currentVariableTable = (((classTable->at(className)).methods)->at(methodName)).variables;
    return (currentVariableTable->find(memberName) != currentVariableTable->end());
}

bool isLocal(std::string memberName, MethodInfo methodInfo) {
    VariableTable* currentVariableTable = methodInfo.variables;
    return (currentVariableTable->find(memberName) != currentVariableTable->end());
}

// can prob rewrite with classInfo instead of className
// for nonLocal case
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

// can prob replace className with currentClassInfo
VariableInfo findVariableInfo(std::string memberName, MethodInfo methodInfo, std::string className, ClassTable* classTable) {
  // can assume exist bc typechecking
  
  // bool isLocal(std::string memberName, MethodInfo methodInfo) {
  if (isLocal(memberName, methodInfo) && (methodInfo.variables->find(memberName) != methodInfo.variables->end())) {
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

// VariableInfo findVariableInfo(std::string memberName, MethodInfo methodInfo, ClassInfo classInfo) {
//   if (
// }

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
  if (classTable->find(className) != classTable->end()) {
    ClassInfo currentClassInfo = classTable->at(className);
    size += currentClassInfo.membersSize;
    std::string currentSuperclassName = currentClassInfo.superClassName;

    while (currentSuperclassName != "") {
      currentClassInfo = classTable->at(currentSuperclassName);
      size += currentClassInfo.membersSize;
      currentSuperclassName = currentClassInfo.superClassName;
    }

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


// address to ebx
void access(std::string memberName, MethodInfo methodInfo, std::string className, ClassTable* classTable) {
  int offset;
  if (isLocal(memberName, methodInfo)) {
    offset = ((methodInfo.variables)->at(memberName)).offset;
    std::cout << " mov " << offset << "(%ebp), %ebx" << std::endl;
  } else {
    offset = findOffset(classTable, memberName, className);
    std::cout << " mov 8(%ebp), %edx" << std::endl;
    std::cout << " mov " << offset << "(%edx), %ebx" << std::endl;
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
  this->currentClassInfo = (*(this->classTable))[currentClassName];
  node->visit_children(this);
  /* STUFF FROM TYPECHECK + EXTRA STUFF FOR CLASS NODE */       
  
}

void CodeGenerator::visitMethodNode(MethodNode* node) {
    // WRITEME: Replace with code if necessary
    std::cout << "#### METHOD NODE (1): method prologue" << std::endl;
    std::string methodName = node->identifier->name;
    this->currentMethodName = methodName;
    this->currentMethodInfo = (*((this->currentClassInfo).methods))[methodName];

    
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
  node->visit_children(this);
  
}

// void CodeGenerator::visitAssignmentNode(AssignmentNode* node) { //could be wrong

//   std::cout << "# ASSIGNMENT" << std::endl; 
//   node->visit_children(this);
//   // std::string assigned_class; 
//   // std::string var_name; 
//   // if (node->identifier_2) {
//   //   assigned_class = node->identifier_1->objectClassName;
//   //   var_name = node->identifier_2->name;
//   //   //
//   // }
//   // else {
//   //   assigned_class = this->currentClassName;
//   //   var_name = node->identifier_1->name;
//   // }
//     if(node->identifier_2) { // if local
//     int objectOffset;
//     if (isLocal(node->identifier_1->name, currentMethodInfo))
//       {
//         // get local offset
//         objectOffset = ((currentMethodInfo.variables)->at(node->identifier_1->name)).offset;
//         std::cout << "  push " << objectOffset << "(%ebp)" << std::endl;
//       } else {
//       std::cout << " mov 8(%ebp), %ebx" << std::endl;
//       objectOffset = findOffset(this->classTable, node->identifier_1->name, this->currentClassName);
//       std::cout << " mov " << objectOffset << "(%ebx), %eax" << std::endl; // need to calculate objectOffset
//       std::cout << " push %eax" << std::endl;
//     } 
//     } else {
//     std::cout << " push 8(%ebp)" << std::endl;
//   }
    
//   if (node->identifier_2) {
//     if (currentMethodInfo.variables->find(node->identifier_2->name) != currentMethodInfo.variables->end()) { //local
//       offset = currentMethodInfo.variables->at(node->identifier_1->name).offset;
//       //std::cout << "  push " << offset << "(%ebp)" << std::endl;
//       std::cout << " mov " << offset << "(%ebp), %eax" << std::endl; // <-- this line
//       std::cout << " push %eax" << std::endl; // <-- this line
//       std::cout << "# offset is: " << offset << std::endl;                
//     }
//     else { //member
//       if (currentClassName != "Main") {
//         std::cout << " mov 8(%ebp), %ebx" << std::endl;
//         offset = findOffset(this->classTable, node->identifier_1->name, this->currentClassName);
//         std::cout << " mov " << offset << "(%ebx), %eax" << std::endl;
//         std::cout << " push %eax" << std::endl;
//         //std::cout << " mov " << offset << "(%ebx), %eax" << std::endl; // need to calculate objectOffset
//         //std::cout << " push %eax" << std::endl;
//       }
//     }
//   }
//   else { //only identifier_1
//     if (currentMethodInfo.variables->find(node->identifier_1->name) != currentMethodInfo.variables->end()) { //local/param
//       offset = currentMethodInfo.variables->at(node->identifier_1->name).offset;
//       std::cout << "# offset is: " << offset << std::endl;
      
//       std::cout << "  pop %eax" << std::endl;
//       std::cout <<  " mov %eax, " << offset << "(%ebp)" << std::endl;
//     }
//     else {
//       if (currentClassInfo.members->find(node->identifier_1->name) != currentClassInfo.members->end()) { //member
//         //offset = currentClassInfo.members->at(node->identifier_1->name).offset;
//         offset = findOffset(this->classTable, node->identifier_1->name, this->currentClassName); 
//         std::cout << "# offset is: " << offset << std::endl; 

//         // std::cout << "  pop %eax" << std::endl;
//         // std::cout <<  " mov %eax, " << offset << "(%ebp)" << std::endl;

//         std::cout << " mov 8(%ebp), %ebx" << std::endl;
//         offset = findOffset(this->classTable, node->identifier_1->name, this->currentClassName);
//         std::cout << " mov " << offset << "(%ebx), %eax" << std::endl;
//         std::cout << " push %eax" << std::endl;
      
//       }
//       //search superclasses
//     }
//   }
   
//   // std::cout << "# ASSIGNMENT" << std::endl;
// }

// void CodeGenerator::visitAssignmentNode(AssignmentNode* node) { //could be wrong
//   std::cout << "#### ASSIGNMENT NODE" << std::endl;
//   node->visit_children(this);
//   std::cout << " pop %eax" << std::endl;
//   if(node->identifier_2) { // local.member or member.member
//       int offset1;
//       if (isLocal(node->identifier_1->name, this->currentMethodInfo)) // local.member (17.good.lang)
//       {
//         offset1 = findOffset(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
//         std::cout << " mov " << offset1 << "(%ebp), %eax" << std::endl;
//       } else { // class or superclass // member.member
//         std::cout << " mov 8(%ebp), %ebx" << std::endl;
//         offset1 = findOffset(this->classTable, node->identifier_1->name, this->currentClassName); // if this works then we know findOffset is correct
//         std::cout << " mov " << offset1 << "(%ebx), %eax" << std::endl; // need to calculate objectOffset
//       }
//       // %eax should hold pointer to identifier_1
//       VariableInfo tempVariableInfo = findVariableInfo(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
//       // std::cout << " mov 8(%eax), %eax" << std::endl;
//       int offset2 = findOffset(this->classTable, node->identifier_2->name, tempVariableInfo.type.objectClassName);
//       // can u one-line the following two lines
//       std::cout << " mov " << offset2 << "(%eax), %eax" << std::endl;
//       //std::cout << " mov %ecx, %eax" << std::endl;

//        } else { // local or member
//         // std::cout << " push 8(%ebp)" << std::endl;
//         if (isLocal(node->identifier_1->name, this->currentMethodInfo)) { // local --> DEFINITELY WORKS
//             int offset = findOffset(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
//             std::cout << " mov %eax, " << offset << "(%ebp)" << std::endl;
//             // does not work idk why: access(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);      
//         } else { // member
            
//             // taken from variable:
//             int memberOffset = findOffset(this->classTable, node->identifier_1->name, this->currentClassName);
//             std::cout << "   mov " << "8(%ebp), %eax" << std::endl; 
//             std::cout << "   mov " << memberOffset << "(%eax), %eax" << std::endl;
//             std::cout << "   mov %ecx, %eax" << std::endl;
//         }
//     }
// }

void CodeGenerator::visitAssignmentNode(AssignmentNode* node) { //could be wrong
  std::cout << "#### ASSIGNMENT NODE" << std::endl;
  node->visit_children(this);

  if(node->identifier_2) { // local.member or member.member
      int offset1;
      if (isLocal(node->identifier_1->name, this->currentMethodInfo)) // local.member (17.good.lang)
      {
        offset1 = ((currentMethodInfo.variables)->at(node->identifier_1->name)).offset;
        std::cout << " mov " << offset1 << "(%ebp), %eax" << std::endl;
        // i believe %eax holds local's pointer
      } else { // class or superclass // member.member
        std::cout << " mov 8(%ebp), %ebx" << std::endl;
        offset1 = findOffset(this->classTable, node->identifier_1->name, this->currentClassName); // if this works then we know findOffset is correct
        std::cout << " mov " << offset1 << "(%ebx), %eax" << std::endl; // need to calculate objectOffset
        // theoretically %eax holds member's pointer?
      }
      // %eax should hold pointer to identifier_1
      VariableInfo tempVariableInfo = findVariableInfo(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
      int offset2 = findOffset(this->classTable, node->identifier_2->name, tempVariableInfo.type.objectClassName);
      // can u one-line the following two lines

      std::cout << " pop " << offset2 << "(%eax)" << std::endl;
      // std::cout << " mov " << offset2 << "(%eax), %eax" << std::endl;
      // std::cout << " pop %eax" << std::endl;
        
      } else { // local or member
        if (isLocal(node->identifier_1->name, this->currentMethodInfo)) { // local --> DEFINITELY WORKS
            int offset = findOffset(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
            std::cout << " pop " << offset << "(%ebp)" << std::endl;
            // does not work idk why: access(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);      
        } else { // member
            
            // taken from variable:
            int memberOffset = findOffset(this->classTable, node->identifier_1->name, this->currentClassName);
            std::cout << " mov " << "8(%ebp), %eax" << std::endl; 

            std::cout << " pop " << memberOffset << "(%eax)" << std::endl;
            // std::cout << "   mov " << memberOffset << "(%eax), %eax" << std::endl;
            // std::cout << "   pop %eax" << std::endl;
        }
    }
}
void CodeGenerator::visitCallNode(CallNode* node) {
  // WRITEME: Replace with code if necessary
  node->visit_children(this);
}

void CodeGenerator::visitIfElseNode(IfElseNode* node) { //could be wrong
  // WRITEME: Replace with code if necessary
  std::cout << "# IF ELSE" << std::endl;
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

void CodeGenerator::visitWhileNode(WhileNode* node) { //might be wrong
  //WRITEME: Replace with code if necessary
  std::cout << "# WHILE" << std::endl;
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
  // WRITEME: Replace with code if necessary
  std::cout << "# PRINT" << std::endl;
  node->visit_children(this);
  std::cout << " push $printstr" << std::endl;
  std::cout << " call printf" << std::endl;  
}

void CodeGenerator::visitDoWhileNode(DoWhileNode* node) {
  // WRITEME: Replace with code if necessary
  std::cout << "# DO WHILE" << std::endl;
  std::string do_whileLabel = "label_" + std::to_string(nextLabel()) ;
  //std::string after_whileLabel = "label_" + std::to_string(nextLabel()) ;   
 
  std::cout << do_whileLabel << ":" << std::endl; 
  for (std::list<StatementNode*>::iterator it = node->statement_list->begin(); it != node->statement_list->end(); it++) {
    (*it)->accept(this);
  }
    node->expression->accept(this);

  std::cout << "  pop %eax" << std::endl; //reg1 (check)
  std::cout << "  cmp $0, %eax" << std::endl; //comparison statement at beginning of while loop
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
  std::cout << "#### METHOD CALL NODE (1): pre-call sequence" << std::endl;
  // (1) save caller registers
  std::cout << " push %eax" << std::endl;
  std::cout << " push %ecx" << std::endl;
  std::cout << " push %edx" << std::endl;

  // std::string method_call_class;
  // std::string method_name;
  if(node->expression_list){
    for(auto it = node->expression_list->rbegin(); it != node->expression_list->rend(); ++it){
      //visitExpressionNode((*it), this);
      (*it)->accept(this);
    }
  }
  if(node->identifier_2) { // if local
    int objectOffset;
    if (isLocal(node->identifier_1->name, currentMethodInfo))
      {
        // get local offset
        objectOffset = ((currentMethodInfo.variables)->at(node->identifier_1->name)).offset;
        std::cout << "  push " << objectOffset << "(%ebp)" << std::endl;
      } else {
      std::cout << " mov 8(%ebp), %ebx" << std::endl;
      objectOffset = findOffset(this->classTable, node->identifier_1->name, this->currentClassName);
      std::cout << " mov " << objectOffset << "(%ebx), %eax" << std::endl; // need to calculate objectOffset
      std::cout << " push %eax" << std::endl;
    } 
  } else {
    std::cout << " push 8(%ebp)" << std::endl;
  }
  std::string saveMethodName = this->currentMethodName;
  MethodInfo saveMethodInfo = this->currentMethodInfo;
  std::cout << "#### METHOD CALL NODE (2): call instruction" << std::endl;
  // if (node->identifier_2) { // must be object via TypeCheck
  //   VariableInfo memberInfo = findVariableInfo(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
  //   std::string tempClassName = memberInfo.type.objectClassName;
  //   //this->currentMethodName = node->identifier_2->name;
  //   //this->currentMethodInfo = ((this->classTable->at(tempClassName)).methods)->at(this->currentMethodName);
  //   std::cout << " call " << tempClassName << "_" << node->identifier_2->name << std::endl;
  // } else {
  //   // this->currentMethodName = node->identifier_1->name;
  //   // this->currentMethodInfo = findMethodInfo(this->currentMethodName, this->currentClassName, this->classTable);
  //   std::string tempClassName = findClassNameFromMethodName(this->currentMethodName, this->currentClassName, this->classTable);
  //   std::cout << " call " << tempClassName << "_" << node->identifier_1->name << std::endl;
  // }

  // this->currentMethodName = saveMethodName;
  // this->currentMethodInfo = saveMethodInfo;
  std::cout << "#### METHOD CALL NODE (2): call instruction" << std::endl;
  if (node->identifier_2) {
    VariableInfo memberInfo = findVariableInfo(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
    // std::string tempClassName = memberInfo.type.objectClassName;
    std::string tempClassName = findClassNameFromMethodName(node->identifier_2->name, memberInfo.type.objectClassName, this->classTable);
    std::cout << " call " << tempClassName << "_" << node->identifier_2->name << std::endl;
  } else {
    std::string tempClassName = findClassNameFromMethodName(node->identifier_1->name, this->currentClassName, this->classTable);
    std::cout << " call " << tempClassName << "_" << node->identifier_1->name << std::endl;
  }
  std::cout << "#### METHOD CALL NODE (3): post-return sequence" << std::endl;
  // if(node->expression_list){
  //   for(auto it = node->expression_list->rbegin(); it != node->expression_list->rend(); ++it){
  //     // visitExpressionNode((*it), this);
  //     std::cout << " pop %ecx" << std::endl; // pop arguments to %ecx which will later be overwritten
  //     // idk if theres some specific/more standard/legit/efficient way we are supposed to remove the arguments
  //   }
  // }

  //removing arguments from stack
  int arg_size = 4;
  if (node->expression_list) {
    arg_size += 4 * node->expression_list->size();
  }
  std::cout << " add $" << std::to_string(arg_size) << ", %esp" << std::endl;  
  std::cout << " mov %eax, %ebx" << std::endl; 
  std::cout << " pop %edx" << std::endl;
  std::cout << " pop %ecx" << std::endl;
  std::cout << " pop %eax" << std::endl; // pop stack bottom back into %eax
  std::cout << " push %ebx" << std::endl; 
}
void CodeGenerator::visitMemberAccessNode(MemberAccessNode* node) {
  std::cout << "#### MEMBER ACCESS NODE" << std::endl;

  int offset1;
  if (isLocal(node->identifier_1->name, this->currentMethodInfo)) // local.member (17.good.lang)
  {
    offset1 = ((currentMethodInfo.variables)->at(node->identifier_1->name)).offset;
    std::cout << " mov " << offset1 << "(%ebp), %eax" << std::endl;
  } else { // class or superclass // member.member
    std::cout << " mov 8(%ebp), %ebx" << std::endl;
    offset1 = findOffset(this->classTable, node->identifier_1->name, this->currentClassName); // if this works then we know findOffset is correct
    std::cout << " mov " << offset1 << "(%ebx), %eax" << std::endl; // need to calculate objectOffset
  }
  // %eax should hold pointer to identifier_1
  VariableInfo tempVariableInfo = findVariableInfo(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
  int offset2 = findOffset(this->classTable, node->identifier_2->name, tempVariableInfo.type.objectClassName);
  // can u one-line the following two lines
  //std::cout << " mov " << offset2 << "(%eax), %eax" << std::endl;
  //std::cout << " push %eax" << std::endl;
  std::cout << " push " << std::to_string(offset2) << "(%eax)" << std::endl;
}
// void CodeGenerator::visitMemberAccessNode(MemberAccessNode* node) { //fix
//   std::cout << "# MEMBER ACCESS" << std::endl;                  
//   var_to_eax(node->identifier_1->name, currentClassInfo);

//   //int offset2 = findOffset(this->classTable, node->identifier_2->name, tempVariableInfo.type.objectClassName);
      
//   std::string object_name = node->identifier_1->name;
//   VariableInfo tempVariableInfo = findVariableInfo(object_name, this->currentMethodInfo, this->currentClassName, this->classTable);

  
//   std::string object_class = tempVariableInfo.type.objectClassName;
//   std::string mem = node->identifier_2->name;
 
//   offset = findOffset(this->classTable, mem, object_class);
//   if (this->classTable->find(object_class) != this->classTable->end()) {
//     ClassInfo curr = (*classTable)[object_class];
//     offset = curr.members->at(mem).offset;

//   }
 
// }
void CodeGenerator::visitVariableNode(VariableNode* node) {
  std::cout << "# VARIABLE" << std::endl;
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
// void CodeGenerator::visitVariableNode(VariableNode* node) {
//   // WRITEME: Replace with code if necessary
//   node->visit_children(this);
//   std::cout << "# VARIABLE" << std::endl;
//   std::string var_name = node->identifier->name;

//   var_to_eax(var_name, this->currentMethodInfo, this->currentClassInfo);
//   std::cout << " push %eax" << std::endl; 
// }

void CodeGenerator::visitIntegerLiteralNode(IntegerLiteralNode* node) {
  // WRITEME: Replace with code if necessary
  node->visit_children(this);  
  std::cout << " #INTEGER_LITERAL" << std::endl; 
  std::cout << " push $" << std::to_string(node->integer->value) << std::endl; 
}

void CodeGenerator::visitBooleanLiteralNode(BooleanLiteralNode* node) {
  // WRITEME: Replace with code if necessary
  node->visit_children(this);
  std::cout << " #BOOLEAN_LITERAL" << std::endl; 
  std::cout << " push $" << std::to_string(node->integer->value) << std::endl; 
  
}

void CodeGenerator::visitNewNode(NewNode* node) {
  // WRITEME: Replace with code if necessary
  std::cout << "#### NEW NODE (1): allocate space" << std::endl;
  // 1. allocate space
  std::string objectTypeName = node->identifier->name;
  int size = findClassSize(objectTypeName, this->classTable);
  
  std::cout << " push $" << size << std::endl;
  std::cout << " call malloc" << std::endl;
  std::cout << " add $4, %esp" << std::endl;
  std::cout << " push %eax" << std::endl; // is this ok to be called here?

  int i = 0;
  if (constructor_exists(this->classTable, objectTypeName)) {
  std::cout << "#### NEW NODE (2): constructor call - pre-call sequence" << std::endl;
  // (1) save caller registers
  std::cout << " push %eax" << std::endl;
  std::cout << " push %ecx" << std::endl;
  std::cout << " push %edx" << std::endl;
  i += 12;
  if(node->expression_list){
    for(auto it = node->expression_list->rbegin(); it != node->expression_list->rend(); ++it){
      //visitExpressionNode((*it), this);
      (*it)->accept(this);
      i += 4;
    }
  }
  // self pointer?
  std::cout << " mov " << std::to_string(i) << "(%esp), %eax" << std::endl; 
  std::cout << " push %eax" << std::endl;

  std::cout << "#### NEW NODE (2): constructor call - call instruction" << std::endl;
  std::cout << " call " << objectTypeName  << "_" << objectTypeName <<  std::endl;
 
  std::cout << "#### METHOD CALL NODE (3): constructor call - post-return sequence" << std::endl;
  int arg_size = 4 + (i-12);
  std::cout << " add $" << arg_size << ", %esp" << std::endl; 
  // if(node->expression_list){
  //   for(auto it = node->expression_list->rbegin(); it != node->expression_list->rend(); ++it){
  //     // visitExpressionNode((*it), this);
  //     std::cout << " pop %ecx" << std::endl; // pop arguments to %ecx which will later be overwritten
  //     // idk if theres some specific/more standard/legit/efficient way we are supposed to remove the arguments
  //   }
  // }
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
  // WRITEME: Replace with code if necessarynode->
  node->objectClassName = node->identifier->name;
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
