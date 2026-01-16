#include <stdio.h>

int main()
{
    int n = 5;

    // print each row
    for (int i = 0; i < n; i++)
    {
        // print spaces
        // for (int j = 0; j < n - i - 1; j++)
        //     printf("*");

        // print values in row
        int val = 1;
        for (int k = 0; k <= i; k++)
        {
            printf("%d ", val);
            val = val * (i - k) / (k + 1);
        }
        printf("\n");
    }
}