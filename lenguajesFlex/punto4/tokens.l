%{
#include <stdio.h>
#include <stdlib.h>

void print_token(const char* token_name, const char* value) {
    printf("%s: %s\n", token_name, value);
}
%}

NUMBER [+-]?[0-9]+(\.[0-9]*)?
ADD          \+
SUB          -
MUL          \*
DIV          \/
MOD          %
LPAREN       \(
RPAREN       \)
SIN          sin
COS          cos
TAN          tan
LOG          log
SIN_INV      sin\^-1
COS_INV      cos\^-1
E            e
PI           π|pi
EOL          \n


%%

{NUMBER}   { print_token("NUMBER", yytext); }
{ADD}      { print_token("ADD", yytext); }
{SUB}      { print_token("SUB", yytext); }
{MUL}      { print_token("MUL", yytext); }
{DIV}      { print_token("DIV", yytext); }
{MOD}      { print_token("MOD", yytext); }
{LPAREN}   { print_token("LPAREN", yytext); }
{RPAREN}   { print_token("RPAREN", yytext); }
{SIN}      { print_token("SIN", yytext); }
{COS}      { print_token("COS", yytext); }
{TAN}      { print_token("TAN", yytext); }
{LOG}      { print_token("LOG", yytext); }
{SIN_INV}  { print_token("SIN_INV", yytext); }
{COS_INV}  { print_token("COS_INV", yytext); }
{E}        { print_token("E", yytext); }
{PI}       { print_token("PI", yytext); }
{EOL}      { print_token("EOL", yytext); }
[ \t]+     ; /* Ignorar espacios en blanco y tabulaciones */
.          { printf("UNKNOWN: %s\n", yytext); }

%%

int main(int argc, char **argv) {
    yylex();
    return 0;
}
