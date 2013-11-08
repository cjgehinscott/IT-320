male('John Washington'). 
female('Ann Pope'). 
male('Lawrence Washington'). 
male('Augustine Warner'). 
female('Mildred Reade').  
female('Mildred Warner'). 
male('Augustine Washington'). 
female('Jane Butler'). 
male('Butler Washington'). 
male('lawrence Washington'). 
male('augustine Washington'). 
female('Jane Washington'). 
male('William Ball'). 
female('Hannah Artherold'). 
male('Joseph Ball'). 
female('Mary Johnson'). 
female('Mary Ball'). 
female('Martha Dandridge'). 
male('George Washington'). 
female('Betty Washington'). 
male('Samuel Washington'). 
male('John Augustine Washington'). 
male('Charles Washington'). 
female('Mildred Washington'). 
father('Augustine Washington', 'Butler Washington').
father('Augustine Washington', 'lawrence Washington').
father('Augustine Washington', 'augustine Washington').
father('Augustine Washington', 'Jane Washington').
father('Augustine Washington', 'George Washington').
father('Augustine Washington', 'Betty Washington').
father('Augustine Washington', 'Samuel Washington').
father('Augustine Washington', 'John Augustine Washington').
father('Augustine Washington', 'Charles Washington').
father('Augustine Washington', 'Mildred Washington').
mother('Jane Butler', 'Butler Washington').
mother('Jane Butler', 'lawrence Washington').
mother('Jane Butler', 'augustine Washington').
mother('Jane Butler', 'Jane Washington').
mother('Mary Ball', 'Betty Washington').
mother('Mary Ball', 'Samuel Washington').
mother('Mary Ball', 'John Augustine Washington').
mother('Mary Ball', 'Charles Washington').
mother('Mary Ball', 'Mildred Washington').
mother('Mary Ball', 'George Washington').
father('Lawrence Washington', 'Augustine Washington').
mother('Mildred Warner', 'Augustine Washington').
father('John Washington', 'Lawrence Washington').
mother('Ann Pope', 'Lawrence Washington').
father('Augustine Warner', 'Mildred Warner').
mother('Mildred Reade', 'Mildred Warner').
father('Joseph Ball', 'Mary Ball').
mother('Mary Johnson', 'Mary Ball').
father('William Ball', 'Joseph Ball').
mother('Hannah Artherold', 'Joseph Ball').
married('Martha Dandridge', 'George Washington').
married('Jane Butler', 'Augustine Washington').
married('Mary Ball', 'Augustine Washington').
married('Mary Johnson', 'Joseph Ball').
married('Mildred Warner', 'Lawrence Washington'). 
married('Ann Pope', 'John Washington').
married('Mildred Reade', 'Augustine Warner').
married('Hannah Artherold', 'William Ball').
parent(X,Y,Z):- father(X,Z), mother(Y,Z), not(X=Y).
sibling(X,Y):- father(F,X), father(F,Y),mother(M,X), mother(M,Y), not(X=Y).
grandparent(X,G,Y):- father(X,Z),father(Z,Y),mother(G,Z),father(Z,Y), not(X=Y).
grandparent(X,G,Y):-  mother(X,Z), mother(Z,Y),father(G,Z),mother(Z,Y), not(X=Y).
greatgrandparent(X,G,Y):- father(X,W),father(W,Z),father(Z,Y),mother(G,W),father(W,Z),father(Z,Y), not(X=Y).
greatgrandparent(X,G,Y):- father(X,W),mother(W,Z),father(Z,Y),mother(G,W),mother(W,Z),father(Z,Y), not(X=Y).
greatgrandparent(X,G,Y):- father(X,W),father(W,Z),mother(Z,Y),mother(G,W),father(W,Z),mother(Z,Y), not(X=Y).
half(X,Y):- father(F,X),father(F,Y), not(sibling(X,Y)), not(X=Y).
