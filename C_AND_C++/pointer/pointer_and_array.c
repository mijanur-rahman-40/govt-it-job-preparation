#include <stdio.h>

int main()
{
    
    char *p = "yikh";
    //++*p++;
    //printf("%c", *p);
    
    char s[] = "Bangladesh Industrial and Technical";
    char *s1 = s;
    for(int i=0; i<10; i++){
        printf("%c", s[i]);
        //s1++;
        ++s1;
    } 
    printf("\n");
    for(int i=0; i<10; i++){
        printf("%c", s1[i]);
        ++s1;
    }
    return 0;
}