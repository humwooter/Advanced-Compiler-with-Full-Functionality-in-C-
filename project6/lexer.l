%option yylineno
%pointer

%{
    #include <cstdlib>
    #include <cerrno>
    #include <climits>
    #include <limits>
    #include "ast.hpp"
    #include "parser.hpp"
    
	void yyerror(const char *);
%}

/* WRITEME: Copy any definitions and start conditions from Project 4 here. */

%%

  /* WRITEME: Copy your Flex rules and actions from Project 4 here. */
"if" {   return IF; }
"else" {   return ELSE; }
"while" {   return WHILE; }
"do" {    return DO; }
"print" {   return PRINT; }
"equals" {   return EQUALS; }
"and" {   return AND; }
"or" {   return OR; }
"not" {   return NOT; }
"true" {   return TRUE; }
"false" {   return FALSE; }
"new" {   return NEW; }
"none" {   return NONE; }
"return" {   return RETURN; }
"extends" {   return EXTENDS; }

"boolean" {   return BOOL; }
"integer" {   return INT; }
"float" {   return FLOAT; }

[a-zA-Z][a-zA-Z0-9]* { yylval.base_char_ptr = yytext;  return NAME; }

([0]|[1-9]+[0-9]*) { yylval.base_int = std::atoi(yytext); return INT_VAL; }


[+] {   return PLUS; }
[-] {   return MINUS; }
[-] {   return UNARY_MINUS; }
[*] {   return MULT; }
[/] {   return DIV; }
">" {   return GREATER; }
[>][=] {   return GREATER_THAN_OR_EQUAL; }
";" {   return SEMICOLON; }
"," {   return COMMA; }
"." {   return DOT; }
"{" {   return LEFT_BRACE; }
"}" {   return RIGHT_BRACE; }
[(] {   return LEFT_PAREN; }
[)] {  return RIGHT_PAREN; }
"=" {  return ASSIGN; }
[-][>] {  return ARROW; }



([ \t\f\n])+  { /* blank, tab, new line: eat up whitespace */ }
[/][*][^*]*[*]+([^*/][^*]*[*]+)*[/]   {/* DO NOTHING */} //ignores comments
[/][*][\n]* { yylineno += 1; yyerror("dangling comment"); }
" "+ {}
.                 { yyerror("invalid character"); }

%%

int yywrap(void) {
  return 1;
}
