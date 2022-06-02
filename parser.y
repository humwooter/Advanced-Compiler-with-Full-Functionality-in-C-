%{
    #include <cstdlib>
    #include <cstdio>
    #include <iostream>
    #include "ast.hpp"
    
    #define YYDEBUG 1
    #define YYINITDEPTH 10000
    
    int yylex(void);
    void yyerror(const char *);
    
    extern ASTNode* astRoot;
%}

%error-verbose
// %glr-parser
/* NOTE: You may use the %glr-parser directive, which may allow your parser to
         work even with some shift/reduce conflicts remianing. */



/* WRITEME: Copy your token and precedence specifiers from Project 4 here. */

%token INT BOOL FLOAT
%token ARROW 
%token IF WHILE DO ELSE PRINT 
%token PLUS MINUS MULT DIV
%token GREATER GREATER_THAN_OR_EQUAL
%token AND OR NOT 
%token UNARY_MINUS
%token NAME 
%token INT_VAL FLOAT_VAL TRUE FALSE
%token NEW NONE DOT
%token SEMICOLON COMMA LEFT_BRACE RIGHT_BRACE LEFT_PAREN RIGHT_PAREN
%token EQUALS ASSIGN
%token RETURN EXTENDS

 /* WRITEME: Specify precedence here */

%left OR 
%left AND
%left GREATER GREATER_THAN_OR_EQUAL EQUALS
%left PLUS MINUS
%left MULT DIV
%right NOT UNARY_MINUS
%left RETURN

/* WRITEME: Copy your type specifiers from Project 4 here. */
%type <program_ptr> Program Start  
%type <class_list_ptr> Classes
%type <class_ptr> Class
%type <identifier_ptr> Name 
%type <none_ptr> NONE
%type <booleanliteral_ptr> TRUE FALSE
%type <booleantype_ptr> BOOL
%type <base_int> INT_VAL
%type <base_char_ptr> NAME
%type <integertype_ptr> INT
%type <declaration_list_ptr> Members Declarations
%type <memberaccess_ptr> Member_Access
%type <declaration_ptr> Declaration Member
%type <expression_list_ptr> Arguments Arguments_Optional
%type <method_list_ptr> Methods
%type <method_ptr> Method
%type <parameter_list_ptr> Parameters
%type <parameter_ptr> Parameter
%type <type_ptr> Type
%type <methodbody_ptr> MethodBody
%type <statement_list_ptr> Statements
%type <statement_ptr> Statement
%type <returnstatement_ptr> Return
%type <identifier_list_ptr> Names
%type <expression_ptr> Expression
%type <assignment_ptr> Assignment
%type <methodcall_ptr> Method_Call
%type <ifelse_ptr> if_else 
%type <while_ptr> while
%type <dowhile_ptr> do_while
%type <print_ptr> print
%%

/* WRITEME: This rule is a placeholder. Replace it with your grammar
            rules and actions from Project 4. */

Start : Program {$$ = $1; astRoot = $$;}
; 

Program : Classes {$$ = new ProgramNode($1);}
;

Classes : Classes Class {$$ = $1; $$->push_back($2);}
| Class {$$ = new std::list<ClassNode*>(); $$->push_back($1);}
;

Class : Name EXTENDS Name LEFT_BRACE Members Methods RIGHT_BRACE {$$ = new ClassNode($1, $3, $5, $6);}
| Name EXTENDS Name LEFT_BRACE  Methods RIGHT_BRACE {$$ = new ClassNode($1, $3, NULL, $5);}
| Name EXTENDS Name LEFT_BRACE Members RIGHT_BRACE {$$ = new ClassNode($1, $3, $5, NULL);}
| Name EXTENDS Name LEFT_BRACE RIGHT_BRACE {$$ = new ClassNode($1, $3, NULL, NULL);}
| Name LEFT_BRACE Members Methods RIGHT_BRACE {$$ = new ClassNode($1, NULL, $3, $4);}
| Name LEFT_BRACE Members RIGHT_BRACE {$$ = new ClassNode($1, NULL, $3, NULL);}
| Name LEFT_BRACE Methods RIGHT_BRACE {$$ = new ClassNode($1, NULL, NULL, $3);}
| Name LEFT_BRACE RIGHT_BRACE {$$ = new ClassNode($1, NULL, NULL, NULL);}
;

