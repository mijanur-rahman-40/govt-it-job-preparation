// In C or C++, we cannot return multiple values from a function directly

#include <stdio.h>

int numArray(int n)
{
    int arr[5] = {1, 2, 3, 4, 5};
    return arr;
}
int main()
{
    int *arr;
    arr = numArray(5);
    for (int i = 0; i < 5; i++)
    {
        printf("%d", arr[i]);
    }
}