library(tidyverse)

#### Ejercicio 1: crear funcion de verosim ####
# con el ejemplo de numéro de errores

crear_log_verosim <- function(n, n_err){
  # n es tamaño de muestra 
  # n_err el número de errores detectados (datos)
  n_corr <- n - n_err
  log_verosim <- function(p){
    n_err * log(p) + n_corr * log(1-p)
  }
}

## Pregunta: ¿qué devuelve esta función?

crear_log_verosim(100, 50)

######################
## Utiliza esta función para construir la función
## de log verosimilitud cuando los datos observados
## son n = 500, y le número de errores observados es 121

## aquí tu codigo
##



## Pregunta: de qué parámetros depende esta ultima función
## ¿Dónde quedaron los datos observados?

#######################
# Usa max verosimilitud para estimar el porcentaje de errores
# en la tabla de datos de donde se sacó la muestra
# usa la función optimize

# rellena
# optimize( , c(0, 1), maximum = TRUE)


########################
# grafica la funcion de verosimilitud para p entre cero y uno

grafica_tbl <- tibble(p = seq(0, 1, 0.001))
# ggplot()

#############################
#Repite el ejercicio anterior si observas 317 errores

#### Ejercicio 2: normal ####

## Estimación de parámetros de una distribución normal
# 1. Considera una muestra de variables aleatorias Gaussianas 
# Escribe la verosimilitud para una muestra de tamaño n y después escribe la 
# función de log-verosimilitud.


## 2. Generamos una mu y una sigma al azar para que 
## no sepamos cuáles son

#fijamos semilla
set.seed(1234)
m <- runif(1, 5, 10) # media entre 5 y 10
desv_est <- runif(1, 0, 2) # desviación estándar entre 0 y 2

#simulamos una muestra con la que trabajaremos.
x <- rnorm(150, mean = m, sd = desv_est)

#########################################
## 2. Checa tus datos usando un histograma

ggplot()

## Primero estima a ojo por dónde creen que esté
## la media y la desviación estándar

###########################
## 3. Estima la media y la desviación estándar usando estimador plug-in

media_est <- 
de_est <-
  
###############
## 4. Escribe una función que regrese la función de verosimilitud dado una
# muestra (revisa las notas en la sección de más de un parámetro)

## 5. Usa la función del paso anterior para crear una función de verosimilitud
# que dependerá de mu y sigma

## 6.Optimiza y compara tus estimaciones con las del paso 3


## Boostrap paramétrico
#### Ejercicio 2 ######

## Ahora calculamos error estándar para el ejercicio de número de errores
## usando bootstrap paramétrico

## Paso 1 y 2: argumenta que el paso 1 y 2 ya lo hicimos arriba
## Pregunta: ¿cuál es tu estimador puntual?

############################
# Paso 3: la siguiente función simula bajo nuestro modelo teórico
sim_modelo <- function(p, n){
  # rellena: qué es p y n
  muestra <- rbinom(n, 1, p)
  n_errores <- sum(muestra)
  n_errores
}

## investiga la función rbinom, ¿qué hace?
## calcula una simulación de estos datos, con alguna p y n fijas

##############################
## Paso 4: Enchufa tu estimador puntual de max verosimilitud
## y simula 3 mil observaciones

## tu codigo aqui



#############################
## Paso 5: calcula el estimador de max verosimilitud para
## cada simulación

## tu codigo aqui
encontrar_mv <- function(n, n_err){
  # log_ver <- #########
  # res <- optimize( , c(0, 1) , maximum = TRUE)
  
}


## verifica que los valores que generaste son proporciones entre
## 0 y 1


#############################
## Paso 6: resumen

## grafica un histograma de la distribución bootstrap


## calcula el error estándar de tu estimacion de max verosimilitud



#####################################################################


