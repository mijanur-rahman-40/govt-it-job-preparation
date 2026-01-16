#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

int findMinDistance(int *a, int n1, int n2, int length) {
    int pos_one = INT_MAX,pos_two = INT_MAX; 
    int dis = length + 1; 
    int newDis;

    for (int i = 0; i < length; i++) {
        if (a[i] == n1) 
            pos_one = i; 
        else if (a[i] == n2)
            pos_two = i; 

        // If both numbers are found
        if (pos_one < length && pos_two < length) {
            newDis = abs(pos_one - pos_two); 
            if (dis > newDis) 
                dis = newDis;
        }
    }

    return dis == length + 1 ? -1 : dis; // Return minimum distance or -1 if no such pair found
}

int main() {
    int a[] = {7, 9, 5, 11, 7, 4, 12, 6, 2, 11};
    int n = sizeof(a) / sizeof(a[0]); // Calculate array size
    int p = 7; 
    int q = 11; 
    int i;

    printf("The minimum distance between %d and %d is:  %d\n", p, q, findMinDistance(a, p, q, n));
    return 0;
}
