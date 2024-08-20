%{
#include <stdio.h>
#include <string.h>

void classify_complex(const char *s);
%}

%%

[+-]?[0-9]+(\.[0-9]+)?\+[0-9]+(\.[0-9]+)?[iI]  { classify_complex(yytext); }
[+-]?[0-9]+(\.[0-9]+)?\-[0-9]+(\.[0-9]+)?[iI]  { classify_complex(yytext); }
[+-]?[0-9]+(\.[0-9]+)?[iI]                         { classify_complex(yytext); }
[+-]?[0-9]+(\.[0-9]+)?                              { classify_complex(yytext); }

[+-]?[0-9]+(\.[0-9]+)?\*exp\([+-]?[0-9]+(\.[0-9]+)?[iI]\)  { classify_complex(yytext); }
[+-]?[0-9]+(\.[0-9]+)?\*exp\([+-]?[0-9]+(\.[0-9]+)?\)     { classify_complex(yytext); }


.    { /* ignorar otros caracteres */ }

%%

void classify_complex(const char *s) {
    if (strstr(s, "exp") != NULL) {
        // Caso de forma exponencial
        if (strchr(s, 'i') != NULL || strchr(s, 'I') != NULL) {
            printf("Número complejo en forma polar: %s\n", s);
        } else {
            printf("Número real: %s\n", s);
        }
    }else if (strchr(s, 'i') != NULL || strchr(s, 'I') != NULL) {
        if (strchr(s, '+') != NULL || strchr(s, '-') != NULL) {
            printf("Número complejo en forma rectangular: %s\n", s);
        } else {
            printf("Número imaginario puro: %s\n", s);
        }
    } else {
        printf("Número real: %s\n", s);
    }
}

int main(int argc, char **argv) {
    if (argc > 1) {
        FILE *file = fopen(argv[1], "r");
        if (file) {
            yyin = file;
            yylex();
            fclose(file);
        } else {
            fprintf(stderr, "No se puede abrir el archivo: %s\n", argv[1]);
            return 1;
        }
    } else {
        fprintf(stderr, "Uso: %s <archivo_de_entrada>\n", argv[0]);
        return 1;
    }
    return 0;
}
