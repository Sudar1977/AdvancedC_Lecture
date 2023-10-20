#include <stdio.h>
#include <stdint.h>

struct date {
    uint16_t day   : 5; // значение от 0 до 31
    uint16_t month : 4; // значение 0 до 15
    uint16_t year;//: 7; если огранчить с 2000 до 2064 года
};
int main(void)
{
    struct date dt = { 31, 12, 2021 };
    dt.month = 16;
    printf("Date is %u/%u/%u", dt.day, dt.month, dt.year);
}
