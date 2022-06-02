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

    #include <cstdlib>
    #include <cstdio>
    #include <iostream>
    #include "ast.hpp"
    
    #define YYDEBUG 1
    #define YYINITDEPTH 10000
    
    int yylex(void);
    void yyerror(const char *);
    
    extern ASTNode* astRoot;

#line 86 "parser.cpp"

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
  YYSYMBOL_INT = 3,                        /* INT  */
  YYSYMBOL_BOOL = 4,                       /* BOOL  */
  YYSYMBOL_FLOAT = 5,                      /* FLOAT  */
  YYSYMBOL_ARROW = 6,                      /* ARROW  */
  YYSYMBOL_IF = 7,                         /* IF  */
  YYSYMBOL_WHILE = 8,                      /* WHILE  */
  YYSYMBOL_DO = 9,                         /* DO  */
  YYSYMBOL_ELSE = 10,                      /* ELSE  */
  YYSYMBOL_PRINT = 11,                     /* PRINT  */
  YYSYMBOL_PLUS = 12,                      /* PLUS  */
  YYSYMBOL_MINUS = 13,                     /* MINUS  */
  YYSYMBOL_MULT = 14,                      /* MULT  */
  YYSYMBOL_DIV = 15,                       /* DIV  */
  YYSYMBOL_GREATER = 16,                   /* GREATER  */
  YYSYMBOL_GREATER_THAN_OR_EQUAL = 17,     /* GREATER_THAN_OR_EQUAL  */
  YYSYMBOL_AND = 18,                       /* AND  */
  YYSYMBOL_OR = 19,                        /* OR  */
  YYSYMBOL_NOT = 20,                       /* NOT  */
  YYSYMBOL_UNARY_MINUS = 21,               /* UNARY_MINUS  */
  YYSYMBOL_NAME = 22,                      /* NAME  */
  YYSYMBOL_INT_VAL = 23,                   /* INT_VAL  */
  YYSYMBOL_FLOAT_VAL = 24,                 /* FLOAT_VAL  */
  YYSYMBOL_TRUE = 25,                      /* TRUE  */
  YYSYMBOL_FALSE = 26,                     /* FALSE  */
  YYSYMBOL_NEW = 27,                       /* NEW  */
  YYSYMBOL_NONE = 28,                      /* NONE  */
  YYSYMBOL_DOT = 29,                       /* DOT  */
  YYSYMBOL_SEMICOLON = 30,                 /* SEMICOLON  */
  YYSYMBOL_COMMA = 31,                     /* COMMA  */
  YYSYMBOL_LEFT_BRACE = 32,                /* LEFT_BRACE  */
  YYSYMBOL_RIGHT_BRACE = 33,               /* RIGHT_BRACE  */
  YYSYMBOL_LEFT_PAREN = 34,                /* LEFT_PAREN  */
  YYSYMBOL_RIGHT_PAREN = 35,               /* RIGHT_PAREN  */
  YYSYMBOL_EQUALS = 36,                    /* EQUALS  */
  YYSYMBOL_ASSIGN = 37,                    /* ASSIGN  */
  YYSYMBOL_RETURN = 38,                    /* RETURN  */
  YYSYMBOL_EXTENDS = 39,                   /* EXTENDS  */
  YYSYMBOL_YYACCEPT = 40,                  /* $accept  */
  YYSYMBOL_Start = 41,                     /* Start  */
  YYSYMBOL_Program = 42,                   /* Program  */
  YYSYMBOL_Classes = 43,                   /* Classes  */
  YYSYMBOL_Class = 44,                     /* Class  */
  YYSYMBOL_Members = 45,                   /* Members  */
  YYSYMBOL_Member = 46,                    /* Member  */
  YYSYMBOL_Name = 47,                      /* Name  */
  YYSYMBOL_Type = 48,                      /* Type  */
  YYSYMBOL_Methods = 49,                   /* Methods  */
  YYSYMBOL_Method = 50,                    /* Method  */
  YYSYMBOL_MethodBody = 51,                /* MethodBody  */
  YYSYMBOL_Parameters = 52,                /* Parameters  */
  YYSYMBOL_Parameter = 53,                 /* Parameter  */
  YYSYMBOL_Declarations = 54,              /* Declarations  */
  YYSYMBOL_Declaration = 55,               /* Declaration  */
  YYSYMBOL_Names = 56,                     /* Names  */
  YYSYMBOL_Statements = 57,                /* Statements  */
  YYSYMBOL_Statement = 58,                 /* Statement  */
  YYSYMBOL_Expression = 59,                /* Expression  */
  YYSYMBOL_Arguments_Optional = 60,        /* Arguments_Optional  */
  YYSYMBOL_Arguments = 61,                 /* Arguments  */
  YYSYMBOL_Return = 62                     /* Return  */
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
#define YYFINAL  7
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   565

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  40
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  23
/* YYNRULES -- Number of rules.  */
#define YYNRULES  91
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  199

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   294


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
      35,    36,    37,    38,    39
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint8 yyrline[] =
{
       0,    86,    86,    89,    92,    93,    96,    97,    98,    99,
     100,   101,   102,   103,   106,   107,   110,   112,   116,   117,
     118,   119,   122,   123,   126,   127,   128,   129,   133,   134,
     135,   136,   137,   138,   139,   140,   143,   144,   145,   148,
     151,   152,   156,   159,   160,   163,   164,   167,   168,   169,
     170,   171,   172,   173,   174,   175,   176,   177,   178,   179,
     180,   183,   184,   185,   186,   187,   188,   189,   190,   191,
     192,   193,   194,   195,   196,   197,   198,   199,   200,   201,
     202,   203,   204,   205,   206,   207,   208,   211,   212,   215,
     216,   219
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
  "\"end of file\"", "error", "\"invalid token\"", "INT", "BOOL", "FLOAT",
  "ARROW", "IF", "WHILE", "DO", "ELSE", "PRINT", "PLUS", "MINUS", "MULT",
  "DIV", "GREATER", "GREATER_THAN_OR_EQUAL", "AND", "OR", "NOT",
  "UNARY_MINUS", "NAME", "INT_VAL", "FLOAT_VAL", "TRUE", "FALSE", "NEW",
  "NONE", "DOT", "SEMICOLON", "COMMA", "LEFT_BRACE", "RIGHT_BRACE",
  "LEFT_PAREN", "RIGHT_PAREN", "EQUALS", "ASSIGN", "RETURN", "EXTENDS",
  "$accept", "Start", "Program", "Classes", "Class", "Members", "Member",
  "Name", "Type", "Methods", "Method", "MethodBody", "Parameters",
  "Parameter", "Declarations", "Declaration", "Names", "Statements",
  "Statement", "Expression", "Arguments_Optional", "Arguments", "Return", YY_NULLPTR
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
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294
};
#endif

