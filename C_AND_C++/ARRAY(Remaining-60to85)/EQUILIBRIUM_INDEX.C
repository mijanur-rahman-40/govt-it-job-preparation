#include <stdio.h>

int equilibriumIndex(int a[], int n)
{
    int total = 0, left = 0;

    for (int i = 0; i < n; i++)
        total += a[i];

    for (int i = 0; i < n; i++)
    {
        total -= a[i]; // now total = right sum
        if (left == total)
            return i;
        left += a[i];
    }
    return -1; // no equilibrium index
}

int main(void)
{
    int a[] = {0,-4,7, -4, -2,6-3, 0};
    int n = sizeof(a) / sizeof(a[0]);

    int idx = equilibriumIndex(a, n);
    if (idx != -1)
        printf("Equilibrium Index = %d\n", idx);
    else
        printf("No Equilibrium Index\n");

    return 0;
}
