/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material. 
 *
 *****************************************************************************/
/*
  stats.c
  c script that includes multiple functions to perform statistical calculation and print out results

  Author: Peter Ling
  Date: 3/30/2022
*/

#include <stdio.h>
#include "stats.h"

/* Size of the Data Set */
#define SIZE (40)

/* Statistics data of the array */
unsigned char max_value;
unsigned char min_value;
unsigned char mean;
unsigned char med;

// void main() {

//   unsigned char test[SIZE] = { 34, 201, 190, 154,   8, 194,   2,   6,
//                               114, 88,   45,  76, 123,  87,  25,  23,
//                               200, 122, 150, 90,   92,  87, 177, 244,
//                               201,   6,  12,  60,   8,   2,   5,  67,
//                                 7,  87, 250, 230,  99,   3, 100,  90};

  
//   unsigned char *data = test;
  
//   print_array(test, SIZE);

//   max_value = find_maximum(data, SIZE);
  
//   min_value = find_minimum(data, SIZE);

//   mean = find_mean(data, SIZE);

//   med = find_median(data, SIZE);

//   sort_array(data, SIZE);

//   print_statistics(data);

//   return;
// }

void print_array(unsigned char *data, int len)
{
    #ifdef VERBOSE

      int i;
      printf("Printing all elements in the array: \n");
      for(i=0;i<len;i++)
      {
          printf("%hhu ", data[i]);
      }
      printf("\n\n");
      return;
      
    #else

      return;

    #endif
} 

unsigned char find_median(unsigned char *data, int len)
{
  int i, j, temp;
  unsigned char med;

  for(i=0;i<len;i++)
  {

    for(j=i+1;j<len+1;j++)
    {
      if(data[i] > data[j])
      {
        temp = data[i];
        data[i] = data[j];
        data[j] = temp;
      }
    }
  }

  if(SIZE%2 == 0 )
  {
    med = ((int)data[SIZE/2] + (int)data[(SIZE/2)+1])/2;
    printf("Median value in the array is %d\n\n", med);
    return med;
  }
  else{
    med = data[SIZE-1/2];
    printf("Median value in the array is %d\n\n", med);
    return med;
  }

}

unsigned char find_mean(unsigned char *data, int len)
{
  int sum = 0, mean;
  int i;

  for(i=0;i<len;i++)
  {
    sum += (int)data[i];
  }

  mean = sum / len;
  printf("Mean value in the array is: %d\n\n",mean);

  return mean;
}

unsigned char find_maximum(unsigned char *data, int len)
{
  int i;
  unsigned char max_num = data[0];

  for (i=0;i<SIZE-1;i++)
  {
    if (max_num < data[i+1])
    {
      max_num = data[i+1];
    }
  }
  printf("Max value in the array is: %hhu\n\n", max_num);

  return max_num;
}

unsigned char find_minimum(unsigned char *data, int len)
{
  int i;
  unsigned char  min_num = data[0];

  for (i=0;i<SIZE-1;i++)
  {
    if (min_num>data[i+1])
    {
      min_num = data[i+1];
    }
  }
  printf("Min value in the array is: %hhu\n\n", min_num);

  return min_num;
}

void sort_array(unsigned char *data,int len)
{
  int i, j, temp;

  for(i=0;i<len;i++)
  {

    for(j=i+1;j<len+1;j++)
    {
      if(data[i] < data[j])
      {
        temp = data[i];
        data[i] = data[j];
        data[j] = temp;
      }
    }
  }

  printf("Sort complete. new array is: \n");

  for(i=0;i<len;i++)
  {
      printf("%hhu ", data[i]);
  }
  printf("\n\n");

  return;
}

void print_statistics(unsigned char *data)
{

  printf("Statistics of this array are as follow: \n");
  printf("The max value in this array is %hhu\n", max_value);
  printf("The min value in this array is %hhu\n", min_value);
  printf("The mean value in this array is %hhu\n", mean);
  printf("The median value in this array is %hhu\n", med);

  return;
  
}