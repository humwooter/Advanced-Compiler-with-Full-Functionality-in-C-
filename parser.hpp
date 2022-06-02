/* A Bison parser, made by GNU Bison 3.7.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_PARSER_HPP_INCLUDED
# define YY_YY_PARSER_HPP_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    INT = 258,                     /* INT  */
    BOOL = 259,                    /* BOOL  */
    FLOAT = 260,                   /* FLOAT  */
    ARROW = 261,                   /* ARROW  */
    IF = 262,                      /* IF  */
    WHILE = 263,                   /* WHILE  */
    DO = 264,                      /* DO  */
    ELSE = 265,                    /* ELSE  */
    PRINT = 266,                   /* PRINT  */
    PLUS = 267,                    /* PLUS  */
    MINUS = 268,                   /* MINUS  */
    MULT = 269,                    /* MULT  */
    DIV = 270,                     /* DIV  */
    GREATER = 271,                 /* GREATER  */
    GREATER_THAN_OR_EQUAL = 272,   /* GREATER_THAN_OR_EQUAL  */
    AND = 273,                     /* AND  */
    OR = 274,                      /* OR  */
    NOT = 275,                     /* NOT  */
    UNARY_MINUS = 276,             /* UNARY_MINUS  */
    NAME = 277,                    /* NAME  */
    INT_VAL = 278,                 /* INT_VAL  */
    FLOAT_VAL = 279,               /* FLOAT_VAL  */
    TRUE = 280,                    /* TRUE  */
    FALSE = 281,                   /* FALSE  */
    NEW = 282,                     /* NEW  */
    NONE = 283,                    /* NONE  */
    DOT = 284,                     /* DOT  */
    SEMICOLON = 285,               /* SEMICOLON  */
    COMMA = 286,                   /* COMMA  */
    LEFT_BRACE = 287,              /* LEFT_BRACE  */
    RIGHT_BRACE = 288,             /* RIGHT_BRACE  */
    LEFT_PAREN = 289,              /* LEFT_PAREN  */
    RIGHT_PAREN = 290,             /* RIGHT_PAREN  */
    EQUALS = 291,                  /* EQUALS  */
    ASSIGN = 292,                  /* ASSIGN  */
    RETURN = 293,                  /* RETURN  */
    EXTENDS = 294                  /* EXTENDS  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_PARSER_HPP_INCLUDED  */
