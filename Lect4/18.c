#include<stdio.h>
#include<string.h>

struct String {
   int   len;
   char* str;
};

void encryptDecrypt(char inpString[], char key[]) {
    size_t len = strlen(inpString);
    size_t key_len = strlen(key);
    for (size_t i = 0; i < len; i++) {
        inpString[i] = inpString[i] ^ key[i%key_len];
    }
}
