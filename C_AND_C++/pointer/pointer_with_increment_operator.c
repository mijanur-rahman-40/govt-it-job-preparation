
#include <stdio.h>

int main()
{
    int arr[5] = {8, 3, 6}; 
    int *ptr = arr;
    ++*ptr++;
    printf("%d", *ptr);
    return 0;
}
