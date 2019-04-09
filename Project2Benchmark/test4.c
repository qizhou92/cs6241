int f(int a){
 int x = 0;
 int b = a + 10;
 if (a > 0){
 	x = 10 + a;
 }else{
 	x = 10 - a;
 }

 int y = 15;
 if (a > y){
 	y = 10;
 }else{
 	y = 12;
 }

 int z = y+12;

 if (z > 12){
 	z = z+y;
 }else{
 	z = z-y;
 }

 int ret = z+ 7;
 return ret;
}
