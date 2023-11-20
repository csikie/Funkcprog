module Lesson9 where

-- Folding
--foldr (\x y -> concat ["(",x,"+",y,")"]) "0" (map show [1..10])
--foldl (\x y -> concat ["(",x,"+",y,")"]) "0" (map show [1..10])

fr :: (a -> b -> b) -> b -> [a] -> b
fr _ acc [] = acc
fr f acc (x:xs) = f x (fr f acc xs) 

fl :: (b -> a -> b) -> b -> [a] -> b
fl _ acc [] = acc
fl f acc (x:xs) = fl f (f acc x) xs

sum' :: Num a => [a] -> a
sum' l = foldr (+) 0 l 

product' :: Num a => [a] -> a
product' l = foldr (*) 1 l

and' :: [Bool]{-véges-} -> Bool
and' l = foldr (&&) True l

or' :: [Bool]{-véges-} -> Bool
or' l = foldr (||) False l

insert :: Ord a => [a] -> a -> [a]
insert xs x = takeWhile (<=x) xs ++ [x] ++ dropWhile (<=x) xs

isort :: Ord a => [a] -> [a]
isort l = foldl insert [] l