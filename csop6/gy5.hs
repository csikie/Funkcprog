fact :: Int -> Int
fact 0 = 1
fact n = n * fact (n-1)

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

pow :: Integer -> Integer -> Integer
pow _ 0 = 1
pow x 1 = x
pow x y = x * pow x (y-1)

{-
    f x
        | mod x 2 == 0 = x
        | otherwise = x+1
-}

range :: Int -> Int -> [Int]
range a b
    | a == b    = [b]
    | a < b = a : range (a+1) b
    | otherwise = a : range (a-1) b

    {-
        range 5 9:
        [5,6,7,8,9]
    -} 

length' :: [Int] -> Int
length' [] = 0
length' (_:xs) = 1 + length' xs

{-
    length' [1,2,3]:
    3  
-}

minimum' :: [Int] -> Int
minimum' [x] = x
{-minimum' (x:xs)
    | x < minimum' xs = x
    | otherwise = minimum' xs-}
minimum' (x:x1:xs) = minimum' ((min x x1) : xs)

everySecond :: String -> String
everySecond "" = ""           -- []    = []
everySecond (x:"") = ""       -- [x]   = []
everySecond (x:y:"") = y:""   -- [x,y] = [y]
everySecond (x:y:ys) = y : everySecond ys -- _

value :: Int -> [(Int, String)] -> String
value _ [] = error "HIBA"
value x ((kulcs,val):xs)
    | x == kulcs = val
    | otherwise  = value x xs

elem' :: (Eq a) => a -> [a] -> Bool
elem' _ [] = False
elem' e (x:xs)
    | e == x = True
    | otherwise = elem' e xs