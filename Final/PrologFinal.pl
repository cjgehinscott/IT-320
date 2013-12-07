totalSmall(X,Y):- Y is (6.99 * X).
totalMedium(X,Y):- Y is (8.99 * X).
totalLarge(X,Y):- Y is (12.50 * X).

loopPizza :- repeat,
	write('What size of pizza would you like: (1:Small, 2:Medium, 3:Large):'), read(A),
	(A == '1' -> write('How many small pizzas would you like: '), read(X), totalSmall(X,Y),write(Y), nl;
	A == '2' -> write('How many medium pizzas would you like: '), read(X), totalMedium(X,Y),write(Y), nl;
	A == '3' -> write('How many large pizzas would you like: '), read(X), totalLarge(X,Y),write(Y), nl),
	write('Would you like to continue? Y or N: '), read(E), (E=='N').
	
