val pi = 3.14159: real;
val radiusArray = Array.fromList[3.0,4.0];
val squareArray = Array.fromList[3.0,4.0];
val baseArray = Array.fromList[3.0, 4.0];
val heightArray = Array.fromList[8.0,7.0];
val side1 = Array.fromList[3.0,4.0];
val side2 = Array.fromList[1.5,3.5];

fun area1(s:string, r:real):real = if s = "circle" then pi*r*r else if s = "square" then r*r else 0.0;

fun area2(s:string, x:real, y:real):real = if s = "rectangle" then x*y else if s = "triangle"
then 0.5*x*y else if s = "parallelogram" then x*y else if s = "ellipse" then pi*x*y else 0.0;

fun area3(s:string,x:real,y:real,z:real):real = if s = "trapezoid" then 0.5*(x+y)*z else 0.0; 

fun loop_circle(x:real array,y:int,z:int):string = if y<z then "PI*" ^ Real.toString(Array.sub(x,y)) ^ "^2=" 
^ Real.toString(pi*Array.sub(x,y)*Array.sub(x,y)) ^ "," ^ loop_circle(x,y+1,z) else "done!!";

fun loop_square(x:real array, y:int, z:int):string = if y<z then Real.toString(Array.sub(x,y)) ^
" * "  ^ Real.toString(Array.sub(x,y)) ^ "= " ^ Real.toString(Array.sub(x,y)*Array.sub(x,y)) ^ "," ^ loop_square(x,y+1,z) else "Done!!!";

fun loop_triangle(x:real array,y:real array,a:int,b:int):string = if a<b then "1/2*" ^ 
Real.toString(Array.sub(x,a)) ^ "*" ^ Real.toString(Array.sub(y,a)) ^ "=" ^ 
Real.toString(0.5*Array.sub(x,a)*Array.sub(y,a)) ^ "," ^ loop_triangle(x,y,a+1,b) else "done!!";

fun loop_trapezoid(x:real array,y:real array,z:real array,a:int,b:int):string = if a<b then "1/2*(" ^
Real.toString(Array.sub(x,a)) ^ "+" ^ Real.toString(Array.sub(y,a)) ^ ")*" ^ Real.toString(Array.sub(z,a))
^ "=" ^ Real.toString(0.5*(Array.sub(x,a) + Array.sub(y,a))*Array.sub(z,a)) ^ "," ^
loop_trapezoid(x,y,z,a+1,b) else "done!!!";