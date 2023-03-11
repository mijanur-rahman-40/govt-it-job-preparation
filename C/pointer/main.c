#include <stdio.h>

int main()
{
    int a = 10;
    // int *p = &a;
    int **p = &a;
    // can not assign int to int *
    // int *p = &3;
    // int **q = &p;
    printf("a = %d\n", **p);
}