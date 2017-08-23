--Ejercicio 2
--Seung Hoon Lee Kim - A01021720

import Data.Char
factorialTail x = ft (x-1) x
    where ft n res
            | n == 0 = res 
            | otherwise = ft (n-1) (res*n)

mayor x y
    | x > y = x
    | otherwise = y