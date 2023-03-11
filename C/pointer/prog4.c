// In C or C++, we cannot return multiple values from a function directly. In this section, we will see how to use some trick to return more than one value from a function.

#include <stdio.h>

// void div(int a, int b, int *quotient, int *remainder){
//     *quotient = a / b;
//     *remainder = a % b;
// }
void rArray(int *a, int n){
   int arr[5] = {1, 2, 3, 4, 5};
   return arr;
}
int main(){
    int a = 76, b = 10;
    int arr[5] = {1, 2, 3, 4, 5};
    arr = rArray(arr, 5);
    // int q, r;
    // div(a, b, &q, &r);
    // printf("Quotient is: %d\nRemainder is: %d\n", q, r);
}