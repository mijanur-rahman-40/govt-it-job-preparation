#include <stdio.h>

int sum(int n){
    if(n == 0) return 0;

    return n*n + sum(n-1);
}

// The main formalue is: sum = (n(n + 1)(2n + 1 ))/6;
 
int main(){
    // 1^2 + 2^2 + ....
    int val = sum(4);
    printf("%d", val);
    return 0;
}

