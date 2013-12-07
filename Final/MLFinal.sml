val list1 = Array.fromList[6.99, 8.99, 12.50];
val list2 = Array.fromList[2.0,1.0,4.0];
val list3 = Array.fromList[6.99,12.50];
val list4 = Array.fromList[2.0,4.0];
val list5 = Array.fromList[6.99];
val list6 = Array.fromList[2.0];


fun total(x:real,y:real):real = x*y;

fun loop_pizza(x:real array,y:real array, a:int, b:int):string = if a<b then Real.toString(Array.sub(x,a)) ^ " * " ^ 
Real.toString(Array.sub(y,a)) ^ " = " ^ Real.toString(Array.sub(x,a) * Array.sub(y,a)) ^ 
", " ^ loop_pizza(x,y,a+1,b) else "Done!!!"; 