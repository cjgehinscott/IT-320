fun number(x:int):string = if x<0 then "Negative" else if x>0 then "Positive" else "Zero";
fun sum(x:int, y:int):int = x + y;
fun dif(x:int, y:int):int = x-y;
fun math(x:int, y:int, z:string):int = if z="+" then sum(x,y) else dif(x,y);
fun loop(x:int array, y:int, z:int) : string = if y < z then Int.toString(Array.sub(x,y)) ^ " " ^ loop(x, y+1, z) else "";
fun loop2(x:int array, y:int, z:int) : int = if y < z then Array.sub(x,y) + loop2(x, y+1, z) else 0;