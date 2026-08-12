# Análisis Econométrico y Modelamiento 

La finalidad de los códigos mostrados en el archivo que sigue es demostrar las variables que más influyen en la participación laboral femenina.

Para eso se tomo la base de datos de la CASEN 2022, que se pueden encontrar en el siguiente link: https://observatorio.ministeriodesarrollosocial.gob.cl/encuesta-casen-2022

La finalidad es crear un modelo de regresión logístico binario, y usar como variable dependiente una dummy, que identifique si la persona (la mujer en este caso) participa o no participa.

Las variables utilizadas fueron:

- o1: Participación laboral (variable dependiente).
- r1a: Nacionalidad
- region: Variable que representa todas las regiones del país.
- edad: Edad de la persona
- ecivil: Estado civil
- e6a: Nivel educacional
- tot_per_h: número de personas que viven en el hogar

El modelo de regresión, como se dijo antes, es de regresión logística binaria (GLM), utilizando una distribución binomial y función de enlace logit, con el objetivo de analizar la probabilidad de que la variable dependiente o1 tome el valor 1.

Por último, para facilitar la interpretación de resultados, se calculan las marginalidades de cada variable.

Si tienen éxito corriendo los códigos, verán resultados interesantes y lógicos, con una gran mayoría de resultados estadísticamente significativos. 
