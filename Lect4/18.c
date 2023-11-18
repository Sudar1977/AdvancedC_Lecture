#include<stdio.h>
#include<string.h>

#include <stdio.h>
#include <string.h>

struct String {
   int   len;
   char* str;
};

void encryptDecrypt(struct String* inpString,struct String* key) {
    for (size_t i = 0; i < inpString->len; i++) 
        inpString->str[i] = inpString->str[i] ^ key->str[i%key->len];
}

int main(void) {
    char sampleString[] = "Hello world";
    char key[] = "HASSWORD";//HASSWORD
    struct String sampleStringStr = {strlen(sampleString),sampleString};
    struct String keyStr = {strlen(key),key};
    printf("Encrypted String: ");
    encryptDecrypt(&sampleStringStr,&keyStr);
    printf("%s\n", sampleString);
 
    printf("Decrypted String: ");
    encryptDecrypt(&sampleStringStr,&keyStr);
    printf("%s\n", sampleString);
    return 0;
}
