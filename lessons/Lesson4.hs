module Lesson4 where

import Data.List
import Data.Char
-- Prelude <- ez toltodik be a ghci inditasakor

{-
1. Definiáld az isSingleton függvényt, mely megállapítja, hogy egy lista pontosan egy elemet tartalmaz-e!
2. Definiálj egy toUpperFirst függvényt, mely egy szöveg első betűjét nagybetűre cseréli! -- words, unwords, listakifejezes, toUpper
Üres szöveget változatlanul adja vissza a függvény!
3. Definiálj egy függvényt, mely egy növekvő majd csökkenő számlistát állít elő! -- (..), (++)
-- foo 5 == [1,2,3,4,5,4,3,2,1]
4. Definiálj egy függvényt, mely előállítja egy szám osztóit! 0 osztója az összes természetes szám. -- listakifejezes
5. Definiálj egy konstanst, mely kettő hatványainak végtelen listáját tárolja! -- (..) || listakifejezes
6. Definiálj egy isPrime függvényt, mely megvizsgálja egy természetes számról, hogy prím-e! -- listakifejezes
7. Definiálj egy primes konstanst, amely prímek végtelen listáját tárolja! isPrime, listakifejezes
8. Vizsgáld meg, hogy egy lista csak pozitív számokat tartalmaz-e! Érdemes bevetni a null függvényt a hatékonyság miatt.
9. Állítsd elő azt a listát, amely párokként tartalmazza az összes dominót!
-}

-- []
-- konstruktor (:), (++)
-- homogen
-- [ x | x <- [1..](, y <- [1..10], ...), mod x 2 == 0 ] <== lista kifejezes
-- head, tail, null, length!!!, elem

head' :: [a] -> a
head' (x:_) = x

tail' :: [b] -> [b]
tail' (_:x) = x

-- [] -> ures lista
-- (x:xs) -> legalabb 1 elemu lista
-- (x:[]) (([x])) -> pontosab 1 elemu
-- (x:_:(z,y):xs) -> legalabb 3 elemu tuple lista
 
isSingleton :: [a] -> Bool
isSingleton [_] = True
--isSingleton (_:[]) = True
isSingleton _ = False


-- "alma fa" == "Alma Fa" && "alma" == "Alma" && "" == ""
toUpperFirst :: String -> String
toUpperFirst s = unwords [toUpper x : xs | (x:xs) <- words s]
-- toUpperFirst s = unwords [toUpper (head x) : tail x | x <- words s]
 