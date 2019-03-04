#include <stdio.h>

/*
 * $ gcc prime.c
 * $ time ./a.out
 */

#define MAX 100000
int main()
{
   int i, num,primes = 0;
   for(num = 1;num < MAX;num++)
     {
	i = 2;
	while (i <= num)
	  {
	     if(num % i == 0)
	       break;  /* jumps out of while down to if*/
	     i++;
	  }
	if (i == num) 
	  {
	     primes++;
	  }
     }
printf("%d primes below %d\n",primes,MAX);
}

