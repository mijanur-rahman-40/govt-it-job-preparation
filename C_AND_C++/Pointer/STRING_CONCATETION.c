#include <stdio.h>

int main()
{
    char aa[100], bb[100];

    printf("\nEnter the first string: ");
    gets(aa);

    printf("\nEnter the second string to be concatenated: ");
    gets(bb);

    char *a = aa;
    char *b = bb;

    // pointing to the end of the 1st string
    while (*a) // till it doesn't point to NULL-till string is not empty
    {
        a++; // point to the next letter of the string
    }
    while (*b) // till second string is not empty
    {
        *a = *b;
        b++;
        a++;
    }
    *a = '\0'; // string must end with '\0'
    printf("\n\n\nThe string after concatenation is: %s ", aa);
    return 0;
}