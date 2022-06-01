//Project 5: Katya Raman(4803987) & Karanina Zim(4626420)

#include "typecheck.hpp"
bool local;
bool param;

// Defines the function used to throw type errors. The possible
// type errors are defined as an enumeration in the header file.
void typeError(TypeErrorCode code) {
  switch (code) {
    case undefined_variable:
      std::cerr << "Undefined variable." << std::endl;
      break;
    case undefined_method:
      std::cerr << "Method does not exist." << std::endl;
      break;
    case undefined_class:
      std::cerr << "Class does not exist." << std::endl;
      break;
    case undefined_member:
      std::cerr << "Class member does not exist." << std::endl;
      break;
    case not_object:
      std::cerr << "Variable is not an object." << std::endl;
      break;
    case expression_type_mismatch:
      std::cerr << "Expression types do not match." << std::endl;
      break;
    case argument_number_mismatch:
      std::cerr << "Method called with incorrect number of arguments." << std::endl;
      break;
    case argument_type_mismatch:
      std::cerr << "Method called with argument of incorrect type." << std::endl;
      break;
    case while_predicate_type_mismatch:
      std::cerr << "Predicate of while loop is not boolean." << std::endl;
      break;
    case do_while_predicate_type_mismatch:
      std::cerr << "Predicate of do while loop is not boolean." << std::endl;
      break;
    case if_predicate_type_mismatch:
      std::cerr << "Predicate of if statement is not boolean." << std::endl;
      break;
    case assignment_type_mismatch:
      std::cerr << "Left and right hand sides of assignment types mismatch." << std::endl;
      break;
    case return_type_mismatch:
      std::cerr << "Return statement type does not match declared return type." << std::endl;
      break;
    case constructor_returns_type:
      std::cerr << "Class constructor returns a value." << std::endl;
      break;
    case no_main_class:
      std::cerr << "The \"Main\" class was not found." << std::endl;
      break;
    case main_class_members_present:
      std::cerr << "The \"Main\" class has members." << std::endl;
      break;
    case no_main_method:
      std::cerr << "The \"Main\" class does not have a \"main\" method." << std::endl;
      break;
    case main_method_incorrect_signature:
      std::cerr << "The \"main\" method of the \"Main\" class has an incorrect signature." << std::endl;
      break;
  }
  exit(1);
}

/* -------------------------------- helper functions ----------------------------------*/

ClassInfo getCurrentClassInfo(ClassTable* classTable, std::string currentClassName) {
  //iterate through classTable and find the classInfo that matches currentClassName
  if (classTable->find(currentClassName) == classTable->end()) typeError(undefined_class);
  return (*classTable)[currentClassName];
}

VariableInfo getCurrentMemberInfo(ClassInfo curr_classInfo, std::string currentMemberName) {
  if (curr_classInfo.members->find(currentMemberName) == curr_classInfo.members->end()) {
    typeError(undefined_member);
  }
  return (*curr_classInfo.members)[currentMemberName]; //why is this an error?
}


/**********************************************************/ 
/* ---------------- varExists functions ------------------*/
//used for: undefined variable error
bool varExists(MethodTable* methods, std::string var_name) {
 //searches through MethodTable of ClassTable to check parameter and local vars      
  if (methods->find(var_name) == methods->end()) return false;
  return true;
}

bool varExists(VariableTable* members, std::string var_name) {
//searches through VariableTable of ClassTable to check if member variables
  if (members->find(var_name) == members->end()) return false;
  return true;
}

bool varExists(ClassInfo curr_classInfo, std::string var_name) {
  //searches through MethodTable of ClassTable to check parameter and local vars
  //searches through VariableTable of ClassTable to check if member variables
  if (!varExists(curr_classInfo.methods, var_name) && !varExists(curr_classInfo.members, var_name)) {
    typeError(undefined_variable); 
    return false;
  }
  return true;
}
/* ---------------- varExists functions ------------------*/  
/**********************************************************/


/***********************************************************/ 
/* ---------------- classExists functions ------------------*/
//used for: not_object error, no_main_class error  
bool classExists(ClassTable *classTable, std::string class_name, TypeErrorCode code) {
  if (classTable->find(class_name) == classTable->end()) {
    typeError(code);
    return false;
  }
  return true;
}

