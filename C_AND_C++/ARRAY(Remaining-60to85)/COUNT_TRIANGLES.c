#include <stdio.h>
#include <stdlib.h>

int compare(const void *a, const void *b) {
    return (*(int *)a - *(int *)b); // by using type casting
}

int countTriangles(int arr[], int n) {
    int count = 0;

    qsort(arr, n, sizeof(int), compare);

    for (int k = n - 1; k >= 2; k--) {
        int i = 0;
        int j = k - 1;

        while (i < j) {
            if (arr[i] + arr[j] > arr[k]) {
                count += (j - i);
                j--;
            } else {
                i++;
            }
        }
    }
    return count;
}

int main(void) {
    int arr[] = {4, 6, 3, 7, 8};
    int n = sizeof(arr) / sizeof(arr[0]);

    printf("Number of triangles = %d\n", countTriangles(arr, n));
    return 0;
}
