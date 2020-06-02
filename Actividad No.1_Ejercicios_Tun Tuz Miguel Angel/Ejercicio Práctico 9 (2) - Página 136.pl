/*Programa que lee una lista de numeros y devuelve el numero siguiente de los numeros de la lista*/
inc([],[]).
inc([A|B],[A1|B1]):-A1 is A+1,inc(B,B1).

