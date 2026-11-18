Si una población está en equilibrio Hardy-Weinberg, se cumplirá la formula $(p+q)^2=1$, donde p y q son dos alelos diferentes. Un homocigótico para uno de los dos alelos será considerado $p^2$ o $q^2$, mientras que un heterocigótico será $2pq$.

La suma de $p^2 + 2pq + q^2$ debe dar 1 para que este equilibrio se cumpla, esto engloba los homocigóticos AA y aa, y los heterocigóticos Aa. Además se cumple que $p+q=1$.

En el caso de que tengamos una población con distintos genotipos, para comprobar si la población cumple el equilibrio Hardy Weinberg se realizará una prueba de $\chi^2$ de Pearson. Para ello debemos calcular las frecuencias alélicas observadas y esperadas.

Primero se calculará la frecuencia genotípica observada. Se calculará a partir del número de individuos que posean un genotipo específico en la población.

$Frecuencia \ genotípica \ del \ genotipo \ AA=Número \ de \ individuos \ con \ genotipo \ AA/Total \ de \ individuos$
$Frecuencia \ genotípica \ del \ genotipo \ Aa=Número \ de \ individuos \ con \ genotipo \ Aa/Total \ de \ individuos$
$Frecuencia \ genotípica \ del \ genotipo \ aa=Número \ de \ individuos \ con \ genotipo \ aa/Total \ de \ individuos$

A partir de aquí se pueden calcular las frecuencias alélicas observadas.

$Frecuencia \ alélica \ A=(2*(Número \ de \ individuos \ AA)+Número \ de \ individuos \ Aa)/(2*(Total \ de \ individuos))$
$Frecuencia \ alélica \ a=(2*(Número \ de \ individuos \ aa)+Número \ de \ individuos \ Aa)/(2*(Total \ de \ individuos))$

Con estas frecuencias alélicas obtenemos las frecuencias genotípicas esperadas.

$Frecuencia \ genotípica \ esperada \ del \ genotipo \ AA=Frecuencia \ alélica \ del \ alelo \ A^2$
$Frecuencia \ genotípica \ esperada \ del \ genotipo \ Aa=2*(Frecuencia \ alélica \ del \ alelo \ a*Frecuencia \ alélica \ del \ alelo \ A)$
$Frecuencia \ genotípica \ esperada \ del \ genotipo \ aa=Frecuencia \ alélica \ del \ alelo \ a^2$

A partir de aquí, podemos calcular el $\chi^2$ con el que veremos si la población está en equilibrio Hardy Weinberg o no.

$\chi^2 = \Sigma(individuos \ observados−individuos \ esperados)^2/(individuos \ esperados)^2$

O lo que es lo mismo:

$\chi^2 = \Sigma(individuos \ observados−(total \ de \ individuos∗frecuencia \ genotípica \ esperada))^2/(total \ de \ individuos∗frecuencia \ genotípica \ esperada)^2$

Se hará el sumatorio de cada una de las variantes genotípicas AA, Aa y aa.

Una vez hemos calculado el $\chi^2$ de la población, nos quedaría calcular los grados de libertad de los que disponemos para calcular nuestro p-valor, el cual nos permitirá aceptar o rechazar la hipótesis nula de que la población se encuentra en equilibrio Hardy-Weinberg. Para calcular los grados de libertad contamos con 3 parámetros (AA,Aa,aa) y un parámetro estimado, puesto que la frecuencia alélica de “a” se puede calcular mediante 1 - A.

$Grados \ de \ libertad = Número \ de \ clases \ de \ datos \ (3)- Número \ de\ parámetros \ estimados \ (1)-1$

$Frecuencia \ genotípica \ esperada \ del \ genotipo \ AA= (Frecuencia \ alélica \ del \ alelo \ A)^2$
$$Frecuencia genotípica esperada del genotipo Aa=2*Frecuencia alélica del alelo A*Frecuencia alélica del alelo a$$
$$Frecuencia genotípica esperada del genotipo aa= (Frecuencia alélica del alelo a)^2$$