bool findClass(ClassTable *classTable, std::string class_name, ClassInfo *curr_classInfo) {
  //current class is not in classTable and parent class isn't either
  if (classTable->find(class_name) != classTable->end() && curr_classInfo->superClassName == "") return true;
  if ((classTable->find(class_name) == classTable->end()) && curr_classInfo->superClassName == "") {
    return false;
  }
  if (classTable->find(curr_classInfo->superClassName) == classTable->end()) {
    return false;
  }
  else return findClass(classTable, curr_classInfo->superClassName, &classTable->at(curr_classInfo->superClassName));
}
/* ---------------- classExists functions ------------------*/
/************************************************************/      



/***********************************************************/
/* ---------------- methodExists functions ------------------*/
//used for: undefined method error, no_main_method error
bool methodExists(ClassInfo curr_classInfo, std::string method_name, TypeErrorCode code) {
  MethodTable *methods = curr_classInfo.methods;

  if (methods->find(method_name) == methods->end()) {
    typeError(code);   
    return false;
  }
  return true;
}
/* ---------------- methodExists functions ------------------*/
/***********************************************************/


/***********************************************************/
/* ---------------- isClass functions ------------------*/
//used for: not object error
bool isClass(ClassTable classTable, std::string var_name) {
  if (classTable.find(var_name) == classTable.end()) { //variable isn't a class
    typeError(not_object);
    return false;
  }
  return true;
}
/* ---------------- isClass functions ------------------*/
/***********************************************************/

/***********************************************************/
/* ---------------- compareType functions ------------------*/   
//used for: expression_type_mismatch error, while_predicate_type_mismatch error, do_while_predicate_type_mismatch , if_predicate_type_mismatch, assignment_type_mismatch  
bool compareType(BaseType expectedType, BaseType type_toCheck, TypeErrorCode code) {
  if (expectedType != type_toCheck) {
    typeError(code);
    return false;
  }
  return true;
}
/* ---------------- compareType functions ------------------*/
/***********************************************************/

/* laszlo */
VariableInfo variableLookup(IdentifierNode *identifier, ClassTable* class_table, std::string current_class_name, VariableTable* current_variable_table) {
  std::string variable_name = identifier->name;
  if (current_variable_table->find(variable_name) != current_variable_table->end()) {
      return current_variable_table->at(variable_name);
    } else {

    std::string temp_class_name = current_class_name;

    while (temp_class_name != "") {
      ClassInfo temp_class_info = class_table->at(temp_class_name);
      VariableTable* temp_variables = temp_class_info.members;
      if(temp_variables->find(variable_name) != temp_variables->end()) {
        return temp_variables->at(variable_name);
      }
      temp_class_name = temp_class_info.superClassName;
    }
  }

  typeError(undefined_variable);
  return current_variable_table->at(variable_name);
}

VariableInfo memberLookup(IdentifierNode *identifier, ClassTable* class_table, std::string current_class_name) {
  std::string variable_name = identifier->name;

    std::string temp_class_name = current_class_name;

    while (temp_class_name != "") {
      ClassInfo temp_class_info = class_table->at(temp_class_name);
      VariableTable* temp_variables = temp_class_info.members;
      if(temp_variables->find(variable_name) != temp_variables->end()) {
        return temp_variables->at(variable_name);
      }
      temp_class_name = temp_class_info.superClassName;
    }

  typeError(undefined_member);
}

MethodInfo methodLookup(IdentifierNode *identifier, ClassTable* class_table, std::string current_class_name, MethodTable* current_method_table) {

  std::string method_name = identifier->name;

  if (current_method_table->find(method_name) != current_method_table->end()) {
      return current_method_table->at(method_name);
    } else {

    std::string temp_class_name = current_class_name;

    while (temp_class_name != "") {
      ClassInfo temp_class_info = class_table->at(temp_class_name);
      MethodTable* temp_methods = temp_class_info.methods;
      if(temp_methods->find(method_name) != temp_methods->end()) {
        return temp_methods->at(method_name);
      }
      temp_class_name = temp_class_info.superClassName;
    }
  }

  typeError(undefined_method);
}

