%{
#include "meal_planner.tab.h"
%}
%% Definire de expresii regulate pentru identificarea caracterelor alfabetice
alpha [A-Za-z]
%%
[hH]ello { return HELLO; }
[iI]s { return IS; }
[nN]ame { return NAME; }

[vV]egan { return VEGAN; }
[vV]egetarian { return VEGETARIAN; }
[pP]aleo { return PALEO; }
[kK]eto { return KETO; }

[lL]ettuce { return LETTUCE; }
[tT]omato { return TOMATO; }
[cC]ucumber { return CUCUMBER; }
[cC]heese { return CHEESE; }
[pP]asta { return PASTA_ING; }
[cC]hicken { return CHICKEN; }
[sS]teak { return STEAK; }
[aA]vocado { return AVOCADO; }
[bB]acon { return BACON; }
[eE]ggs { return EGGS; }

[sS]alad { return SALAD; }
[bB]urger { return BURGER; }
[pP]izza { return PIZZA; }
[mM]ain { return MAIN; }
[bB]reakfast { return BREAKFAST; }

[\.\n\?!] { return END; }
[ \t]+  /* ignore whitespace */
. { return yytext[0]; }
%%

int yywrap() {
    return 1;
}
