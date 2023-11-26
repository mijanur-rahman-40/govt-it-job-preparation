#include <stdio.h>

int main()
{
    int a = 10;
    // int *p = &a;
    // int **p = &a;
    // can not assign int to int *
    // int *p = &3;
    // int **q = &p;
    // printf("a = %d\n", **p);

    // can not assing int to int * / can not assign directly constant value to pointer
    /*
    int *x;
    *x= 20; or *x = &20;
    printf("x = %d\n", *x);
    */

    int *m, *n;
    // m = &a;
    // n = m;
    printf("Address of a = %p\n", n);
    // is true when n has address of any variable or 
    *n = 20;
    printf("n = %d\n", *n);
}