MethodInfo methodLookup(IdentifierNode *identifier, ClassTable* class_table, std::string current_class_name) {

  std::string method_name = identifier->name;

  // search current class
    std::string temp_class_name = current_class_name;

    // searching current class:
    while (temp_class_name != "") {
      ClassInfo temp_class_info = class_table->at(temp_class_name);
      MethodTable* temp_methods = temp_class_info.methods;
      if(temp_methods->find(method_name) != temp_methods->end()) {
        return temp_methods->at(method_name);
      }
      temp_class_name = temp_class_info.superClassName;
    }

  typeError(undefined_method);
}

void checkType(BaseType bt_one, BaseType bt_two, TypeErrorCode code) {
  if (bt_one != bt_two) {
    typeError(code);
    return;
  }
  return;
}

void checkType(CompoundType one, CompoundType two, TypeErrorCode code) {
  if (one.baseType != two.baseType) {
    typeError(code);
    return;
  }
  if (one.baseType == bt_object) {
    if (one.objectClassName != two.objectClassName) {
      typeError(code);
      return;
    }
  }
  return;
}

void checkType(BaseType bt_one, std::string ocn_one, BaseType bt_two, std::string ocn_two, TypeErrorCode code) {
  if (bt_one != bt_two) {
    typeError(code);
    return;
  }
  if (bt_one == bt_object) {
    if (ocn_one != ocn_two) {
      typeError(code);
      return;
    }
  }
  return;
}

void mainHelper(ClassTable *classTable) {

  classExists(classTable, "Main", no_main_class);

  ClassInfo main_class_info = classTable->at("Main");

  if (main_class_info.membersSize != 0) typeError(main_class_members_present);
  MethodTable* main_class_methods = main_class_info.methods;

  if (main_class_methods->find("main") == main_class_methods->end()) typeError(no_main_method);

  MethodInfo main_method = main_class_methods->at("main");
  checkType(bt_none, main_method.returnType.baseType, main_method_incorrect_signature);
  if (!((main_method.parameters)->empty())) typeError(main_method_incorrect_signature);

}

void argumentsHelper(std::list<CompoundType> *parameters, std::list<ExpressionNode*>* arguments) {

    bool arg_num_error = false;

    if (arguments != nullptr && parameters != nullptr) {
      if (arguments->size() != parameters->size()) typeError(argument_number_mismatch);
    }
    
    std::list<ExpressionNode*>::iterator it_1;
    std::list<CompoundType>::iterator it_2 = parameters->begin();

    if (parameters != NULL && arguments != NULL) {
      for (it_1 = arguments->begin(); it_1 != arguments->end(); it_1++) {
        if ((it_1 == arguments->end() && it_2 != parameters->end()) || (it_2 == parameters->end() && it_1 != arguments->end())) {
          arg_num_error = true;
          break;
        }
        ExpressionNode* argument  = *it_1;
        BaseType argument_type = argument->basetype;
        CompoundType parameter = *it_2;
        BaseType parameter_type = parameter.baseType;

        if (argument_type != parameter_type) typeError(argument_type_mismatch);
        it_2++; 
      }
    }
    if (arg_num_error) typeError(argument_number_mismatch);
    return;

  return;
}

/* -------------------------------- helper functions ----------------------------------*/        

void TypeCheck::visitProgramNode(ProgramNode* node) {
 ClassTable* classTable  = new ClassTable();
 this->classTable = classTable;

 node->visit_children(this);

  mainHelper(classTable);
 
}

void TypeCheck::visitClassNode(ClassNode* node) {
  this->currentClassName = node->identifier_1->name;

  if ((this->currentClassName == "main") && node->declaration_list) typeError(main_class_members_present);

  std::string superclass = (node->identifier_2) ? node->identifier_2->name : "";

// check existence of superclass
// may need to be modified
if (superclass != "") classExists(this->classTable, superclass, undefined_class);

  // create ClassInfo
  VariableTable *members = new VariableTable();
  MethodTable *methods = new MethodTable();
  this->currentVariableTable = members;
  this->currentMethodTable = methods;
  
  local = false;
  param = false;

  currentMemberOffset = 0;
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

  ClassInfo current_class_info = {superclass, methods, members, member_size}; // methods currently empty. members and methods should be pointers
  std::pair<std::string, ClassInfo> current_class = std::make_pair(this->currentClassName, current_class_info);
  this->classTable->insert(current_class);

  if (node->method_list) {
    for(std::list<MethodNode*>::iterator iter = node->method_list->begin();
        iter != node->method_list->end(); iter++) {
      (*iter)->accept(this);
    }
  }

}

