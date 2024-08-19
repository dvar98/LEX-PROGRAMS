%{
#include <stdio.h>

int num_lines = 0;
int num_words = 0;
int num_chars = 0;
int in_word = 0;
%}

%%
\n              { num_lines++; num_chars++; in_word = 0; }
[ \t]+          { num_chars += yyleng; in_word = 0; }
[a-zA-Z0-9]+    { if (!in_word) { num_words++; in_word = 1; } num_chars += yyleng; }
.               { num_chars++; in_word = 0; }

%%

int main(int argc, char **argv) {
    if (argc > 1) {
        FILE *file = fopen(argv[1], "r");
        if (!file) {
            perror("fopen");
            return 1;
        }
        yyin = file;
    }

    yylex();

    printf("Líneas: %d\n", num_lines);
    printf("Palabras: %d\n", num_words);
    printf("Caracteres: %d\n", num_chars);

    return 0;
}

