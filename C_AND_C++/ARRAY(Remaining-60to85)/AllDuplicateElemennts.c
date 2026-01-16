#include <stdio.h>

int main()
{
    int arr[] = {9, 3, 1, 2, 2, 9, 3, 10};
    int size = sizeof(arr) / sizeof(arr[0]);
    // printf("%d", size);
    // have to sort first : bubble sort
    for (int i = 0; i < size; i++)
    {
        for (int j = i + 1; j < size; j++)
        {
            if (arr[j] < arr[i])
            {
                int temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }
    for (int i = 0; i < size; i++)
    {
        printf("%d\n", arr[i]);
    }

    printf("\n");

    int isDuplicate = 0;
    for (int i = 0; i < size - 1; i++)
    {
        if (arr[i] == arr[i + 1])
        {
            if (!isDuplicate)
            {
                printf("%d\n", arr[i]);
                isDuplicate = 1;
            }
        }
        else
        {
            isDuplicate = 0;
        }
    }
}