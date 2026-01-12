#include <stdio.h>
#include <limits.h>

int maxSubArray(int *arr, int size)
{
    int maxEnding, maxRes = arr[0];
    int start, end, temp_start = 0;

    for (int i = 1; i < size; i++)
    {
        if (maxEnding + arr[i] > arr[i])
        {
            maxEnding += arr[i];
        }
        else
        {
            maxEnding = arr[i];
            temp_start = i;
        }

        if (maxEnding > maxRes)
        {
            maxRes = maxEnding;
            start = temp_start;
            end = i;
        }
    }

    printf("%d", maxRes);
    printf("\nThe sub array is : [");

    for (int i = start; i <= end; i++)
        printf("%d ", arr[i]);
    printf("]\n");
}

int main()
{
    int arr[] = {-2, 1, -3, 4, -1, 2, 1, -5, 4};
    int size = sizeof(arr) / sizeof(arr[0]);

    printf("Maximum subarray Sum : ");
    maxSubArray(arr, size);

    return 0;
}