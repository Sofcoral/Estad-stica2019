#Semana2_IntroR
#Respuesta a ejercicios
#Ejecicio 1: Reasigne 5 a la letra *z*, usando el operador *<-*, ahora, pregunte ¿qué es *z*?

4 -> z
 z
> z <- 5
> z
[1] 5
 #Ejercicio 2:Revisemos qué es rnorm()
 > help(rnorm)
 #Ejercicio 3: multiplique *x* por 2 y sumele 1 y dividalo por 1.5, ese resultado elevelo al cuadrado.
 > x<-1:10
 > x
 [1]  1  2  3  4  5  6  7  8  9 10
 > (((x*2)+1)/1.5)^2
[1]   4.00000  11.11111  21.77778  36.00000  53.77778  75.11111 100.00000 128.44444 160.44444
[10] 196.00000
#Ejercicio 4: tome cualquier objeto anterior y preguntele la clase
> complejos <- c(2i,5i, 3i)
> class(complejos)
1] "complex"
# # #Ejercicio 5: ¿Qué clase tiene el vector?
> prueba <- c(1, "perro", FALSE, "gato", 1.5)
 > class(prueba)
[1] "character"
#Ejercicio 6:  Hasta el momento hemnos generado varios vectores/objetos/variables, podemos listarlas usando la función ls() o ls.str()
> ls()
 [1] "complejos"    "freq"         "grupo_altura" "iris"         "n"            "pl.setosa"   
 [7] "pop1"         "pop2"         "pops"         "prob"         "promedio"     "prueba"      
[13] "setosa"       "x"            "z"       

#Ejercicio 7: Cree un una secuencia que repita los números de 1 a 4, 3 veces 
y asignela a un objeto llamado vector1. Ahora, cree una secuencia de números pares
 del 2 al 24 y asignela a un objeto llamado vector2. Gnere un arreglo con ambos vectores
 y busque la columna 2, fila 1 de la segunda matriz y para la primera.

 > vector1<-rep(1:4,3)
 > vector1
 [1] 1 2 3 4 1 2 3 4 1 2 3 4
> vector2<-seq(2,24,2)
 > vector2
 [1]  2  4  6  8 10 12 14 16 18 20 22 24
 > array(data = c(vector1,vector2),dim = c(3,4,2))
 > arreglo<- array(data = c(vector1,vector2),dim = c(3,4,2))
 > arreglo[1,2,1]
[1] 4
> arreglo[1,2,2]
[1] 8
# # #Ejericio 8:tome la primera columna  y la segunda, concatenelas con c() ¿Qué encuentra?
# # hora, tome amabas columnas y use la funcion cbind(), asignelo a un objeto llamado minuevatabla.
# # Haga lo mismo, con las filas del 1:5 y del 10:30, use primero c() y luego rbind() ¿Qué encuentra? 
  
  > c(iris$Sepal.Length,iris$Sepal.Width)

> minuevatabla<-cbind(iris$Sepal.Length,iris$Sepal.Width)
 > minuevatabla
 
> c(iris[1:5,],iris[10:30,])
> rbind(iris[1:5,],iris[10:30,])
 
 setwd("C:/Users/EQUIPO/Documents/ESTADISTICA")
 
 data<-read.csv("Matrix_Multivariate_Mega.csv")
 View(data)
#5 primeras columnas con las 10 primeras fila
 >    data2 <- data[1:5,1:10]                 
#Archivo final               
>    write.csv(x = data2,file = 'Minimatriz.csv')
