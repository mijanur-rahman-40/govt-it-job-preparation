#include<stdio.h>
// Update Each elementent with Product of Neighbors
void newArryPrevNext(int a[], int n) 
{ 
    if (n <= 1) 
        return; 
    int pre_element = a[0]; 
    a[0] = a[0] * a[1];

    for (int i = 1; i < n - 1; i++) 
    { 
        int cur_element = a[i]; 
        a[i] = pre_element * a[i + 1];
        pre_element = cur_element;
    } 
    a[n - 1] = pre_element * a[n - 1]; // Update the last elementent
} 

int main() 
{ 
    int a[] = {1, 2, 3, 4, 5, 6}; 
    int n = sizeof(a) / sizeof(a[0]);

    printf("The new array is: \n");	
    newArryPrevNext(a, n); 

    // Display the elementents of the new array
    for (int i = 0; i < n; i++) 
    {
        printf("%d ", a[i]); 
    }
    return 0; 
}
