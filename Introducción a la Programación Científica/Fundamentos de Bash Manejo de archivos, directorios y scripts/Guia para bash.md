### 1.	¿Cuál es el nombre del usuario actual? ¿Y el nombre del sistema? Indique dónde se puede conocer esta información. 

    whoami permite conocer el nombre del usuario actual.
whoami
Usuario: chema.

    Para conocer el nombre del sistema usaremos "uname -o", con "uname" solo obtenemos Linux. 
uname -o
Sistema: GNU/Linux.

### 2.	¿Qué versión de Bash estás utilizando? 

    Para saber cualquier versión de cualquier programa instalado podemos hacer un "programa --version".
bash --version
version 5.2.21(1)-release (x86_64-pc-linux-gnu)

### 3.	¿Cuál es el directorio de trabajo actual? Crea en el directorio de inicio tres subdirectorios: «curso2024», «curso2025» y «UNIR». 

    Para movernos a cualquier directorio de trabajo usamos "cd" y el nombre del directorio al que queramos movernos desde nueestro directorio actual, linux tiene un sistema de autocompletado escribiendo una letra y pulsando el tabulador.
cd mi\ directorio\ de\ trabajo/

    "pwd" permite conocer el directorio de trabajo actual
pwd
Directorio de trabajo actual: /mnt/c/Users/chema/Desktop/Master bioinformatica/Introducción a la Programación científica/Actividad 2

    "mkdir" permite crear directorios con el nombre que les pongamos, podemos crear varios directorios a la vez con una sola línea de comando.
mkdir curso2024/ curso2025/ UNIR/

### 4.	Sin acceder al directorio «UNIR», crea dentro los siguientes 10 ficheros: Fichero1.txt, Fichero2.txt … Fichero10.txt. Indica dos formas diferentes de crearlos. Ayuda: Explorar el uso de los caracteres {}. 

    "touch" nos permite crear directamente los ficheros, si usamos una lista de números del 1 al 10 con "{1..10}" podremos crear los 10 ficheros.
touch UNIR/Fichero{1..10}.txt

    "nano" es algo más complejo que touch puesto que nos pedirá que esos ficheros no estén vacíos, si no que tendrán que tener algo escrito dentro, además que habrá que guardar lo que cambiemos de ese fichero.
nano UNIR/Fichero{1..10}.txt 

### 5.	Elimina los directorios «UNIR» y «curso2025» utilizando el comando rmdir. ¿Puedes eliminar ambos directorios? Si no puedes eliminar alguno, explica cómo lo harías y por qué.

    Para directorios podemos usar "rmdir" y el directorio que queramos eliminar.
rmdir UNIR/ curso2025/.

         "rmdir" nos permite borrar los directorios creados, excepto UNIR/ porque tiene ficheros dentro, para ello usaremos el siguiente comando, "-r" en este comando permite borrar todo lo que haya dentro del directorio, funciona tambien para borrar todo el sistema asi que hay que tener cuidado con el.
rm -r UNIR/


### 6.	Accede al directorio «curso2024» y descarga el fichero plasmids.txt a través del siguiente enlace. ¿Cómo puedes conocer más información acerca de este comando? Indica dos formas de acceder a la ayuda de los comandos. https://ftp.ncbi.nlm.nih.gov/genomes/GENOME_REPORTS/plasmids.txt

    "wget" nos permite descargar archivos de internet, y con "-O" podemos seleccionar el directorio donde descargarlo.
wget -O "curso2024/plasmids.txt" https://ftp.ncbi.nlm.nih.gov/genomes/GENOME_REPORTS/plasmids.txt
    
    Se puede saber más de cualquier comando escribiendo el comando seguido de "--help", "-h" o con el comando "man".
wget -h
wget –-help
man wget

### 7.	Lista el contenido del directorio actual. ¿Qué permisos (usuario/grupo/todos) tiene el fichero plasmids.txt? ¿Cuánto tamaño ocupa en Mb? Busca en la ayuda del comando ls el parámetro utilizado para mostrar este tamaño en un formato fácilmente legible por humanos.

        "ls" nos permite listar todo el contenido de un directorio, mientras que "-lh" nos permite leer el contenido del directorio de forma legible para humanos, además este comando nos muestra los permisos de los diferentes archivos y directorios que contiene el directorio en el que nos encontramos y su tamaño.
ls -lh curso2024/


Permisos de plasmids.txt (-rwxrwxrwx):
-	Usuario: lectura, escritura y ejecución.
-	Grupo: lectura, escritura y ejecución.
-	Todos: lectura, escritura y ejecución.
Tamaño: 7.3 Mb

### 8.	Comprime y descomprime este fichero en los formatos .tar y .gz. Mantén el archivo original sin modificar.

        El comando "tar" nos permite crear archivos de compresión ".tar" y ".gz". Si usamos "-a" podemos determinar el método de compresión, y con "-cf" podemos crear el archivo de compresión y así introducir dentro el fichero que queramos.
