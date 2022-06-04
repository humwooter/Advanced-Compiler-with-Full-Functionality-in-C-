%{
    #include <stdio.h>
    #include <stdlib.h>
    #include <iostream>

    #include "ast.hpp"
    
    #define YYDEBUG 1
    #define YYMAXDEPTH 10000
    #define YYINITDEPTH 9999
    int yylex(void);
    void yyerror(const char *);
    
    extern ASTNode* astRoot;
%}

%define parse.error verbose

%token    PRINT RETURN IF ELSE WHILE NEW INTEGER BOOLEAN NONE EQUALS AND OR NOT TRUE FALSE EXTENDS DO
%token    NUMBER NAME 
%token    OPEN_CURLY_BRACKET CLOSE_CURLY_BRACKET OPEN_PARENTHESES CLOSE_PARENTHESES
%token    ASSIGNMENT DOT COMMA SEMICOLON ARROW
%token    PLUS MINUS MULTIPLY DIVIDE GREATER_THAN_EXCLUSIVE GREATER_THAN_INCLUSIVE

%type <program_ptr> Start
%type <class_list_ptr> ClassList
%type <class_ptr> Class
%type <identifier_ptr> Identifier
%type <declaration_list_ptr> Members Declarations

%type <method_list_ptr> Methods
%type <method_ptr> Method
%type <parameter_list_ptr> Parameters
%type <type_ptr> Type ReturnType
%type <methodbody_ptr> MethodBody

%type <statement_list_ptr> Statements
%type <returnstatement_ptr> Return
%type <parameter_ptr> Parameter
%type <declaration_ptr> Member Declaration
%type <identifier_list_ptr> SingleIdentifierList Identifiers

%type <expression_ptr> Expression
%type <assignment_ptr> Assignment
%type <call_ptr> Call
%type <methodcall_ptr> MethodCall
%type <ifelse_ptr> IfElse

%type <while_ptr> WhileLoop
%type <dowhile_ptr> DoWhile
%type <print_ptr> Print
%type <variable_ptr> Variable
%type <expression_list_ptr> Arguments

%type <integertype_ptr> IntegerType
%type <booleantype_ptr> BooleanType
%type <objecttype_ptr> ObjectType
%type <none_ptr>  NoneType

%type <statement_ptr> Statement
%type <base_char_ptr> NAME
%type <base_int> NUMBER

%left OR
%left AND
%left GREATER_THAN_EXCLUSIVE GREATER_THAN_INCLUSIVE EQUALS
%left PLUS MINUS
%left MULTIPLY DIVIDE
%precedence NOT
%precedence UNARY_MINUS

%%

Start:
  ClassList { $$ = new ProgramNode($1); astRoot=$$; }
;

ClassList :
  ClassList Class { $$ = $1; $$->push_back($2); }
| Class  { $$ = new std::list<ClassNode*>(); $$->push_back($1); }
;

Class :
  Identifier OPEN_CURLY_BRACKET CLOSE_CURLY_BRACKET { $$ = new ClassNode($1, NULL, NULL, NULL); }
| Identifier OPEN_CURLY_BRACKET Members CLOSE_CURLY_BRACKET  { $$ = new ClassNode($1, NULL, $3, NULL); }
| Identifier OPEN_CURLY_BRACKET Methods CLOSE_CURLY_BRACKET  { $$ = new ClassNode($1, NULL, NULL, $3); }
| Identifier OPEN_CURLY_BRACKET Members Methods CLOSE_CURLY_BRACKET { $$ = new ClassNode($1, NULL, $3, $4); }
| Identifier EXTENDS Identifier OPEN_CURLY_BRACKET CLOSE_CURLY_BRACKET  { $$ = new ClassNode($1, $3, NULL, NULL); }
| Identifier EXTENDS Identifier OPEN_CURLY_BRACKET Members CLOSE_CURLY_BRACKET { $$ = new ClassNode($1, $3, $5, NULL); }
| Identifier EXTENDS Identifier OPEN_CURLY_BRACKET Methods CLOSE_CURLY_BRACKET { $$ = new ClassNode($1, $3, NULL, $5); }
| Identifier EXTENDS Identifier OPEN_CURLY_BRACKET Members Methods CLOSE_CURLY_BRACKET  { $$ = new ClassNode($1, $3, $5, $6); }
;

