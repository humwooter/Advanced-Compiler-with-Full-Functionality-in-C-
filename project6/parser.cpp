/* A Bison parser, made by GNU Bison 3.7.4.  */

/* Bison implementation for Yacc-like parsers in C

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30704

/* Bison version string.  */
#define YYBISON_VERSION "3.7.4"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "parser.y"

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

#line 87 "parser.cpp"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

#include "parser.hpp"
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_PRINT = 3,                      /* PRINT  */
  YYSYMBOL_RETURN = 4,                     /* RETURN  */
  YYSYMBOL_IF = 5,                         /* IF  */
  YYSYMBOL_ELSE = 6,                       /* ELSE  */
  YYSYMBOL_WHILE = 7,                      /* WHILE  */
  YYSYMBOL_NEW = 8,                        /* NEW  */
  YYSYMBOL_INTEGER = 9,                    /* INTEGER  */
  YYSYMBOL_BOOLEAN = 10,                   /* BOOLEAN  */
  YYSYMBOL_NONE = 11,                      /* NONE  */
  YYSYMBOL_EQUALS = 12,                    /* EQUALS  */
  YYSYMBOL_AND = 13,                       /* AND  */
  YYSYMBOL_OR = 14,                        /* OR  */
  YYSYMBOL_NOT = 15,                       /* NOT  */
  YYSYMBOL_TRUE = 16,                      /* TRUE  */
  YYSYMBOL_FALSE = 17,                     /* FALSE  */
  YYSYMBOL_EXTENDS = 18,                   /* EXTENDS  */
  YYSYMBOL_DO = 19,                        /* DO  */
  YYSYMBOL_NUMBER = 20,                    /* NUMBER  */
  YYSYMBOL_NAME = 21,                      /* NAME  */
  YYSYMBOL_OPEN_CURLY_BRACKET = 22,        /* OPEN_CURLY_BRACKET  */
  YYSYMBOL_CLOSE_CURLY_BRACKET = 23,       /* CLOSE_CURLY_BRACKET  */
  YYSYMBOL_OPEN_PARENTHESES = 24,          /* OPEN_PARENTHESES  */
  YYSYMBOL_CLOSE_PARENTHESES = 25,         /* CLOSE_PARENTHESES  */
  YYSYMBOL_ASSIGNMENT = 26,                /* ASSIGNMENT  */
  YYSYMBOL_DOT = 27,                       /* DOT  */
  YYSYMBOL_COMMA = 28,                     /* COMMA  */
  YYSYMBOL_SEMICOLON = 29,                 /* SEMICOLON  */
  YYSYMBOL_ARROW = 30,                     /* ARROW  */
  YYSYMBOL_PLUS = 31,                      /* PLUS  */
  YYSYMBOL_MINUS = 32,                     /* MINUS  */
  YYSYMBOL_MULTIPLY = 33,                  /* MULTIPLY  */
  YYSYMBOL_DIVIDE = 34,                    /* DIVIDE  */
  YYSYMBOL_GREATER_THAN_EXCLUSIVE = 35,    /* GREATER_THAN_EXCLUSIVE  */
  YYSYMBOL_GREATER_THAN_INCLUSIVE = 36,    /* GREATER_THAN_INCLUSIVE  */
  YYSYMBOL_UNARY_MINUS = 37,               /* UNARY_MINUS  */
  YYSYMBOL_YYACCEPT = 38,                  /* $accept  */
  YYSYMBOL_Start = 39,                     /* Start  */
  YYSYMBOL_ClassList = 40,                 /* ClassList  */
  YYSYMBOL_Class = 41,                     /* Class  */
  YYSYMBOL_Members = 42,                   /* Members  */
  YYSYMBOL_Member = 43,                    /* Member  */
  YYSYMBOL_SingleIdentifierList = 44,      /* SingleIdentifierList  */
  YYSYMBOL_Identifier = 45,                /* Identifier  */
  YYSYMBOL_Type = 46,                      /* Type  */
  YYSYMBOL_IntegerType = 47,               /* IntegerType  */
  YYSYMBOL_BooleanType = 48,               /* BooleanType  */
  YYSYMBOL_ObjectType = 49,                /* ObjectType  */
  YYSYMBOL_Methods = 50,                   /* Methods  */
  YYSYMBOL_Method = 51,                    /* Method  */
  YYSYMBOL_ReturnType = 52,                /* ReturnType  */
  YYSYMBOL_NoneType = 53,                  /* NoneType  */
  YYSYMBOL_Parameters = 54,                /* Parameters  */
  YYSYMBOL_Parameter = 55,                 /* Parameter  */
  YYSYMBOL_MethodBody = 56,                /* MethodBody  */
  YYSYMBOL_Declarations = 57,              /* Declarations  */
  YYSYMBOL_Declaration = 58,               /* Declaration  */
  YYSYMBOL_Identifiers = 59,               /* Identifiers  */
  YYSYMBOL_Statements = 60,                /* Statements  */
  YYSYMBOL_Return = 61,                    /* Return  */
  YYSYMBOL_Statement = 62,                 /* Statement  */
  YYSYMBOL_Call = 63,                      /* Call  */
  YYSYMBOL_Assignment = 64,                /* Assignment  */
  YYSYMBOL_MethodCall = 65,                /* MethodCall  */
  YYSYMBOL_Arguments = 66,                 /* Arguments  */
  YYSYMBOL_IfElse = 67,                    /* IfElse  */
  YYSYMBOL_WhileLoop = 68,                 /* WhileLoop  */
  YYSYMBOL_DoWhile = 69,                   /* DoWhile  */
  YYSYMBOL_Print = 70,                     /* Print  */
  YYSYMBOL_Expression = 71,                /* Expression  */
  YYSYMBOL_Variable = 72                   /* Variable  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_uint8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && ! defined __ICC && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                            \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if 1

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* 1 */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  6
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   446

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  38
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  35
/* YYNRULES -- Number of rules.  */
#define YYNRULES  95
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  189

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   292


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,    75,    75,    79,    80,    84,    85,    86,    87,    88,
      89,    90,    91,    95,    96,   100,   104,   108,   112,   113,
     114,   118,   122,   126,   130,   131,   135,   136,   140,   141,
     145,   149,   150,   154,   158,   159,   160,   161,   162,   163,
     164,   165,   169,   170,   174,   178,   179,   183,   184,   188,
     192,   193,   194,   195,   196,   197,   201,   205,   206,   207,
     211,   212,   213,   214,   215,   216,   220,   221,   225,   226,
     230,   234,   238,   242,   243,   244,   245,   246,   247,   248,
     249,   250,   251,   252,   253,   254,   255,   256,   257,   258,
     259,   260,   261,   262,   263,   267
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if 1
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "PRINT", "RETURN",
  "IF", "ELSE", "WHILE", "NEW", "INTEGER", "BOOLEAN", "NONE", "EQUALS",
  "AND", "OR", "NOT", "TRUE", "FALSE", "EXTENDS", "DO", "NUMBER", "NAME",
  "OPEN_CURLY_BRACKET", "CLOSE_CURLY_BRACKET", "OPEN_PARENTHESES",
  "CLOSE_PARENTHESES", "ASSIGNMENT", "DOT", "COMMA", "SEMICOLON", "ARROW",
  "PLUS", "MINUS", "MULTIPLY", "DIVIDE", "GREATER_THAN_EXCLUSIVE",
  "GREATER_THAN_INCLUSIVE", "UNARY_MINUS", "$accept", "Start", "ClassList",
  "Class", "Members", "Member", "SingleIdentifierList", "Identifier",
  "Type", "IntegerType", "BooleanType", "ObjectType", "Methods", "Method",
  "ReturnType", "NoneType", "Parameters", "Parameter", "MethodBody",
  "Declarations", "Declaration", "Identifiers", "Statements", "Return",
  "Statement", "Call", "Assignment", "MethodCall", "Arguments", "IfElse",
  "WhileLoop", "DoWhile", "Print", "Expression", "Variable", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_int16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292
};
#endif

