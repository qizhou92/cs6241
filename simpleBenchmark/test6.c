#include <stddef.h>
int f(int a){
 int* p = &a;
 *p = *p+1;
 int x = 5;
 if (p != NULL){
 	x = a +3;
 }else{
 	x = a -1;
 }
 return x;
}