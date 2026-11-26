### En esta actividad se realizarán una serie de ejercicios entorno a la representación gráfica de los resultados obtenidos a partir de una base de datos de Excel (archivo .csv). Dicho dataset contiene información de la expresión de 40 genes en 65 pacientes con cáncer de mama, cada uno con distintos tipos de tratamiento y características tumorales. Además, se hará una interpretación de los resultados tras la representación de los mismos.

### Para realizar estos ejercicios se usarán las siguentes librerías: ggplot2, patchwork, pheatmap, ComplexHeatmap, dplyr. Se usará el siguiente código para llamarlas:

    En el caso de que las librerías no estén instaladas anteriormente se usará el siguiente código, el cual no tiene ninguna repercusión si las librerías han sido instaladas con anterioridad. 
    
    "requireNamespace" sirve para cargar o descargar los nombres de los objetos, o en este caso librerías. Si la librería no se encuentra se instalará el paquete o librería correspondiente.

    "ggplot2" nos permite realizar representaciones gráficas de los datos con amplia variedad de opciones.

if (!requireNamespace("ggplot2", quietly = TRUE))
  install.packages("ggplot2")
  
    "patchwork" nos permite juntar varios gráficos hechos mediante la librería "ggplot2" y juntarlos para mostrar diferencias entre los diferentes gráficos.

if (!requireNamespace("patchwork", quietly = TRUE))
  install.packages("patchwork")

    "pheatmap" nos permite hacer heatmaps.

if (!requireNamespace("pheatmap", quietly = TRUE))
  install.packages("pheatmap")

    Entre las librerías de "BiocManager", nosotros usaremos "ComplexHeatmap", el cual también nos permite hacer heatmaps de forma diferente a como se nos mostraría con la librería "pheatmap".

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
  BiocManager::install("ComplexHeatmap")

    "dplyr" por otra parte nos permite trabajar con dataframes para extraer los datos que buscamos.

if (!requireNamespace("dplyr", quietly = TRUE))
  install.packages("dplyr")

    Una vez instalados los diferentes paquetes y librerías, las llamaremos para usarlas con el comando "library".

library(ggplot2)
library(patchwork)
library(pheatmap)
library(ComplexHeatmap)
library(dplyr)

    Para trabajar con nuestro dataset primero debemos movernos al directorio de trabajo donde está el dataset, esto se hace con "setwd"

setwd("C:/Users/chema/Desktop/Master bioinformatica/Estadística y R para Ciencias de la Salud/mubio02_act1 (2)/")

    Luego podemos leer nuestro dataset .csv con "read.csv", el separador es por defecto una coma, por lo que con otro tipo de csv tendremos que tener en cuenta que tipo de separador se usa. Se meterá el dataset en la variable "df".

df <- read.csv("MUBioinfo_dataset_genes_oct2025.csv")

### 1.	Ten en cuenta los siguientes genes: "AQ_ESR1", "AQ_HER2", "AQ_BRCA1", "AQ_BRCA2", "AQ_MKI67", "AQ_GATA3", "AQ_FOXA1", "AQ_CCND1", "AQ_CDH1", "AQ_TP53":
### •	Para responder este ejercicio, apóyate en un diagrama de cajas en el que visualices por cada expresión de gen 2 cajas: 1 para trata y otro para tratB.

    Para este ejercicio usaremos el dataset y haremos diagramas de cajas de cada uno de los genes, en nuestro caso en el eje x tendremos en cuenta el tratamiento, que será fármaco y placebo, y se diferenciará en función de estos. A cada uno de las opciones que queramos añadir al "ggplot" se le pondrá un símbolo de suma, ya que de normal se hace un gráfico de puntos.

