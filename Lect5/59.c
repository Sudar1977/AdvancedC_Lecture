#include <stdio.h>
#include <string.h>

_Bool checkPass(char *p) {
    if(strcmp(p,"secret")==0)
        return 1;
    return 0;
}

int main(void){
    char password[100];
    printf("Input your password: ");
    scanf("%s",password);
    if(checkPass(password))
        printf("Access granted\n");
    else
        printf("Access denied\n");
    return 0;
}