void TypeCheck::visitMethodNode(MethodNode* node) {
  std::string current_method_name = node->identifier->name;

  VariableTable *local_variables = new VariableTable();
  currentVariableTable = local_variables;

  local = true;

  this->currentLocalOffset = -4;
  this->currentParameterOffset = 12;

  node->visit_children(this);
  // 1. visits each of the parameters
  std::list<CompoundType> *current_parameters = new std::list<CompoundType>();

  if (node->parameter_list)
  {
    for (ParameterNode *p : *node->parameter_list)
    {
      CompoundType temp_compound_type = {p->type->basetype, p->objectClassName};
      current_parameters->push_back(temp_compound_type);
    }
  }
  // 2. visits the type
  BaseType current_basetype = node->type->basetype;
  std::string current_object_class_name = node->type->objectClassName;
  CompoundType return_type = {current_basetype, current_object_class_name};
  
  if ((current_method_name == this->currentClassName) && (current_basetype != bt_none)) typeError(constructor_returns_type);
  if ((current_method_name == "main") && (current_basetype != bt_none)) typeError(main_method_incorrect_signature);
  if ((current_method_name == "main") && !(current_parameters->empty())) typeError(main_method_incorrect_signature);
  
  if (current_basetype == bt_none)
  {
    if (node->methodbody->returnstatement)
      typeError(return_type_mismatch);
  }
  else {
    if (!(node->methodbody->returnstatement)) { std::cerr << "Missing return statement." << std::endl; exit(1); } else {
    compareType(current_basetype, node->methodbody->returnstatement->basetype, return_type_mismatch); }
  }
  int method_size = -(this->currentLocalOffset - (-4));
  MethodInfo current_method_info = {return_type, local_variables, current_parameters, method_size};

  std::pair<std::string, MethodInfo> current_method = std::make_pair(current_method_name, current_method_info);
  this->currentMethodTable->insert(current_method);
  }

void TypeCheck::visitMethodBodyNode(MethodBodyNode* node) {
  local = true; //
  param = false;
  node->visit_children(this);
}

void TypeCheck::visitParameterNode(ParameterNode* node) {
  local = false;
  param = true;
  node->visit_children(this); // type and identifier accept

  BaseType current_basetype = node->type->basetype;
  node->basetype = current_basetype; // not sure if necessary ?
  std::string current_object_class_name = node->type->objectClassName; // needs to be set somewhere // edit: it is set in visit children when type is visited
  node->objectClassName = current_object_class_name;
  if (current_basetype == bt_object) classExists(this->classTable, current_object_class_name, undefined_class);
  CompoundType current_compound_type = {current_basetype, current_object_class_name}; // change made
 
  VariableInfo current_variable_info = {current_compound_type, currentParameterOffset, 4}; // fix
  currentParameterOffset += 4;
  std::pair<std::string, VariableInfo> current_variable = std::make_pair(node->identifier->name, current_variable_info);
  currentVariableTable->insert(current_variable);
  //node->visit_children(this);
}

void TypeCheck::visitDeclarationNode(DeclarationNode* node) {
  node->visit_children(this);
 
  BaseType current_basetype = node->type->basetype;
  std::string current_object_class_name = node->type->objectClassName; // needs to be set somewhere // edit: set in visit children when type is visited
  
  if (current_basetype == bt_object) classExists(this->classTable, current_object_class_name, undefined_class);
  
  CompoundType current_compound_type = {current_basetype, current_object_class_name};

  for (IdentifierNode *i : *node->identifier_list)
    {
      int current_offset = (local) ? currentLocalOffset : currentMemberOffset;
      VariableInfo current_variable_info = {current_compound_type, current_offset, 4}; // fix
      if (local)
        {
          currentLocalOffset -= 4;
        }
      else
        {
          currentMemberOffset += 4;
        }
      std::pair<std::string, VariableInfo> current_variable = std::make_pair(i->name, current_variable_info);
      currentVariableTable->insert(current_variable);
    }
}