PA <- ggplot(df, aes(x = tratamiento, y = AQ_esr1, fill = tratamiento)) + 
  
    Seleccionamos que queremos hacer un diagrama de cajas con "geom_boxplot", y pintaremos los outliers de negro y les damos un tamaño con "outlier.size" y "outlier.color" respectivamente.

  geom_boxplot(outlier.color = "black", outlier.size = 1) + 
  
    Podemos nombrar tanto el título del gráfico como los ejes con "labs".
  
  labs(title = "Expresión génica del gen AQ_ESR1", 
       x = "Tratamiento", y="Expresión génica") +
  
     Añadimos una escala continua al eje Y en todos los gráficos con scale_y_continuous, ya que el máximo será 1 y el mínimo 0.
  
  scale_y_continuous(breaks = c(0,0.5,1)) + 
  
    Le damos un estilo sencillo "theme_minimal"
  
  theme_minimal() +
  
    Ajustamos el tamaño de letra del título con "theme(title = element_text", ejes x e y con "theme(axis.title = element_text", y también retiramos la leyenda con "legend.position = "none"". En una imagen donde tenemos que juntar varios gráficos la leyenda solo nos quita espacio.
  
  theme(axis.title = element_text(size = 6,
                                  color = "black",
                                  face = "bold"),
        title = element_text(size = 6,
                             color = "black",
                             face = "bold"),
        legend.position = "none") +
        
    Pintamos de forma manual ambos resultados (placebo y fármaco) con "scale_color_manual", los "values" deben ser una lista de colores.

  scale_color_manual(values = c("pink", "blue")) + 
  
    Añadimos una línea visual al límite de cada bigote con "stat_boxplot(geom = "errorbar"".
  
  stat_boxplot(geom = "errorbar", width = 0.25) 

    Para ver el resultado de todo el código, puesto que todo esto lo hemos guardado en la variable "PA", solo tenemos que escribir "PA" (sin comillas) en el terminal y pulsar Enter.

    Haremos la misma representación gráfica para cada uno de los genes.

PB <- ggplot(df, aes(x = tratamiento, y = AQ_her2, fill = tratamiento)) +
  geom_boxplot(outlier.color = "black", outlier.size = 1) +
  labs(title = "Expresión génica del gen AQ_HER2", x = "Tratamiento", y="Expresión génica") +
  theme_minimal() +
  scale_y_continuous(breaks = c(0,0.5,1)) +
  theme(axis.title = element_text(size = 6,
                                  color = "black",
                                  face = "bold"),
        title = element_text(size = 6,
                             color = "black",
                             face = "bold"),,
        legend.position = "none") +
  scale_color_manual(values = c("pink", "blue")) +
  stat_boxplot(geom = "errorbar", width = 0.25)
  
PC <- ggplot(df, aes(x = tratamiento, y = AQ_brca1, fill = tratamiento)) +
  geom_boxplot(outlier.color = "black", outlier.size = 1) +
  labs(title = "Expresión génica del gen AQ_BRCA1", x = "Tratamiento", y="Expresión génica") +
  scale_y_continuous(breaks = c(0,0.5,1)) +
  theme_minimal() +
  theme(axis.title = element_text(size = 6,
                                  color = "black",
                                  face = "bold"),
        title = element_text(size = 6,
                             color = "black",
                             face = "bold"),,
        legend.position = "none") +
  scale_color_manual(values = c("pink", "blue")) +
  stat_boxplot(geom = "errorbar", width = 0.25)
  
PD <- ggplot(df, aes(x = tratamiento, y = AQ_brca2, fill = tratamiento)) +
  geom_boxplot(outlier.color = "black", outlier.size = 1) +
  labs(title = "Expresión génica del gen AQ_BRCA2", x = "Tratamiento", y="Expresión génica") +
  scale_y_continuous(breaks = c(0,0.5,1)) +
  theme_minimal() +
  theme(axis.title = element_text(size = 6,
                                  color = "black",
                                  face = "bold"),
        title = element_text(size = 6,
                             color = "black",
                             face = "bold"),,
        legend.position = "none") +
  scale_color_manual(values = c("pink", "blue")) +
  stat_boxplot(geom = "errorbar", width = 0.25)
  
PE <- ggplot(df, aes(x = tratamiento, y = AQ_mki67, fill = tratamiento)) +
  geom_boxplot(outlier.color = "black", outlier.size = 1) +
  labs(title = "Expresión génica del gen AQ_MKI67", x = "Tratamiento", y="Expresión génica") +
  scale_y_continuous(breaks = c(0,0.5,1)) +
  theme_minimal() +
  theme(axis.title = element_text(size = 6,
                                  color = "black",
                                  face = "bold"),
        title = element_text(size = 6,
                             color = "black",
                             face = "bold"),,
        legend.position = "none") +
  scale_color_manual(values = c("pink", "blue")) +
  stat_boxplot(geom = "errorbar", width = 0.25)
  
