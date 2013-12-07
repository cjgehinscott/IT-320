male('john washington').
female('ann pope').
male('augustine warner').
female('mildred reade').
male('william ball').
female('hannah atherold').
male('lawrence washington').
female('mildred warner').
male('augustine washington').
female('mary ball').
male('george washington').
female('betty washington').
male('samuel washington').
male('john augustine washington').
female('hannah bushrod').
male('charles washington').
female('mildred washington').
male('Butler Washington').
male('Lawrence Washington').
male('Augustine Washington').
female('Jane Washington').
male('bushrod washington').
father('john washington', 'lawrence washington').
mother('ann pope', 'lawrence washington').
father('augustine warner', 'mildred warner').
mother('mildred reade', 'mildred warner').
father('william ball', 'joseph ball').
mother('hannah atherold', 'joseph ball').
father('joseph ball', 'mary ball').
mother('mary johnson', 'mary ball').
married('martha dandridge', 'george washington').
married('mary ball', 'augustine washington').
married('jane butler', 'augustine washington').
married('hannah bushrod', 'john augustine washington').
father('john augustine washington','bushrod washington').
mother('hannah bushrod','bushrod washington').
father('lawrence washington', 'augustine washington').
mother('mildred warner', 'augustine washington').
father('augustine washington', 'george washington').
mother('mary ball', 'george washington').
father('augustine washington', 'betty washington').
mother('mary ball', 'betty washington').
father('augustine washington', 'samuel washington').
mother('mary ball', 'samuel washington').
father('augustine washington', 'john augustine washington').
mother('mary ball', 'john augustine washington').
father('augustine washington', 'charles washington').
mother('mary ball', 'charles washington').
father('augustine washington', 'mildred washington').
mother('mary ball', 'mildred washington').
father('augustine washington', 'Butler Washington').
mother('jane butler', 'Butler Washington').
father('augustine washington', 'Lawrence Washington').
mother('jane butler', 'Lawrence Washington').
father('augustine washington', 'Augustine Washington').
mother('jane butler', 'Augustine Washington').
father('augustine washington', 'Jane Washington').
mother('jane butler', 'Jane Washington').
parent(X, Y, Z) :- father(X, Z), mother(Y, Z).
brother(X,Y):- father(F,X), father(F,Y),mother(M,X), mother(M,Y), not(X=Y), not(female(X)).
sister(X,Y):- father(F,X), father(F,Y),mother(M,X), mother(M,Y), not(X=Y), not(male(X)).
uncle(X,Y):- brother(X,F), father(F,Y).
aunt(X,Y):- sister(X,F), father(F,Y).
