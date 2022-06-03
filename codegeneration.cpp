#include "codegeneration.hpp"

// CodeGenerator Visitor Functions: These are the functions
// you will complete to generate the x86 assembly code. Not
// all functions must have code, many may be left empty.

void CodeGenerator::visitProgramNode(ProgramNode* node) {
    // WRITEME: Replace with code if necessary
  std::string wub = "%d\\n"; 
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

    // NEEL: do callee stuff - method prologue and epilogue
    // CORNELL: (callee) ebx, esi, edi, ebp, esp

    // WRITEME: Replace with code if necessary
    // node->identifier->name

    // MARKER
    // set currentMethodName and currentMethodInfo (not sure about this)
    this->currentMethodName = node->identifier->name;
    // set currentMethodInfo??

    std::cout << "#### METHOD NODE (1): method prologue" << std::endl;
    // push old %ebp
    std::cout << " push %ebp" << std::endl;
    // Set new %ebp (may want to set to current %esp)
    std::cout << " mov %esp, %ebp" << std::endl;
    // allocate space for local variables
    //      subtract from stack pointer
    //      look into localSize of MethodInfo  MARKER: ask katya about this
    std::cout << " sub " << currentMethodInfo.localSize << ", %esp" << std::endl;
        // MARKER: does localSize get set before this (i.e. not in the visit_children called below?)
    // save callee-save registers
    /* SPECS: The callee save registers are: %ebx, %esi, and %edi. */
    /* CORNELL: (callee) ebx, esi, edi, ebp, esp */
    std::cout << " push %ebx" << std::cout;
    std::cout << " push %esi" << std::cout;
    std::cout << " push %edi" << std::cout;

    // run method by visit_children    
    std::cout << "#### METHOD NODE (2): method body (visit children)" << std::endl;
    // node->visit_children(this)
    /* visits identifier, parameters in parameter_list, type, methodbody */
    node->visit_children(this);
    std::cout << " pop %eax"; // get return value
    
    std::cout << "#### METHOD NODE (3): method epilogue" << std::endl;
    // (1) restore callee-save registers
    std::cout << " pop %ebx" << std::cout;
    std::cout << " pop %esi" << std::cout;
    std::cout << " pop %edi" << std::cout;
    // (2) deallocate local space by moving stack pointer (%esp) to base pointer (%ebp)
    std::cout << " mov %ebp, %esp" << std::cout;
    // (3) restore base pointer by popping old %ebp from the stack
    std::cout << " pop %edx" << std::cout; // "dead" register; if this doesn't work then just do add %esp, 4
    // (4) return using return address (ret instruction)
    std::cout << " ret" << std::cout; // does this require operands?
    // N.B. Store the return value in %eax before Epilogue phase

}

