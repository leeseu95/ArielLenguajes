--Ejercicio 1
--Seung Hoon Lee Kim - A01021720

import Data.Char
--Ejercicio cuales valores de x,y,z para que la ecuacion sea valida.
--[(x,y,z) | x <- [1..100], y <- [1..100], z <- [1..100], z^2 == x^2 + y^2]

--Ejercicio para cuantos #'s negativos hay entre [-1000..1000]
--length([ x | x <-[-1000..1000],  x < 0])

--Ejercicio la suma de todos los numeros impares abajo de 1000000
--sum([x | x <- [0..1000000], mod x 2 == 1])

--Ejercicio cambiar un string a mayusculas
--map toUpper [x | x <- "hola como estas"]

--Ejercicio maximo de una lista
maxlist[] = error "e"
maxlist [e] = e
maxlist (h:t) = max h (maxlist t)

--Factorial Recursivo
factorial(0) = 1
factorial(x) = x * (factorial(x-1))

--Last n numeros
lastt a [] = error "e"
lastt a [e] = e
list = []
a = length([]) - a
(a !! []) ++ list

