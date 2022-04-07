#include<data.h>

/* converter integer to ASCII */
/*
1. put \n at position 0
2. place every digit in the reverse order first
3. place negative sign at last if input is negative
4. reverse the whole array
*/
uint8_t my_itoa(int32_t data, uint8_t* ptr, uint32_t base)
{
    uint8_t i=0;

    int flag_neg = 0;

    /* data is 0, return single digit */
    if(data == 0)
    {
        *(ptr+i) = '\0';
        i++;
        *(ptr+i) = 0;
        return i;
    }

    /* place \0 as 1st element */
    *(ptr+i) = '\0';
    i++;    // i = 1

    /* prepare for negative decimal input */
    if(data <0)
    {
        data  = -data;
        flag_neg = 1;
    }

    /* manipulation starts here */
    while(data>0)
    {
        *(ptr+i) = data%base;
        i++;
        data = data / base;
    }

    /* add - sign for negative input */
    if(flag_neg == 1)
    {
        *(ptr+i) = '-';
        i++;
    }

    /* reverse everything */
    int32_t temp;
    //printf("len = %d\n", i);
    for(int j=0;j<i/2;j++)
    {
        temp = *(ptr+j);
        *(ptr+j) = *(ptr+i-1-j);
        *(ptr+i-1-j) = temp;
    }

    return i;
}

/* converter ASCII to integer */
int32_t my_atoi(uint8_t* ptr, uint8_t digits, uint32_t base)
{
    /* for Testing */
    // for(int k=0;k<digits;k++)
    // {
    //     printf("%d ",*(ptr+k));
    // }
    //printf("digits = %d\n", digits);

    int32_t data = 0;
    uint8_t* ptr2 = ptr;
    int flag_neg = 0;
    int len = digits;
    int temp = 1;

    /* if negative input */
    if(*ptr == '-')
    {
        //printf("negative input found.\n");
        flag_neg = 1;
        ptr2 += 1;
        len--;
    }

    /* exclude \0 */
    len -= 2;
    while(len>=0)
    {
        data += *(ptr2+len)*temp;
        temp *= base;
        len--;
    }

    if(flag_neg == 1)
    {
        data = -data;
    }
    
    return data;
}