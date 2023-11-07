module Lesson7 where

langAndRegion :: String -> (String, String)
langAndRegion (x1:x2:'-':xs) = (x1:[x2], xs)

zip' :: [a] -> [b] -> [(a, b)]
zip' [] _ = []
zip' _ [] = []
zip' (x:xs) (y:ys) = (x, y) : zip' xs ys

--unzip' :: [(a, b)] -> ([a], [b])
--unzip' l = ([x | (x,_) <- l], [y | (_,y) <- l])

unzip' :: [(a, b)] -> ([a], [b])
unzip' [] = ([], [])
unzip' ((a, b):xs) = (a:as, b:bs)
  where
    (as, bs) = unzip' xs

-- (as, bs) = unzip' xs Magyarázat:
-- A mintaillesztés segítségével, felhasználjuk az unzip' xs eredményét ami két lista 
-- as és bs (kezdetben üresek). Ez által elérve, hogy az aktuális rekúrzív hívás eredménye 
-- úgy épül fel, hogy x-et az xs és y-t az ys elé szúrja be.


empty :: String -> [Int]
empty s = [x | (x,y) <- zipped, y == ""]
  where
    zipped = zip [1..] (lines s)

--- Magasabb rendu fuggvenyek

map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs
-- map' f l = [f x | x <- l]

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
  | p x = x : filter' p xs
  | otherwise = filter' p xs
-- filter' p l = [x | x <- l, p x]