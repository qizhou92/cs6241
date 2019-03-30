#include <stddef.h>
int f(int a){
 int* p = &a;
 *p = *p+1;
 int x = 5;
 if (p != NULL){
 	x = 19;
 }else{
 	x = 7;
 }
 int y= x+5;
 return y;
}