void CodeGenerator::visitMethodBodyNode(MethodBodyNode* node) {
    // WRITEME: Replace with code if necessary
    // PIAZZA: callee should save %ebx, %esi, and %edi registers in visitMethodBodyNode()
    // ^^ i did that in visitMethodNode bc i thought it made more sense there but idk

    node->visit_children(this);
    // node->visit_children(this)
    /* visits declarations in declaration list, statements in statement list, and then return statement */
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
    node->visit_children(this);
    // visits expression
    // the expression should already push the result to %eax (return/destination reg)
    // so i think it's fine?
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
  std::cout << "  cmp %ebx, %eax" << std::endl;
  std::cout << " setg %al" << std::endl;
  std::cout << " movzx %al, %eax" << std::endl;
  std::cout << " push %eax" << std::endl; 

  std::cout << "  jg " << greater_equalLabel << std::endl;
  std::string label = "label_" + std::to_string(nextLabel());
  std::cout << " jmp  " << label << std::endl;
  
}
//check
void CodeGenerator::visitGreaterEqualNode(GreaterEqualNode* node) { //jump instr using cmp and jge
  // WRITEME: Replace with code if necessary
  node->visit_children(this);
  std::cout << " #GREATER_THAN_OR_EQUAL" << std::endl; 
  std::string greater_equalLabel = "label_" + std::to_string(nextLabel());
  std::cout << "  pop %ebx" << std::endl; //reg2
  std::cout << "  pop %eax" << std::endl; //reg1  
  std::cout << "  cmp %ebx, %eax" << std::endl;
  std::cout << " setge %al" << std::endl;
  std::cout << " movzx %al, %eax" << std::endl;
  std::cout << " push %eax" << std::endl; 

  std::cout << "  jge " << greater_equalLabel << std::endl;
  std::string label = "label_" + std::to_string(nextLabel());
  std::cout << " jmp  " << label << std::endl;
    
  //might be wrong
}
//check
void CodeGenerator::visitEqualNode(EqualNode* node) { //jump instr using cmp and je
  // WRITEME: Replace with code if necessar
  node->visit_children(this);
   std::cout << "  # Equal Node" << std::endl;
   std::string equalLabel = "label_" + std::to_string(nextLabel());   
    std::cout << " pop %ebx" << std::endl;
    std::cout << " pop %eax" << std::endl;
    std::cout << " cmp %ebx, %eax" << std::endl;
    std::cout << " je " << equalLabel << std::endl;
    std::cout << " push $1" << std::endl;
    std::string not_equalLabel = "label_" + std::to_string(nextLabel());   
    std::cout << " jmp  " << not_equalLabel << std::endl;
    //std::cout << lab1 << ": " << std::endl;
    std::cout << " push $0" << std::endl;
    //std::cout << lab2 << ": " << std::endl;
    
  // std::cout << " #EQUAL" << std::endl; 
  // std::string equalLabel = "label_" + std::to_string(nextLabel());
  // std::cout << "  pop %ebx" << std::endl; //reg2
  // std::cout << "  pop %eax" << std::endl; //reg1
  // std::cout << "  cmp %eax, %ebx" << std::endl;
  // std::cout << "  je " << equalLabel << std::endl;
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
    // NEEL: precall and post return, bc this is where u have access to arguments
    // PIAZZA: (caller) save %eax, %ecx, and %edx registers in visitMethodCallNode() 

    // set currentMethodName and currentMethodInfo (not sure about this)
    // ADD: handle object.method case
    this->currentMethodName = node->identifier_1->name;
    this->currentMethodInfo = this->currentClassInfo.methodTable->at(this->currentMethodName); // typechecker checks that this exists in table??


    // pre-call sequence
    /*      save caller registers: push registers that have been used to stack, except since we don't know which will be used bc it depends on the method i think, we should just do all?
            push arguments on the stack
            push return address
            call the method: "call" instruction; this moves into the method's prologue
    */
    
    std::cout << "#### METHOD CALL NODE (1): pre-call sequence" << std::endl;
    // node->visit_children(this); // do this first to evaluate argument expressions?
    /* visits identifier_1, identifier_2 (if exists), each expression in expression_list */
    // commented out visit_children bc visiting identifiers is trivial and the expressions in expression_list are visited
    // manually later (though perhaps visiting children would serve the same effect)
    // PIAZZA: (caller) save %eax, %ecx, and %edx registers in visitMethodCallNode() 
    // CORNELL: (caller) save eax, ecx, edx
    // MARKER: FIFO?? (1)

    // (1) save caller registers
    std::cout << " push %eax" << std::cout;
    std::cout << " push %ecx" << std::cout;
    std::cout << " push %edx" << std::cout;

    // (2) push arguments + self pointer on the stack
    // reference: https://piazza.com/class/l189pz66aj36k8?cid=343
     if(node->expression_list){
        for(auto it = node->expression_list->rbegin(); it != node->expression_list->rend(); ++it){
            visitExpressionNode((*it), this);
        }
    }

    /* NOTE!! TUTORIAL/TO-DO (preliminary implementation) HANDLING object.member CASES:
    if identifier_2

    Local Variable:
    - index into currentMethodInfo's VariableTable with identifier_1->name to get a VariableInfo
    - can get object pointer from offset attribute of VariableInfo (offset from what though? and also are we sure that this offset points to the object's self pointer? get katya's help with this)
    - can get classname from VariableInfo->type->objectClassName, and ofc label name is identifier_2->name

    Class/superclass variable: (assuming typecheck code has been modified to include both class and superclass variables in CurrentClassInfo's VariableTable)
    - index into currentClassInfo's VariableTable with identifier_1->name to get a VariableInfo
    - can get object pointer from offset attribute of VariableInfo (offset from what though? and also are we sure that this offset points to the object's self pointer? get katya's help with this)
    - can get classname from VariableInfo->type->objectClassName, and ofc label name is identifier_2->name

    */


    // MARKER: pushing self-pointer but I'm not sure if (1) this is supposed to happen here or in method prologue and (2) whether this is the correct address for the self-pointer
    // MARKER: is self-pointer different if object.method case?
    // ADD: object.method case (need to find object's self-pointer; object is either a local variable of current method or a member of the class)
    // local variables of current method: can use currentMethodName in methodTable of currentClassInfo? or ig CurrentMethodInfo (has a variable table, and VariableInfo has offset) (bc that includes offset)
    // member of the class/superclasses: use currentClassInfo (has variable table)

    // variableinfo is in methodInfo's variable table (bc u literally pushed it in at the beginning of the method: classA objectA; )
    // variable info -> type (compound type) -> objectclassname
    std::cout << " push 8(%ebp)" << std::endl; // it might also be -4(%ebp) (discussion slide 51)
    // i think according to michael glushchenko on piazza post @304 this BECOMES 8(%ebp) of the function call

    // (3) push return address (see note below)
    // https://www.aldeid.com/wiki/X86-assembly/Instructions/call
    // ^^ according to this source, call instruction (which we use below) handles pushing ret to stack

    std::cout << "#### METHOD CALL NODE (2): call instruction" << std::endl;
    // here, need to call the method and move into method prologue, with a jump to label
    // update: use call not jump

    // ADD: handle object.method case here
    std::cout << " call " << currentClassName << "_" << identifier_1->name << std::endl;

    // Current stack order:
    /*  eax
        ecx
        edx
        self pointer
        return address (ret)
    */

    // MARKER: do we need to set currentMethodInfo and currentMethodName here or just in visitMethodNode?

    std::cout << "#### METHOD CALL NODE (3): post-return sequence" << std::endl;
    // MARKER: FIFO?? (1)
    // (1) remove the arguments and return address from the stack
         if(node->expression_list){
        for(auto it = node->expression_list->rbegin(); it != node->expression_list->rend(); ++it){
            // visitExpressionNode((*it), this);
            std::cout << " pop %ecx" << std::cout; // pop arguments to %ecx which will later be overwritten
            // idk if theres some specific/more standard/legit/efficient way we are supposed to remove the arguments
        }
    }
    // (2) retrieve the return value from %eax
    // NOTE: I assume retrieve means just send it to the stack?? lol idk what else i would do with it
    std::cout << " push %eax" << std::cout;
    // (3) restore caller-save registers
    std::cout << " pop %eax" << std::cout; // pop stack bottom back into %eax
    std::cout << " pop %ecx" << std::cout;
    std::cout << " pop %edx" << std::cout;
    // if you use "call" and "ret", return address and jump is handled for you
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
