/*Programa que nos permite realizar consultas, para determinar cuales son los anivales y que animales son carnivoros*/
/*Hechos*/
animales(leon).
animales(vaca).
animales(tigre).

carnivoros(leon).
carnivoros(tigre).

/*Reglas*/
son_carnivoros(X):-carnivoros(X).

