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
    stats.h

    header file to declare functions used to detemine:
    - Max value of a data array
    - Min value of a data array
    - Mean value of a data array
    - Median value of a data array

    and functions used to perform:
    - Print all elements in the array
    - Print statistics of a provided data array such as max, min, mean, and median.
    - Sort all elements in the data array from largest to smallest

    Author: Petet Ling
    Date: 3/30/2022

*/

#include<string.h>

#ifndef __STATS_H__
#define __STATS_H__

/*
    Function to print all statistics of provided data array including max, min, mean, median values.

    char data[] - input data array
    int len - length of the data array
*/
void print_statistics(unsigned char *data);

/*
    Function to print all elements in a data array

    char data[] - input data array
    int len - length of the data array
*/
void print_array(unsigned char* data, int len);

/*
    Function to find median value of a data array 

    char data[] - input char array 
    int len - length of the data array
*/
unsigned char find_median(unsigned char* data, int len);

/*
    Function to find mean value of a data array 

    char data[] - input char array 
    int len - length of the data array
*/
unsigned char find_mean(unsigned char* data, int len);

/*
    Function to find max element of a dataarray 

    char data[] - input char array 
    int len - length of the data array
*/
unsigned char find_maximum(unsigned char* data, int len);

/*
    Function to find min element of a dataarray 

    char data[] - input char array 
    int len - length of the data array
*/
unsigned char find_minimum(unsigned char* data, int len);

/*
    Function to sort a data array from largest to smallest

    char data[] - input data array 
    int len - length of the data array
*/
void sort_array(unsigned char *data, int len);


#endif /* __STATS_H__ */
