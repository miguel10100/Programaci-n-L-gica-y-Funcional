
from pyswip import Prolog
prolog = Prolog()
prolog.consult("aprobados_reprobados.pl")
print("*********")
print("Sistema para conocer la probablidad de deserciones en el ITSVA")
print("*********")

c = False
while not c:
    for valor in prolog.query("pocoprobable(X,pasar)"):
        print("Tiene poca probabilidad de desercion en el plantel -->",valor["X"])
    for valor in prolog.query("noprobable(X)"):
        print("Tienen alta probabilidad de desercion en el plantel-->",valor["X"])
    
    print ("Son probables por sus materias que deben")
    X = input("Escriba el nombre de un alumno")

    for valor in prolog.query("debe(" + X + ",Y)"):
        print(X,'las materias que debe son:', valor["Y"],"Avisarle que tiene  que hecharle ganas")
    
    print("Son altamente probables a la desercion por las materias que tienen en repeticion")
    X = input("Escriba el nombre de un alumno")

    for valor in prolog.query("repeticion(" + X+ ",Y)"):
        print(X,'sus materias en repeticion son:', valor["Y"],"Invirarlos para tomen cursos sobre esas materias")
    
    for valor in prolog.query("muyprobable(X,pasar"): 
        print(X, 'Tienen que habalar  con ellos para conocer su caso',valor["X"])
    
    for valor in prolog.query("seva(X,pasar)"):
        print('Algunos de ellos que pueden ir a repeticion',valor["X"]+ "Tenerlo monitoreado")
    
    for valor in prolog("sequeda(X,pasar)"):
        print('Todos no son propensos a irse a repeticion',valor["X"]+ "Ir mejorando dia a dia")

print ('1.-Si  2.-No')
a=input("Abandonar sistema de probabilidades")

c=a.lower() in ['1']
if c:
    print("Nos vemos, que tenga una excelente dia")



