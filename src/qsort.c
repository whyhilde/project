// Copyright (c) 2025 whyhilde, sakuyma1337
// SPDX-License-Identifier: MIT


#include "../include/qsort.h"

#include <stdio.h>


void sum(int array[], int size_arr, int index, int total)
{
  if (index == size_arr) {
    printf("sum = %d", total);
  } else {
    return sum(array, size_arr, index + 1, total += array[index]);
  }
}
