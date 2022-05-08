/******************************************************************************

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, PHP, Ruby, 
C#, VB, Perl, Swift, Prolog, Javascript, Pascal, HTML, CSS, JS
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
#include <stdio.h>

/*int a, b, d1, d2, n;

int main( void ) {
     a= 1;
     b=2;
     d1= 3;
     d2=4 ;
     
     n = 1;
     while ( a <= b ) {
         for ( int i = 0 ; i < n ; i++ ) {
             a += d1;
             b -= d2;
             
         }
         n++;
         
     }printf( "%d %d %d %d %d\n", a,b,d1, d2, n ); */
   
 int a , b, d1, d2, n;
 
 int main (void){
     a= 1;
     b=2;
     d1= 3;
     d2=4 ;
     
    n=1;
    
    for_begin:
    if (a > b) goto for_end;
    int i=0;
    for_continue:
    if(i>=n) goto do_bo;
    a+=d1;
    b-=d2;
    i+=1;
     goto for_continue;
  
    do_bo:
    n+=1;
    goto for_begin;
    
    for_end:
    printf("%d %d %d %d %d\n", a, b, d1, d2, n);

return 0; 



}