Members : Members Member {$$ = $1; $$->push_back($2);}
| Member {$$ = new std::list<DeclarationNode*>(); $$->push_back($1);}
;

Member : Type Names SEMICOLON {$$ = new DeclarationNode($1, $2); } 
;
Name : NAME {$$ = new IdentifierNode($1);}
;


Type : INT {$$ = new IntegerTypeNode(); $$->basetype = bt_integer;}
| BOOL {$$ = new BooleanTypeNode(); $$->basetype = bt_boolean;}
| Name {$$ = new ObjectTypeNode($1); $$->basetype = bt_object;}
| NONE {$$ = new NoneNode(); $$->basetype = bt_none;}
    ;

Methods : Methods Method {$$ = $1; $$->push_back($2);}
| Method  {$$ = new std::list<MethodNode*>(); $$->push_back($1);}
;

Method : Name LEFT_PAREN Parameters RIGHT_PAREN ARROW Type MethodBody {$$ = new MethodNode($1, $3, $6, $7);}
| Name LEFT_PAREN Parameters RIGHT_PAREN MethodBody {$$ = new MethodNode($1, $3, NULL, $5);}
| Name LEFT_PAREN RIGHT_PAREN ARROW Type MethodBody {$$ = new MethodNode($1, NULL, $5, $6);}
| Name LEFT_PAREN RIGHT_PAREN MethodBody {$$ = new MethodNode($1, NULL, NULL, $4);}
;


MethodBody : LEFT_BRACE Declarations Statements Return RIGHT_BRACE {$$ = new MethodBodyNode($2, $3, $4);}
| LEFT_BRACE Declarations Return RIGHT_BRACE {$$ = new MethodBodyNode($2, NULL, $3);}
| LEFT_BRACE Declarations Statements RIGHT_BRACE {$$ = new MethodBodyNode($2, $3, NULL);}
| LEFT_BRACE Statements Return RIGHT_BRACE {$$ = new MethodBodyNode(NULL, $2, $3);}
| LEFT_BRACE Declarations RIGHT_BRACE {$$ = new MethodBodyNode($2, NULL, NULL);}
| LEFT_BRACE Return RIGHT_BRACE {$$ = new MethodBodyNode(NULL, NULL, $2);}
| LEFT_BRACE Statements RIGHT_BRACE {$$ = new MethodBodyNode(NULL, $2, NULL);}
| LEFT_BRACE RIGHT_BRACE {$$ = new MethodBodyNode(NULL, NULL, NULL);}
;

Parameters : Parameters COMMA Parameter {$$ = $1; $$->push_back($3);}
| Parameter {$$ = new std::list<ParameterNode*>(); $$->push_back($1); }
| %empty {$$ = new std::list<ParameterNode*>(); }
;

Parameter : Type Name {$$ = new ParameterNode($1, $2);}
; 

Declarations : Declarations Declaration  {$$ = $1; $$->push_back($2);}
| Declaration {$$ = new std::list<DeclarationNode*>(); $$->push_back($1); }
;


Declaration : Type Names SEMICOLON {$$ = new DeclarationNode($1, $2);}      
; 

Names :  Names COMMA Name {$$ = $1; $$-> push_back($3);}
| Name {$$ = new std::list<IdentifierNode*>(); $$->push_back($1); }
;

Statements : Statements Statement {$$ = $1; $$->push_back($2);}
| Statement {$$ = new std::list<StatementNode*>(); $$->push_back($1); }
;

