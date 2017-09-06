--Seung Hoon Lee
--A01021720

data Point = Point Float Float deriving (Show)
--let p = (Point 3.2 5.6)

data Shape = Circle Float | Rectanglep Point Point | Rectangle Float Float Float Float deriving (Show)

area (Circle r) = pi * r * r
area (Rectanglep (Point b h) (Point n j)) = (n-b) * (j-h)
--area (Circle 3.2)
--area (Rectanglep (Point 1 1) (Point 3 5))

data Date = Date Int String Int deriving (Show)
--let fecha = Date 5 "Septiembre" 2017

getDay (Date day _ _) = day
getMes (Date _ month _) = month
getAno (Date _ _ year) = year

data Fecha = Fecha {day::Int, month::String, year::Int} deriving (Show, Read)
--let f = Fecha {day=5, month="Septiembre", year=2017}
--year f
--day f
--month f
--let x = read "Fecha {day=5, month=\"Septiembre\", year=2017}"::Fecha

data Pair key value = Pair key value deriving (Show)
--let z = Pair 5 "ḧola"

data Lista a = Vacia | Concat a (Lista a) deriving (Show)

--data Node X = Empty | Node x (Node x) (Node x)
data Tree x = EmptyTree | Node x (Tree x) (Tree x) deriving (Show)
--let x = Node 8 (Node 6 EmptyTree EmptyTree) EmptyTree
--let x = Node 8 (Node 6 EmptyTree (Node 7 EmptyTree EmptyTree)) EmptyTree

insertn x EmptyTree = Node x EmptyTree EmptyTree
insertn x (Node z le ri)
            | x == z  = Node z le ri 
            | x < z = Node z (insertn x le) ri
            | x > z = Node z le (insertn x ri)