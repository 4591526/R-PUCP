# Estadística para lingüistas en R (una introducción)
# Javier Vera Zúñiga
# jveraz@pucp.edu.pe

## https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0129031
# 
# ¿Qué es R?
# Lenguaje de programación especializado en estadística

# Tareas
# instalar R y RStudio
# https://posit.co/download/rstudio-desktop/
# leer capítulo 1 del LIBRO

# Números y strings: objetos básicos de R
## podemos usar R como una calculadora
2 + 3
3*(5 - 1)

# Variables 
## R puede almacenar objetos a través de un nombre: usamos el símbolo <- (a la derecha el objeto; a la izquierda el nombre)
## 1. números

a <- 3
b <- 5
## operaciones básicas entre números!
## EJERCICIO: Sume 1 a la variable a. 

## Primera solución
c <- a + 1

## Segunda solución
a <- a + 1

## EJERCICIO: Defina una variable d que sea el resultado del uso de varias operaciones entre a y b. 

## Solución
d <- a + b * (a - b)

## 2. strings: cadenas de caracteres (se escriben entre "")

# variable 
s <- "gato"
# operación de concatenar
t <- paste(s,s,sep='-')
## EJERCICIO: Concatene su nombre y su apellido. Use como separador el signo "+" 
# contar caracteres
n <- nchar(s)

### Creamos dos variables nombre y apellido 
nombre <- "luisa" 
apellido <- "gomez"

## Concatenamos ambas variables con el signo "+" como separador
n <- paste(nombre, apellido, sep = "+")

## Imprimamos el resultado
cat("Nombre completo:", n, "\n")

## EJERCICIO: Cree una variable con su nombre y otra con su apellido. Calcule el número de caracteres de su nombre completo (nombre + apellido)
número_caracteres <- nchar(n)

## 3. booleanos: valores de verdad
a = T
b = F
c = 2 < 3
d = 3 == 4
# combinación de valores de verdad: and y or
e = 2 < 3 & 3 < 4
f = 2 < 3 | 3 < 4
## EJERCICIO: Determine si una palabra termina en vocal. Use endsWith('**', '*')
## Creamos una variable que contenga una palabra (string)
palabra <- "canción"
## Creamos una lista de las vocales 
vocal <- c("a", "e", "i", "o", "u")
## Verificamos si la palbra termina en vocal
endsWith("palabra", "vocal")
## 4. vectores: listas de números
## lista de números del 1 al 10
vnum <- 1:10
## otra forma de definir listas de números
lista_num <- c(16, 12, 21, 3, 5, 8, 13, 21, 34)
## con length obtenemos el largo de un vector
n <- length(lista_num)
n
## EJERCICIO: Calcule el promedio de los números de lista_num
## Hallar la sumatoria de la lista
s <- sum(lista_num)
s
### Calcular el promedio
p <- n/s
p
# También puede transformarse un string en una lista de strings
texto <- 'tengo dos gatos uno se llama sustantivo y la otra virgencita los gatos han estado en dos países'

# librería
library("stringr")

#dividimos por espacios en blanco
lista_palabras <- str_split(texto, ' ')
lista_palabras