Statement : Name ASSIGN Expression SEMICOLON {$$ = new AssignmentNode($1, NULL, $3);}
| Name DOT Name ASSIGN Expression SEMICOLON {$$ = new AssignmentNode($1, $3, $5);}     
| Name ARROW Name ASSIGN Expression SEMICOLON {$$ = new AssignmentNode($1, $3, $5);}                                                                                                                          
| PRINT Expression SEMICOLON {$$ = new PrintNode($2); }
| IF Expression LEFT_BRACE Statements RIGHT_BRACE {$$ = new IfElseNode($2,$4, NULL); }
| IF Expression LEFT_BRACE Statements RIGHT_BRACE ELSE LEFT_BRACE Statements RIGHT_BRACE {$$ = new IfElseNode($2,$4, $8); }
| WHILE Expression LEFT_BRACE Statements RIGHT_BRACE {$$ = new WhileNode($2,$4); } 
| DO LEFT_BRACE Statements RIGHT_BRACE WHILE LEFT_PAREN Expression RIGHT_PAREN SEMICOLON {$$ = new DoWhileNode($3,$7); }
| Name DOT Name LEFT_PAREN Arguments RIGHT_PAREN SEMICOLON {$$ = new CallNode(new MethodCallNode($1, $3, $5)); } 
| Name ARROW Name LEFT_PAREN Arguments RIGHT_PAREN SEMICOLON {$$ = new CallNode(new MethodCallNode($1, $3, $5)); } 
| Name LEFT_PAREN Arguments RIGHT_PAREN SEMICOLON {$$ = new CallNode(new MethodCallNode($1, NULL, $3)); }
| Name ARROW Name LEFT_PAREN RIGHT_PAREN SEMICOLON {$$ = new CallNode(new MethodCallNode($1, $3, NULL)); } 
| Name DOT Name LEFT_PAREN RIGHT_PAREN SEMICOLON {$$ = new CallNode(new MethodCallNode($1, $3, NULL)); } 
| Name LEFT_PAREN RIGHT_PAREN SEMICOLON {$$ = new CallNode(new MethodCallNode($1, NULL, NULL)); }  
;

Expression : INT_VAL {$$ = new IntegerLiteralNode(new IntegerNode($1)); }
| Expression PLUS Expression {$$ = new PlusNode($1, $3); }
| Expression MINUS Expression {$$ = new MinusNode($1, $3); }
| Expression MULT Expression {$$ = new TimesNode($1, $3); }
| Expression DIV Expression {$$ = new DivideNode($1, $3); }
| Expression GREATER Expression {$$ = new GreaterNode($1, $3); }
| Expression GREATER_THAN_OR_EQUAL Expression {$$ = new GreaterEqualNode($1, $3); }
| Expression EQUALS Expression {$$ = new EqualNode($1, $3); }
| Expression AND Expression  {$$ = new AndNode($1, $3); }
| Expression OR Expression {$$ = new OrNode($1, $3); }
| NOT Expression {$$ = new NotNode($2); }
| MINUS Expression %prec UNARY_MINUS {$$ = new NegationNode($2); }
| Name {$$ = new VariableNode($1); }
| Name LEFT_PAREN Arguments RIGHT_PAREN  {$$ = new MethodCallNode($1, NULL, $3); }
| Name DOT Name LEFT_PAREN Arguments RIGHT_PAREN {$$ = new MethodCallNode($1, $3, $5); }  
| Name ARROW Name LEFT_PAREN Arguments RIGHT_PAREN {$$ = new MethodCallNode($1, $3, $5); } 
| Name LEFT_PAREN RIGHT_PAREN  {$$ = new MethodCallNode($1, NULL, NULL); }
| Name DOT Name LEFT_PAREN RIGHT_PAREN {$$ = new MethodCallNode($1, $3, NULL); }  
| Name ARROW Name LEFT_PAREN RIGHT_PAREN {$$ = new MethodCallNode($1, $3, NULL); }                                                                                                                    
| Name DOT Name {$$ = new MemberAccessNode($1, $3);}
| Name ARROW Name {$$ = new MemberAccessNode($1, $3);}                                                                                                                                                        
| LEFT_PAREN Expression RIGHT_PAREN {$$ = $2;}
| TRUE {$$ = new BooleanLiteralNode(new IntegerNode(1)); }
| FALSE {$$ = new BooleanLiteralNode(new IntegerNode(0)); }
| NEW Name {$$ = new NewNode($2,NULL); } 
| NEW Name LEFT_PAREN Arguments_Optional RIGHT_PAREN {$$ = new NewNode($2,$4); }  
; 

Arguments_Optional : Arguments  {$$ = $1;}
| %empty {$$ = new std::list<ExpressionNode*>();}
;
 
Arguments : Arguments COMMA Expression {$$ = $1; $$->push_back($3);}
| Expression  {$$ = new std::list<ExpressionNode*>(); $$->push_back($1);}
;
			
Return : RETURN Expression SEMICOLON {$$ = new ReturnStatementNode($2); }
;

%%

extern int yylineno;

void yyerror(const char *s) {
  fprintf(stderr, "%s at line %d\n", s, yylineno);
  exit(1);
}
