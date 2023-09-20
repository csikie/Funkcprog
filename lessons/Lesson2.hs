module Lesson2 where

-- Kötési Erősség, Asszociativitás, Zárójelezés, szamok konverzioja: round, fromIntegral
x = (1 + 2) * 3
y = 1 + 2 + 3
z = 1 ^ 2 ^ 3
-- curry: inc, double, distance, add

doubledZ = double z

double :: (Int -> Int)
double = (2*)

add :: Int -> Int -> Int
add x y = x + y
-- add x = (x+)
-- add = (+)

-- pattern matching: not, and, or

not' :: Bool -> Bool
not' True = False
not' False = True

and :: Bool -> Bool -> Bool
and True True = True
and _ _ = False
-- and False True = False
-- and True False = False
-- and False False = False

or' :: Bool -> Bool -> Bool
or' False False = False
or' _ _ = True


ad :: Int -> Int -> Int
ad 1 1 = 2
ad 1 2 = 3

c :: Char -> Bool
c 'a' = True

area :: Int -> Int -> Int
area a b = a * b

divides :: Int -> Int  -> Bool
divides a b = mod b a == 0

triangleSides :: Int -> Int -> Int -> Bool
triangleSides a b c = a + b > c && b + c > a && a + c > b