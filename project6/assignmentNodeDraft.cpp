void CodeGenerator::visitAssignmentNode(AssignmentNode* node) { //could be wrong
  node->visit_children(this);
  std::cout << " pop %ecx" << std::endl;
  // std::cout << "#### " << this->currentClassName << "_" << this->currentMethodName << std::endl;
  std::cout << "#### ASSIGNMENT NODE" << std::endl;
  /* cases:
  member
  localVar
  member.member
  localVar.member
  */

  // attempt three thanks zheng
  // /*
  if(node->identifier_2) {
      int offset;
      if (isLocal(node->identifier_1->name, this->currentMethodInfo)) // local.member (17.good.lang)
      {
        offset = ((currentMethodInfo.variables)->at(node->identifier_1->name)).offset;
        std::cout << " mov " << offset << "(%ebp), %eax" << std::endl;
        // std::cout << " push %eax" << std::endl;
        // i believe %eax holds local's pointer
      } else { // class or superclass // member.member
        std::cout << " mov 8(%ebp), %ebx" << std::endl;
        offset = findOffset(this->classTable, node->identifier_1->name, this->currentClassName); // if this works then we know findOffset is correct
        std::cout << " mov " << offset << "(%ebx), %eax" << std::endl; // need to calculate objectOffset
        // std::cout << " push %eax" << std::endl;
        // theoretically %eax holds member's pointer?
      }
      VariableInfo tempVariableInfo = findVariableInfo(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
      int offset2 = findOffset(this->classTable, node->identifier_2->name, tempVariableInfo.type.objectClassName);
      std::cout << " mov 8(%eax), %eax" << std::endl;

      // can u one-line the following two lines
      std::cout << " mov " << offset << "(%eax), %eax" << std::endl;
      std::cout << " mov %ecx, %eax" << std::endl;
        
        /* Variableinfo
        if (!(isLocal(node->identifier->name, this->currentMethodInfo))) { 
        int memberOffset = findOffset(this->classTable, node->identifier->name, this->currentClassName);
        std::cout << "   mov " << "8(%ebp), %eax" << std::endl; 
        std::cout << "   mov " << memberOffset << "(%eax), %eax" << std::endl;
        std::cout << "   push %eax" << std::endl;
        } else { // local		
            std::cout << "   mov " << currentMethodInfo.variables->at(node->identifier->name).offset << "(%ebp), %eax" << std::endl;
            std::cout << "   push %eax" << std::endl; 
        } */

    } else {
        // std::cout << " push 8(%ebp)" << std::endl;
        if (isLocal(node->identifier_1->name, this->currentMethodInfo)) { // local --> DEFINITELY WORKS
            int offset = findOffset(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
            std::cout << " mov %ecx, " << offset << "(%ebp)" << std::endl;
            // does not work idk why: access(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);      
        } else { // member
            // access(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
            // int offset = findOffset(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
            // std::cout << " mov %ecx, " << offset << "(%ebx)" << std::endl;
            // ^ removing that to see

            // taken from variable:
            int memberOffset = findOffset(this->classTable, node->identifier_1->name, this->currentClassName);
            std::cout << "   mov " << "8(%ebp), %eax" << std::endl; 
            std::cout << "   mov " << memberOffset << "(%eax), %eax" << std::endl;
            std::cout << "   mov %ecx, %eax" << std::endl;
        }
    }
    // */

  /* ATTEMPT 2
  if (node->identifier_2) { // same as memberaccess except you push (mov) instead of pop
    std::cout << "#### ASSIGNMENT NODE WITH IDENTIFIER_2" << std::endl;
    access(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
    VariableInfo tempVariableInfo = findVariableInfo(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
    int offset = findOffset(this->classTable, node->identifier_2->name, tempVariableInfo.type.objectClassName);
    std::cout << " mov %eax, " << offset << "(%ebx)" << std::endl;
  } else {
    std::cout << "#### ASSIGNMENT NODE WITH IDENTIFIER_1" << std::endl;
    // access(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
    // std::cout << " mov %eax, " << offset << "(%ebx)" << std::endl;
    if (isLocal(node->identifier_1->name, this->currentMethodInfo)) {
        int offset = findOffset(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
        std::cout << " mov %eax, " << offset << "(%ebp)" << std::endl;
        // does not work idk why: access(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);      
    } else {
        access(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
        int offset = findOffset(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
        std::cout << " mov %eax, " << offset << "(%ebx)" << std::endl;
    }
  }
  */

  // old


  // like member access, except instead of pushing something from an address to the stack, you pop something from the stack to an address

  // pop offset(%eax) /n

  // // WRITEME: Replace with code if necessary
  // std::cout << "# ASSIGNMENT" << std::endl; 
  // node->visit_children(this);
  // // std::cout << " pop %eax" << std::endl;

  // // 8(%ebp) is address of first member (offset 0)
  // // so we want to move 8(%ebp) into something like ebx
  // // then we want to move eax into offset(ebx)

  // if (node->identifier_2) {
  //   // VariableInfo tempVariableInfo = findVariableInfo(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
  //   // std::string tempClassName = tempVariableInfo.type.objectClassName;
  //   // int offset = findOffset(this->classTable, node->identifier_2->name, this->currentClassName);
  //   if (isLocal(node->identifier_1->name, this->currentMethodInfo)) { std::cout << "#### my friends!!"; }
  //   /*
  //   if (isLocal(node->identifier_1->name, this->currentMethodInfo)) {
  //     int offset = ((this->currentMethodInfo.variables)->at(node->identifier_1->name)).offset;
  //     std::cout << " mov " << offset << "(%ebp), %ebx" << std::endl;

  //     VariableInfo tempVariableInfo = findVariableInfo(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
  //     std::string tempClassName = tempVariableInfo.type.objectClassName;
    
  //     offset = findOffset(this->classTable, node->identifier_2->name, tempClassName);
  //     std::cout << " pop " << offset << "(%ebx)" << std::endl;
  
  //   } else {
  //     int offset = findOffset(this->classTable, node->identifier_2->name, this->currentClassName);
  //     std::cout << " mov 8(%ebp), %edx" << std::endl;
  //     std::cout << " mov " << offset << "(%edx), %ebx" << std::endl;

  //     VariableInfo tempVariableInfo = findVariableInfo(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
  //     std::string tempClassName = tempVariableInfo.type.objectClassName;
    
  //     offset = findOffset(this->classTable, node->identifier_2->name, tempClassName);
  //     std::cout << " pop " << offset << "(%ebx)" << std::endl;

  //   }
  //   */

  //   /*
  //   // address to ebx
  //   access(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
    
  //   VariableInfo tempVariableInfo = findVariableInfo(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
  //   std::string tempClassName = tempVariableInfo.type.objectClassName;
    
  //   int offset = findOffset(this->classTable, node->identifier_2->name, tempClassName);
  //   std::cout << " pop " << offset << "(%ebx)" << std::endl;
  //   */
  // } else { // hard coding bc im tired and idk what's going on
  //     // access(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
  //     if (isLocal(node->identifier_1->name, this->currentMethodInfo)) {
  //       int offset = findOffset(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
  //       std::cout << " pop " << offset << "(%ebp)" << std::endl;
  //     } else {
  //         access(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
  //         int offset = findOffset(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
  //         std::cout << " pop " << offset << "(%ebx)" << std::endl;
  //     }
  // }
  
  // /*
  // if (currentMethodInfo.variables->find(node->identifier_1->name) != currentMethodInfo.variables->end()) {
  //   offset = currentMethodInfo.variables->at(node->identifier_1->name).offset;
  //   std::cout << "# offset is: " << offset << std::endl; 
  // }
  // else {
  //   if (currentClassInfo.members->find(node->identifier_1->name) != currentClassInfo.members->end()) {
  //     offset = currentClassInfo.members->at(node->identifier_1->name).offset;
  //     std::cout << "# offset is: " << offset << std::endl; 
  //   }
  // }
  // */
  // // std::cout << " mov %eax, " << offset << "(%ebp)" << std::endl;
}



void CodeGenerator::visitAssignmentNode(AssignmentNode* node) {
  node->visit_children(this);
  std::cout << " pop %ecx" << std::endl;
  std::cout << "#### ASSIGNMENT NODE" << std::endl;

  if(node->identifier_2) { // local.member
      int offset1;
      if (isLocal(node->identifier_1->name, this->currentMethodInfo))
      {
        offset1 = ((currentMethodInfo.variables)->at(node->identifier_1->name)).offset;
        std::cout << " mov " << offset1 << "(%ebp), %eax" << std::endl;
        // i believe %eax holds local's pointer
      } else { // member.member
        std::cout << " mov 8(%ebp), %ebx" << std::endl;
        offset1 = findOffset(this->classTable, node->identifier_1->name, this->currentClassName);
        std::cout << " mov " << offset1 << "(%ebx), %eax" << std::endl; 
        // theoretically %eax holds member's pointer?
      }
      // %eax should hold pointer to identifier_1
      VariableInfo tempVariableInfo = findVariableInfo(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
      int offset2 = findOffset(this->classTable, node->identifier_2->name, tempVariableInfo.type.objectClassName);
      std::cout << " mov 8(%eax), %eax" << std::endl;
      std::cout << " mov " << offset2 << "(%eax), %eax" << std::endl;
      std::cout << " mov %ecx, %eax" << std::endl;
        
      } else {
        if (isLocal(node->identifier_1->name, this->currentMethodInfo)) { // local --> DEFINITELY WORKS
            int offset = findOffset(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
            std::cout << " mov %ecx, " << offset << "(%ebp)" << std::endl;
        } else { // member
            int memberOffset = findOffset(this->classTable, node->identifier_1->name, this->currentClassName);
            std::cout << "   mov " << "8(%ebp), %eax" << std::endl; 
            std::cout << "   mov " << memberOffset << "(%eax), %eax" << std::endl;
            std::cout << "   mov %ecx, %eax" << std::endl;
        }
    }

}