#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[]) {
    int i = 0;
    scanf("%d", &i);
    printf("inputted = %d", i);
    if (i == 9) {
        puts("i == 9, waiting for another input");
        scanf("%d", &i);
        puts("noice");
    }
    return 0;
}