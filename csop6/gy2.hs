inc :: Int -> Int
inc n = n+1

even' :: Int -> Bool
even' n = mod n 2 == 0

odd' :: Int -> Bool
odd' n = not (even' n)

divides :: Int -> Int -> Bool
divides x y = mod y x == 0

area :: Int -> Int -> Int
area a b = a*b

triangleSides :: Int -> Int -> Int -> Bool
triangleSides a b c = a+b > c && a+c > b && b+c > a

pythagoreanTriple :: Int -> Int -> Int -> Bool
pythagoreanTriple a b c = a^2 + b^2 == c^2 || a^2 + c^2 == b^2 || c^2 + b^2 == a^2

isLeapYear :: Int -> Bool
isLeapYear a = mod a 4 == 0 && mod a 100 /= 0 || mod a 400 == 0

{-
    Int, Bool, Double, Float, String, Char, Integer
    Rendezett n-esek (tuple)

    (Int, Bool, Char, String, Double)

    Mintaillesztés:

    add a b
    add (1,2) (1,4)
    a == (1,2) 

    add (a,b) (c,d)
    add (1,2) (1,4)
    a == 1
-}

add :: (Int, Int) -> (Int, Int) -> (Int, Int)
add (a,b) (c,d) = (a*d+b*c, b*d)

mul :: (Int, Int) -> (Int, Int) -> (Int, Int)
mul (a, b) (c, d) = (a*c, b*d)

matches :: (Int, Int) -> (Int, Int) -> Bool
matches (a, b) (c, d) = a == c || a == d || b == c || b == d