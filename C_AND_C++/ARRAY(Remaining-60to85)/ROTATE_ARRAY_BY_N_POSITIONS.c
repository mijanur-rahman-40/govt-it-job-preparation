#include <stdio.h>

int main()
{
    int arr[] = {0, 3, 6, 9, 12, 14, 18, 20, 22, 25, 27};
    int size = sizeof(arr) / sizeof(arr[0]);

    int rotFrom = 4;
    // Rotate the array from the 4th position
    for (int j = 0; j < rotFrom; j++)
    {
        // Shifting the array by one position
        int i, temp;
        temp = arr[0]; // Store the first element temporarily

        // Shift elements to the left by one position
        for (i = 0; i < size - 1; i++)
        {
            arr[i] = arr[i + 1];
        }
        arr[i] = temp;
    }

    printf("\nAfter rotating from the 4th position, the array is: \n");
    for (int i = 0; i < size; i++)
    {
        printf("%d ", arr[i]);
    }
    printf("\n");
    return 0;
}
