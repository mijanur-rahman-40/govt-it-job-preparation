#include <stdio.h>

int main()
{
    int var = 24; // actual variable declaration
    int *p;

    p = &var; // storing address of int variable var in pointer p
    printf("Address of var variable is: %p \n", &var);

    // address stored in pointer variable
    printf("Address stored in pointer variable p is: %p \n", (void *)p);

    // access the value using the pointer variable
    printf("Value of var variable or the value stored at address p is %d\n", *p);
    return 0;
}