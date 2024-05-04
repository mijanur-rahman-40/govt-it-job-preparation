#include <stdio.h>

int main()
{
    int array[] = {6, 7, 8, 9, 0, 1, 2, 4, 5, 6}, *p = array + 5;
    // int array[] = {6, 7, 8, 9, 0, 1, 2, 4, 5, 6}, *p = array;
    printf(" %d\n", *(p + 0));
    printf(" %d\n", *p + 0);
    printf(" %d\n", *(p + 1));
    printf(" %d\n", *(p - 1));
    printf(" %d \n", p[1]);
    printf(" %d \n", p[-1]);

    printf(" %d\n", *p++);
}