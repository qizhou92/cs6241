int f(int a){
 int x = 0;
 int b = a + 10;
 if (a > 10){
     x = 10;
 }else{
 	x = 8;
 }

 if (a > 5){
     b = b+5;
 }else{
     int y=x+3;
     x = y+5;
 }
 return x;
}
