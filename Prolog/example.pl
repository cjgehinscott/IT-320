female(shelley).
male(bill).
male(jake).
female(mary).
father(bill, jake).
father(bill, shelley).
mother(mary, jake).
mother(mary, shelley).
male(john).
father(john,bill).
female(jane).
mother(jane, mary).
parent(X,Y) :- father(X,Y).
parent(X,Y) :- mother(X,Y).
grandfather(X,Z) :- father(X,Y), father(Y,Z).
grandmother(X,Z) :- mother(X,Y), mother(Y,Z).
sibling(X,Y) :- parent(Z,X), parent(Z,Y), not(X=Y).
sibling2(X,Y) :- father(F,X), father(F,Y), mother(M,X), mother(M,Y), not(X=Y).
add(X,Y,Z) :- Z is X + Y.
ftoc(F,C) :- C is (F-32) * 5 / 9.
ctof(C,F) :- F is (C*9/5) + 32.
max(X,Y,Z) :- (X =< Y -> Z = Y; Z = X).
min(X,Y,Z) :- (X >= Y -> Z = Y; Z = X).
equal(X,Y) :- (X == Y -> write('equal'); write('not equal')).
num(X) :- (X > 0 -> write('positive'); X < 0 -> write('negative'); write('zero')).
loop :- repeat, write('Enter a number: '), read(X), (X==0).
loopadd :- repeat,
		   write('Enter first number: '), read(X),
		   write('Enter second number: '), read(Y),
		   add(X,Y,Z), write(X+Y=Z), nl,
		   write('Enter 1 to continue 0 to exit: '), read(C), (C==0).
/*temp :- repeat, write('Enter C for Celcius, F for Farenheit :'), read(A),
			write('Enter Temperature: '), read(T), 
			(A == 'F' -> ftoc(T,C), write(C), nl;
			A == 'C' -> ctof(T,F), write(F), nl;
			write('Enter 1 to continue 0 to exit: '), read(X)), (X==0).		*/
temp :- repeat,
		write('Enter C for Celsius F for Fahrenheit: '), read(T),
		write('Enter temperature: '), read(X),
		(T == 'F' -> ftoc(X,Y); ctof(X,Y), write(T), nl,
		write('Enter C to Continue E to exit: '), read(C), (C=='E').