#define YYPACT_NINF (-94)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-1)

#define yytable_value_is_error(Yyn) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
       4,   -94,    74,   -94,     4,   -94,    33,   -94,   -94,   180,
       4,   -94,   -94,   -94,   -94,   190,   -94,    32,     4,   -19,
     -94,    52,   -94,   -94,   -10,   118,   -94,    15,   -94,    32,
     -94,   211,   -94,     2,   -94,     4,     1,   -94,   -94,     4,
     -94,   221,    -6,   238,    91,   -94,   -94,   238,    31,   -94,
     -94,    -5,   -94,    71,   531,   531,    82,   531,   -94,   531,
      72,     4,   148,   -94,   166,   -94,    95,   -94,   238,   -94,
     -94,   -94,   531,   531,   -94,   -94,   -94,     4,   531,   105,
     267,   278,   266,   303,   311,     4,     4,   435,   531,    66,
     -94,   -94,   189,   100,   -94,    72,   -94,   115,   -94,    71,
     -94,   -94,   116,   336,     4,     4,   451,   531,   531,   531,
     531,   531,   531,   531,   531,   266,   531,   266,   223,   -94,
     -94,    98,   134,   124,   410,    44,   344,   -94,   -94,   125,
     -94,   -94,   -94,   531,   -94,   138,   144,   -94,    45,   123,
     123,   -94,   -94,   130,   130,   427,   418,   229,   130,   239,
     171,   467,   531,   483,   531,   -94,   531,   150,   -94,   -94,
     147,   154,   499,   515,   -94,   177,   -94,   155,   160,    56,
     369,   162,    58,   377,   410,   -94,   -94,   -94,    85,   -94,
      92,   169,   531,   -94,   173,   -94,   -94,   176,   -94,   -94,
     -94,   266,   402,   -94,   -94,   256,   186,   -94,   -94
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       0,    17,     0,     2,     3,     5,     0,     1,     4,     0,
       0,    18,    19,    21,    13,     0,    15,    20,     0,     0,
      23,     0,    11,    14,     0,    38,    44,     0,    12,     0,
      22,     0,    10,     0,    20,     0,     0,    37,    16,     0,
       9,     0,     0,     0,     0,    27,    39,     0,     0,    43,
       8,     0,     7,     0,     0,     0,     0,     0,    35,     0,
      20,     0,     0,    41,     0,    46,     0,    36,     0,    25,
       6,    26,     0,     0,    61,    83,    84,     0,     0,    73,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      32,    40,     0,     0,    34,     0,    45,     0,    33,     0,
      72,    71,    85,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    50,
      91,     0,     0,     0,    90,     0,     0,    42,    30,     0,
      29,    31,    24,    88,    82,    81,    80,    77,     0,    62,
      63,    64,    65,    66,    67,    69,    70,     0,    68,     0,
       0,     0,     0,     0,     0,    60,     0,     0,    47,    28,
       0,    87,     0,     0,    74,    51,    53,     0,     0,     0,
       0,     0,     0,     0,    89,    57,    86,    79,     0,    78,
       0,     0,     0,    58,     0,    49,    59,     0,    48,    76,
      75,     0,     0,    56,    55,     0,     0,    52,    54
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
     -94,   -94,   -94,   -94,   206,   188,    42,     0,     5,    40,
     -13,   -46,   -94,   170,   -94,   158,   165,   -61,   -59,    53,
     -94,   -93,   -42
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,     2,     3,     4,     5,    15,    16,    79,    18,    19,
      20,    45,    36,    37,    62,    63,    27,    64,    65,   124,
     160,   125,    66
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_uint8 yytable[] =
{
       6,    92,    69,     1,     6,    96,    30,    71,    43,    17,
      21,    30,     1,   138,    28,    17,     1,     1,    26,    29,
      93,   118,    97,    32,    29,    34,     1,    52,    70,    30,
      35,    17,    47,    96,    44,    46,    48,    68,    30,    49,
     161,    17,    29,    34,    60,    38,    39,    34,    53,    61,
     129,    29,    35,   132,   147,    24,   149,    23,   169,    96,
     172,    26,    60,    44,    95,     9,    25,    61,    34,   178,
     180,    42,    10,    99,     7,   156,   156,   102,    85,   157,
     164,    51,    95,    23,    31,   121,   122,   156,    96,   156,
      96,   184,    95,   187,    11,    12,   127,    39,    54,    55,
      56,    86,    57,    44,   135,   136,    87,    80,    81,    88,
      83,   104,    84,     1,    82,    95,   156,    95,    95,    13,
     189,    11,    12,   156,    58,   100,   101,   190,    98,    59,
     195,   103,   151,   130,   105,   152,    96,   109,   110,   106,
       1,   126,   107,   108,   109,   110,    13,    95,   131,    95,
     133,    11,    12,    33,   155,    54,    55,    56,   159,    57,
     139,   140,   141,   142,   143,   144,   145,   146,   153,   148,
       1,   154,   162,    54,    55,    56,    13,    57,   163,   167,
     175,    90,   176,    11,    12,   156,    59,   181,     1,   182,
     183,    95,   186,    11,    12,    95,    54,    55,    56,    94,
      57,   191,     1,   193,    59,   170,   194,   173,    13,   174,
       8,     1,     1,    14,    11,    12,   198,    67,    13,    41,
      91,     0,   128,    22,    11,    12,    89,    59,     0,     0,
      54,    55,    56,     1,    57,   192,    54,    55,    56,    13,
      57,    11,    12,     1,    40,     1,    54,    55,    56,    13,
      57,     1,     0,     0,    50,     0,   150,     0,     0,     0,
       1,     1,   165,    54,    55,    56,    13,    57,     0,     0,
       0,     0,   166,    54,    55,    56,     0,    57,     1,   107,
     108,   109,   110,   111,   112,   113,   114,     0,     1,   197,
     107,   108,   109,   110,   111,   112,   113,   114,     0,   115,
       0,     0,     0,   116,     0,     0,     0,     0,     0,     0,
     117,     0,     0,     0,   116,   107,   108,   109,   110,   111,
     112,   113,   114,   107,   108,   109,   110,   111,   112,   113,
     114,     0,     0,   119,     0,     0,     0,     0,     0,   116,
       0,   120,     0,     0,     0,     0,     0,   116,   107,   108,
     109,   110,   111,   112,   113,   114,   107,   108,   109,   110,
     111,   112,   113,   114,     0,     0,     0,     0,     0,     0,
       0,   134,   116,     0,   158,     0,     0,     0,     0,     0,
     116,   107,   108,   109,   110,   111,   112,   113,   114,   107,
     108,   109,   110,   111,   112,   113,   114,     0,     0,   185,
       0,     0,     0,     0,     0,   116,     0,   188,     0,     0,
       0,     0,     0,   116,   107,   108,   109,   110,   111,   112,
     113,   114,   107,   108,   109,   110,   111,   112,   113,   114,
     107,   108,   109,   110,   111,   112,   113,   196,   116,   107,
     108,   109,   110,   111,   112,     0,   116,     0,    72,     0,
       0,     0,     0,     0,   116,    73,     0,     1,    74,     0,
      75,    76,    77,   116,    72,     0,     0,     0,     0,    78,
     123,    73,     0,     1,    74,     0,    75,    76,    77,     0,
      72,     0,     0,     0,     0,    78,   137,    73,     0,     1,
      74,     0,    75,    76,    77,     0,    72,     0,     0,     0,
       0,    78,   168,    73,     0,     1,    74,     0,    75,    76,
      77,     0,    72,     0,     0,     0,     0,    78,   171,    73,
       0,     1,    74,     0,    75,    76,    77,     0,    72,     0,
       0,     0,     0,    78,   177,    73,     0,     1,    74,     0,
      75,    76,    77,     0,    72,     0,     0,     0,     0,    78,
     179,    73,     0,     1,    74,     0,    75,    76,    77,     0,
       0,     0,     0,     0,     0,    78
};