#define YYPACT_NINF (-140)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-1)

#define yytable_value_is_error(Yyn) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
      -8,  -140,    16,    -8,  -140,   -11,  -140,  -140,    -8,   307,
      36,  -140,  -140,  -140,   332,  -140,    44,    -8,  -140,  -140,
    -140,    43,  -140,   420,  -140,  -140,    83,    64,    76,  -140,
    -140,    44,  -140,  -140,   423,   140,  -140,    42,  -140,    -8,
      26,  -140,  -140,  -140,   197,  -140,    67,  -140,    87,    72,
    -140,  -140,  -140,   151,  -140,    67,  -140,   406,   186,   190,
     190,   190,   190,   191,   113,    -8,   142,   406,  -140,   165,
    -140,  -140,  -140,  -140,   161,  -140,  -140,  -140,  -140,   406,
      -8,   190,  -140,  -140,  -140,   190,   190,   -12,  -140,   168,
    -140,   203,   228,   234,   421,    75,   190,    -8,    -8,  -140,
     122,  -140,  -140,   165,  -140,   113,  -140,  -140,  -140,   201,
     202,  -140,   259,  -140,    -8,    -8,   190,   190,   190,  -140,
     190,   190,   190,   190,   190,   190,  -140,   421,   421,    40,
    -140,    28,   326,   267,   195,   199,    -8,  -140,  -140,  -140,
     348,  -140,   205,   206,    -3,   143,    89,    78,    78,  -140,
    -140,    -3,    -3,   139,   399,   220,  -140,   190,  -140,   362,
     190,   376,   190,  -140,  -140,    88,   237,  -140,   221,   326,
    -140,   120,   275,  -140,   184,   300,  -140,   222,   190,  -140,
    -140,  -140,  -140,   421,   312,   400,   223,  -140,  -140
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       0,    17,     0,     2,     4,     0,     1,     3,     0,     0,
       0,    21,    22,     5,     0,    14,    23,     0,    18,    19,
      20,     0,    25,     0,     6,    13,     0,     0,     0,    16,
       7,     0,    24,     9,     0,     0,     8,     0,    23,     0,
       0,    32,    15,    10,     0,    11,     0,    33,     0,     0,
      12,    30,    28,     0,    29,     0,    31,    41,     0,     0,
       0,     0,     0,     0,    23,     0,     0,    35,    43,    37,
      34,    48,    51,    50,     0,    52,    53,    54,    55,    41,
       0,     0,    90,    91,    89,     0,     0,    95,    87,     0,
      84,     0,     0,     0,     0,     0,     0,     0,     0,    46,
       0,    27,    42,    39,    36,     0,    38,    47,    56,     0,
      92,    82,     0,    83,     0,     0,     0,     0,     0,    72,
       0,     0,     0,     0,     0,     0,    49,     0,     0,     0,
      63,     0,    67,     0,     0,     0,     0,    44,    40,    26,
       0,    88,    85,    86,    79,    80,    81,    73,    74,    75,
      76,    77,    78,     0,     0,     0,    60,     0,    57,     0,
       0,     0,     0,    45,    94,     0,    68,    70,     0,    66,
      64,     0,     0,    65,     0,     0,    93,     0,     0,    61,
      58,    62,    59,     0,     0,     0,     0,    69,    71
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -140,  -140,  -140,   248,   230,    -9,  -140,     0,    92,  -140,
    -140,  -140,    18,    -2,   200,  -140,  -140,   208,   175,  -140,
     207,  -140,   -57,   -63,   -67,  -140,  -140,   -19,  -139,  -140,
    -140,  -140,  -140,    71,  -140
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,     2,     3,     4,    14,    15,    28,    87,    17,    18,
      19,    20,    21,    22,    53,    54,    40,    41,    66,    67,
      68,   100,    69,    70,    71,    72,    73,    88,   131,    75,
      76,    77,    78,   132,    90
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_uint8 yytable[] =
{
       5,   165,   107,     5,   104,    25,   106,     8,    10,    16,
     103,     9,    95,     1,    16,   114,     6,    29,   115,    32,
     171,    31,   174,    16,    32,    25,    31,    38,   120,   121,
     122,   123,    26,    32,    16,    31,   107,   129,    74,    47,
     138,    35,    32,    59,    31,    61,    38,    62,    74,    38,
      74,    48,    44,   156,    49,    38,   157,    64,    23,    63,
      74,     1,   107,   155,     1,    99,    30,    64,    27,   105,
     153,   154,    46,    11,    12,    74,    11,    12,    51,    64,
     110,    11,    12,    80,    74,     1,   107,   107,     1,    37,
      81,    82,    83,     1,   105,    84,     1,   134,   135,    85,
     130,   116,   117,   105,     1,    42,    36,    86,    74,    74,
      74,   122,   123,   176,   142,   143,   157,    55,   107,    39,
     120,   121,   122,   123,   124,   125,   185,   105,   105,   105,
      89,    91,    92,    93,    74,    74,   163,    95,    52,    96,
      97,    39,    59,    98,    61,   179,    62,    52,   157,    65,
     136,   137,   111,   105,   105,   116,   112,   113,    63,    65,
       1,     1,   166,    45,    74,   101,    74,   133,    59,    60,
      61,    65,    62,    57,   120,   121,   122,   123,   124,   125,
     116,   117,   118,   105,    63,   105,     1,   144,   145,   146,
     108,   147,   148,   149,   150,   151,   152,   119,    80,   120,
     121,   122,   123,   124,   125,    81,    82,    83,    79,   181,
      84,     1,   157,    94,    85,   116,   117,   118,     1,   159,
      50,   160,    86,   161,   139,   162,   140,   168,   169,   159,
     161,   172,   126,   175,   120,   121,   122,   123,   124,   125,
     116,   117,   118,   177,   183,   178,   116,   117,   118,   184,
     127,     7,   188,    34,   109,    58,   128,    56,     0,   120,
     121,   122,   123,   124,   125,   120,   121,   122,   123,   124,
     125,   116,   117,   118,   102,     0,     0,     0,     0,   116,
     117,   118,     0,     0,   141,     0,     0,   116,   117,   118,
     120,   121,   122,   123,   124,   125,   158,     0,   120,   121,
     122,   123,   124,   125,   180,     0,   120,   121,   122,   123,
     124,   125,   116,   117,   118,     0,    11,    12,     0,     0,
       0,     0,     0,     0,   116,   117,   118,     0,     1,   182,
      13,   120,   121,   122,   123,   124,   125,   186,   116,   117,
     118,    11,    12,   120,   121,   122,   123,   124,   125,     0,
       0,     0,     0,     1,     0,    24,    80,   120,   121,   122,
     123,   124,   125,    81,    82,    83,     0,     0,    84,     1,
      80,     0,    85,   164,     0,     0,     0,    81,    82,    83,
      86,     0,    84,     1,    80,     0,    85,   170,     0,     0,
       0,    81,    82,    83,    86,     0,    84,     1,     0,     0,
      85,   173,    59,    59,    61,    61,    62,    62,    86,    59,
      60,    61,     0,    62,     0,    11,    12,     0,    63,    63,
       1,     1,   167,   187,    59,    63,    61,     1,    62,    11,
      12,     0,    11,    12,     0,     0,     0,     0,     0,     0,
      63,     1,     1,    33,     1,     0,    43
};

