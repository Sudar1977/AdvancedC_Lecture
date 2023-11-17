#include<stdio.h>
#include<string.h>

void encryptDecrypt(char inpString[], char key[]) {
    size_t len = strlen(inpString);
    size_t key_len = strlen(key);
    for (size_t i = 0; i < len; i++) {
        inpString[i] = inpString[i] ^ key[i%key_len];
    }
}
int main() {
    char sampleString[] = "Hello world";
    printf("Encrypted String: ");
    encryptDecrypt(sampleString, "PASSWORD");//HAS..
    printf("%s\n", sampleString);
 
    printf("Decrypted String: ");
    encryptDecrypt(sampleString, "PASSWORD");//HAS..
    printf("%s\n", sampleString);
    return 0;
}
