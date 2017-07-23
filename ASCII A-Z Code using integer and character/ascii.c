#include <stdio.h>

int main(void){
    for (int i=65;i<65 + 26;i++){
        printf("%c in %i\n",(char)i,i);
    }
    return 0;
}