static const yytype_int16 yycheck[] =
{
       0,   140,    69,     3,    67,    14,    69,    18,     8,     9,
      67,    22,    24,    21,    14,    27,     0,    17,    30,    21,
     159,    21,   161,    23,    26,    34,    26,    27,    31,    32,
      33,    34,    14,    35,    34,    35,   103,    94,    57,    39,
     103,    23,    44,     3,    44,     5,    46,     7,    67,    49,
      69,    25,    34,    25,    28,    55,    28,    57,    22,    19,
      79,    21,   129,    23,    21,    65,    23,    67,    24,    69,
     127,   128,    30,     9,    10,    94,     9,    10,    11,    79,
      80,     9,    10,     8,   103,    21,   153,   154,    21,    25,
      15,    16,    17,    21,    94,    20,    21,    97,    98,    24,
      25,    12,    13,   103,    21,    29,    23,    32,   127,   128,
     129,    33,    34,    25,   114,   115,    28,    30,   185,    27,
      31,    32,    33,    34,    35,    36,   183,   127,   128,   129,
      59,    60,    61,    62,   153,   154,   136,    24,    46,    26,
      27,    49,     3,    30,     5,    25,     7,    55,    28,    57,
      28,    29,    81,   153,   154,    12,    85,    86,    19,    67,
      21,    21,    23,    23,   183,    23,   185,    96,     3,     4,
       5,    79,     7,    22,    31,    32,    33,    34,    35,    36,
      12,    13,    14,   183,    19,   185,    21,   116,   117,   118,
      29,   120,   121,   122,   123,   124,   125,    29,     8,    31,
      32,    33,    34,    35,    36,    15,    16,    17,    22,    25,
      20,    21,    28,    22,    24,    12,    13,    14,    21,    24,
      23,    26,    32,    24,    23,    26,    24,     7,   157,    24,
      24,   160,    29,   162,    31,    32,    33,    34,    35,    36,
      12,    13,    14,     6,    22,    24,    12,    13,    14,   178,
      22,     3,    29,    23,    79,    55,    22,    49,    -1,    31,
      32,    33,    34,    35,    36,    31,    32,    33,    34,    35,
      36,    12,    13,    14,    67,    -1,    -1,    -1,    -1,    12,
      13,    14,    -1,    -1,    25,    -1,    -1,    12,    13,    14,
      31,    32,    33,    34,    35,    36,    29,    -1,    31,    32,
      33,    34,    35,    36,    29,    -1,    31,    32,    33,    34,
      35,    36,    12,    13,    14,    -1,     9,    10,    -1,    -1,
      -1,    -1,    -1,    -1,    12,    13,    14,    -1,    21,    29,
      23,    31,    32,    33,    34,    35,    36,    25,    12,    13,
      14,     9,    10,    31,    32,    33,    34,    35,    36,    -1,
      -1,    -1,    -1,    21,    -1,    23,     8,    31,    32,    33,
      34,    35,    36,    15,    16,    17,    -1,    -1,    20,    21,
       8,    -1,    24,    25,    -1,    -1,    -1,    15,    16,    17,
      32,    -1,    20,    21,     8,    -1,    24,    25,    -1,    -1,
      -1,    15,    16,    17,    32,    -1,    20,    21,    -1,    -1,
      24,    25,     3,     3,     5,     5,     7,     7,    32,     3,
       4,     5,    -1,     7,    -1,     9,    10,    -1,    19,    19,
      21,    21,    23,    23,     3,    19,     5,    21,     7,     9,
      10,    -1,     9,    10,    -1,    -1,    -1,    -1,    -1,    -1,
      19,    21,    21,    23,    21,    -1,    23
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,    21,    39,    40,    41,    45,     0,    41,    18,    22,
      45,     9,    10,    23,    42,    43,    45,    46,    47,    48,
      49,    50,    51,    22,    23,    43,    50,    24,    44,    45,
      23,    45,    51,    23,    42,    50,    23,    25,    45,    46,
      54,    55,    29,    23,    50,    23,    30,    45,    25,    28,
      23,    11,    46,    52,    53,    30,    55,    22,    52,     3,
       4,     5,     7,    19,    45,    46,    56,    57,    58,    60,
      61,    62,    63,    64,    65,    67,    68,    69,    70,    22,
       8,    15,    16,    17,    20,    24,    32,    45,    65,    71,
      72,    71,    71,    71,    22,    24,    26,    27,    30,    45,
      59,    23,    58,    60,    61,    45,    61,    62,    29,    56,
      45,    71,    71,    71,    27,    30,    12,    13,    14,    29,
      31,    32,    33,    34,    35,    36,    29,    22,    22,    60,
      25,    66,    71,    71,    45,    45,    28,    29,    61,    23,
      24,    25,    45,    45,    71,    71,    71,    71,    71,    71,
      71,    71,    71,    60,    60,    23,    25,    28,    29,    24,
      26,    24,    26,    45,    25,    66,    23,    23,     7,    71,
      25,    66,    71,    25,    66,    71,    25,     6,    24,    25,
      29,    25,    29,    22,    71,    60,    25,    23,    29
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_int8 yyr1[] =
{
       0,    38,    39,    40,    40,    41,    41,    41,    41,    41,
      41,    41,    41,    42,    42,    43,    44,    45,    46,    46,
      46,    47,    48,    49,    50,    50,    51,    51,    52,    52,
      53,    54,    54,    55,    56,    56,    56,    56,    56,    56,
      56,    56,    57,    57,    58,    59,    59,    60,    60,    61,
      62,    62,    62,    62,    62,    62,    63,    64,    64,    64,
      65,    65,    65,    65,    65,    65,    66,    66,    67,    67,
      68,    69,    70,    71,    71,    71,    71,    71,    71,    71,
      71,    71,    71,    71,    71,    71,    71,    71,    71,    71,
      71,    71,    71,    71,    71,    72
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     2,     1,     3,     4,     4,     5,     5,
       6,     6,     7,     2,     1,     3,     1,     1,     1,     1,
       1,     1,     1,     1,     2,     1,     9,     8,     1,     1,
       1,     3,     1,     2,     1,     1,     2,     1,     2,     2,
       3,     0,     2,     1,     3,     3,     1,     2,     1,     3,
       1,     1,     1,     1,     1,     1,     2,     4,     6,     6,
       4,     6,     6,     3,     5,     5,     3,     1,     5,     9,
       5,     9,     3,     3,     3,     3,     3,     3,     3,     3,
       3,     3,     2,     2,     1,     3,     3,     1,     3,     1,
       1,     1,     2,     5,     4,     1
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)

/* This macro is provided for backward compatibility. */
# ifndef YY_LOCATION_PRINT
#  define YY_LOCATION_PRINT(File, Loc) ((void) 0)
# endif


# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YYUSE (yyoutput);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yykind < YYNTOKENS)
    YYPRINT (yyo, yytoknum[yykind], *yyvaluep);
# endif
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)]);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


