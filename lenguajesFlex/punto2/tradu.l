%{
#include <stdio.h>
#include <string.h>

const char* translate(const char* word) {
    if (strcmp(word, "hello") == 0) return "hola";
    if (strcmp(word, "world") == 0) return "mundo";
    if (strcmp(word, "cat") == 0) return "gato";
    if (strcmp(word, "dogs") == 0) return "perros";
    if (strcmp(word, "house") == 0) return "casa";
    if (strcmp(word, "book") == 0) return "libro";
    if (strcmp(word, "friend") == 0) return "amigo";
    if (strcmp(word, "apple") == 0) return "manzana";
    if (strcmp(word, "school") == 0) return "escuela";
    if (strcmp(word, "teacher") == 0) return "maestro";
    return word;
}
%}

%%
[a-zA-Z]+    { printf("%s ", translate(yytext)); }
\n           { printf("\n"); }
.            { printf("%s", yytext); }
%%

int main(int argc, char **argv) {
    if (argc > 1) {
        FILE *file = fopen(argv[1], "r");
        if (!file) {
            perror("Error opening file");
            return 1;
        }
        yyin = file;
    }
    yylex();
    return 0;
}