tar -acf curso2024/plasmids.tar curso2024/plasmids.txt 
tar -acf curso2024/plasmids.gz curso2024/plasmids.txt

        "-xf" nos permite descomprimir los archivos ".tar" y "gz", liberando en el directorio actual su contenido.
tar -xf curso2024/plasmids.tar
tar -xf curso2024/plasmids.gz

### 9.	Crea un nuevo archivo llamado plasmids_final.txt que contenga las últimas 8 filas del archivo plasmids.txt. Para ello, explora el uso de > y >>. ¿Para qué se utiliza cada uno?

    ">>" sirve para añadir lo que queramos al archivo destino, mientras que ">" sobrescribe el contenido del archivo destino con lo que escribamos antes. Con "tail -n8" lo que hacemos es seleccionar las 8 últimas lineas de texto del fichero de texto y sobrescribir el siguiente archivo de texto con ">"
tail -n8 curso2024/plasmids.txt > curso2024/plasmids_final.txt

### 10.	Muestra las 4 primeras filas del archivo plasmids_final.txt por pantalla.

        "head" nos permite ver las primeras líneeas del archivo, podemos seleccionar la cantidad de líneas que queremos ver con "-n" (4 en nuestro caso "-n4").
head -n4 curso2024/plasmids_final.txt

Zymomonas mobilis subsp. mobilis ZM4 = ATCC 31821       Bacteria        Pseudomonadota  Alphaproteobacteria     pER79ap39       
- NZ_CP036461.1   CP036461        39.272  42.473  28      -       -       -       33      5
Zymomonas mobilis subsp. mobilis ZM4 = ATCC 31821       Bacteria        Pseudomonadota  Alphaproteobacteria     pZZM401
- CP001881.1      37.066  42.3785 51      -       -       -       53      2
Zymomonas mobilis subsp. mobilis ZM4 = ATCC 31821       Bacteria        Pseudomonadota  Alphaproteobacteria     pZZM402
- CP001882.1      33.915  42.2763 30      -       -       -       33      3
Zymomonas mobilis subsp. mobilis ZM4 = ATCC 31821       Bacteria        Pseudomonadota  Alphaproteobacteria     pZZM403
- CP001883.1      32.801  43.3036 21      -       -       -       25      4

### 11.	¿Cómo se podrían hacer los pasos 9 y 10 en un solo paso? Ayuda: haz uso de los operadores lógicos.

        "El comando & se puede usar para ejecutar varios comandos en una sola línea de código.
Usando &.
tail -n8 curso2024/plasmids.txt > curso2024/plasmids_final.txt & head -n4 curso2024/plasmids_final.txt

### 12.	En el archivo plasmids.txt, ¿cuántos genomas hay de Klebsiella michiganensis? ¿Y de Pantoea agglomerans? Indica cuántas líneas y cuántos caracteres tiene dicho archivo.

        El comando "grep" nos permite buscar patrones dentro de un archivo determinado, junto con "-c" podemos contar un patrón específico de un fichero.
grep -c "Klebsiella michiganensis" curso2024/plasmids.txt
grep -c " Pantoea agglomerans" curso2024/plasmids.txt
225 genomas de Klebsiella michiganensis y 148 genomas de Pantoea agglomerans.

        "wc" nos permite contar líneas, carácteres, incluso tamaño de un archivo, con "-m" podemos centrarnos solo en carácteres y con "-l" solo en líneas.
wc -m curso2024/plasmids.txt
wc -l curso2024/plasmids.txt
7566137 caracteres y 59388 líneas.

### 13.	Crear un Shell script de Bash llamado dormir.sh que ejecute el comando sleep durante 500 segundos.

        El comando "echo" nos permite imprimir una línea de texto en un archivo, si imprimimos "sleep 500s" en un archivo ".sh", cuando se ejecute ese script de bash lo que hará será ejecutar el comando "sleep 500s"
echo sleep 500s > dormir.sh

### 14.	Cambia los permisos del script dormir.sh. Combina la forma de dar/quitar permisos a través del código octal (Ejemplo: 777) y modo archivo (Ejemplo: u+x).

        Se puede quitar y poner servicios para usuarios, grupos de usuarios u otros mediante el comando chmod, chmod funciona con código octal como con el modo archivo.
•	Quita todos los permisos al archivo.: chmod 000 dormir.sh
•	Da permiso de lectura, escritura y ejecución a tu usuario.: chmod u+rwx dormir.sh
•	Da permisos de lectura y escritura a todos los usuarios.: chmod 606 dormir.sh
•	Da solo permisos de ejecución al grupo de usuarios. chmod g+x dormir.sh
•	Quita todos los permisos al grupo y a todos. Solo tu usuario es el que debe tener permisos. chmod go-rwx dormir.sh