/* Context of a parse error.  */
typedef struct
{
  yy_state_t *yyssp;
  yysymbol_kind_t yytoken;
} yypcontext_t;

/* Put in YYARG at most YYARGN of the expected tokens given the
   current YYCTX, and return the number of tokens stored in YYARG.  If
   YYARG is null, return the number of expected tokens (guaranteed to
   be less than YYNTOKENS).  Return YYENOMEM on memory exhaustion.
   Return 0 if there are more than YYARGN expected tokens, yet fill
   YYARG up to YYARGN. */
static int
yypcontext_expected_tokens (const yypcontext_t *yyctx,
                            yysymbol_kind_t yyarg[], int yyargn)
{
  /* Actual size of YYARG. */
  int yycount = 0;
  int yyn = yypact[+*yyctx->yyssp];
  if (!yypact_value_is_default (yyn))
    {
      /* Start YYX at -YYN if negative to avoid negative indexes in
         YYCHECK.  In other words, skip the first -YYN actions for
         this state because they are default actions.  */
      int yyxbegin = yyn < 0 ? -yyn : 0;
      /* Stay within bounds of both yycheck and yytname.  */
      int yychecklim = YYLAST - yyn + 1;
      int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
      int yyx;
      for (yyx = yyxbegin; yyx < yyxend; ++yyx)
        if (yycheck[yyx + yyn] == yyx && yyx != YYSYMBOL_YYerror
            && !yytable_value_is_error (yytable[yyx + yyn]))
          {
            if (!yyarg)
              ++yycount;
            else if (yycount == yyargn)
              return 0;
            else
              yyarg[yycount++] = YY_CAST (yysymbol_kind_t, yyx);
          }
    }
  if (yyarg && yycount == 0 && 0 < yyargn)
    yyarg[0] = YYSYMBOL_YYEMPTY;
  return yycount;
}




#ifndef yystrlen
# if defined __GLIBC__ && defined _STRING_H
#  define yystrlen(S) (YY_CAST (YYPTRDIFF_T, strlen (S)))
# else
/* Return the length of YYSTR.  */
static YYPTRDIFF_T
yystrlen (const char *yystr)
{
  YYPTRDIFF_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
# endif
#endif

#ifndef yystpcpy
# if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#  define yystpcpy stpcpy
# else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
# endif
#endif

#ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYPTRDIFF_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYPTRDIFF_T yyn = 0;
      char const *yyp = yystr;
      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            else
              goto append;

          append:
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (yyres)
    return yystpcpy (yyres, yystr) - yyres;
  else
    return yystrlen (yystr);
}
#endif


static int
yy_syntax_error_arguments (const yypcontext_t *yyctx,
                           yysymbol_kind_t yyarg[], int yyargn)
{
  /* Actual size of YYARG. */
  int yycount = 0;
  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yyctx->yytoken != YYSYMBOL_YYEMPTY)
    {
      int yyn;
      if (yyarg)
        yyarg[yycount] = yyctx->yytoken;
      ++yycount;
      yyn = yypcontext_expected_tokens (yyctx,
                                        yyarg ? yyarg + 1 : yyarg, yyargn - 1);
      if (yyn == YYENOMEM)
        return YYENOMEM;
      else
        yycount += yyn;
    }
  return yycount;
}

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return -1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return YYENOMEM if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYPTRDIFF_T *yymsg_alloc, char **yymsg,
                const yypcontext_t *yyctx)
{
  enum { YYARGS_MAX = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat: reported tokens (one for the "unexpected",
     one per "expected"). */
  yysymbol_kind_t yyarg[YYARGS_MAX];
  /* Cumulated lengths of YYARG.  */
  YYPTRDIFF_T yysize = 0;

  /* Actual size of YYARG. */
  int yycount = yy_syntax_error_arguments (yyctx, yyarg, YYARGS_MAX);
  if (yycount == YYENOMEM)
    return YYENOMEM;

  switch (yycount)
    {
#define YYCASE_(N, S)                       \
      case N:                               \
        yyformat = S;                       \
        break
    default: /* Avoid compiler warnings. */
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
#undef YYCASE_
    }

  /* Compute error message size.  Don't count the "%s"s, but reserve
     room for the terminator.  */
  yysize = yystrlen (yyformat) - 2 * yycount + 1;
  {
    int yyi;
    for (yyi = 0; yyi < yycount; ++yyi)
      {
        YYPTRDIFF_T yysize1
          = yysize + yytnamerr (YY_NULLPTR, yytname[yyarg[yyi]]);
        if (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM)
          yysize = yysize1;
        else
          return YYENOMEM;
      }
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return -1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yytname[yyarg[yyi++]]);
          yyformat += 2;
        }
      else
        {
          ++yyp;
          ++yyformat;
        }
  }
  return 0;
}


/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYPTRDIFF_T yymsg_alloc = sizeof yymsgbuf;

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */
  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    goto yyexhaustedlab;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      goto yyerrlab1;
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2: /* Start: ClassList  */
#line 75 "parser.y"
            { (yyval.program_ptr) = new ProgramNode((yyvsp[0].class_list_ptr)); astRoot=(yyval.program_ptr); }
#line 1590 "parser.cpp"
    break;

  case 3: /* ClassList: ClassList Class  */
#line 79 "parser.y"
                  { (yyval.class_list_ptr) = (yyvsp[-1].class_list_ptr); (yyval.class_list_ptr)->push_back((yyvsp[0].class_ptr)); }
#line 1596 "parser.cpp"
    break;

  case 4: /* ClassList: Class  */
#line 80 "parser.y"
         { (yyval.class_list_ptr) = new std::list<ClassNode*>(); (yyval.class_list_ptr)->push_back((yyvsp[0].class_ptr)); }
#line 1602 "parser.cpp"
    break;

  case 5: /* Class: Identifier OPEN_CURLY_BRACKET CLOSE_CURLY_BRACKET  */
#line 84 "parser.y"
                                                    { (yyval.class_ptr) = new ClassNode((yyvsp[-2].identifier_ptr), NULL, NULL, NULL); }
