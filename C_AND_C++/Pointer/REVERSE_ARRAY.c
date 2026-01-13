#include <stdio.h>

void reverseArray(int *start, int size)
{
    int *end = start + size - 1;

    while (start < end)
    {
        int temp = *start;
        *start = *end;
        *end = temp;
        start++;
        end--;
    }
}

int main()
{
    int size, *arr;

    printf("\nHow many numbers :");
    scanf("%d", &size);

    for (int i = 0; i < size; i++)
        scanf("%d", arr + i);

    reverseArray(arr, size);

    printf("\nReversed array: \n");
    for (int i = 0; i < size; i++)
        printf("%d ", *(arr + i));

    printf("\n");
}