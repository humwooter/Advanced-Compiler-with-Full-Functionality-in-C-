%option yylineno
%pointer

%{
    #include <stdlib.h>
    #include <errno.h>
    #include <limits.h>
    #include "ast.hpp"
    #include "parser.hpp"
    void yyerror(const char *);
%}

%x                                      COMMENT

%%

<INITIAL>{
"/*"                                    BEGIN(COMMENT);
}
<COMMENT>{
"*/"                                    BEGIN(INITIAL);
[^*]+
"*"
<<EOF>>                                 yyerror("unexpected end of file");
}

[ \t\n\r]+                              { }

"print"                                 { return PRINT; }
"return"                                { return RETURN; }
"if"                                    { return IF; }
"else"                                  { return ELSE; }
"while"                                 { return WHILE; }
"new"                                   { return NEW; }
"integer"                               { return INTEGER; }
"boolean"                               { return BOOLEAN; }
"none"                                  { return NONE; }
"equals"                                { return EQUALS; }
"and"                                   { return AND; }
"or"                                    { return OR; }
"not"                                   { return NOT; }
"true"                                  { return TRUE; }
"false"                                 { return FALSE; }
"extends"                               { return EXTENDS; }
"do"                                    { return DO; }

"{"                                     { return OPEN_CURLY_BRACKET; }
"}"                                     { return CLOSE_CURLY_BRACKET; }
"("                                     { return OPEN_PARENTHESES; }
")"                                     { return CLOSE_PARENTHESES; }

"="                                     { return ASSIGNMENT; }
"."                                     { return DOT; }
","                                     { return COMMA; }
";"                                     { return SEMICOLON; }
"->"                                    { return ARROW; }

">="                                    { return GREATER_THAN_INCLUSIVE; }
">"                                     { return GREATER_THAN_EXCLUSIVE; }

"+"                                     { return PLUS; }
"-"                                     { return MINUS; }
"*"                                     { return MULTIPLY; }
"/"                                     { return DIVIDE; }

[0]|[1-9][0-9]*                         { yylval.base_int = std::atoi(yytext); return NUMBER; }
[a-zA-Z][a-zA-Z0-9]*                    { yylval.base_char_ptr = yytext; return NAME; }

.                                       { yyerror("invalid character"); }

%%

int yywrap(void) {
  return 1;
}
