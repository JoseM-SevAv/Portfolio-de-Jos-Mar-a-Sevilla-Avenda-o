############################################################################
############################################################################
###                                                                      ###
###                            INICIACIÓN A R:                           ###
###                     PROGRAMACIÓN BÁSICA Y LÓGICA                     ###
###                                                                      ###
############################################################################
############################################################################


###########################################################################
###                                                                     ###
###                             EJERCICIO 7                             ###
###                                                                     ###
###########################################################################


Vector10.1 <- 1:10 

# Dos números separados con ":" nos permite englobar dentro de un vector todos 
# los números comprendidos entre esos dos.

Vector10.2 <- seq(1,10) 

# Otra forma sería con la función seq(), separados por comas nos permite hacer 
# algo parecido a ":".

Vector10.3 <- rep(1:10,1) 

# La función rep() nos permite crear un vector y repetirlo x veces.

Vector10.1
Vector10.2
Vector10.3

#Llamamos a los vectores

Vector3 <- c("Character",3, TRUE) 

# Creamos un vector con c(), con un valor booleano, un valor tipo número y un 
# valor tipo caracter.

class(Vector3[[1]]) 
class(Vector3[[2]])
class(Vector3[[3]])
class(Vector3) 

# Vemos que cada uno de los valores del vector es considerado como "character", 
# incluyendo el vector entero, independientemente del orden de los valores.

Lista3 <- list("Caracter", 3, TRUE) 

# Como en el apartado anterior creamos una lista con la función list()

class(Lista3[[1]])
class(Lista3[[2]])
class(Lista3[[3]])
class(Lista3) 

# Vemos que aquí cada uno de los valores tiene un tipo diferente ("character", 
# "numeric", y "logical"), y que la lista es tipo "list"

MatrizA <- matrix(1:12, ncol = 3, nrow = 4)
MatrizA

MatrizB <- matrix(13:24, ncol = 3, nrow = 4)
MatrizB

# Creamos dos matrices con valores númericos distintos y las llamamos. 

Matriz_resultado <- MatrizA + MatrizB
Matriz_resultado

# Podemos sumar los valores de las matrices sumando ambas matrices simplemente 
# con "+".


###########################################################################
###                                                                     ###
###                             EJERCICIO 8                             ###
###                                                                     ###
###########################################################################


vector_random.1 <- runif(50, min = 0, max = 1)
vector_random.1

# Podemos hacer un vector con 50 valores aleatorios con runif(), cuyo valor 
# maximo sea 1 y el minimo sea 0. Y la llamamos.

vector_random.2 <- rnorm(50, mean = 0, sd= 1)
vector_random.2

# Podemos hacer un vector con 50 valores aleatorios con rnorm(), cuyo valor 
# medio sea 0 y tenga una desviación estandar de 1. Y la llamamos.

vector_random.3 <- rexp(50, rate = 4)
vector_random.3

# Podemos hacer un vector con 50 valores aleatorios con rexp(), con un valor de 
# distribución exponencial.

vector_random.4 <- sample(x=100, size = 50)
vector_random.4

# Podemos hacer un vector con 50 valores aleatorios con sample(), con un valor
# máximo "x".

max(vector_random.1)
max(vector_random.2)
max(vector_random.3)
max(vector_random.4)

# Podemos ver el valor máximo del vector con la función max()

min(vector_random.1)
min(vector_random.2)
min(vector_random.3)
min(vector_random.4)

# Podemos ver el valor mínimo del vector con la función min()

mean(vector_random.1)
mean(vector_random.2)
mean(vector_random.3)
mean(vector_random.4)

# Podemos calcular la media aritmética de los valores del vector con la función
# mean()

median(vector_random.1)
median(vector_random.2)
median(vector_random.3)
median(vector_random.4)

# Podemos calcular la mediana de los valores del vector con la función median()

sd(vector_random.1)
sd(vector_random.2)
sd(vector_random.3)
sd(vector_random.4)

# Podemos calcular la desviación estándar de los valores del vector con la 
# función sd()

sort(vector_random.1, decreasing = TRUE)
sort(vector_random.2, decreasing = TRUE)
sort(vector_random.3, decreasing = TRUE)
sort(vector_random.4, decreasing = TRUE)

# Podemos ordenar los valores del vector de forma decreciente con 
# sort(mi_vector, decreasing = TRUE)

sort(vector_random.1, decreasing = FALSE)
sort(vector_random.2, decreasing = FALSE)
sort(vector_random.3, decreasing = FALSE)
sort(vector_random.4, decreasing = FALSE)

# Podemos ordenar los valores del vector de forma ascendente con sort(mi_vector,
# decreasing = FALSE)

sum(vector_random.1)
sum(vector_random.2)
sum(vector_random.3)
sum(vector_random.4)

# Podemos sumar todos los valores del vector con la función sum()


###########################################################################
###                                                                     ###
###                             EJERCICIO 10                            ###
###                                                                     ###
###########################################################################


Nucleotidos <- "AGGCGGTTAAATCG" 

# Creamos un string de una secuencia de nucleotidos

Nucleotidos <- strsplit(Nucleotidos, "")

