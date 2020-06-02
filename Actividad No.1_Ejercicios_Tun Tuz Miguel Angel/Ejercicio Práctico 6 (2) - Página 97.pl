/*Programa que lee una serie de caracteres y nos muestra las demas menos la primera linea*/
outsquare(N1,N2):-N1>N2.
outsquare(N1,N2):-
write(N1),write('squared is '),Square is N1*N1,
write(Square),nl,M is N1+1,outsquare(M,N2).
