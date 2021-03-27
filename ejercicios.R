a <- 1+1 
x <-1 
x + a
xas3 <- x + a 
x <- 2
x
pepito <- "amor" 
pepito


variable_numerica <- 3.14
class(variable_numerica) #analiza el tipo de variable

variable_text<-"Hola, Mundo!"
class(variable_text)

variable_verdad <- TRUE #true va con mayus: booleano 
class(variable_verdad) 

variable_n <- "3.14" #comillas = caracter
class(variable_n)

variable_numerica + 6

#a veces es necesario convertir variables string (caracter) a numero

### COMO PUEDO CONVERTIR VARIABLE CHARACTER EN NUMERICA

as.numeric(variable_n)

#hay que asignar y pisar

variable_n<- as.numeric(variable_n)

variable_n + 6

## todo es una suma y una funcion en R
esto_vector <- c(4, 3, 2) #vector numerico de tres elementos
sum(esto_vector) #suma los elementos del vector
mean(esto_vector) #calcula el promedio

esto_vector_character <- c("hola", "soy", "guada")
class(esto_vector_character)

