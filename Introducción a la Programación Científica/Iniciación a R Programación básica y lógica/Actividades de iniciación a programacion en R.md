Actividades


### 1. ¿Qué versión de R estás utilizando? Explica 3 formas diferentes de encontrar la versión empleada, usando la interfaz gráfica (GUI) y la línea de comandos (CLI).


#### Con Línea de comandos:

- En la consola, el código version permite ver la versión empleada, incluyendo el sistema para el que ha sido diseñado y la fecha de salida.

- En la terminal, si estamos usando Linux, podemos usar el código R -–version para ver la version de R que estamos usando (ojo, si usamos Windows puede mostrar una versión de R diferente si usamos un subsistema Linux para Windows, para asegurarnos usaremos las otras opciones).

#### Con la interfaz gráfica:

- En help/about RStudio nos sale una opción que es copy version, si pegamos lo que tenemos en portapapeles vemos la versión de R.


Mi versión de R es: R version 4.5.1 (2025-06-13 ucrt)


### 2. ¿Cómo puedes comprobar en qué directorio/carpeta estás trabajando? Indica 2 formas de establecer un directorio como directorio de trabajo (set working directory).


En la consola, con el código Getwd() podemos ver el directorio de trabajo. Para establecer un directorio distinto podemos usar:

- setwd(“el_nombre_de_mi_directorio”) ejemplo: setwd("C:\Users\chema\Desktop\Master bioinformatica\Introducción a la Programación científica\”)

- Podemos cargar un archivo que sea legible por Rstudio, pinchando y arrastrándolo al panel de origen, aquí podemos hacer click derecho en la pestaña del archivo (las pestañas que están arriba en el panel de origen) y usar la opción Set Working Directory.


### 3. Cambia el tema de RStudio a modo oscuro. Indica dónde se cambia, y qué tema has elegido.


Seleccionamos Tools/Global Options…, aquí seleccionamos la pestaña de la izquierda Appaerance. Aquí en la opción Editor theme: podemos cambiar al color que gustemos. En mi caso he usado Vibrant Ink.

### 4. Instala el paquete dplyr, BiocManager y otro paquete de tu elección del CRAN (que creas que te pueda ser útil en un futuro próximo). Indica 3 formas distintas de instalar estos paquetes.


- Podemos escribir el código en la consola install.packages(“dplyr”).

- En el panel de archivos, en la pestaña de Packages, podemos seleccionar la opción Install para instalar los paquetes que queramos.

- La librería BiocManager permite instalar librerías con el código BiocManager::install(“dunn.test”) para descargar la librería dunn.test.


### 5. ¿Para qué se utiliza el paquete dplyr? ¿Y el paquete BiocManager? Una vez instalados, indica cómo se pueden cargar para empezar a usarlos en R.


dplyr es una librería que permite el manipular datos, proporcionando para ello un conjunto de funciones.

BiocManager permite gestionar tanto Bioconductor como otros paquetes mediante funciones varias, como hemos visto antes, nos permite instalar paquetes entre otras de las funciones que nos permite.

Podemos cargarlos con la función library(), ejemplo: library(dplyr) y library(BiocManager).


### 6. ¿Cómo puedes acceder a la ayuda y documentación del paquete BiocManager desde la consola de R? Indica cómo usarías este paquete para instalar el paquete AnnotationDbi.


Podemos usar el código help(“BiocManager”).

Para instalar el paquete AnotationDbi podemos escribir el código en la consola BiocManager::install(“AnnotationDbi”).


### 7. Crea las siguientes variables. (Código R)

• Vector10. Esta variable debe ser un vector que almacene los diez primeros números enteros. Indica 3 formas distintas de definir esta variable, explorando las funciones seq() y rep().

#### Dos números separados con ":" nos permite englobar dentro de un vector todos los números comprendidos entre esos dos.
Vector10.1 <- 1:10 

#### Otra forma sería con la función seq(), separados por comas nos permite hacer algo parecido a ":".
Vector10.2 <- seq(1,10) 

#### La función rep() nos permite crear un vector y repetirlo x veces.
Vector10.3 <- rep(1:10,1) 

#### Llamamos a los vectores.
Vector10.1
Vector10.2
Vector10.3

• Vector3. Esta variable debe ser un vector que almacene una variable de tipo carácter, una de tipo numérico y una de tipo Booleano. ¿De qué clases son los valores almacenados? Ayuda: explorar la función class().

#### Creamos un vector con c(), con un valor booleano, un valor tipo número y un valor tipo caracter.
Vector3 <- c("Character",3, TRUE) 

#### Vemos que cada uno de los valores del vector es considerado como "character", incluyendo el vector entero, independientemente del orden de los valores.
class(Vector3[[1]]) 
class(Vector3[[2]])
class(Vector3[[3]])
class(Vector3) 

• Lista3. Esta variable debe ser una lista que almacene una variable de tipo carácter, una de tipo numérico y una de tipo Booleano. ¿De qué clases son los valores almacenados? Ayuda: explorar la función class().

#### Como en el apartado anterior creamos una lista con la función list().
Lista3 <- list("Caracter", 3, TRUE) 

#### Vemos que aquí cada uno de los valores tiene un tipo diferente ("character", "numeric", y "logical"), y que la lista es tipo "list".
class(Lista3[[1]])
class(Lista3[[2]])
class(Lista3[[3]])
class(Lista3) 

• Matriz_Resultado. Esta matriz debe almacenar el resultado de sumar la matrizA y la matrizB (ambas son matrices de 4 filas x 3 columnas).

#### Creamos dos matrices con valores númericos distintos y las llamamos. 
MatrizA <- matrix(1:12, ncol = 3, nrow = 4)
MatrizA

MatrizB <- matrix(13:24, ncol = 3, nrow = 4)
MatrizB

#### Podemos sumar los valores de las matrices sumando ambas matrices simplemente con "+".
Matriz_resultado <- MatrizA + MatrizB
Matriz_resultado



### 8. Crea el vector vector_random que almacene 50 números aleatorios. (Código R) Ayuda: para obtener valores random puedes usar las funciones runif(), rnorm(), rexp(), sample().

#### Podemos hacer un vector con 50 valores aleatorios con runif(), cuyo valor maximo sea 1 y el minimo sea 0. Y la llamamos.
vector_random.1 <- runif(50, min = 0, max = 1)
vector_random.1


#### Podemos hacer un vector con 50 valores aleatorios con rnorm(), cuyo valor medio sea 0 y tenga una desviación estandar de 1. Y la llamamos.
vector_random.2 <- rnorm(50, mean = 0, sd= 1)
vector_random.2


#### Podemos hacer un vector con 50 valores aleatorios con rexp(), con un valor de distribución exponencial.
vector_random.3 <- rexp(50, rate = 4)
vector_random.3


#### Podemos hacer un vector con 50 valores aleatorios con sample(), con un valor máximo "x".
vector_random.4 <- sample(x=100, size = 50)
vector_random.4

• Encuentra el valor máximo y mínimo del vector.

#### Podemos ver el valor máximo del vector con la función max()
max(vector_random.1)
max(vector_random.2)
max(vector_random.3)
max(vector_random.4)

#### Podemos ver el valor mínimo del vector con la función min()
min(vector_random.1)
min(vector_random.2)
min(vector_random.3)
min(vector_random.4)

• Calcula la media y la mediana.

#### Podemos calcular la media aritmética de los valores del vector con la función mean()
mean(vector_random.1)
mean(vector_random.2)
mean(vector_random.3)
mean(vector_random.4)

#### Podemos calcular la mediana de los valores del vector con la función median()
median(vector_random.1)
median(vector_random.2)
median(vector_random.3)
median(vector_random.4)

• Determina la desviación estándar.

#### Podemos calcular la desviación estándar de los valores del vector con la función sd()
sd(vector_random.1)
sd(vector_random.2)
sd(vector_random.3)
sd(vector_random.4)

• Ordena los valores del vector en orden ascendente y descendente.

#### Podemos ordenar los valores del vector de forma decreciente con sort(mi_vector, decreasing = TRUE)
sort(vector_random.1, decreasing = TRUE)
sort(vector_random.2, decreasing = TRUE)
sort(vector_random.3, decreasing = TRUE)
sort(vector_random.4, decreasing = TRUE)

#### Podemos ordenar los valores del vector de forma ascendente con sort(mi_vector, decreasing = FALSE)
sort(vector_random.1, decreasing = FALSE)
sort(vector_random.2, decreasing = FALSE)
sort(vector_random.3, decreasing = FALSE)
sort(vector_random.4, decreasing = FALSE)

• Calcula la suma y el producto de todos los elementos del vector.

#### Podemos sumar todos los valores del vector con la función sum()
sum(vector_random.1)
sum(vector_random.2)
sum(vector_random.3)
sum(vector_random.4)



### 9. ¿De qué tipo son las variables almacenadas hasta el momento, globales o locales? Indica cómo se puede eliminar una variable en concreto (ejemplo: vector_random) y cómo todas las variables a la vez. 

Las variables globales son aquellas que se pueden llamar para todas las funciones mientras que las variables locales son aquellas que se definen para una función en concreto y solo se puede usar para esa función.
Para eliminar la variable de vector_random usaremos el código rm(vector_random) y para borrarlas todas usaremos rm(list = ls()).

### 10.	Desarrolla, utilizando sentecias if – else if - else, un bloque de código que lea un nucleótido ingresado por el usuario y determine si es Adenina (A), Timina (T), Citosina (C) o Guanina (G). Si el nucleótido ingresado no es válido, debe informar al usuario del error. (*) 

### 11.	Desarrolla, utilizando bucles for o while, un bloque de código que calcule la suma de todos los números comprendidos entre 50 y 100 (ambos inclusive). (*) 

### 12.	Desarrolla, utilizando bucles for o while, un bloque de código que calcule la suma y el promedio de todos los números pares comprendidos entre 1 y 50 (ambos inclusive). (*) 

### 13.	Crea y utiliza una función llamada Deteccion_Nucleotido que realice el bloque de código del Ejercicio 10. (*) Nota: Si no has podido resolver dicho ejercicio, y solo en este caso, crea y utiliza la función que prefieras que demuestre que sabes trabajar con funciones (ejemplo: Multiplicación o división de números dados por el usuario). 
