/*
C programming does not allow to return an entire array as an argument to a function. However, you can return a pointer to an array by specifying the array's name without an index.

If you want to return a single-dimension array from a function, you would have to declare a function returning a pointer.
*/
#include <stdio.h>

int *getRandom()
{
    // Second point to remember is that C does not advocate(not encourage) to return the address of a local variable to outside of the function, so you would have to define the local variable as static variable.
    static int r[10];
    int i;
    /* set the seed */
    srand((unsigned)time(NULL));

    for (i = 0; i < 10; ++i)
    {
        r[i] = rand();
        printf("r[%d] = %d\n", i, r[i]);
    }
    return r;
}

int main()
{
    /* a pointer to an int */
    int *p;
    int i;
    p = getRandom();

    for (i = 0; i < 10; i++)
    {
        printf("*(p + %d) : %d\n", i, *(p + i));
    }
    return 0;
}