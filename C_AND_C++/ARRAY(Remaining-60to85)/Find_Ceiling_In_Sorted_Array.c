#include <stdio.h>

int main() {
    int arr[] = {1, 3, 4, 7, 8, 9, 9, 10};
    int size = sizeof(arr) / sizeof(arr[0]);
    int x = 5, i;

    printf("\n");

    // Find the ceiling of 'x' in the array
    int index = -1;
    if (arr[size - 1] < x)
        index = -1;
    else {
        for (i = 0; i < size; i++) {
            if (arr[i] >= x) {
                index = i;
                break;
            }
        }
    }
   
    if (index == -1)
        printf("No ceiling for the number %d exists in the array. ", x);
    else
        printf("The ceiling of %d is: %d", x, arr[index]);

    getchar(); // To keep the console window open
    return 0;
}