#line 1608 "parser.cpp"
    break;

  case 6: /* Class: Identifier OPEN_CURLY_BRACKET Members CLOSE_CURLY_BRACKET  */
#line 85 "parser.y"
                                                             { (yyval.class_ptr) = new ClassNode((yyvsp[-3].identifier_ptr), NULL, (yyvsp[-1].declaration_list_ptr), NULL); }
#line 1614 "parser.cpp"
    break;

  case 7: /* Class: Identifier OPEN_CURLY_BRACKET Methods CLOSE_CURLY_BRACKET  */
#line 86 "parser.y"
                                                             { (yyval.class_ptr) = new ClassNode((yyvsp[-3].identifier_ptr), NULL, NULL, (yyvsp[-1].method_list_ptr)); }
#line 1620 "parser.cpp"
    break;

  case 8: /* Class: Identifier OPEN_CURLY_BRACKET Members Methods CLOSE_CURLY_BRACKET  */
#line 87 "parser.y"
                                                                    { (yyval.class_ptr) = new ClassNode((yyvsp[-4].identifier_ptr), NULL, (yyvsp[-2].declaration_list_ptr), (yyvsp[-1].method_list_ptr)); }
#line 1626 "parser.cpp"
    break;

  case 9: /* Class: Identifier EXTENDS Identifier OPEN_CURLY_BRACKET CLOSE_CURLY_BRACKET  */
#line 88 "parser.y"
                                                                        { (yyval.class_ptr) = new ClassNode((yyvsp[-4].identifier_ptr), (yyvsp[-2].identifier_ptr), NULL, NULL); }
#line 1632 "parser.cpp"
    break;

  case 10: /* Class: Identifier EXTENDS Identifier OPEN_CURLY_BRACKET Members CLOSE_CURLY_BRACKET  */
#line 89 "parser.y"
                                                                               { (yyval.class_ptr) = new ClassNode((yyvsp[-5].identifier_ptr), (yyvsp[-3].identifier_ptr), (yyvsp[-1].declaration_list_ptr), NULL); }
#line 1638 "parser.cpp"
    break;

  case 11: /* Class: Identifier EXTENDS Identifier OPEN_CURLY_BRACKET Methods CLOSE_CURLY_BRACKET  */
#line 90 "parser.y"
                                                                               { (yyval.class_ptr) = new ClassNode((yyvsp[-5].identifier_ptr), (yyvsp[-3].identifier_ptr), NULL, (yyvsp[-1].method_list_ptr)); }
#line 1644 "parser.cpp"
    break;

  case 12: /* Class: Identifier EXTENDS Identifier OPEN_CURLY_BRACKET Members Methods CLOSE_CURLY_BRACKET  */
#line 91 "parser.y"
                                                                                        { (yyval.class_ptr) = new ClassNode((yyvsp[-6].identifier_ptr), (yyvsp[-4].identifier_ptr), (yyvsp[-2].declaration_list_ptr), (yyvsp[-1].method_list_ptr)); }
#line 1650 "parser.cpp"
    break;

  case 13: /* Members: Members Member  */
#line 95 "parser.y"
                  { (yyval.declaration_list_ptr) = (yyvsp[-1].declaration_list_ptr); (yyval.declaration_list_ptr)->push_back((yyvsp[0].declaration_ptr)); }
#line 1656 "parser.cpp"
    break;

  case 14: /* Members: Member  */
#line 96 "parser.y"
          { (yyval.declaration_list_ptr) = new std::list<DeclarationNode*>(); (yyval.declaration_list_ptr)->push_back((yyvsp[0].declaration_ptr)); }
#line 1662 "parser.cpp"
    break;

  case 15: /* Member: Type SingleIdentifierList SEMICOLON  */
#line 100 "parser.y"
                                      { (yyval.declaration_ptr) = new DeclarationNode((yyvsp[-2].type_ptr), (yyvsp[-1].identifier_list_ptr)); }
#line 1668 "parser.cpp"
    break;

  case 16: /* SingleIdentifierList: Identifier  */
#line 104 "parser.y"
              { (yyval.identifier_list_ptr) = new std::list<IdentifierNode*>(); (yyval.identifier_list_ptr)->push_back((yyvsp[0].identifier_ptr)); }
#line 1674 "parser.cpp"
    break;

  case 17: /* Identifier: NAME  */
#line 108 "parser.y"
        { (yyval.identifier_ptr) = new IdentifierNode((yyvsp[0].base_char_ptr)); }
#line 1680 "parser.cpp"
    break;

  case 18: /* Type: IntegerType  */
#line 112 "parser.y"
              { (yyval.type_ptr) = (yyvsp[0].integertype_ptr); }
#line 1686 "parser.cpp"
    break;

  case 19: /* Type: BooleanType  */
#line 113 "parser.y"
              { (yyval.type_ptr) = (yyvsp[0].booleantype_ptr); }
#line 1692 "parser.cpp"
    break;

  case 20: /* Type: ObjectType  */
#line 114 "parser.y"
              { (yyval.type_ptr) = (yyvsp[0].objecttype_ptr); }
#line 1698 "parser.cpp"
    break;

  case 21: /* IntegerType: INTEGER  */
#line 118 "parser.y"
          { (yyval.integertype_ptr) = new IntegerTypeNode(); }
#line 1704 "parser.cpp"
    break;

  case 22: /* BooleanType: BOOLEAN  */
#line 122 "parser.y"
          { (yyval.booleantype_ptr) = new BooleanTypeNode(); }
#line 1710 "parser.cpp"
    break;

  case 23: /* ObjectType: Identifier  */
#line 126 "parser.y"
              { (yyval.objecttype_ptr) = new ObjectTypeNode((yyvsp[0].identifier_ptr)); }
#line 1716 "parser.cpp"
    break;

  case 24: /* Methods: Methods Method  */
#line 130 "parser.y"
                  { (yyval.method_list_ptr) = (yyvsp[-1].method_list_ptr), (yyval.method_list_ptr)->push_back((yyvsp[0].method_ptr)); }
#line 1722 "parser.cpp"
    break;

  case 25: /* Methods: Method  */
#line 131 "parser.y"
          { (yyval.method_list_ptr) = new std::list<MethodNode*>(); (yyval.method_list_ptr)->push_back((yyvsp[0].method_ptr)); }
#line 1728 "parser.cpp"
    break;

  case 26: /* Method: Identifier OPEN_PARENTHESES Parameters CLOSE_PARENTHESES ARROW ReturnType OPEN_CURLY_BRACKET MethodBody CLOSE_CURLY_BRACKET  */
#line 135 "parser.y"
                                                                                                                               { (yyval.method_ptr) = new MethodNode((yyvsp[-8].identifier_ptr), (yyvsp[-6].parameter_list_ptr), (yyvsp[-3].type_ptr), (yyvsp[-1].methodbody_ptr)); }
#line 1734 "parser.cpp"
    break;

  case 27: /* Method: Identifier OPEN_PARENTHESES CLOSE_PARENTHESES ARROW ReturnType OPEN_CURLY_BRACKET MethodBody CLOSE_CURLY_BRACKET  */
