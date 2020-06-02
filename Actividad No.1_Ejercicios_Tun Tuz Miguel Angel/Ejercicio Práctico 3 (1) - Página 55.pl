/*Programa que nos permite realizar consultas, sobre los parentescos y familiares*/
/*Hechos*/
mother(ann,henry).
mother(ann,mary).
mother(jane,mark).
mother(jane,francis).
mother(annette,jonathan).
mother(mary,bill).
mother(janice,louise).
mother(lucy,janet).
mother(louise,caroline).
mother(caroline,david).
mother(caroline,janet).
father(henry,jonathan).
father(john,mary).
father(francis,william).
father(francis,louise).
father(john,mark).
father(gavin,lucy).
father(john,francis).
parent(victoria,george).
parent(victoria,edward).
parent(X,Y):-mother(X,Y).
parent(X,Y):-father(X,Y).
parent(elizabeth,charles).
parent(elizabeth,andrew).
ancestor(X,Y):-parent(X,Y).
ancestor(X,Y):-parent(X,Z),ancestor(Z,Y).

/*Reglas*/
hijo_de(A,B):-parent(B,A).
abuelo_de(A,B):-father(A,C),parent(C,B).
abuela_de(A,B):-mother(A,C),parent(C,B).
visabuelo_de(A,B):-father(A,C),abuelo_de(C,B).
visabuelo_de(A,B):-father(A,C),abuela_de(C,B).