### 15.	Ejecuta el Shell script en segundo plano. Comprueba que se está ejecutando. ¿Qué identificador tiene asociado? Elimina el proceso en ejecución.

        Podemos ejecutar un script en segundo plano indicando "&" al final, por lo que despues de ejecutar "dormir.sh" tendremos el control sobre la consola
./dormir.sh &

        "jobs" nos lista los comandos que están activos en este momento, "-l" además nos indica el PID de estos comandos, por lo que podremos trabajar con ellos.
jobs -l
Nos da el identificador o pid 1128, tras el comando jobs -l vemos que se está ejecutando en segundo plano.

        "kill" nos permite acabar con los procesos activos indicando su PID.
Kill 1128

16.	Escribe un Shell script que se llame con un argumento. Ese argumento será el nombre X de una persona, y será usado para mostrar por pantalla: «Soy X, y me gusta el máster de bioinformática»

        Para este ejercicio crearemos un archivo .sh con "nano nombre_del_archivo.sh"
nano argumento.sh

        Dentro del archivo escribiremos lo siguiente:

        Primero especificaremos el intérprete que se usará escribiendo esta primera línea, también llamada shebang, indica que deberá usarse el interprete bash.
#!/bin/bash

        Primero preguntaremos el nombre, en este ejercicio es llamado argumento.
echo "Introduce el argumento"

        Metemos la variable argumento, que nombraremos nosotros.
read argumento

        Escribimos la salida de forma que use la variable argumento que le hemos proporcionado como parte de la frase que nos devolverá.
        Finalmente indicamos la frase final llamando a nuestro argumento con "echo".
echo Soy $argumento, y me gusta el máster de bioinformática.


        Llamamos al interprete bash para comprobar el archivo ".sh".
bash argumento.sh

        Primera frase que nos indica.
Introduce el argumento

        Introducimos nuestro argumento.
José María

        Respuesta.
Soy José María, y me gusta el máster de bioinformática.

17.	Escribe un Shell script que lea como argumento una nota numérica y muestre la correspondiente alfabética. Es decir, N<5 es suspenso, 5<=N<7 es aprobado, 7<=N<9 es notable y 9<=N<=10 es sobresaliente.

        Al igual que en el ejercicio anterior empezamos igual.
nano notas.sh

#!/bin/bash

        Pedimos un argumento numérico.
echo "Introduce un argumento numérico"

        Creamos el argumento que escribiremos nosotros.
read argumento

        Añadimos el variables para cada una de las notas.
Aprobado=5
Notable=7
Sobresaliente=9
Matricula=10

        Creamos nuestro bucle para clasificar la nota entre suspenso, aprobado, notable o sobresaliente. En el bucle "-lt" funciona como menor que, "-le" como mayor que, "-eq" como igual a y "-a" es y, para añadir nuevas condiciones. Si se cumple cualquiera de las condiciones se obtendrá una respuesta.
if [ $argumento -lt $Aprobado ]
then
        echo "Suspenso" 
elif [ $Aprobado -le $argumento -a $argumento -lt $Notable ]
then
        echo "Aprobado" 
elif [ $Notable -le $argumento -a $argumento -lt $Sobresaliente ]
then
        echo "Notable"
elif [ $Sobresaliente -le $argumento -a $argumento -lt $Matricula ]
then
        echo "Sobresaliente"
elif [ $argumento -eq $matricula ]
then
        echo "Matricula"
fi

        Comprobamos nuestro código.
bash notas.sh

        Primera respuesta, además escribimos nuestro argumento.
Introduce el argumento numérico
7

        Respuesta final
Notable

18.	Escribe un Shell script que compruebe si un fichero introducido por el usuario existe. La ruta de dicho fichero se debe definir dentro de una variable llamada FILE al comienzo del script. Primero debes comprobar si el fichero existe, si es así, debes imprimir el mensaje «El fichero X existe» (siendo X la ruta al fichero según FILE); si no existe, debes decir que «el fichero X no existe».

        Empezamos como en los dos últimos ejercicios.
nano file.sh

        En este caso buscamos un archivo en el sistema para indicar si existe o no, asi que indicamos el directorio completo.
#!/bin/bash

echo "Introduce el directorio del archivo a encontrar"

read FILE

        Si es capaz de encontrarlo con el bucle if nos servirá para ver si el archivo existe o no, usamos "-f $FILE" para buscarlo.
if [ -f $FILE ]
then
        echo El fichero $FILE existe.
else
        echo El fichero $FILE no existe.
fi

        Hacemos un bash file.sh e indicamos los archivos a encontrar.

bash file.sh
Introduce el directorio del archivo a encontrar

        En nuestro caso queremos encontrarlo dentro de nuestro directorio.
dormir.sh
El fichero dormir.sh existe
