#include <stdio.h>

// Function to print the subarray from index x to x+SUB_SIZE
void contSubArr(int a[], int x, int SUB_SIZE)
{
    for (int i = x; i < x + SUB_SIZE; i++)
    {
        printf("%d ", a[i]);
    }
}

void findMaxFrom(int a[], int n, int SUB_SIZE)
{
    int j, MAX_SUB_ELEM;
    for (int i = 0; i <= n - SUB_SIZE; i++) // Loop through the array to get all subarrays of length SUB_SIZE
    {
        MAX_SUB_ELEM = a[i]; 
        for (j = 1; j < SUB_SIZE; j++) 
        {
            if (a[i + j] > MAX_SUB_ELEM) 
                MAX_SUB_ELEM = a[i + j];
        }
        contSubArr(a, i, SUB_SIZE);        // Print the subarray
        printf("----> %d \n", MAX_SUB_ELEM); // Print the maximum value of the subarray
    }
}

int main()
{
    int a[] = {1, 3, 6, 21, 4, 9, 12, 3, 16, 10};
    int n = sizeof(a) / sizeof(a[0]);
    int i, SUB_SIZE = 4;

    printf("The contiguous subarrays of length %d and their maximum value are: \n", SUB_SIZE);
    findMaxFrom(a, n, SUB_SIZE); 

    return 0;
}
