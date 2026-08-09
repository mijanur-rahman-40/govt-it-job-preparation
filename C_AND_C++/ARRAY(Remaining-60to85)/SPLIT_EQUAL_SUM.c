#include <stdio.h>
#include <stdbool.h>

bool canBalance(int arr[], int n)
{
    int total = 0, left = 0;

    // Calculate total sum
    for (int i = 0; i < n; i++)
        total += arr[i];

    // Check split position
    for (int i = 0; i < n; i++)
    {
        total -= arr[i]; // right sum
        left += arr[i];
        if (left == total)
            return true;
    }
    return false;
}

int main(void)
{
    int arr[] = {3, 1, 2, 3, 0, 3, 4, 2};
    int n = sizeof(arr) / sizeof(arr[0]);

    printf("The given array is: ");
    for (int i = 0; i < n; i++)
        printf("%d ", arr[i]);

    printf("\n");

    if (canBalance(arr, n))
        printf("The array can be split with equal sum.\n");
    else
        printf("The array cannot be split with equal sum.\n");

    return 0;
}
