module Lesson6 where

foo = if 2 /= 0 then True else False

withoutLastElem :: [a] -> [a]
withoutLastElem [] = []
withoutLastElem (x:xs)
  | length xs /= 1 = x : withoutLastElem xs
  | otherwise = [x]

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

pow :: Int -> Int -> Int
pow 0 0 = 1
pow 0 _ = 0
pow _ 0 = 1 
pow x n = x * (pow x (n-1))

minimum' :: Ord a => [a] -> a
minimum' [x] = x
minimum' (x1:x2:xs) = minimum' (min x1 x2 : xs)

range :: Int -> Int -> [Int]
range x y
  | x == y = [x]
  | x < y = x : range (x+1) y
  | otherwise = x : range (x-1) y

and' :: [Bool] -> Bool
and' [] = True
and' (x:xs) = x && and' xs

or' :: [Bool] -> Bool
or' [] = False
or' (x:xs) = x || or' xs

repeat' :: a -> [a]
repeat' x = x : repeat x