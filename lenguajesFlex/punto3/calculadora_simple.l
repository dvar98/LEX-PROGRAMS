%{
#include <stdio.h>
%}


%%

[0-9]+(\.[0-9]+)?      { printf("Número: %s\n", yytext); }           // Números
"-"?[0-9]+(\.[0-9]+)?  { printf("Número negativo: %s\n", yytext); }  // Números negativos
"sin"                 { printf("Función: sin\n"); }                 // Función sin
"cos"                 { printf("Función: cos\n"); }                 // Función cos
"tan"                 { printf("Función: tan\n"); }                 // Función tan
"log"                 { printf("Función: log\n"); }                 // Función log
"sin\\^-1"            { printf("Función: sin^-1\n"); }              // Función sin inverso
"cos\\^-1"            { printf("Función: cos^-1\n"); }              // Función cos inverso
"e"                   { printf("Constante: e\n"); }                 // Constante e
"π"                   { printf("Constante: π\n"); }                 // Constante pi
"pi"                  { printf("Constante: pi\n"); }                // Constante pi (alternativa)
"+"                   { printf("Operador: +\n"); }                  // Operador suma
"-"                   { printf("Operador: -\n"); }                  // Operador resta
"*"                   { printf("Operador: *\n"); }                  // Operador multiplicación
"/"                   { printf("Operador: /\n"); }                  // Operador división
"%"                   { printf("Operador: % \n"); }                  // Operador módulo
"\^"                  { printf("Operador: ^\n"); }                  // Operador exponenciación
"\("                  { printf("Paréntesis izquierdo: (\n"); }      // Paréntesis izquierdo
"\)"                  { printf("Paréntesis derecho: )\n"); }        // Paréntesis derecho
[ \t\n]+              /* Ignorar espacios, tabs y saltos de línea */
.                     { printf("Carácter desconocido: %s\n", yytext); } // Otros caracteres

%%

int main() {
    yylex();
    return 0;
}

