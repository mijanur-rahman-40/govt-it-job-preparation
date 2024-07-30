#include <stdio.h>

int main()
{
    int ROWS, COLS;

    scanf("%d", &ROWS);
    scanf("%d", &COLS);
    int matrix[ROWS + 1][COLS + 1];

    // Take input for matrix
    for (int i = 0; i < ROWS; i++)
        for (int j = 0; j < COLS; j++)
            scanf("%d", &matrix[i][j]);

    // Calculate row sums
    for (int i = 0; i < ROWS; i++)
    {
        int rowSum = 0;
        for (int j = 0; j < COLS; j++)
            rowSum += matrix[i][j];

        matrix[i][COLS] = rowSum;
    }

    // Calculate column sums
    for (int j = 0; j < COLS; j++)
    {
        int colSum = 0;
        for (int i = 0; i < ROWS; i++)
            colSum += matrix[i][j];

        matrix[ROWS][j] = colSum;
    }

    // Print matrix with row and column sums
    for (int i = 0; i < ROWS + 1; i++)
    {
        for (int j = 0; j < COLS + 1; j++)
        {

            if (i == ROWS && j == COLS)
                printf(" ");
            else
                printf("%d\t", matrix[i][j]);
        }
        printf("\n");
    }

    return 0;
}