#line 136 "parser.y"
                                                                                                                    { (yyval.method_ptr) = new MethodNode((yyvsp[-7].identifier_ptr), NULL, (yyvsp[-3].type_ptr), (yyvsp[-1].methodbody_ptr)); }
#line 1740 "parser.cpp"
    break;

  case 28: /* ReturnType: Type  */
#line 140 "parser.y"
        { (yyval.type_ptr) = (yyvsp[0].type_ptr); }
#line 1746 "parser.cpp"
    break;

  case 29: /* ReturnType: NoneType  */
#line 141 "parser.y"
            { (yyval.type_ptr) = (yyvsp[0].none_ptr); }
#line 1752 "parser.cpp"
    break;

  case 30: /* NoneType: NONE  */
#line 145 "parser.y"
        { (yyval.none_ptr) = new NoneNode(); }
#line 1758 "parser.cpp"
    break;

  case 31: /* Parameters: Parameters COMMA Parameter  */
#line 149 "parser.y"
                             { (yyval.parameter_list_ptr) = (yyvsp[-2].parameter_list_ptr); (yyval.parameter_list_ptr)->push_back((yyvsp[0].parameter_ptr)); }
#line 1764 "parser.cpp"
    break;

  case 32: /* Parameters: Parameter  */
#line 150 "parser.y"
            { (yyval.parameter_list_ptr) = new std::list<ParameterNode*>(); (yyval.parameter_list_ptr)->push_back((yyvsp[0].parameter_ptr)); }
#line 1770 "parser.cpp"
    break;

  case 33: /* Parameter: Type Identifier  */
#line 154 "parser.y"
                  { (yyval.parameter_ptr) = new ParameterNode((yyvsp[-1].type_ptr), (yyvsp[0].identifier_ptr)); }
#line 1776 "parser.cpp"
    break;

  case 34: /* MethodBody: Return  */
#line 158 "parser.y"
          { (yyval.methodbody_ptr) = new MethodBodyNode(NULL, NULL, (yyvsp[0].returnstatement_ptr)); }
#line 1782 "parser.cpp"
    break;

  case 35: /* MethodBody: Declarations  */
#line 159 "parser.y"
                { (yyval.methodbody_ptr) = new MethodBodyNode((yyvsp[0].declaration_list_ptr), NULL, NULL); }
#line 1788 "parser.cpp"
    break;

  case 36: /* MethodBody: Declarations Return  */
#line 160 "parser.y"
                      { (yyval.methodbody_ptr) = new MethodBodyNode((yyvsp[-1].declaration_list_ptr), NULL, (yyvsp[0].returnstatement_ptr)); }
#line 1794 "parser.cpp"
    break;

  case 37: /* MethodBody: Statements  */
#line 161 "parser.y"
              { (yyval.methodbody_ptr) = new MethodBodyNode(NULL, (yyvsp[0].statement_list_ptr), NULL); }
#line 1800 "parser.cpp"
    break;

  case 38: /* MethodBody: Statements Return  */
#line 162 "parser.y"
                    { (yyval.methodbody_ptr) = new MethodBodyNode(NULL, (yyvsp[-1].statement_list_ptr), (yyvsp[0].returnstatement_ptr)); }
#line 1806 "parser.cpp"
    break;

  case 39: /* MethodBody: Declarations Statements  */
#line 163 "parser.y"
                           { (yyval.methodbody_ptr) = new MethodBodyNode((yyvsp[-1].declaration_list_ptr), (yyvsp[0].statement_list_ptr), NULL); }
#line 1812 "parser.cpp"
    break;

  case 40: /* MethodBody: Declarations Statements Return  */
#line 164 "parser.y"
                                  { (yyval.methodbody_ptr) = new MethodBodyNode((yyvsp[-2].declaration_list_ptr), (yyvsp[-1].statement_list_ptr), (yyvsp[0].returnstatement_ptr)); }
#line 1818 "parser.cpp"
    break;

  case 41: /* MethodBody: %empty  */
#line 165 "parser.y"
          { (yyval.methodbody_ptr) = new MethodBodyNode(NULL, NULL, NULL); }
#line 1824 "parser.cpp"
    break;

  case 42: /* Declarations: Declarations Declaration  */
#line 169 "parser.y"
                            { (yyval.declaration_list_ptr) = (yyvsp[-1].declaration_list_ptr), (yyval.declaration_list_ptr)->push_back((yyvsp[0].declaration_ptr)); }
#line 1830 "parser.cpp"
    break;

  case 43: /* Declarations: Declaration  */
#line 170 "parser.y"
               { (yyval.declaration_list_ptr) = new std::list<DeclarationNode*>(); (yyval.declaration_list_ptr)->push_back((yyvsp[0].declaration_ptr)); }
#line 1836 "parser.cpp"
    break;

  case 44: /* Declaration: Type Identifiers SEMICOLON  */
#line 174 "parser.y"
                             { (yyval.declaration_ptr) = new DeclarationNode((yyvsp[-2].type_ptr), (yyvsp[-1].identifier_list_ptr)); }
#line 1842 "parser.cpp"
    break;

  case 45: /* Identifiers: Identifiers COMMA Identifier  */
#line 178 "parser.y"
                               { (yyval.identifier_list_ptr) = (yyvsp[-2].identifier_list_ptr), (yyval.identifier_list_ptr)->push_back((yyvsp[0].identifier_ptr)); }
#line 1848 "parser.cpp"
    break;

  case 46: /* Identifiers: Identifier  */
#line 179 "parser.y"
              { (yyval.identifier_list_ptr) = new std::list<IdentifierNode*>(); (yyval.identifier_list_ptr)->push_back((yyvsp[0].identifier_ptr)); }
#line 1854 "parser.cpp"
    break;

  case 47: /* Statements: Statements Statement  */
#line 183 "parser.y"
                        { (yyval.statement_list_ptr) = (yyvsp[-1].statement_list_ptr), (yyval.statement_list_ptr)->push_back((yyvsp[0].statement_ptr)); }
#line 1860 "parser.cpp"
    break;

  case 48: /* Statements: Statement  */
#line 184 "parser.y"
             { (yyval.statement_list_ptr) = new std::list<StatementNode*>(); (yyval.statement_list_ptr)->push_back((yyvsp[0].statement_ptr)); }
#line 1866 "parser.cpp"
    break;

  case 49: /* Return: RETURN Expression SEMICOLON  */
#line 188 "parser.y"
                            { (yyval.returnstatement_ptr) = new ReturnStatementNode((yyvsp[-1].expression_ptr)); }
#line 1872 "parser.cpp"
    break;

  case 50: /* Statement: Assignment  */
#line 192 "parser.y"
              { (yyval.statement_ptr) = (yyvsp[0].assignment_ptr); }
#line 1878 "parser.cpp"
    break;

  case 51: /* Statement: Call  */
#line 193 "parser.y"
        { (yyval.statement_ptr) = (yyvsp[0].call_ptr); }
#line 1884 "parser.cpp"
    break;

  case 52: /* Statement: IfElse  */
#line 194 "parser.y"
          { (yyval.statement_ptr) = (yyvsp[0].ifelse_ptr); }
