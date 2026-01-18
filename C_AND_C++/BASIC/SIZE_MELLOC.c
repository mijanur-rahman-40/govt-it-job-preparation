#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    int arr1[] = {1, 2}, size = 5;
    char str[] = "BANGLADESH";

    printf("SIZE OF ARRAY : %ld \n \n", sizeof(arr1));
    printf("SIZE OF INT : %ld \n \n", sizeof(int));
    printf("SIZE OF STRING : %ld \n \n", strlen(str));

    int arr2 = (int *)malloc(size * sizeof(int));
    // arr2 = (int *)malloc(size);
}