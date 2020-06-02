/*Programa que nos permite realizar consultas para definir una pareja*/
/**Hechos/
person(bill,male).
person(george,male).
person(alfred,male).
person(carol,female).
person(margaret,female).
person(jane,female).

/*Reglas*/
pareja(X,Y):-person(X,male),person(Y,female).
/*
check 
person(X,Y).
couple(X,Y).
*/


