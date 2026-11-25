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

10.	Muestra las 4 primeras filas del archivo plasmids_final.txt por pantalla. 
head -n4 curso2024/plasmids_final.txt

Zymomonas mobilis subsp. mobilis ZM4 = ATCC 31821       Bacteria        Pseudomonadota  Alphaproteobacteria     pER79ap39       NZ_CP036461.1   CP036461        39.272  42.473  28      -       -       -       33      5
Zymomonas mobilis subsp. mobilis ZM4 = ATCC 31821       Bacteria        Pseudomonadota  Alphaproteobacteria     pZZM401
-       CP001881.1      37.066  42.3785 51      -       -       -       53      2
Zymomonas mobilis subsp. mobilis ZM4 = ATCC 31821       Bacteria        Pseudomonadota  Alphaproteobacteria     pZZM402
-       CP001882.1      33.915  42.2763 30      -       -       -       33      3
Zymomonas mobilis subsp. mobilis ZM4 = ATCC 31821       Bacteria        Pseudomonadota  Alphaproteobacteria     pZZM403
-       CP001883.1      32.801  43.3036 21      -       -       -       25      4

11.	¿Cómo se podrían hacer los pasos 9 y 10 en un solo paso? Ayuda: haz uso de los operadores lógicos.
Usando &.
tail -n8 curso2024/plasmids.txt > curso2024/plasmids_final.txt & head -n4 curso2024/plasmids_final.txt
12.	En el archivo plasmids.txt, ¿cuántos genomas hay de Klebsiella michiganensis? ¿Y de Pantoea agglomerans? Indica cuántas líneas y cuántos caracteres tiene dicho archivo. 
grep -c "Klebsiella michiganensis" curso2024/plasmids.txt
grep -c " Pantoea agglomerans" curso2024/plasmids.txt
225 genomas de Klebsiella michiganensis y 148 genomas de Pantoea agglomerans.

wc -m curso2024/plasmids.txt
wc -l curso2024/plasmids.txt
7566137 caracteres y 59388 líneas.

