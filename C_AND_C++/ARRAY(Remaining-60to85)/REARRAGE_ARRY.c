#include <stdio.h>

// Each element is within the range from 0 to n-1, so that each element at index i becomes the value at index arr[i]

void rearrange(int arr[], int n)
{
    for (int i = 0; i < n; i++)
    {
        // Store the value at index i in a temporary variable
        // Use modulo to get the original value at arr[i]
        // Update arr[i] to hold both old and new values
        // New value is stored in the higher order bits
        // Old value is stored in the lower order bits
        arr[i] += (arr[arr[i]] % n) * n;
    }

    // Update the array to the rearranged values
    // Divide each element by n to get the new value
    for (int i = 0; i < n; i++)
        arr[i] /= n;
}

void rearrange(int arr[], int n)
{
    int temp[n];

    for (int i = 0; i < n; i++)
        temp[i] = arr[arr[i]];

    for (int i = 0; i < n; i++)
        arr[i] = temp[i];
}

int main(void)
{
    int arr[] = {2, 1, 4, 3, 0};
    int n = sizeof(arr) / sizeof(arr[0]);

    rearrange(arr, n);

    for (int i = 0; i < n; i++)
        printf("%d ", arr[i]);

    return 0;
}
