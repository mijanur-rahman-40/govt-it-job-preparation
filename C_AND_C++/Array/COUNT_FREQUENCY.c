#include <stdio.h>

int main()
{
    int arr1[100], freq[100];
    int n, i, j, ctr;

    scanf("%d", &n);

    printf("Input %d elements in the array :\n", n);
    for (i = 0; i < n; i++)
    {
        printf("element - %d : ", i);
        scanf("%d", &arr1[i]);
        freq[i] = -1; // Initialize frequency array with -1
    }

    // Count the frequency of each element in the array
    for (i = 0; i < n; i++)
    {
        ctr = 1; // Initialize counter for each element
        // check if this number is already counted or not
        if (freq[i] != 0)
        {
            for (j = i + 1; j < n; j++)
            {
                if (arr1[i] == arr1[j])
                {
                    ctr++;       // Increment counter for matching elements
                    freq[j] = 0; // Mark the duplicate element's frequency as 0
                }
            }
            freq[i] = ctr;
        }

        // If frequency array value is not marked as 0, set it to the counter
        // if (freq[i] != 0)
    }

    printf("\nThe frequency of all elements of the array : \n");
    for (i = 0; i < n; i++)
        if (freq[i] != 0)
            printf("%d occurs %d times\n", arr1[i], freq[i]);

    return 0;
}
