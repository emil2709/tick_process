#include <stdio.h>
#include <unistd.h>

#define MAX 100000
int main()
{
   int i,j, num,primes = 0;
   for(j = 1;j < MAX;j++)
     {
    usleep(1);
    primes = 0;
    for(num = 1;num < 258;num++)
      {
         i = 2;
         while (i <= num)
           {
          
          if(num % i == 0)
            break;
          i++;
           }
         if (i == num) primes++;
      }
     }
   
/*printf("%d primes below 300\n",primes);
*/
  sleep(0.25);
}