# Para separar cada un de los caracteres del string usamos la función 
# strsplit(), y los separamos con nada con "", obtendremos una lista con un 
# solo caracter.

Nucleotidos <- unlist(Nucleotidos)

# Para poder operar sobre la lista tenemos que deslistarla y convertirla en un 
# vector, usando unlist()

for (i in Nucleotidos){
  
# Recorremos toda el vector con un bucle for, separandola en valores "i".
  
  if(i == "A"){
    print("Adenina")}

# Si el carácter es "A" se imprimirá "Adenina" con if()
  
  else if(i == "G"){
    print("Guanina")}
  else if(i == "C"){
    print("Citosina")}
  else if(i == "T"){
    print("Timina")}
  
# Con else if() podemos aplicar otras opciones como que el carácter sea "G".
  
  else {print("Error: Nucleotido no encontrado") 
    break}}

#Por último, si no se cumple ninguna de las condiciones, con else se imprimirá 
# un error y se cortará el bucle con break.


###########################################################################
###                                                                     ###
###                             EJERCICIO 11                            ###
###                                                                     ###
###########################################################################


num <- 50

# Para hacer un sumatorio de los número del 50 al 100 primero se crea una 
# variable "num" que contenga el valor 50.

while (num <= 100) 
  {x <- sum(50:num)
  num <- num +1
}

# Mientras este valor sea menor o igual a 100, se hará un sumatorio de los 
# números comprendidos entre 50 y el valor que comrprendido en la variable 
# "num". Despues de hacer este sumatorio a la variable "num" se le sumará 1 y 
# se repetirá el búcle hasta que la variable "num" sea 100, haciendo un 
# sumatorio de los números comprendidos entre 50 y 100.

print(x)

# Por último llamamos al resultado.

num <- c()

# Para hacerlo con un bucle for primero creamos un vector vacio y lo metemos en 
# una variable.

for (i in 50:100){
  
# Cogemos cada uno de los números del 50 al 100 y los metemos en un bucle for.
  
  num[i-49] <- i
  suma <- sum(num)
}

# Cada uno de los números del 50 al 100 ocuparán un espacio en el vector, así 
# el número 1 de la lista, al restarle 49 a i será el 50, y así hasta meter los 
# 51 números comprendidos entre el 50 y el 100 en el vector. Además metemos el 
# resultado de la suma de los números del vector en otra variable.

print(suma)

# Por último mostramos el resultado.


###########################################################################
###                                                                     ###
###                             EJERCICIO 12                            ###
###                                                                     ###
###########################################################################


num <- 1

# Al igual que en ejercicio anterior primero creamos una variable "num" que 
# contenga el número 1.

while (num <= 50) 
  
# Creamos un bucle en el que se especifique que se repetirá mientras que la 
  # variable "num" sea menor o igual a 50
  
  {num <- num +1
  x <- seq(2,num,2)}

# Sumaremos 1 en la variable "num" cada vez que se repita el bucle, e 
# introduciremos en una variable "x" un vector con la función seq() en la que 
# se especifique que el vector contendrá números del 2 hasta la variable "num" 
# y que se leerá de 2 en 2. En otras palabras solo contendrá los números pares.

sum(x)
mean(x)

# Se calcula el sumatorio y la media de dicho vector y se imprime.

num <- c()

# Al igual que en apartado anterior, para hacerlo con un bucle for primero 
# creamos un vector vacio y lo metemos en una variable.

for (i in 1:50){
  
# Cogemos cada uno de los números del 1 al 50 y los metemos en un bucle for.
  
  if (i %% 2 == 0){
    num[i/2] <- i
    
    # Aquí especificamos que, siempre y cuando el resto de dividir el número i 
    # sea 0 (números pares) se meta dentro del vector en la posición i/2 para 
    # ocupar el lugar que le corresponde en el vector y no tener huecos vacios.
    
    suma <- sum(num)
    media <- mean(num)}
}

# se calcula el sumatorio y media aritmetica del vector y se meten en variables.

print(suma)
print(media)

# Por último se imprimen los resultados de las variables suma y media.


###########################################################################
###                                                                     ###
###                             EJERCICIO 13                            ###
###                                                                     ###
###########################################################################


Nucleotidos <- "AGGCGGTTAAATCG"
Nucleotidos_falso <- "ADLKFJALSÑDGJKLASFJ"

# Para poner al prueba la función crearemos dos nucleótidos de prueba.

Detección_nucleotido <- function(x){
  x <- strsplit(x, "")
  x <- unlist(x)
  for (i in x){
    if(i == "A"){
      print("Adenina")}
    else if(i == "G"){
      print("Guanina")}
    else if(i == "C"){
      print("Citosina")}
    else if(i == "T"){
      print("Timina")}
    else {print("Error: Nucleotido no encontrado") 
      break}}}

# Creamos la función a partir del código que teníamos en el ejercicio 10 con el 
# nombre de Detección_nucleotido, en la que solo precise de una variable x que 
# contenga un variable character para funcionar.

Detección_nucleotido(Nucleotidos)
Detección_nucleotido(Nucleotidos_falso)

# Probamos la función sobre los dos nucleotidos de prueba, en el caso del 
# Nucleotidos_falso saltará el error y la función dejará de funcionar.