Members:
  Members Member  { $$ = $1; $$->push_back($2); }
| Member  { $$ = new std::list<DeclarationNode*>(); $$->push_back($1); }
;

Member:
  Type SingleIdentifierList SEMICOLON { $$ = new DeclarationNode($1, $2); }
;

SingleIdentifierList:
  Identifier  { $$ = new std::list<IdentifierNode*>(); $$->push_back($1); }
;

Identifier:
  NAME  { $$ = new IdentifierNode($1); }
;

Type:
  IntegerType { $$ = $1; }
| BooleanType { $$ = $1; }
| ObjectType  { $$ = $1; }
;

IntegerType:
  INTEGER { $$ = new IntegerTypeNode(); }
;

BooleanType:
  BOOLEAN { $$ = new BooleanTypeNode(); }
;

ObjectType:
  Identifier  { $$ = new ObjectTypeNode($1); }
;

Methods:
  Methods Method  { $$ = $1, $$->push_back($2); }
| Method  { $$ = new std::list<MethodNode*>(); $$->push_back($1); }
;

Method:
  Identifier OPEN_PARENTHESES Parameters CLOSE_PARENTHESES ARROW ReturnType OPEN_CURLY_BRACKET MethodBody CLOSE_CURLY_BRACKET  { $$ = new MethodNode($1, $3, $6, $8); }
| Identifier OPEN_PARENTHESES CLOSE_PARENTHESES ARROW ReturnType OPEN_CURLY_BRACKET MethodBody CLOSE_CURLY_BRACKET  { $$ = new MethodNode($1, NULL, $5, $7); }
;

ReturnType:
  Type  { $$ = $1; }
| NoneType  { $$ = $1; }
;

NoneType:
  NONE  { $$ = new NoneNode(); }
;

Parameters:
  Parameters COMMA Parameter { $$ = $1; $$->push_back($3); }
| Parameter { $$ = new std::list<ParameterNode*>(); $$->push_back($1); }
;

Parameter:
  Type Identifier { $$ = new ParameterNode($1, $2); }
;

MethodBody:
  Return  { $$ = new MethodBodyNode(NULL, NULL, $1); }
| Declarations  { $$ = new MethodBodyNode($1, NULL, NULL); }
| Declarations Return { $$ = new MethodBodyNode($1, NULL, $2); }
| Statements  { $$ = new MethodBodyNode(NULL, $1, NULL); }
| Statements Return { $$ = new MethodBodyNode(NULL, $1, $2); }
| Declarations Statements  { $$ = new MethodBodyNode($1, $2, NULL); }
| Declarations Statements Return  { $$ = new MethodBodyNode($1, $2, $3); }
| %empty  { $$ = new MethodBodyNode(NULL, NULL, NULL); }
;

Declarations:
  Declarations Declaration  { $$ = $1, $$->push_back($2); }
| Declaration  { $$ = new std::list<DeclarationNode*>(); $$->push_back($1); }
;

Declaration:
  Type Identifiers SEMICOLON { $$ = new DeclarationNode($1, $2); }
;

Identifiers:
  Identifiers COMMA Identifier { $$ = $1, $$->push_back($3); }
| Identifier  { $$ = new std::list<IdentifierNode*>(); $$->push_back($1); }
;

Statements:
  Statements Statement  { $$ = $1, $$->push_back($2); }
| Statement  { $$ = new std::list<StatementNode*>(); $$->push_back($1); }
;

Return:
RETURN Expression SEMICOLON { $$ = new ReturnStatementNode($2); }
;

Statement:
  Assignment  { $$ = $1; }
| Call  { $$ = $1; }
| IfElse  { $$ = $1; }
| WhileLoop { $$ = $1; }
| DoWhile { $$ = $1; }
| Print { $$ = $1; }
;

Call:
  MethodCall SEMICOLON  { $$ = new CallNode($1); }
;

Assignment:
  Identifier ASSIGNMENT Expression SEMICOLON  { $$ = new AssignmentNode($1, NULL, $3); }
| Identifier DOT Identifier ASSIGNMENT Expression SEMICOLON { $$ = new AssignmentNode($1, $3, $5); }
| Identifier ARROW Identifier ASSIGNMENT Expression SEMICOLON { $$ = new AssignmentNode($1, $3, $5); }
;

