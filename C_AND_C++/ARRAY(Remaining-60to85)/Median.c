// Median of Two Sorted Arrays (Same Size)
#include <stdio.h>

double median(int arr[], int n)
{
    if (n % 2 == 0)
        return (arr[n / 2] + arr[n / 2 - 1]) / 2.0;
    else
        return arr[n / 2];
}

int main(void)
{
    int a[] = {1, };
    int b[] = {2,};
    int n = sizeof(a) / sizeof(a[0]);

    double m1 = median(a, n);
    double m2 = median(b, n);
    printf("Median of the two sorted arrays is: %.2f\n", (m1 + m2) / 2);
    return 0;
}