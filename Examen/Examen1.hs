--Seung Hoon Lee
--A01021720

--Problema 1
divisibleMin = foldr1 lcm [1..20]

--Problema 2
getPrime = (filter (\x -> (getFactors x) == []) [2..]) !! (10001-1)

getFactors x = [ y | y <- [1..rootX], mod x y == 0, y /=x, y /= 1]
    where rootX = floor ( sqrt (fromIntegral x))
--getPrime2 = (filter isPrime [2..])!!10001

--Problema 3
palindrome =  maximum [ x*y | x <- [100..999], y <- [100..999], reverse (show (x*y)) == show (x*y)]

--Problema 4
data Tree x = EmptyTree | Node x (Tree x ) (Tree x) deriving (Show)

insertTree x EmptyTree = Node x EmptyTree EmptyTree
insertTree x (Node y left right)
   		| x == y = Node x left right
   		| x < y  = Node y (insertTree x left) right
   		| x > y  = Node y left (insertTree x right)

listFromTree EmptyTree = []
listFromTree (Node y left right) = listFromTree left ++ [y] ++ listFromTree right
--listFromTree (Node 5 (Node 3 EmptyTree (Node 4 EmptyTree EmptyTree)) (Node 6 EmptyTree EmptyTree))
