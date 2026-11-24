Para este trabajo usamos la página de [ensembl](https://www.ensembl.org/), y la herramienta [VEP](https://www.ensembl.org/tools/vep) (Variant Effect Prediction) (la cual ha sido actualizada recientemente), para ello seleccionamos el genoma sobre el cual queremos hacer la anotación de las variantes, en nuestro caso selecionamos la opción de HumanGRCh38.p14.

Para este trabajo cargaremos los archivos .vcf en la opción de variantes, también podemos escribir manualmente los parámetros de la variante:

<img src="https://github.com/JoseM-SevAv/Portfolio-de-Jos-Mar-a-Sevilla-Avenda-o/blob/main/images/ensembl_vep.png">

Además seleccionamos las diferentes opciones sobre las que trabajar, como "variant representation: HGVS" para la representación de variantes o "Allele frequences: gnomAD" para identificar la frecuencia alélica de la variante a reconocer. Las opciones necesarias serán diferentes en función de lo que se espere de cada variante.

Por medio de las nomenclaturas en c (ejemplo: ENST00000299766.5:c.815C>A) y en p (ejemplo: ENSP00000299766.3:p.Pro272His) que nos muestra la página de ensembl podemos ver cual ha sido el efecto de la variante a nivel genómico y proteico. 

En el caso de que se haya creado un codón de terminación prematuro se puede ver la secuencia proteica en [biomodel](https://biomodel.uah.es/lab/cibertorio/analysis/trans.htm) a partir de la secuencia genómica truncada. Además se puede hacer un alineamiento de secuencias ortólogas mediante [Clustal Omega](https://www.ebi.ac.uk/jdispatcher/msa/clustalo) y analizar los posibles cambios en [uniprot](https://www.uniprot.org/) para ver el dominio proteico afectado.