static const yytype_int16 yycheck[] =
{
       0,    62,    48,    22,     4,    64,    19,    53,     6,     9,
      10,    24,    22,   106,    33,    15,    22,    22,    18,    19,
      62,    82,    64,    33,    24,    25,    22,    33,    33,    42,
      25,    31,    31,    92,    32,    35,    35,     6,    51,    39,
     133,    41,    42,    43,    44,    30,    31,    47,    43,    44,
      92,    51,    47,    99,   115,    15,   117,    15,   151,   118,
     153,    61,    62,    32,    64,    32,    34,    62,    68,   162,
     163,    31,    39,    68,     0,    31,    31,    77,     6,    35,
      35,    41,    82,    41,    32,    85,    86,    31,   147,    31,
     149,    35,    92,    35,     3,     4,    30,    31,     7,     8,
       9,    29,    11,    32,   104,   105,    34,    54,    55,    37,
      57,     6,    59,    22,    32,   115,    31,   117,   118,    28,
      35,     3,     4,    31,    33,    72,    73,    35,    33,    38,
     191,    78,    34,    33,    29,    37,   195,    14,    15,    34,
      22,    88,    12,    13,    14,    15,    28,   147,    33,   149,
      34,     3,     4,    35,    30,     7,     8,     9,    33,    11,
     107,   108,   109,   110,   111,   112,   113,   114,    34,   116,
      22,    37,    34,     7,     8,     9,    28,    11,    34,     8,
      30,    33,    35,     3,     4,    31,    38,    10,    22,    34,
      30,   191,    30,     3,     4,   195,     7,     8,     9,    33,
      11,    32,    22,    30,    38,   152,    30,   154,    28,   156,
       4,    22,    22,    33,     3,     4,    30,    47,    28,    31,
      62,    -1,    33,    33,     3,     4,    61,    38,    -1,    -1,
       7,     8,     9,    22,    11,   182,     7,     8,     9,    28,
      11,     3,     4,    22,    33,    22,     7,     8,     9,    28,
      11,    22,    -1,    -1,    33,    -1,    33,    -1,    -1,    -1,
      22,    22,    33,     7,     8,     9,    28,    11,    -1,    -1,
      -1,    -1,    33,     7,     8,     9,    -1,    11,    22,    12,
      13,    14,    15,    16,    17,    18,    19,    -1,    22,    33,
      12,    13,    14,    15,    16,    17,    18,    19,    -1,    32,
      -1,    -1,    -1,    36,    -1,    -1,    -1,    -1,    -1,    -1,
      32,    -1,    -1,    -1,    36,    12,    13,    14,    15,    16,
      17,    18,    19,    12,    13,    14,    15,    16,    17,    18,
      19,    -1,    -1,    30,    -1,    -1,    -1,    -1,    -1,    36,
      -1,    30,    -1,    -1,    -1,    -1,    -1,    36,    12,    13,
      14,    15,    16,    17,    18,    19,    12,    13,    14,    15,
      16,    17,    18,    19,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    35,    36,    -1,    30,    -1,    -1,    -1,    -1,    -1,
      36,    12,    13,    14,    15,    16,    17,    18,    19,    12,
      13,    14,    15,    16,    17,    18,    19,    -1,    -1,    30,
      -1,    -1,    -1,    -1,    -1,    36,    -1,    30,    -1,    -1,
      -1,    -1,    -1,    36,    12,    13,    14,    15,    16,    17,
      18,    19,    12,    13,    14,    15,    16,    17,    18,    19,
      12,    13,    14,    15,    16,    17,    18,    35,    36,    12,
      13,    14,    15,    16,    17,    -1,    36,    -1,    13,    -1,
      -1,    -1,    -1,    -1,    36,    20,    -1,    22,    23,    -1,
      25,    26,    27,    36,    13,    -1,    -1,    -1,    -1,    34,
      35,    20,    -1,    22,    23,    -1,    25,    26,    27,    -1,
      13,    -1,    -1,    -1,    -1,    34,    35,    20,    -1,    22,
      23,    -1,    25,    26,    27,    -1,    13,    -1,    -1,    -1,
      -1,    34,    35,    20,    -1,    22,    23,    -1,    25,    26,
      27,    -1,    13,    -1,    -1,    -1,    -1,    34,    35,    20,
      -1,    22,    23,    -1,    25,    26,    27,    -1,    13,    -1,
      -1,    -1,    -1,    34,    35,    20,    -1,    22,    23,    -1,
      25,    26,    27,    -1,    13,    -1,    -1,    -1,    -1,    34,
      35,    20,    -1,    22,    23,    -1,    25,    26,    27,    -1,
      -1,    -1,    -1,    -1,    -1,    34
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,    22,    41,    42,    43,    44,    47,     0,    44,    32,
      39,     3,     4,    28,    33,    45,    46,    47,    48,    49,
      50,    47,    33,    46,    49,    34,    47,    56,    33,    47,
      50,    32,    33,    35,    47,    48,    52,    53,    30,    31,
      33,    45,    49,     6,    32,    51,    47,    31,    35,    47,
      33,    49,    33,    48,     7,     8,     9,    11,    33,    38,
      47,    48,    54,    55,    57,    58,    62,    53,     6,    51,
      33,    51,    13,    20,    23,    25,    26,    27,    34,    47,
      59,    59,    32,    59,    59,     6,    29,    34,    37,    56,
      33,    55,    57,    62,    33,    47,    58,    62,    33,    48,
      59,    59,    47,    59,     6,    29,    34,    12,    13,    14,
      15,    16,    17,    18,    19,    32,    36,    32,    57,    30,
      30,    47,    47,    35,    59,    61,    59,    30,    33,    62,
      33,    33,    51,    34,    35,    47,    47,    35,    61,    59,
      59,    59,    59,    59,    59,    59,    59,    57,    59,    57,
      33,    34,    37,    34,    37,    30,    31,    35,    30,    33,
      60,    61,    34,    34,    35,    33,    33,     8,    35,    61,
      59,    35,    61,    59,    59,    30,    35,    35,    61,    35,
      61,    10,    34,    30,    35,    30,    30,    35,    30,    35,
      35,    32,    59,    30,    30,    57,    35,    33,    30
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_int8 yyr1[] =
{
       0,    40,    41,    42,    43,    43,    44,    44,    44,    44,
      44,    44,    44,    44,    45,    45,    46,    47,    48,    48,
      48,    48,    49,    49,    50,    50,    50,    50,    51,    51,
      51,    51,    51,    51,    51,    51,    52,    52,    52,    53,
      54,    54,    55,    56,    56,    57,    57,    58,    58,    58,
      58,    58,    58,    58,    58,    58,    58,    58,    58,    58,
      58,    59,    59,    59,    59,    59,    59,    59,    59,    59,
      59,    59,    59,    59,    59,    59,    59,    59,    59,    59,
      59,    59,    59,    59,    59,    59,    59,    60,    60,    61,
      61,    62
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     1,     2,     1,     7,     6,     6,     5,
       5,     4,     4,     3,     2,     1,     3,     1,     1,     1,
       1,     1,     2,     1,     7,     5,     6,     4,     5,     4,
       4,     4,     3,     3,     3,     2,     3,     1,     0,     2,
       2,     1,     3,     3,     1,     2,     1,     4,     6,     6,
       3,     5,     9,     5,     9,     7,     7,     5,     6,     6,
       4,     1,     3,     3,     3,     3,     3,     3,     3,     3,
       3,     2,     2,     1,     4,     6,     6,     3,     5,     5,
       3,     3,     3,     1,     1,     2,     5,     1,     0,     3,
       1,     3
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
  case 2: /* Start: Program  */
#line 86 "parser.y"
                {(yyval.program_ptr) = (yyvsp[0].program_ptr); astRoot = (yyval.program_ptr);}
#line 1601 "parser.cpp"
    break;

  case 3: /* Program: Classes  */
#line 89 "parser.y"
                  {(yyval.program_ptr) = new ProgramNode((yyvsp[0].class_list_ptr));}
#line 1607 "parser.cpp"
    break;

  case 4: /* Classes: Classes Class  */
#line 92 "parser.y"
                        {(yyval.class_list_ptr) = (yyvsp[-1].class_list_ptr); (yyval.class_list_ptr)->push_back((yyvsp[0].class_ptr));}
#line 1613 "parser.cpp"
    break;

  case 5: /* Classes: Class  */
#line 93 "parser.y"
        {(yyval.class_list_ptr) = new std::list<ClassNode*>(); (yyval.class_list_ptr)->push_back((yyvsp[0].class_ptr));}
#line 1619 "parser.cpp"
    break;

  case 6: /* Class: Name EXTENDS Name LEFT_BRACE Members Methods RIGHT_BRACE  */
#line 96 "parser.y"
                                                                 {(yyval.class_ptr) = new ClassNode((yyvsp[-6].identifier_ptr), (yyvsp[-4].identifier_ptr), (yyvsp[-2].declaration_list_ptr), (yyvsp[-1].method_list_ptr));}
#line 1625 "parser.cpp"
    break;

  case 7: /* Class: Name EXTENDS Name LEFT_BRACE Methods RIGHT_BRACE  */
#line 97 "parser.y"
                                                    {(yyval.class_ptr) = new ClassNode((yyvsp[-5].identifier_ptr), (yyvsp[-3].identifier_ptr), NULL, (yyvsp[-1].method_list_ptr));}
#line 1631 "parser.cpp"
    break;

  case 8: /* Class: Name EXTENDS Name LEFT_BRACE Members RIGHT_BRACE  */
#line 98 "parser.y"
                                                   {(yyval.class_ptr) = new ClassNode((yyvsp[-5].identifier_ptr), (yyvsp[-3].identifier_ptr), (yyvsp[-1].declaration_list_ptr), NULL);}
#line 1637 "parser.cpp"
    break;

  case 9: /* Class: Name EXTENDS Name LEFT_BRACE RIGHT_BRACE  */
#line 99 "parser.y"
                                           {(yyval.class_ptr) = new ClassNode((yyvsp[-4].identifier_ptr), (yyvsp[-2].identifier_ptr), NULL, NULL);}
#line 1643 "parser.cpp"
    break;

  case 10: /* Class: Name LEFT_BRACE Members Methods RIGHT_BRACE  */
#line 100 "parser.y"
                                              {(yyval.class_ptr) = new ClassNode((yyvsp[-4].identifier_ptr), NULL, (yyvsp[-2].declaration_list_ptr), (yyvsp[-1].method_list_ptr));}
#line 1649 "parser.cpp"
    break;

  case 11: /* Class: Name LEFT_BRACE Members RIGHT_BRACE  */
#line 101 "parser.y"
                                      {(yyval.class_ptr) = new ClassNode((yyvsp[-3].identifier_ptr), NULL, (yyvsp[-1].declaration_list_ptr), NULL);}
#line 1655 "parser.cpp"
    break;

  case 12: /* Class: Name LEFT_BRACE Methods RIGHT_BRACE  */
#line 102 "parser.y"
                                      {(yyval.class_ptr) = new ClassNode((yyvsp[-3].identifier_ptr), NULL, NULL, (yyvsp[-1].method_list_ptr));}
#line 1661 "parser.cpp"
    break;

  case 13: /* Class: Name LEFT_BRACE RIGHT_BRACE  */
#line 103 "parser.y"
                              {(yyval.class_ptr) = new ClassNode((yyvsp[-2].identifier_ptr), NULL, NULL, NULL);}
#line 1667 "parser.cpp"
    break;

  case 14: /* Members: Members Member  */
#line 106 "parser.y"
                         {(yyval.declaration_list_ptr) = (yyvsp[-1].declaration_list_ptr); (yyval.declaration_list_ptr)->push_back((yyvsp[0].declaration_ptr));}
#line 1673 "parser.cpp"
    break;

  case 15: /* Members: Member  */
#line 107 "parser.y"
         {(yyval.declaration_list_ptr) = new std::list<DeclarationNode*>(); (yyval.declaration_list_ptr)->push_back((yyvsp[0].declaration_ptr));}
#line 1679 "parser.cpp"
    break;

  case 16: /* Member: Type Names SEMICOLON  */
#line 110 "parser.y"
                              {(yyval.declaration_ptr) = new DeclarationNode((yyvsp[-2].type_ptr), (yyvsp[-1].identifier_list_ptr)); }
#line 1685 "parser.cpp"
    break;

  case 17: /* Name: NAME  */
#line 112 "parser.y"
            {(yyval.identifier_ptr) = new IdentifierNode((yyvsp[0].base_char_ptr));}
#line 1691 "parser.cpp"
    break;

  case 18: /* Type: INT  */
#line 116 "parser.y"
           {(yyval.type_ptr) = new IntegerTypeNode(); (yyval.type_ptr)->basetype = bt_integer;}
#line 1697 "parser.cpp"
    break;

  case 19: /* Type: BOOL  */
#line 117 "parser.y"
       {(yyval.type_ptr) = new BooleanTypeNode(); (yyval.type_ptr)->basetype = bt_boolean;}
#line 1703 "parser.cpp"
    break;

  case 20: /* Type: Name  */
#line 118 "parser.y"
       {(yyval.type_ptr) = new ObjectTypeNode((yyvsp[0].identifier_ptr)); (yyval.type_ptr)->basetype = bt_object;}
#line 1709 "parser.cpp"
    break;

  case 21: /* Type: NONE  */
#line 119 "parser.y"
       {(yyval.type_ptr) = new NoneNode(); (yyval.type_ptr)->basetype = bt_none;}
#line 1715 "parser.cpp"
    break;

  case 22: /* Methods: Methods Method  */
#line 122 "parser.y"
                         {(yyval.method_list_ptr) = (yyvsp[-1].method_list_ptr); (yyval.method_list_ptr)->push_back((yyvsp[0].method_ptr));}
#line 1721 "parser.cpp"
    break;

  case 23: /* Methods: Method  */
#line 123 "parser.y"
          {(yyval.method_list_ptr) = new std::list<MethodNode*>(); (yyval.method_list_ptr)->push_back((yyvsp[0].method_ptr));}
#line 1727 "parser.cpp"
    break;

  case 24: /* Method: Name LEFT_PAREN Parameters RIGHT_PAREN ARROW Type MethodBody  */
#line 126 "parser.y"
                                                                      {(yyval.method_ptr) = new MethodNode((yyvsp[-6].identifier_ptr), (yyvsp[-4].parameter_list_ptr), (yyvsp[-1].type_ptr), (yyvsp[0].methodbody_ptr));}
#line 1733 "parser.cpp"
    break;

  case 25: /* Method: Name LEFT_PAREN Parameters RIGHT_PAREN MethodBody  */
#line 127 "parser.y"
                                                    {(yyval.method_ptr) = new MethodNode((yyvsp[-4].identifier_ptr), (yyvsp[-2].parameter_list_ptr), NULL, (yyvsp[0].methodbody_ptr));}
#line 1739 "parser.cpp"
    break;

  case 26: /* Method: Name LEFT_PAREN RIGHT_PAREN ARROW Type MethodBody  */
#line 128 "parser.y"
                                                    {(yyval.method_ptr) = new MethodNode((yyvsp[-5].identifier_ptr), NULL, (yyvsp[-1].type_ptr), (yyvsp[0].methodbody_ptr));}
#line 1745 "parser.cpp"
    break;

  case 27: /* Method: Name LEFT_PAREN RIGHT_PAREN MethodBody  */
#line 129 "parser.y"
                                         {(yyval.method_ptr) = new MethodNode((yyvsp[-3].identifier_ptr), NULL, NULL, (yyvsp[0].methodbody_ptr));}
#line 1751 "parser.cpp"
    break;

  case 28: /* MethodBody: LEFT_BRACE Declarations Statements Return RIGHT_BRACE  */
#line 133 "parser.y"
                                                                   {(yyval.methodbody_ptr) = new MethodBodyNode((yyvsp[-3].declaration_list_ptr), (yyvsp[-2].statement_list_ptr), (yyvsp[-1].returnstatement_ptr));}
#line 1757 "parser.cpp"
    break;

  case 29: /* MethodBody: LEFT_BRACE Declarations Return RIGHT_BRACE  */
#line 134 "parser.y"
                                             {(yyval.methodbody_ptr) = new MethodBodyNode((yyvsp[-2].declaration_list_ptr), NULL, (yyvsp[-1].returnstatement_ptr));}
#line 1763 "parser.cpp"
    break;

  case 30: /* MethodBody: LEFT_BRACE Declarations Statements RIGHT_BRACE  */
#line 135 "parser.y"
                                                 {(yyval.methodbody_ptr) = new MethodBodyNode((yyvsp[-2].declaration_list_ptr), (yyvsp[-1].statement_list_ptr), NULL);}
#line 1769 "parser.cpp"
    break;

  case 31: /* MethodBody: LEFT_BRACE Statements Return RIGHT_BRACE  */
#line 136 "parser.y"
                                           {(yyval.methodbody_ptr) = new MethodBodyNode(NULL, (yyvsp[-2].statement_list_ptr), (yyvsp[-1].returnstatement_ptr));}
#line 1775 "parser.cpp"
    break;

  case 32: /* MethodBody: LEFT_BRACE Declarations RIGHT_BRACE  */
#line 137 "parser.y"
                                      {(yyval.methodbody_ptr) = new MethodBodyNode((yyvsp[-1].declaration_list_ptr), NULL, NULL);}
#line 1781 "parser.cpp"
    break;

  case 33: /* MethodBody: LEFT_BRACE Return RIGHT_BRACE  */
#line 138 "parser.y"
                                {(yyval.methodbody_ptr) = new MethodBodyNode(NULL, NULL, (yyvsp[-1].returnstatement_ptr));}
#line 1787 "parser.cpp"
    break;

  case 34: /* MethodBody: LEFT_BRACE Statements RIGHT_BRACE  */
#line 139 "parser.y"
                                    {(yyval.methodbody_ptr) = new MethodBodyNode(NULL, (yyvsp[-1].statement_list_ptr), NULL);}
#line 1793 "parser.cpp"
    break;

  case 35: /* MethodBody: LEFT_BRACE RIGHT_BRACE  */
#line 140 "parser.y"
                         {(yyval.methodbody_ptr) = new MethodBodyNode(NULL, NULL, NULL);}
#line 1799 "parser.cpp"
    break;

  case 36: /* Parameters: Parameters COMMA Parameter  */
#line 143 "parser.y"
                                        {(yyval.parameter_list_ptr) = (yyvsp[-2].parameter_list_ptr); (yyval.parameter_list_ptr)->push_back((yyvsp[0].parameter_ptr));}
#line 1805 "parser.cpp"
    break;

  case 37: /* Parameters: Parameter  */
#line 144 "parser.y"
            {(yyval.parameter_list_ptr) = new std::list<ParameterNode*>(); (yyval.parameter_list_ptr)->push_back((yyvsp[0].parameter_ptr)); }
#line 1811 "parser.cpp"
    break;

  case 38: /* Parameters: %empty  */
#line 145 "parser.y"
         {(yyval.parameter_list_ptr) = new std::list<ParameterNode*>(); }
#line 1817 "parser.cpp"
    break;

  case 39: /* Parameter: Type Name  */
#line 148 "parser.y"
                      {(yyval.parameter_ptr) = new ParameterNode((yyvsp[-1].type_ptr), (yyvsp[0].identifier_ptr));}
#line 1823 "parser.cpp"
    break;

  case 40: /* Declarations: Declarations Declaration  */
#line 151 "parser.y"
                                         {(yyval.declaration_list_ptr) = (yyvsp[-1].declaration_list_ptr); (yyval.declaration_list_ptr)->push_back((yyvsp[0].declaration_ptr));}
#line 1829 "parser.cpp"
    break;

  case 41: /* Declarations: Declaration  */
#line 152 "parser.y"
              {(yyval.declaration_list_ptr) = new std::list<DeclarationNode*>(); (yyval.declaration_list_ptr)->push_back((yyvsp[0].declaration_ptr)); }
#line 1835 "parser.cpp"
    break;

  case 42: /* Declaration: Type Names SEMICOLON  */
#line 156 "parser.y"
                                   {(yyval.declaration_ptr) = new DeclarationNode((yyvsp[-2].type_ptr), (yyvsp[-1].identifier_list_ptr));}
#line 1841 "parser.cpp"
    break;

  case 43: /* Names: Names COMMA Name  */
#line 159 "parser.y"
                          {(yyval.identifier_list_ptr) = (yyvsp[-2].identifier_list_ptr); (yyval.identifier_list_ptr)-> push_back((yyvsp[0].identifier_ptr));}
#line 1847 "parser.cpp"
    break;

  case 44: /* Names: Name  */
#line 160 "parser.y"
       {(yyval.identifier_list_ptr) = new std::list<IdentifierNode*>(); (yyval.identifier_list_ptr)->push_back((yyvsp[0].identifier_ptr)); }
#line 1853 "parser.cpp"
    break;

  case 45: /* Statements: Statements Statement  */
#line 163 "parser.y"
                                  {(yyval.statement_list_ptr) = (yyvsp[-1].statement_list_ptr); (yyval.statement_list_ptr)->push_back((yyvsp[0].statement_ptr));}
#line 1859 "parser.cpp"
    break;

  case 46: /* Statements: Statement  */
#line 164 "parser.y"
            {(yyval.statement_list_ptr) = new std::list<StatementNode*>(); (yyval.statement_list_ptr)->push_back((yyvsp[0].statement_ptr)); }
#line 1865 "parser.cpp"
    break;

  case 47: /* Statement: Name ASSIGN Expression SEMICOLON  */
#line 167 "parser.y"
                                             {(yyval.statement_ptr) = new AssignmentNode((yyvsp[-3].identifier_ptr), NULL, (yyvsp[-1].expression_ptr));}
#line 1871 "parser.cpp"
    break;

  case 48: /* Statement: Name DOT Name ASSIGN Expression SEMICOLON  */
#line 168 "parser.y"
                                            {(yyval.statement_ptr) = new AssignmentNode((yyvsp[-5].identifier_ptr), (yyvsp[-3].identifier_ptr), (yyvsp[-1].expression_ptr));}
#line 1877 "parser.cpp"
    break;

  case 49: /* Statement: Name ARROW Name ASSIGN Expression SEMICOLON  */
#line 169 "parser.y"
                                              {(yyval.statement_ptr) = new AssignmentNode((yyvsp[-5].identifier_ptr), (yyvsp[-3].identifier_ptr), (yyvsp[-1].expression_ptr));}
#line 1883 "parser.cpp"
    break;

  case 50: /* Statement: PRINT Expression SEMICOLON  */
#line 170 "parser.y"
                             {(yyval.statement_ptr) = new PrintNode((yyvsp[-1].expression_ptr)); }
#line 1889 "parser.cpp"
    break;

  case 51: /* Statement: IF Expression LEFT_BRACE Statements RIGHT_BRACE  */
#line 171 "parser.y"
                                                  {(yyval.statement_ptr) = new IfElseNode((yyvsp[-3].expression_ptr),(yyvsp[-1].statement_list_ptr), NULL); }
#line 1895 "parser.cpp"
    break;

  case 52: /* Statement: IF Expression LEFT_BRACE Statements RIGHT_BRACE ELSE LEFT_BRACE Statements RIGHT_BRACE  */
#line 172 "parser.y"
                                                                                         {(yyval.statement_ptr) = new IfElseNode((yyvsp[-7].expression_ptr),(yyvsp[-5].statement_list_ptr), (yyvsp[-1].statement_list_ptr)); }
#line 1901 "parser.cpp"
    break;

  case 53: /* Statement: WHILE Expression LEFT_BRACE Statements RIGHT_BRACE  */
#line 173 "parser.y"
                                                     {(yyval.statement_ptr) = new WhileNode((yyvsp[-3].expression_ptr),(yyvsp[-1].statement_list_ptr)); }
#line 1907 "parser.cpp"
    break;

  case 54: /* Statement: DO LEFT_BRACE Statements RIGHT_BRACE WHILE LEFT_PAREN Expression RIGHT_PAREN SEMICOLON  */
#line 174 "parser.y"
                                                                                         {(yyval.statement_ptr) = new DoWhileNode((yyvsp[-6].statement_list_ptr),(yyvsp[-2].expression_ptr)); }
#line 1913 "parser.cpp"
    break;

  case 55: /* Statement: Name DOT Name LEFT_PAREN Arguments RIGHT_PAREN SEMICOLON  */
#line 175 "parser.y"
                                                           {(yyval.statement_ptr) = new CallNode(new MethodCallNode((yyvsp[-6].identifier_ptr), (yyvsp[-4].identifier_ptr), (yyvsp[-2].expression_list_ptr))); }
#line 1919 "parser.cpp"
    break;

  case 56: /* Statement: Name ARROW Name LEFT_PAREN Arguments RIGHT_PAREN SEMICOLON  */
#line 176 "parser.y"
                                                             {(yyval.statement_ptr) = new CallNode(new MethodCallNode((yyvsp[-6].identifier_ptr), (yyvsp[-4].identifier_ptr), (yyvsp[-2].expression_list_ptr))); }
#line 1925 "parser.cpp"
    break;

  case 57: /* Statement: Name LEFT_PAREN Arguments RIGHT_PAREN SEMICOLON  */
#line 177 "parser.y"
                                                  {(yyval.statement_ptr) = new CallNode(new MethodCallNode((yyvsp[-4].identifier_ptr), NULL, (yyvsp[-2].expression_list_ptr))); }
#line 1931 "parser.cpp"
    break;

  case 58: /* Statement: Name ARROW Name LEFT_PAREN RIGHT_PAREN SEMICOLON  */
#line 178 "parser.y"
                                                   {(yyval.statement_ptr) = new CallNode(new MethodCallNode((yyvsp[-5].identifier_ptr), (yyvsp[-3].identifier_ptr), NULL)); }
#line 1937 "parser.cpp"
    break;

  case 59: /* Statement: Name DOT Name LEFT_PAREN RIGHT_PAREN SEMICOLON  */
#line 179 "parser.y"
                                                 {(yyval.statement_ptr) = new CallNode(new MethodCallNode((yyvsp[-5].identifier_ptr), (yyvsp[-3].identifier_ptr), NULL)); }
#line 1943 "parser.cpp"
    break;

  case 60: /* Statement: Name LEFT_PAREN RIGHT_PAREN SEMICOLON  */
#line 180 "parser.y"
                                        {(yyval.statement_ptr) = new CallNode(new MethodCallNode((yyvsp[-3].identifier_ptr), NULL, NULL)); }
#line 1949 "parser.cpp"
    break;

  case 61: /* Expression: INT_VAL  */
#line 183 "parser.y"
                     {(yyval.expression_ptr) = new IntegerLiteralNode(new IntegerNode((yyvsp[0].base_int))); }
#line 1955 "parser.cpp"
    break;

  case 62: /* Expression: Expression PLUS Expression  */
#line 184 "parser.y"
                             {(yyval.expression_ptr) = new PlusNode((yyvsp[-2].expression_ptr), (yyvsp[0].expression_ptr)); }
#line 1961 "parser.cpp"
    break;

  case 63: /* Expression: Expression MINUS Expression  */
#line 185 "parser.y"
                              {(yyval.expression_ptr) = new MinusNode((yyvsp[-2].expression_ptr), (yyvsp[0].expression_ptr)); }
#line 1967 "parser.cpp"
    break;

  case 64: /* Expression: Expression MULT Expression  */
#line 186 "parser.y"
                             {(yyval.expression_ptr) = new TimesNode((yyvsp[-2].expression_ptr), (yyvsp[0].expression_ptr)); }
#line 1973 "parser.cpp"
    break;

  case 65: /* Expression: Expression DIV Expression  */
#line 187 "parser.y"
                            {(yyval.expression_ptr) = new DivideNode((yyvsp[-2].expression_ptr), (yyvsp[0].expression_ptr)); }
#line 1979 "parser.cpp"
    break;

  case 66: /* Expression: Expression GREATER Expression  */
#line 188 "parser.y"
                                {(yyval.expression_ptr) = new GreaterNode((yyvsp[-2].expression_ptr), (yyvsp[0].expression_ptr)); }
#line 1985 "parser.cpp"
    break;

  case 67: /* Expression: Expression GREATER_THAN_OR_EQUAL Expression  */
#line 189 "parser.y"
                                              {(yyval.expression_ptr) = new GreaterEqualNode((yyvsp[-2].expression_ptr), (yyvsp[0].expression_ptr)); }
#line 1991 "parser.cpp"
    break;

  case 68: /* Expression: Expression EQUALS Expression  */
#line 190 "parser.y"
                               {(yyval.expression_ptr) = new EqualNode((yyvsp[-2].expression_ptr), (yyvsp[0].expression_ptr)); }
#line 1997 "parser.cpp"
    break;

  case 69: /* Expression: Expression AND Expression  */
#line 191 "parser.y"
                             {(yyval.expression_ptr) = new AndNode((yyvsp[-2].expression_ptr), (yyvsp[0].expression_ptr)); }
#line 2003 "parser.cpp"
    break;

  case 70: /* Expression: Expression OR Expression  */
#line 192 "parser.y"
                           {(yyval.expression_ptr) = new OrNode((yyvsp[-2].expression_ptr), (yyvsp[0].expression_ptr)); }
#line 2009 "parser.cpp"
    break;

  case 71: /* Expression: NOT Expression  */
#line 193 "parser.y"
                 {(yyval.expression_ptr) = new NotNode((yyvsp[0].expression_ptr)); }
#line 2015 "parser.cpp"
    break;

  case 72: /* Expression: MINUS Expression  */
#line 194 "parser.y"
                                     {(yyval.expression_ptr) = new NegationNode((yyvsp[0].expression_ptr)); }
#line 2021 "parser.cpp"
    break;

  case 73: /* Expression: Name  */
#line 195 "parser.y"
       {(yyval.expression_ptr) = new VariableNode((yyvsp[0].identifier_ptr)); }
#line 2027 "parser.cpp"
    break;

  case 74: /* Expression: Name LEFT_PAREN Arguments RIGHT_PAREN  */
#line 196 "parser.y"
                                         {(yyval.expression_ptr) = new MethodCallNode((yyvsp[-3].identifier_ptr), NULL, (yyvsp[-1].expression_list_ptr)); }
#line 2033 "parser.cpp"
    break;

  case 75: /* Expression: Name DOT Name LEFT_PAREN Arguments RIGHT_PAREN  */
#line 197 "parser.y"
                                                 {(yyval.expression_ptr) = new MethodCallNode((yyvsp[-5].identifier_ptr), (yyvsp[-3].identifier_ptr), (yyvsp[-1].expression_list_ptr)); }
#line 2039 "parser.cpp"
    break;

  case 76: /* Expression: Name ARROW Name LEFT_PAREN Arguments RIGHT_PAREN  */
#line 198 "parser.y"
                                                   {(yyval.expression_ptr) = new MethodCallNode((yyvsp[-5].identifier_ptr), (yyvsp[-3].identifier_ptr), (yyvsp[-1].expression_list_ptr)); }
#line 2045 "parser.cpp"
    break;

  case 77: /* Expression: Name LEFT_PAREN RIGHT_PAREN  */
#line 199 "parser.y"
                               {(yyval.expression_ptr) = new MethodCallNode((yyvsp[-2].identifier_ptr), NULL, NULL); }
#line 2051 "parser.cpp"
    break;

  case 78: /* Expression: Name DOT Name LEFT_PAREN RIGHT_PAREN  */
#line 200 "parser.y"
                                       {(yyval.expression_ptr) = new MethodCallNode((yyvsp[-4].identifier_ptr), (yyvsp[-2].identifier_ptr), NULL); }
#line 2057 "parser.cpp"
    break;

  case 79: /* Expression: Name ARROW Name LEFT_PAREN RIGHT_PAREN  */
#line 201 "parser.y"
                                         {(yyval.expression_ptr) = new MethodCallNode((yyvsp[-4].identifier_ptr), (yyvsp[-2].identifier_ptr), NULL); }
#line 2063 "parser.cpp"
    break;

  case 80: /* Expression: Name DOT Name  */
#line 202 "parser.y"
                {(yyval.expression_ptr) = new MemberAccessNode((yyvsp[-2].identifier_ptr), (yyvsp[0].identifier_ptr));}
#line 2069 "parser.cpp"
    break;

  case 81: /* Expression: Name ARROW Name  */
#line 203 "parser.y"
                  {(yyval.expression_ptr) = new MemberAccessNode((yyvsp[-2].identifier_ptr), (yyvsp[0].identifier_ptr));}
#line 2075 "parser.cpp"
    break;

  case 82: /* Expression: LEFT_PAREN Expression RIGHT_PAREN  */
#line 204 "parser.y"
                                    {(yyval.expression_ptr) = (yyvsp[-1].expression_ptr);}
#line 2081 "parser.cpp"
    break;

  case 83: /* Expression: TRUE  */
#line 205 "parser.y"
       {(yyval.expression_ptr) = new BooleanLiteralNode(new IntegerNode(1)); }
#line 2087 "parser.cpp"
    break;

  case 84: /* Expression: FALSE  */
#line 206 "parser.y"
        {(yyval.expression_ptr) = new BooleanLiteralNode(new IntegerNode(0)); }
#line 2093 "parser.cpp"
    break;

  case 85: /* Expression: NEW Name  */
#line 207 "parser.y"
           {(yyval.expression_ptr) = new NewNode((yyvsp[0].identifier_ptr),NULL); }
#line 2099 "parser.cpp"
    break;

  case 86: /* Expression: NEW Name LEFT_PAREN Arguments_Optional RIGHT_PAREN  */
#line 208 "parser.y"
                                                     {(yyval.expression_ptr) = new NewNode((yyvsp[-3].identifier_ptr),(yyvsp[-1].expression_list_ptr)); }
#line 2105 "parser.cpp"
    break;

  case 87: /* Arguments_Optional: Arguments  */
#line 211 "parser.y"
                                {(yyval.expression_list_ptr) = (yyvsp[0].expression_list_ptr);}
#line 2111 "parser.cpp"
    break;

  case 88: /* Arguments_Optional: %empty  */
#line 212 "parser.y"
         {(yyval.expression_list_ptr) = new std::list<ExpressionNode*>();}
#line 2117 "parser.cpp"
    break;

  case 89: /* Arguments: Arguments COMMA Expression  */
#line 215 "parser.y"
                                       {(yyval.expression_list_ptr) = (yyvsp[-2].expression_list_ptr); (yyval.expression_list_ptr)->push_back((yyvsp[0].expression_ptr));}
#line 2123 "parser.cpp"
    break;

  case 90: /* Arguments: Expression  */
#line 216 "parser.y"
              {(yyval.expression_list_ptr) = new std::list<ExpressionNode*>(); (yyval.expression_list_ptr)->push_back((yyvsp[0].expression_ptr));}
#line 2129 "parser.cpp"
    break;

  case 91: /* Return: RETURN Expression SEMICOLON  */
#line 219 "parser.y"
                                     {(yyval.returnstatement_ptr) = new ReturnStatementNode((yyvsp[-1].expression_ptr)); }
#line 2135 "parser.cpp"
    break;


#line 2139 "parser.cpp"

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

#line 222 "parser.y"


extern int yylineno;

void yyerror(const char *s) {
  fprintf(stderr, "%s at line %d\n", s, yylineno);
  exit(1);
}