void TypeCheck::visitReturnStatementNode(ReturnStatementNode* node) {
  node->visit_children(this);
  node->basetype = node->expression->basetype;
  node->objectClassName = (node->basetype == bt_object)? node->expression->objectClassName : ""; // not sure if necessary and if this has to be checked later
}

// BEGIN STATEMENTS

void TypeCheck::visitAssignmentNode(AssignmentNode* node) {
  node->visit_children(this);

  // reconfiguring:
  VariableInfo variable_info;
  if (node->identifier_2) {
    VariableInfo temp_variable_info = variableLookup(node->identifier_1, classTable, currentClassName, currentVariableTable);
    if (temp_variable_info.type.baseType != bt_object) {
      typeError(not_object);
    } else {
      variable_info = memberLookup(node->identifier_2, classTable, temp_variable_info.type.objectClassName);
    }
  } else {
    variable_info = variableLookup(node->identifier_1, classTable, currentClassName, currentVariableTable);
  }

    checkType(variable_info.type.baseType, variable_info.type.objectClassName, node->expression->basetype, node->expression->objectClassName, assignment_type_mismatch);
}

void TypeCheck::visitCallNode(CallNode* node) {
  node->visit_children(this);
    node->basetype = node->methodcall->basetype;
    node->objectClassName = node->methodcall->objectClassName;
}

void TypeCheck::visitIfElseNode(IfElseNode* node) {

  node->visit_children(this);
  checkType(bt_boolean, node->expression->basetype, if_predicate_type_mismatch);
  }

void TypeCheck::visitWhileNode(WhileNode* node) {
  node->visit_children(this);
  checkType(bt_boolean, node->expression->basetype, while_predicate_type_mismatch);
}

void TypeCheck::visitDoWhileNode(DoWhileNode* node) {
  node->visit_children(this);
  checkType(bt_boolean, node->expression->basetype, do_while_predicate_type_mismatch);
}

void TypeCheck::visitPrintNode(PrintNode* node) {
  node->visit_children(this);
}

// END STATEMENTS

void TypeCheck::visitPlusNode(PlusNode* node) {
  // 1. visit children (sets basetype of child expressions)
  // 2. check operand types (expression type mismatch)
  // 3. set basetype

  node->visit_children(this);

  checkType(bt_integer, node->expression_1->basetype, expression_type_mismatch);
  if (node->expression_2 != NULL) checkType(bt_integer, node->expression_2->basetype, expression_type_mismatch);

  node->basetype = bt_integer;
  node->objectClassName = "";
}

void TypeCheck::visitMinusNode(MinusNode* node) {
  node->visit_children(this);

  checkType(bt_integer, node->expression_1->basetype, expression_type_mismatch);
  if (node->expression_2 != NULL) checkType(bt_integer, node->expression_2->basetype, expression_type_mismatch);

  node->basetype = bt_integer;
  node->objectClassName = "";
}

void TypeCheck::visitTimesNode(TimesNode* node) {
  node->visit_children(this);

  checkType(bt_integer, node->expression_1->basetype, expression_type_mismatch);
  if (node->expression_2 != NULL) checkType(bt_integer, node->expression_2->basetype, expression_type_mismatch);

  node->basetype = bt_integer;
  node->objectClassName = "";
}

void TypeCheck::visitDivideNode(DivideNode* node) {
  node->visit_children(this);

  checkType(bt_integer, node->expression_1->basetype, expression_type_mismatch);
  if (node->expression_2 != NULL) checkType(bt_integer, node->expression_2->basetype, expression_type_mismatch);

  node->basetype = bt_integer;
  node->objectClassName = "";
}

void TypeCheck::visitGreaterNode(GreaterNode* node) {
  node->visit_children(this);

  checkType(bt_integer, node->expression_1->basetype, expression_type_mismatch);
  if (node->expression_2 != NULL) checkType(bt_integer, node->expression_2->basetype, expression_type_mismatch);

  node->basetype = bt_boolean;
  node->objectClassName = "";
}

