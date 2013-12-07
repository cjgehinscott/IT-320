val pi = 3.14159;
val radius_array = Array.fromList [3.0,4.0];
val base_array = Array.fromList [3.0,4.0];
val height_array = Array.fromList [8.0,7.0];
val side1_array = Array.fromList [3.0,4.0];
val side2_array = Array.fromList [1.5,3.5];

fun area1 (s:string, x:real) : real = if s = "circle" then pi*x*x else if s = "square" then x*x else 0.0;

fun area2 (s:string, b:real, h:real) : real = if s = "rectangle" then b*h else if s = "triangle" then 0.5*b*h else if s = "parallelogram" then b*h else if s = "ellipse" then pi*b*h else 0.0;

fun area3 (s:string, a:real, b:real, h:real) : real = if s = "trapezoid" then 0.5*(a+b)*h else 0.0; 

fun loop_circle(a:real array, x:int, y:int) : string = if x < y then "PI*" ^ Real.toString(Array.sub(a,x)) ^ "^2=" ^ Real.toString(pi*Array.sub(a,x)*Array.sub(a,x)) ^ ", " ^ loop_circle(a, x+1, y) else "done!!!";

fun loop_triangle(a:real array, b:real array, x:int, y:int) : string = if x < y then "1/2*" ^ Real.toString(Array.sub(a,x)) ^ "*" ^ Real.toString(Array.sub(b,x)) ^ "=" ^ Real.toString(0.5*Array.sub(a,x)*Array.sub(b,x)) ^ ", " ^ loop_triangle(a, b, x+1, y) else "done!!!";

fun loop_trapezoid(a:real array, b:real array, c:real array, x:int, y:int) : string = if x < y then "1/2*(" ^ Real.toString(Array.sub(a,x)) ^ "+" ^ Real.toString(Array.sub(b,x)) ^ ")*" ^ Real.toString(Array.sub(c,x)) ^ "=" ^ Real.toString(0.5*(Array.sub(a,x)+Array.sub(b,x))*Array.sub(c,x)) ^ ", " ^ loop_trapezoid(a, b, c, x+1, y) else "done!!!";