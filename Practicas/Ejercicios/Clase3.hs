--Seung Hoon Lee
--A01021720

data Tree x = EmptyTree | Node x (Tree x) (Tree x) deriving (Show)

insertn x EmptyTree = Node x EmptyTree EmptyTree
insertn x (Node z le ri)
            | x == z  = Node z le ri 
            | x < z = Node z (insertn x le) ri
            | x > z = Node z le (insertn x ri)

treeListInsert (f:l) = ft f l EmptyTree
    where ft (val) (h:t) (currentTree)
            | t == [] = insertn h (insertn val currentTree)
            | otherwise = ft h t (insertn val currentTree)