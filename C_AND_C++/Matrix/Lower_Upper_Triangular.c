#include <stdio.h>

int main()
{
    int size;

    // Size of square matrix
    printf("Size of square matrix : ");
    scanf("%d", &size);
    int matrix[size + 1][size + 1];

    // Take input for matrix
    for (int i = 0; i < size; i++)
        for (int j = 0; j < size; j++)
            scanf("%d", &matrix[i][j]);

    // Print matrix with row and column sums
    for (int i = 0; i < size; i++)
    {
        for (int j = 0; j < size; j++)
        {
            // Upper trinagle print
            // if (i <= j)
            // Lower trinagle print
            if (i >= j)
                printf("%d\t", matrix[i][j]);
            else
                printf("%d\t", 0);
        }
        printf("\n");
    }
}