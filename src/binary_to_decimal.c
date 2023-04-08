#include "math.h"

int binary_to_decimal(int binary) {
   int decimal = 0, i = 0, remainder;

   while (binary != 0) {
      remainder = binary % 10;
      binary /= 10;
      decimal += remainder * pow(2, i);
      i++;
   }

   return decimal;
}