PF <- ggplot(df, aes(x = tratamiento, y = AQ_gata3, fill = tratamiento)) +
  geom_boxplot(outlier.color = "black", outlier.size = 1) +
  labs(title = "Expresión génica del gen AQ_GATA3", x = "Tratamiento", y="Expresión génica") +
  scale_y_continuous(breaks = c(0,0.5,1)) +
  theme_minimal() +
  theme(axis.title = element_text(size = 6,
                                  color = "black",
                                  face = "bold"),
        title = element_text(size = 6,
                             color = "black",
                             face = "bold"),,
        legend.position = "none") +
  scale_color_manual(values = c("pink", "blue")) +
  stat_boxplot(geom = "errorbar", width = 0.25)
  
PG <- ggplot(df, aes(x = tratamiento, y = AQ_foxa1, fill = tratamiento)) +
  geom_boxplot(outlier.color = "black", outlier.size = 1) +
  labs(title = "Expresión génica del gen AQ_FOXA1", x = "Tratamiento", y="Expresión génica") +
  scale_y_continuous(breaks = c(0,0.5,1)) +
  theme_minimal() +
  theme(axis.title = element_text(size = 6,
                                  color = "black",
                                  face = "bold"),
        title = element_text(size = 6,
                             color = "black",
                             face = "bold"),,
        legend.position = "none") +
  scale_color_manual(values = c("pink", "blue")) +
  stat_boxplot(geom = "errorbar", width = 0.25)
  
PH <- ggplot(df, aes(x = tratamiento, y = AQ_ccnd1, fill = tratamiento)) +
  geom_boxplot(outlier.color = "black", outlier.size = 1) +
  labs(title = "Expresión génica del gen AQ_CCND1", x = "Tratamiento", y="Expresión génica") +
  scale_y_continuous(breaks = c(0,0.5,1)) +
  theme_minimal() +
  theme(axis.title = element_text(size = 6,
                                  color = "black",
                                  face = "bold"),
        title = element_text(size = 6,
                             color = "black",
                             face = "bold"),,
        legend.position = "none") +
  scale_color_manual(values = c("pink", "blue")) +
  stat_boxplot(geom = "errorbar", width = 0.25)
  
PI <- ggplot(df, aes(x = tratamiento, y = AQ_cdh1, fill = tratamiento)) +
  geom_boxplot(outlier.color = "black", outlier.size = 1) +
  labs(title = "Expresión génica del gen AQ_CDH1", x = "Tratamiento", y="Expresión génica") +
  scale_y_continuous(breaks = c(0,0.5,1)) +
  theme_minimal() +
  theme(axis.title = element_text(size = 6,
                                  color = "black",
                                  face = "bold"),
        title = element_text(size = 6,
                             color = "black",
                             face = "bold"),,
        legend.position = "none") +
  scale_color_manual(values = c("pink", "blue")) +
  stat_boxplot(geom = "errorbar", width = 0.25)
  
PJ <- ggplot(df, aes(x = tratamiento, y = AQ_tp53, fill = tratamiento)) +
  geom_boxplot(outlier.color = "black", outlier.size = 1) +
  labs(title = "Expresión génica del gen AQ_TP53", x = "Tratamiento", y="Expresión génica") +
  scale_y_continuous(breaks = c(0,0.5,1)) +
  theme_minimal() +
  theme(axis.title = element_text(size = 6,
                                  color = "black",
                                  face = "bold"),
        title = element_text(size = 6,
                             color = "black",
                             face = "bold"),
        axis.text.x = element_text(size = 6,
                                   color = "black",
                                   face = "bold"),
        axis.text.y = element_text(size = 6,
                                   color = "black",
                                   face = "bold"),
        legend.position = "none") +
  scale_color_manual(values = c("pink", "blue")) +
  stat_boxplot(geom = "errorbar", width = 0.25)

    Una vez tengamos los diferentes gráficos los unimos todos en uno solo con la librería "patchwork". Podemos configurar como queremos que se vean nuestros gráficos con "plot_layout".

PlotS <- PA + PB + PC + PD + PE + PF + PG + PH + PI + PJ + plot_layout(nrow =4, ncol=3)

    Por último llamamos a la variable PlotS para ver el resultado.
    
PlotS

<img src=https://github.com/JoseM-SevAv/Portfolio-de-Jos-Mar-a-Sevilla-Avenda-o/blob/main/images/expresion%20genica.png>
    
