#include <stdio.h>
#include <string.h>

void reverseStr(char *start, int size)
{
    char *end = start + size - 1;

    while (start < end)
    {
        char temp = *start;
        *start = *end;
        *end = temp;

        start++;
        end--;
    }
}

int main()
{
    char data_store[500];
    char *str_ptr = data_store;

    // only single word
    // scanf("%s", str_ptr);

    // many word with space
    // gets(str_ptr);
    // gets(str_ptr, sizeof(data_store), stdin);
    scanf("%[^\n]", str_ptr);


    reverseStr(str_ptr, strlen(str_ptr));

    printf("\nReversed data: %s \n", str_ptr);

    printf("\n");
}