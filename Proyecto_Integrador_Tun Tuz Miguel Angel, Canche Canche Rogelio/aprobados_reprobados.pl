/*hechos para conoocer la probabilidad de desercion de los alumnos que deben materias*/
debe(rogelio,matematicas).
debe(rogelio,graficacion).
debe(omar,programacion).
debe(alberto,basededatos).
debe(rosa,basededatos).
debe(alberto,inteligenciaartificial).
debe(leonela,probabilidadyestadistica).
debe(agustina,estructuradatos).
debe(alberto,calculodiferencial).

/*hechos para conocer la probabilida de desercion de los alumnos por materias en repeticion*/
repeticion(rogelio,calculovectorial).
repeticion(jose,progamacionorientadaobjetos).
repeticion(omar,algebralineal).
repeticion(alberto,fundamentobasedatos).
repeticion(rosa,talleretica).
repeticion(alberto,metodosnumericos).
repeticion(leonela,topicosdeprogramacion).
repeticion(maximo,sistemasoperativos).
repeticion(juanita,programacionweb).

/*Reglas para conocer la probabilidad de desercion de los alumnos por materias en repeticion*/
pocoprobable(X,pasar):-repeticion(X,calculovectorial);repeticion(X,fundamentobasedatos);repeticion(X,algebralineal);repeticion(X,progamacionorientadaobjetos);repeticion(X,talleretica).
muyprobable(X,pasar):-repeticion(X,fundamentobasedatos),repeticion(X,algebralineal);repeticion(X,calculovectorial),repeticion(X,algebralineal);repeticion(X,progamacionorientadaobjetos),repeticion(X,algebralineal).
noprobable(X):-repeticion(X,topicosdeprogramacion);repeticion(X,sistemasoperativos);repeticion(X,programacionweb).

/*Reglas para conocer la probabilidad de desercion de los alumnos por materias en adeudo*/
seva(X,pasar):-debe(X,matematicas),debe(X,basededatos);debe(X,calculodiferencial);debe(X,matematicas),debe(X,calculodiferencial).

sequeda(X,pasar):-debe(X,programacion);debe(X,probabilidadyestadistica);debe(X,estructuradatos).



