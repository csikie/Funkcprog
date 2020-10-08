{-
    int fact(int n)
    {
        if (n == 1 || n == 0) return 1;
        return n*fact(n-1);
    }
-}

fact :: Int -> Int
fact 0 = 1
fact n = n * fact (n-1)

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

pow :: Int -> Int -> Int
pow _ 0 = 1
pow n m = n*pow n (m-1)

{- 
    header guard:
    f n
        | mod n 2 == 0 = n
        | otherwise    = n+1 
-}
range :: Int -> Int -> [Int]
range a b
    | a == b    = [b]
    | a < b     = a : range (a+1) b
    | otherwise = a : range (a-1) b

{-
    range 5 9:
    5 : range 6 9
    5 : (6 : range 7 9)
    5 : (6 :( 7 : range 8 9))
    5 : (6 : (7 : (8 : (range 9 9))))
    5 : (6 : (7 : (8 : [9])))
    5 : (6 : (7 : ([8,9])))
    5 : (6 : ([7,8,9]))
    5 : ([6,7,8,9]))
    [5,6,7,8,9]
-}

length' :: [Int] -> Int
length' []     = 0
length' (_:xs) = 1 + length' xs

{-
    length' [1..3]
    1 + (length' [2,3])
    1 + (1 + length' [3])
    1 + (1 + (1 + length' []))
    1 + (1 + (1 + 0))
    1 + (1 + 1)
    1 + 2
    3
-}

minimum' :: [Int] -> Int
minimum' [x]       = x
minimum' (x:x1:xs) = minimum' ((min x x1) : xs)

everySecond :: String -> String
everySecond "" = ""
everySecond [x] = ""
everySecond (x:y:xs) = y : everySecond xs

value :: Int -> [(Int, String)] -> String
value _ [] = error "HIBAÜZENET"
value x ((x1,val):ys)
    | x == x1 = val
    | otherwise = value x ys