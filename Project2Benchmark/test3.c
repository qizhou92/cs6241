int f(int a){
 int x = 0;
 int y = 2;
 int z = 3;
 int b = a + 10;
 if (a > 10){
 	if (a > 5){
 		x = 5;
 	}else{
 		x = 6;
 	}
 	if( a > 10 ){
        y++;
 	}else{
       z = x + 3;
 	}

 	if (a > 15){
 		y= y+2;
 	}else{
 		z = z+x;
 	}
 }
 int ret = x+10;
 return ret;
}