void TypeCheck::visitGreaterEqualNode(GreaterEqualNode* node) {
  node->visit_children(this);

  checkType(bt_integer, node->expression_1->basetype, expression_type_mismatch);
  if (node->expression_2 != NULL) checkType(bt_integer, node->expression_2->basetype, expression_type_mismatch);

  node->basetype = bt_boolean;
  node->objectClassName = "";
}

void TypeCheck::visitEqualNode(EqualNode* node) {
  node->visit_children(this);

  if (((node->expression_1->basetype == bt_integer) && (node->expression_1->basetype == bt_integer)) || ((node->expression_1->basetype == bt_boolean) && (node->expression_1->basetype == bt_boolean))) {
      node->basetype = bt_boolean;
      node->objectClassName = "";
  } else {
    typeError(expression_type_mismatch);
  }
}

void TypeCheck::visitAndNode(AndNode* node) {
  node->visit_children(this);

  checkType(bt_boolean, node->expression_1->basetype, expression_type_mismatch);
  if (node->expression_2 != NULL) checkType(bt_boolean, node->expression_2->basetype, expression_type_mismatch);

  node->basetype = bt_boolean;
  node->objectClassName = "";
}

void TypeCheck::visitOrNode(OrNode* node) {
  node->visit_children(this);

  checkType(bt_boolean, node->expression_1->basetype, expression_type_mismatch);
  if (node->expression_2 != NULL) checkType(bt_boolean, node->expression_2->basetype, expression_type_mismatch);

  node->basetype = bt_boolean;
  node->objectClassName = "";
}

void TypeCheck::visitNotNode(NotNode* node) {
  node->visit_children(this);

  checkType(bt_boolean, node->expression->basetype, expression_type_mismatch);
  node->basetype = bt_boolean;
  node->objectClassName = ""; 
}

void TypeCheck::visitNegationNode(NegationNode* node) {
  node->visit_children(this);
  checkType(bt_integer, node->expression->basetype, expression_type_mismatch);

  node->basetype = bt_integer;
  node->objectClassName = "";
}

void TypeCheck::visitMethodCallNode(MethodCallNode* node) {
  node->visit_children(this);

  MethodInfo method_info;
  if (node->identifier_2) {
    VariableInfo variable_info = variableLookup(node->identifier_1, classTable, currentClassName, currentVariableTable);
    if (variable_info.type.baseType != bt_object){
      typeError(not_object);
    } else { 
      method_info = methodLookup(node->identifier_2, classTable, variable_info.type.objectClassName);
    }
  } else {
    method_info = methodLookup(node->identifier_1, classTable, currentClassName, currentMethodTable);
  }

   node->basetype = method_info.returnType.baseType;
  node->objectClassName = method_info.returnType.objectClassName;

  argumentsHelper(method_info.parameters, node->expression_list); 
}

void TypeCheck::visitMemberAccessNode(MemberAccessNode* node) {
node->visit_children(this);

VariableInfo variable_info_1 = variableLookup(node->identifier_1, classTable, currentClassName, currentVariableTable);
  VariableInfo variable_info_2;
  if (node->identifier_2) { // should always b true bc memberaccess??
    if (variable_info_1.type.baseType != bt_object){
      typeError(not_object);
    } else { 
      variable_info_2 = memberLookup(node->identifier_2, classTable, variable_info_1.type.objectClassName);
    }
  }

  node->basetype = variable_info_2.type.baseType;
  node->objectClassName = variable_info_2.type.objectClassName;
}

void TypeCheck::visitVariableNode(VariableNode* node) {
     VariableInfo variable_info = variableLookup(node->identifier, classTable, currentClassName, currentVariableTable);
    node->basetype = variable_info.type.baseType;
    node->objectClassName = variable_info.type.objectClassName; 
}

void TypeCheck::visitIntegerLiteralNode(IntegerLiteralNode* node) {
  node->basetype = bt_integer; //
  node->objectClassName = "";
}

void TypeCheck::visitBooleanLiteralNode(BooleanLiteralNode* node) {
  node->basetype = bt_boolean;
  node->objectClassName = ""; 
}

