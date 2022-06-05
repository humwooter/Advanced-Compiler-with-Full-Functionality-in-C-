node->visit_children(this);
  std::cout << " pop %ecx" << std::endl;
  /* cases:
  member
  localVar
  member.member
  localVar.member
  */

  // /*

  if(node->identifier_2) { // local.member or member.member
      int offset1;
      if (isLocal(node->identifier_1->name, this->currentMethodInfo)) // local.member (17.good.lang)
      {
        offset1 = findOffset(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
        // ((currentMethodInfo.variables)->at(node->identifier_1->name)).offset;
        std::cout << " mov " << offset1 << "(%ebp), %eax" << std::endl;
        // std::cout << " push %eax" << std::endl;
        // i believe %eax holds local's pointer
      } else { // class or superclass // member.member
        std::cout << " mov 8(%ebp), %ebx" << std::endl;
        offset1 = findOffset(this->classTable, node->identifier_1->name, this->currentClassName); // if this works then we know findOffset is correct
        std::cout << " mov " << offset1 << "(%ebx), %eax" << std::endl; // need to calculate objectOffset
        // std::cout << " push %eax" << std::endl;
        // theoretically %eax holds member's pointer?
      }
      // %eax should hold pointer to identifier_1
      VariableInfo tempVariableInfo = findVariableInfo(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
      // std::cout << " mov 8(%eax), %eax" << std::endl;
      int offset2 = findOffset(this->classTable, node->identifier_2->name, tempVariableInfo.type.objectClassName);
      // can u one-line the following two lines
      std::cout << " mov " << offset2 << "(%eax), %eax" << std::endl;
      std::cout << " mov %ecx, %eax" << std::endl;
        
      } else { // local or member
        // std::cout << " push 8(%ebp)" << std::endl;
        if (isLocal(node->identifier_1->name, this->currentMethodInfo)) { // local --> DEFINITELY WORKS
            int offset = findOffset(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
            std::cout << " mov %ecx, " << offset << "(%ebp)" << std::endl;
            // does not work idk why: access(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);      
        } else { // member
            
            // taken from variable:
            int memberOffset = findOffset(this->classTable, node->identifier_1->name, this->currentClassName);
            std::cout << "   mov " << "8(%ebp), %eax" << std::endl; 
            std::cout << "   mov " << memberOffset << "(%eax), %eax" << std::endl;
            std::cout << "   mov %ecx, %eax" << std::endl;
        }
    }
    // */


void CodeGenerator::visitMemberAccessNode(MemberAccessNode* node) {
  // node->visit_children(this);
  std::cout << "#### MEMBER ACCESS NODE" << std::endl;
  /* cases:
  member.member
  localVar.member
  */

    int offset1;
    if (isLocal(node->identifier_1->name, this->currentMethodInfo)) // local.member (17.good.lang)
    {
      offset1 = ((currentMethodInfo.variables)->at(node->identifier_1->name)).offset;
      std::cout << " mov " << offset1 << "(%ebp), %eax" << std::endl;
      // std::cout << " push %eax" << std::endl;
      // i believe %eax holds local's pointer
    } else { // class or superclass // member.member
      std::cout << " mov 8(%ebp), %ebx" << std::endl;
      offset1 = findOffset(this->classTable, node->identifier_1->name, this->currentClassName); // if this works then we know findOffset is correct
      std::cout << " mov " << offset1 << "(%ebx), %eax" << std::endl; // need to calculate objectOffset
      // std::cout << " push %eax" << std::endl;
      // theoretically %eax holds member's pointer
    }
    VariableInfo tempVariableInfo = findVariableInfo(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
    int offset2 = findOffset(this->classTable, node->identifier_2->name, tempVariableInfo.type.objectClassName);
    // std::cout << " mov 8(%eax), %eax" << std::endl;

    // can u one-line the following two lines
    std::cout << " mov " << offset2 << "(%eax), %eax" << std::endl;
    std::cout << " push %eax" << std::endl; 
      
      
      /*else { // else of if (node->identifier_2) from assignment
        // std::cout << " push 8(%ebp)" << std::endl;
        if (isLocal(node->identifier_1->name, this->currentMethodInfo)) { // local --> DEFINITELY WORKS
            int offset = findOffset(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
            std::cout << " mov %ecx, " << offset << "(%ebp)" << std::endl;
            // does not work idk why: access(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);      
        } else { // member
            
            // taken from variable:
            int memberOffset = findOffset(this->classTable, node->identifier_1->name, this->currentClassName);
            std::cout << "   mov " << "8(%ebp), %eax" << std::endl; 
            std::cout << "   mov " << memberOffset << "(%eax), %eax" << std::endl;
            std::cout << "   mov %ecx, %eax" << std::endl;
        }
    }
    */
    // */

    // old (the "working" part was the part in the /**/)
    // VariableInfo tempVariableInfo = findVariableInfo(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
    // std::string currentClassName = tempVariableInfo.type.objectClassName;
    // var_to_eax(node->identifier_2->name, currentClassInfo);
    // std::cout << " push %eax" << std::endl; 

    // address to eax
    /*
    access(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
    
    VariableInfo tempVariableInfo = findVariableInfo(node->identifier_1->name, this->currentMethodInfo, this->currentClassName, this->classTable);
    std::string currentClassName = tempVariableInfo.type.objectClassName;
    int offset = findOffset(this->classTable, node->identifier_2->name, this->currentClassName);
    std::cout << " push " << offset << "(%eax)" << std::endl;
    */
}