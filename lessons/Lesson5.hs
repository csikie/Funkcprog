module Lesson5 where

import Data.Char

{-
    1. Írj egy függvényt, amely paramétrül vár egy számot, valamint egy listát, eredményül egy tuple listát ad, ahol a tuple első eleme a szám a második pedig a kapott számra emelt hatványa. Használj listakifejezést. foo 2 [1..10] == [(1, 1), (2, 4), (3, 9),...,(10,100)]
    2. Írj egy függvényt, amely paramétrül vár egy listát, majd kiszűri a 3-al és 5-el osztható számokat. foo [1..15] == [15]
    3. Írj egy függvényt, amely paramétrül vár egy stringet (listat), majd kiszűri a nagybetűket. foo "Haskell Haskell" == "HH"
    4. Írj egy függvényt, amely paramétrül vár egy listát, majd kiszűri az 5 karakternél hosszabb szavakat. foo ["alma", "123456"] == ["123456"]
    String == [Char], [String] == [[Char]]
    5. Írj egy függvényt, amely egy 3 elemű tuple-ben visszaadja a pitagoraszi számhármasokat. Ne legyenek ismétlődések! Pl.: [(3,4,5),(4,3,5),...,]
-}

powers :: Int -> [Int] -> [(Int, Int)]
powers n l = [(x, x^n)| x <- l]

foo :: [Int] -> [Int]
foo l = [x | x <- l, mod x 3 == 0 && mod x 5 == 0]

onlyUppers :: String -> String
onlyUppers s = [c | c <- s, isUpper c]

-- [[Char]]
longerThan5 :: [String] -> [String]
longerThan5 l = [s | s <- l, length s > 5]

pythagorean :: [(Int, Int, Int)]
pythagorean = [(x,y,z) | x <- [1..], y <- [1..x], z <- [1..(x^2+y^2)], x^2+y^2==z^2 && x < y]

-- Rekurzio

last' :: [a] -> a
-- (x:[]) = x
-- last' [1,2,3]
-- last' [2,3]
-- last' [3]
-- last' [3] == 3
last' [x] = x
last' (_:xs) = last' xs

-- sum' [1,2,3,4]
-- 1 + sum' [2,3,4]
-- 1 + (2 + sum' [3,4])
-- 1 + (2 + (3 + sum' [4]))
-- 1 + (2 + (3 + 4))
-- 10
sum' :: [Int] -> Int
sum' [] = 0
sum' [x] = x
sum' (x:xs) = x + sum' xs