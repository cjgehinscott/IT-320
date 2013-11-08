circle(R,AREA):- AREA is (3.14159 * R * R).
square(X,AREA):- AREA is X*X.
rectangle(X,Y,AREA):- AREA is X*Y.
triangle(X,Y,AREA):- AREA is (0.5 * X * Y).
parallelogram(X,Y,AREA):- AREA is X*Y.
ellipse(X,Y,AREA):- AREA is (3.14159 * X * Y).
trapezoid(X,Y,Z,AREA):- AREA is 0.5* (X + Y) * Z.
looparea :- repeat,
	write('Enter shape: '), read(D),
	(D == 'circle' -> write('Enter radius: '), read(R), circle(R,AREA), write(AREA),nl;
	D == 'square' -> write('Enter size: '), read(X), square(X,AREA), write(AREA),nl;
	D == 'rectangle' -> write('Enter width: '),read(X),write('Enter height: '),read(Y), rectangle(X,Y,AREA),write(AREA),nl;
	D == 'triangle' -> write('Enter base: '),read(X),write('Enter height: '),read(Y), triangle(X,Y,AREA), write(AREA),nl;
	D == 'parallelogram' -> write('Enter base: '),read(X), write('Enter height: '), read(Y), parallelogram(X,Y,AREA),write(AREA),nl;
	D == 'ellipse' -> write('Enter Major Axis: '),read(X), write('Enter Minor Axis: '),read(Y), ellipse(X,Y,AREA),write(AREA),nl;
	D == 'trapezoid' -> write('Enter side 1: '),read(X),write('Enter side 2: '),read(Y),write('Enter height: '),read(Z),trapezoid(X,Y,Z,AREA),write(AREA),nl),
	write('Enter 1 to continue or 0 to exit: '), read(E), (E==0).
