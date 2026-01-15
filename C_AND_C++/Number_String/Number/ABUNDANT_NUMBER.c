#include <stdio.h>

int isAbundant(int n)
{
    int sum = 1; // 1 is always a proper divisor

    if (n <= 1)
        return 0;

    for (int i = 2; i * i <= n; i++)
    {
        if (n % i == 0)
        {
            sum += i;
            if (i != n / i)
                sum += n / i;
        }
    }

    return sum > n;
}

int main(void)
{
    int num;

    printf("Enter a number: ");
    scanf("%d", &num);

    if (isAbundant(num))
        printf("%d is an Abundant Number\n", num);
    else
        printf("%d is NOT an Abundant Number\n", num);

    return 0;
}
