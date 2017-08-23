--Ejercicio 2
--Seung Hoon Lee Kim - A01021720

reversa x = ft x []
    where ft (x:xs) res
            | xs == [] = [x] ++ res
            | otherwise = ft (xs) ([x] ++ res)
            
minMax x = ft x (head x) (head x)
    where ft x minVal maxVal
            | x == [] = (maxVal, minVal)
            | otherwise = ft (tail x) (if head x < minVal then head x else minVal) (if head x > maxVal then head x else maxVal)