void TypeCheck::visitNewNode(NewNode* node) {
  
  node->visit_children(this);
  node->basetype = bt_object;
  node->objectClassName = node->identifier->name;
 
  std::string constructor_name = node->identifier->name;

  if (this->classTable->find(constructor_name) == this->classTable->end()) {
    typeError(undefined_class);
  }

  ClassInfo class_info = this->classTable->at(constructor_name);
  MethodInfo method_info = class_info.methods->at(constructor_name);
  argumentsHelper(method_info.parameters, node->expression_list);
}

void TypeCheck::visitIntegerTypeNode(IntegerTypeNode* node) {
  node->basetype = bt_integer;
  node->objectClassName = "";
}

void TypeCheck::visitBooleanTypeNode(BooleanTypeNode* node) {
  node->basetype = bt_boolean;
  node->objectClassName = "";
}

void TypeCheck::visitObjectTypeNode(ObjectTypeNode* node) {
  node->basetype = bt_object;
  node->objectClassName = node->identifier->name;

  if (this->classTable->find(node->identifier->name) == this->classTable->end()) {
      typeError(undefined_class);
    }
}

void TypeCheck::visitNoneNode(NoneNode* node) {
  node->basetype = bt_none;
  node->objectClassName = ""; // changed
}

void TypeCheck::visitIdentifierNode(IdentifierNode* node) {
}

void TypeCheck::visitIntegerNode(IntegerNode* node) {
  node->basetype = bt_integer;
  node->objectClassName = "";
  
}


// The following functions are used to print the Symbol Table.
// They do not need to be modified at all.

std::string genIndent(int indent) {
  std::string string = std::string("");
  for (int i = 0; i < indent; i++)
    string += std::string(" ");
  return string;
}

std::string string(CompoundType type) {
  switch (type.baseType) {
    case bt_integer:
      return std::string("Integer");
    case bt_boolean:
      return std::string("Boolean");
    case bt_none:
      return std::string("None");
    case bt_object:
      return std::string("Object(") + type.objectClassName + std::string(")");
    default:
      return std::string("");
  }
}


void print(VariableTable variableTable, int indent) {
  std::cout << genIndent(indent) << "VariableTable {";
  if (variableTable.size() == 0) {
    std::cout << "}";
    return;
  }
  std::cout << std::endl;
  for (VariableTable::iterator it = variableTable.begin(); it != variableTable.end(); it++) {
    std::cout << genIndent(indent + 2) << it->first << " -> {" << string(it->second.type);
    std::cout << ", " << it->second.offset << ", " << it->second.size << "}";
    if (it != --variableTable.end())
      std::cout << ",";
    std::cout << std::endl;
  }
  std::cout << genIndent(indent) << "}";
}

void print(MethodTable methodTable, int indent) {
  std::cout << genIndent(indent) << "MethodTable {";
  if (methodTable.size() == 0) {
    std::cout << "}";
    return;
  }
  std::cout << std::endl;
  for (MethodTable::iterator it = methodTable.begin(); it != methodTable.end(); it++) {
    std::cout << genIndent(indent + 2) << it->first << " -> {" << std::endl;
    std::cout << genIndent(indent + 4) << string(it->second.returnType) << "," << std::endl;
    std::cout << genIndent(indent + 4) << it->second.localsSize << "," << std::endl;
    print(*it->second.variables, indent + 4);
    std::cout <<std::endl;
    std::cout << genIndent(indent + 2) << "}";
    if (it != --methodTable.end())
      std::cout << ",";
    std::cout << std::endl;
  }
  std::cout << genIndent(indent) << "}";
}

void print(ClassTable classTable, int indent) {
  std::cout << genIndent(indent) << "ClassTable {" << std::endl;
  for (ClassTable::iterator it = classTable.begin(); it != classTable.end(); it++) {
    std::cout << genIndent(indent + 2) << it->first << " -> {" << std::endl;
    if (it->second.superClassName != "")
      std::cout << genIndent(indent + 4) << it->second.superClassName << "," << std::endl;
    print(*it->second.members, indent + 4);
    std::cout << "," << std::endl;
    print(*it->second.methods, indent + 4);
    std::cout <<std::endl;
    std::cout << genIndent(indent + 2) << "}";
    if (it != --classTable.end())
      std::cout << ",";
    std::cout << std::endl;
  }
  std::cout << genIndent(indent) << "}" << std::endl;
}

void print(ClassTable classTable) {
  print(classTable, 0);
}
