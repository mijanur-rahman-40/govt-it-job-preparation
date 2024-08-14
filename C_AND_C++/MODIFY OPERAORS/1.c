#include<stdio.h>

int main(){
    int a = 4, b = 5;

    b = a++ + a--;
    printf("b = %d\n", b);
    a = ++b + b--;
    // please describe the output of the above line


    printf("a = %d, b = %d\n", a, b);
}