#line 1890 "parser.cpp"
    break;

  case 53: /* Statement: WhileLoop  */
#line 195 "parser.y"
            { (yyval.statement_ptr) = (yyvsp[0].while_ptr); }
#line 1896 "parser.cpp"
    break;

  case 54: /* Statement: DoWhile  */
#line 196 "parser.y"
          { (yyval.statement_ptr) = (yyvsp[0].dowhile_ptr); }
#line 1902 "parser.cpp"
    break;

  case 55: /* Statement: Print  */
#line 197 "parser.y"
        { (yyval.statement_ptr) = (yyvsp[0].print_ptr); }
#line 1908 "parser.cpp"
    break;

  case 56: /* Call: MethodCall SEMICOLON  */
#line 201 "parser.y"
                        { (yyval.call_ptr) = new CallNode((yyvsp[-1].methodcall_ptr)); }
#line 1914 "parser.cpp"
    break;

  case 57: /* Assignment: Identifier ASSIGNMENT Expression SEMICOLON  */
#line 205 "parser.y"
                                              { (yyval.assignment_ptr) = new AssignmentNode((yyvsp[-3].identifier_ptr), NULL, (yyvsp[-1].expression_ptr)); }
#line 1920 "parser.cpp"
    break;

  case 58: /* Assignment: Identifier DOT Identifier ASSIGNMENT Expression SEMICOLON  */
#line 206 "parser.y"
                                                            { (yyval.assignment_ptr) = new AssignmentNode((yyvsp[-5].identifier_ptr), (yyvsp[-3].identifier_ptr), (yyvsp[-1].expression_ptr)); }
#line 1926 "parser.cpp"
    break;

  case 59: /* Assignment: Identifier ARROW Identifier ASSIGNMENT Expression SEMICOLON  */
#line 207 "parser.y"
                                                              { (yyval.assignment_ptr) = new AssignmentNode((yyvsp[-5].identifier_ptr), (yyvsp[-3].identifier_ptr), (yyvsp[-1].expression_ptr)); }
#line 1932 "parser.cpp"
    break;

  case 60: /* MethodCall: Identifier OPEN_PARENTHESES Arguments CLOSE_PARENTHESES  */
#line 211 "parser.y"
                                                          { (yyval.methodcall_ptr) = new MethodCallNode((yyvsp[-3].identifier_ptr), NULL, (yyvsp[-1].expression_list_ptr)); }
#line 1938 "parser.cpp"
    break;

  case 61: /* MethodCall: Identifier DOT Identifier OPEN_PARENTHESES Arguments CLOSE_PARENTHESES  */
#line 212 "parser.y"
                                                                          { (yyval.methodcall_ptr) = new MethodCallNode((yyvsp[-5].identifier_ptr), (yyvsp[-3].identifier_ptr), (yyvsp[-1].expression_list_ptr)); }
#line 1944 "parser.cpp"
    break;

  case 62: /* MethodCall: Identifier ARROW Identifier OPEN_PARENTHESES Arguments CLOSE_PARENTHESES  */
#line 213 "parser.y"
                                                                            { (yyval.methodcall_ptr) = new MethodCallNode((yyvsp[-5].identifier_ptr), (yyvsp[-3].identifier_ptr), (yyvsp[-1].expression_list_ptr)); }
#line 1950 "parser.cpp"
    break;

  case 63: /* MethodCall: Identifier OPEN_PARENTHESES CLOSE_PARENTHESES  */
#line 214 "parser.y"
                                                { (yyval.methodcall_ptr) = new MethodCallNode((yyvsp[-2].identifier_ptr), NULL, NULL); }
#line 1956 "parser.cpp"
    break;

  case 64: /* MethodCall: Identifier DOT Identifier OPEN_PARENTHESES CLOSE_PARENTHESES  */
#line 215 "parser.y"
                                                                { (yyval.methodcall_ptr) = new MethodCallNode((yyvsp[-4].identifier_ptr), (yyvsp[-2].identifier_ptr), NULL); }
#line 1962 "parser.cpp"
    break;

  case 65: /* MethodCall: Identifier ARROW Identifier OPEN_PARENTHESES CLOSE_PARENTHESES  */
#line 216 "parser.y"
                                                                  { (yyval.methodcall_ptr) = new MethodCallNode((yyvsp[-4].identifier_ptr), (yyvsp[-2].identifier_ptr), NULL); }
#line 1968 "parser.cpp"
    break;

  case 66: /* Arguments: Arguments COMMA Expression  */
#line 220 "parser.y"
                              { (yyval.expression_list_ptr) = (yyvsp[-2].expression_list_ptr); (yyval.expression_list_ptr)->push_back((yyvsp[0].expression_ptr)); }
#line 1974 "parser.cpp"
    break;

  case 67: /* Arguments: Expression  */
#line 221 "parser.y"
              { (yyval.expression_list_ptr) = new std::list<ExpressionNode*>(); (yyval.expression_list_ptr)->push_back((yyvsp[0].expression_ptr)); }
#line 1980 "parser.cpp"
    break;

  case 68: /* IfElse: IF Expression OPEN_CURLY_BRACKET Statements CLOSE_CURLY_BRACKET  */
#line 225 "parser.y"
                                                                  { (yyval.ifelse_ptr) = new IfElseNode((yyvsp[-3].expression_ptr), (yyvsp[-1].statement_list_ptr), NULL); }
#line 1986 "parser.cpp"
    break;

  case 69: /* IfElse: IF Expression OPEN_CURLY_BRACKET Statements CLOSE_CURLY_BRACKET ELSE OPEN_CURLY_BRACKET Statements CLOSE_CURLY_BRACKET  */
#line 226 "parser.y"
                                                                                                                          { (yyval.ifelse_ptr) = new IfElseNode((yyvsp[-7].expression_ptr), (yyvsp[-5].statement_list_ptr), (yyvsp[-1].statement_list_ptr)); }
#line 1992 "parser.cpp"
    break;

  case 70: /* WhileLoop: WHILE Expression OPEN_CURLY_BRACKET Statements CLOSE_CURLY_BRACKET  */
#line 230 "parser.y"
                                                                      { (yyval.while_ptr) = new WhileNode((yyvsp[-3].expression_ptr), (yyvsp[-1].statement_list_ptr)); }
#line 1998 "parser.cpp"
    break;

  case 71: /* DoWhile: DO OPEN_CURLY_BRACKET Statements CLOSE_CURLY_BRACKET WHILE OPEN_PARENTHESES Expression CLOSE_PARENTHESES SEMICOLON  */
#line 234 "parser.y"
                                                                                                                    { (yyval.dowhile_ptr) = new DoWhileNode((yyvsp[-6].statement_list_ptr), (yyvsp[-2].expression_ptr)); }
#line 2004 "parser.cpp"
    break;

  case 72: /* Print: PRINT Expression SEMICOLON  */
#line 238 "parser.y"
                              { (yyval.print_ptr) = new PrintNode((yyvsp[-1].expression_ptr)); }
#line 2010 "parser.cpp"
    break;

  case 73: /* Expression: Expression PLUS Expression  */
