#include <stdio.h>

int countDigits(int num) {
    if (num == 0) {
        return 0;
    }
    return 1 + countDigits(num / 10);
}

int main() {
    int number;
    printf("Enter a number: ");
    // scanf("%d", &number);
    int digitCount = countDigits(1000);
    printf("Number of digits: %d\n", digitCount);
    return 0;
}