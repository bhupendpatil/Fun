/* Ascii A to Z and a to z using integer and character */

#include <stdio.h>

int main(void){

	printf("\n\n");

	printf("lower\n");
	for (int i=97;i<97 + 26;i++){
        printf("%c in %i\n",(char)i,i);
    }

    printf("\n\n");

    printf("caps\n");
    for (int i=65;i<65 + 26;i++){
        printf("%c in %i\n",(char)i,i);
    }
    return 0;
}