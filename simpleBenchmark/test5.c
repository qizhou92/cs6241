int f(int a){
 int x = 0;
 int b = a + 10;
 if (a > 10){
 	x = a +3;
 }else{
 	x = a + 5;
 }

 if (a > 15){
 	x = x+2;
 }else{
 	x = x +3;
 }
 return x;
}