#line 242 "parser.y"
                              { (yyval.expression_ptr) = new PlusNode((yyvsp[-2].expression_ptr), (yyvsp[0].expression_ptr)); }
#line 2016 "parser.cpp"
    break;

  case 74: /* Expression: Expression MINUS Expression  */
#line 243 "parser.y"
                              { (yyval.expression_ptr) = new MinusNode((yyvsp[-2].expression_ptr), (yyvsp[0].expression_ptr)); }
#line 2022 "parser.cpp"
    break;

  case 75: /* Expression: Expression MULTIPLY Expression  */
#line 244 "parser.y"
                                  { (yyval.expression_ptr) = new TimesNode((yyvsp[-2].expression_ptr), (yyvsp[0].expression_ptr)); }
#line 2028 "parser.cpp"
    break;

  case 76: /* Expression: Expression DIVIDE Expression  */
#line 245 "parser.y"
                                { (yyval.expression_ptr) = new DivideNode((yyvsp[-2].expression_ptr), (yyvsp[0].expression_ptr)); }
#line 2034 "parser.cpp"
    break;

  case 77: /* Expression: Expression GREATER_THAN_EXCLUSIVE Expression  */
#line 246 "parser.y"
                                                { (yyval.expression_ptr) = new GreaterNode((yyvsp[-2].expression_ptr), (yyvsp[0].expression_ptr)); }
#line 2040 "parser.cpp"
    break;

  case 78: /* Expression: Expression GREATER_THAN_INCLUSIVE Expression  */
#line 247 "parser.y"
                                                { (yyval.expression_ptr) = new GreaterEqualNode((yyvsp[-2].expression_ptr), (yyvsp[0].expression_ptr)); }
#line 2046 "parser.cpp"
    break;

  case 79: /* Expression: Expression EQUALS Expression  */
#line 248 "parser.y"
                                { (yyval.expression_ptr) = new EqualNode((yyvsp[-2].expression_ptr), (yyvsp[0].expression_ptr)); }
#line 2052 "parser.cpp"
    break;

  case 80: /* Expression: Expression AND Expression  */
#line 249 "parser.y"
                            { (yyval.expression_ptr) = new AndNode((yyvsp[-2].expression_ptr), (yyvsp[0].expression_ptr)); }
#line 2058 "parser.cpp"
    break;

  case 81: /* Expression: Expression OR Expression  */
#line 250 "parser.y"
                            { (yyval.expression_ptr) = new OrNode((yyvsp[-2].expression_ptr), (yyvsp[0].expression_ptr)); }
#line 2064 "parser.cpp"
    break;

  case 82: /* Expression: NOT Expression  */
#line 251 "parser.y"
                  { (yyval.expression_ptr) = new NotNode((yyvsp[0].expression_ptr)); }
#line 2070 "parser.cpp"
    break;

  case 83: /* Expression: MINUS Expression  */
#line 252 "parser.y"
                                      { (yyval.expression_ptr) = new NegationNode((yyvsp[0].expression_ptr)); }
#line 2076 "parser.cpp"
    break;

  case 84: /* Expression: Variable  */
#line 253 "parser.y"
            { (yyval.expression_ptr) = (yyvsp[0].variable_ptr); }
#line 2082 "parser.cpp"
    break;

  case 85: /* Expression: Identifier DOT Identifier  */
#line 254 "parser.y"
                            { (yyval.expression_ptr) = new MemberAccessNode((yyvsp[-2].identifier_ptr), (yyvsp[0].identifier_ptr)); }
#line 2088 "parser.cpp"
    break;

  case 86: /* Expression: Identifier ARROW Identifier  */
#line 255 "parser.y"
                              { (yyval.expression_ptr) = new MemberAccessNode((yyvsp[-2].identifier_ptr), (yyvsp[0].identifier_ptr)); }
#line 2094 "parser.cpp"
    break;

  case 87: /* Expression: MethodCall  */
#line 256 "parser.y"
             { (yyval.expression_ptr) = (yyvsp[0].methodcall_ptr); }
#line 2100 "parser.cpp"
    break;

  case 88: /* Expression: OPEN_PARENTHESES Expression CLOSE_PARENTHESES  */
#line 257 "parser.y"
                                                { (yyval.expression_ptr) = (yyvsp[-1].expression_ptr); }
#line 2106 "parser.cpp"
    break;

  case 89: /* Expression: NUMBER  */
#line 258 "parser.y"
         { (yyval.expression_ptr) = new IntegerLiteralNode(new IntegerNode((yyvsp[0].base_int))); }
#line 2112 "parser.cpp"
    break;

  case 90: /* Expression: TRUE  */
#line 259 "parser.y"
       { (yyval.expression_ptr) = new BooleanLiteralNode(new IntegerNode(1)); }
#line 2118 "parser.cpp"
    break;

  case 91: /* Expression: FALSE  */
#line 260 "parser.y"
        { (yyval.expression_ptr) = new BooleanLiteralNode(new IntegerNode(0)); }
#line 2124 "parser.cpp"
    break;

  case 92: /* Expression: NEW Identifier  */
#line 261 "parser.y"
                  { (yyval.expression_ptr) = new NewNode((yyvsp[0].identifier_ptr), NULL); }
#line 2130 "parser.cpp"
    break;

  case 93: /* Expression: NEW Identifier OPEN_PARENTHESES Arguments CLOSE_PARENTHESES  */
#line 262 "parser.y"
                                                              { (yyval.expression_ptr) = new NewNode((yyvsp[-3].identifier_ptr), (yyvsp[-1].expression_list_ptr)); }
#line 2136 "parser.cpp"
    break;

  case 94: /* Expression: NEW Identifier OPEN_PARENTHESES CLOSE_PARENTHESES  */
#line 263 "parser.y"
                                                    { (yyval.expression_ptr) = new NewNode((yyvsp[-2].identifier_ptr), NULL); }
#line 2142 "parser.cpp"
    break;

  case 95: /* Variable: Identifier  */
#line 267 "parser.y"
              { (yyval.variable_ptr) = new VariableNode((yyvsp[0].identifier_ptr)); }
#line 2148 "parser.cpp"
    break;


#line 2152 "parser.cpp"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      {
        yypcontext_t yyctx
          = {yyssp, yytoken};
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = yysyntax_error (&yymsg_alloc, &yymsg, &yyctx);
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == -1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = YY_CAST (char *,
                             YYSTACK_ALLOC (YY_CAST (YYSIZE_T, yymsg_alloc)));
            if (yymsg)
              {
                yysyntax_error_status
                  = yysyntax_error (&yymsg_alloc, &yymsg, &yyctx);
                yymsgp = yymsg;
              }
            else
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = YYENOMEM;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == YYENOMEM)
          goto yyexhaustedlab;
      }
    }

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;


#if 1
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturn;
#endif


/*-------------------------------------------------------.
| yyreturn -- parsing is finished, clean up and return.  |
`-------------------------------------------------------*/
yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
  return yyresult;
}

#line 270 "parser.y"


extern int yylineno;

void yyerror(const char *s) {
  fprintf(stderr, "%s at line %d\n", s, yylineno);
  exit(0);
}
