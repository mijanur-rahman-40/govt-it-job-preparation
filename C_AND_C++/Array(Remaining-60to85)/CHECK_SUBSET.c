#include <stdio.h>

int chkSubsetArray(int *arr1, int arr1_size, int *arr2, int arr2_size)
{
    int i, j;
    for (i = 0; i < arr2_size; i++)
    {
        for (j = 0; j < arr1_size; j++)
        {
            if (arr2[i] == arr1[j])
                break;
        }
        if (j == arr1_size)
            return 0; // Not a subset
    }
    return 1;
}

int main()
{
    int arr1[] = {4, 8, 7, 11, 6, 9, 5, 0, 2, 17}, arr2[] = {5, 4, 2, 0, 6, 10};
    int n1 = sizeof(arr1) / sizeof(arr1[0]), n2 = sizeof(arr2) / sizeof(arr2[0]);
    int i;

    if (chkSubsetArray(arr1, n1, arr2, n2))
        printf("The second array is a subset of the first array.\n");
    else
        printf("The second array is not a subset of the first array.\n");

    return 0;
}