MethodCall:
  Identifier OPEN_PARENTHESES Arguments CLOSE_PARENTHESES { $$ = new MethodCallNode($1, NULL, $3); }
| Identifier DOT Identifier OPEN_PARENTHESES Arguments CLOSE_PARENTHESES  { $$ = new MethodCallNode($1, $3, $5); }
| Identifier ARROW Identifier OPEN_PARENTHESES Arguments CLOSE_PARENTHESES  { $$ = new MethodCallNode($1, $3, $5); }
| Identifier OPEN_PARENTHESES CLOSE_PARENTHESES { $$ = new MethodCallNode($1, NULL, NULL); }
| Identifier DOT Identifier OPEN_PARENTHESES CLOSE_PARENTHESES  { $$ = new MethodCallNode($1, $3, NULL); }
| Identifier ARROW Identifier OPEN_PARENTHESES CLOSE_PARENTHESES  { $$ = new MethodCallNode($1, $3, NULL); }
;

Arguments:
  Arguments COMMA Expression  { $$ = $1; $$->push_back($3); }
| Expression  { $$ = new std::list<ExpressionNode*>(); $$->push_back($1); }
;

IfElse:
  IF Expression OPEN_CURLY_BRACKET Statements CLOSE_CURLY_BRACKET { $$ = new IfElseNode($2, $4, NULL); }
| IF Expression OPEN_CURLY_BRACKET Statements CLOSE_CURLY_BRACKET ELSE OPEN_CURLY_BRACKET Statements CLOSE_CURLY_BRACKET  { $$ = new IfElseNode($2, $4, $8); }
;

WhileLoop:
  WHILE Expression OPEN_CURLY_BRACKET Statements CLOSE_CURLY_BRACKET  { $$ = new WhileNode($2, $4); }
;

DoWhile:
DO OPEN_CURLY_BRACKET Statements CLOSE_CURLY_BRACKET WHILE OPEN_PARENTHESES Expression CLOSE_PARENTHESES SEMICOLON  { $$ = new DoWhileNode($3, $7); }
;

Print:
  PRINT Expression SEMICOLON  { $$ = new PrintNode($2); } 
;

Expression:
  Expression PLUS Expression  { $$ = new PlusNode($1, $3); }
| Expression MINUS Expression { $$ = new MinusNode($1, $3); }
| Expression MULTIPLY Expression  { $$ = new TimesNode($1, $3); }
| Expression DIVIDE Expression  { $$ = new DivideNode($1, $3); }
| Expression GREATER_THAN_EXCLUSIVE Expression  { $$ = new GreaterNode($1, $3); }
| Expression GREATER_THAN_INCLUSIVE Expression  { $$ = new GreaterEqualNode($1, $3); }
| Expression EQUALS Expression  { $$ = new EqualNode($1, $3); }
| Expression AND Expression { $$ = new AndNode($1, $3); }
| Expression OR Expression  { $$ = new OrNode($1, $3); }
| NOT Expression  { $$ = new NotNode($2); }
| MINUS Expression %prec UNARY_MINUS  { $$ = new NegationNode($2); }
| Variable  { $$ = $1; }
| Identifier DOT Identifier { $$ = new MemberAccessNode($1, $3); }
| Identifier ARROW Identifier { $$ = new MemberAccessNode($1, $3); }
| MethodCall { $$ = $1; }
| OPEN_PARENTHESES Expression CLOSE_PARENTHESES { $$ = $2; }
| NUMBER { $$ = new IntegerLiteralNode(new IntegerNode($1)); }
| TRUE { $$ = new BooleanLiteralNode(new IntegerNode(1)); }
| FALSE { $$ = new BooleanLiteralNode(new IntegerNode(0)); }
| NEW Identifier  { $$ = new NewNode($2, NULL); }
| NEW Identifier OPEN_PARENTHESES Arguments CLOSE_PARENTHESES { $$ = new NewNode($2, $4); }
| NEW Identifier OPEN_PARENTHESES CLOSE_PARENTHESES { $$ = new NewNode($2, NULL); }
;

Variable:
  Identifier  { $$ = new VariableNode($1); }
;

%%

extern int yylineno;

void yyerror(const char *s) {
  fprintf(stderr, "%s at line %d\n", s, yylineno);
  exit(0);
}
