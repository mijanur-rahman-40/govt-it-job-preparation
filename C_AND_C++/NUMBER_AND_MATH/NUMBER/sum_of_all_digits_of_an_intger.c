#include <stdio.h>

int main()
{
    int dividend = 1023, sum = 0, quotient, reminder;
    
    quotient = dividend;

    while(quotient != 0){
        reminder = quotient % 10;
        quotient /= 10;
        sum += reminder;
    }

    printf("Sum : %d ", sum);
    
    return 0;
}
