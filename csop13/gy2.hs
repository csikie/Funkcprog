inc :: Int -> Int
inc n = n+1

even' :: Int -> Bool
even' n = mod n 2 == 0

odd' :: Int -> Bool
--odd' n = mod n 2 == 1 
odd' n = not (even' n)

divides :: Int -> Int -> Bool
divides x y = mod y x == 0

area :: Int -> Int -> Int
area a b = a * b

triangleSides :: Int -> Int -> Int -> Bool
triangleSides a b c = a+b > c && a+c > b && b+c > a

pythagoreanTriple :: Int -> Int -> Int -> Bool
pythagoreanTriple a b c = a^2+b^2==c^2 || a^2+c^2==b^2 || b^2+c^2==a^2

isLeapYear :: Int -> Bool
isLeapYear n = mod n 4 == 0 && mod n 100 /= 0 || mod n 400 == 0

add :: (Int, Int) -> (Int, Int) -> (Int, Int)
add (a, b) (c, d) = (a*d+b*c, b*d)

mul :: (Int, Int) -> (Int, Int) -> (Int, Int)
mul (a, b) (c, d) = (a*c,b*d)

modDiv :: Int -> Int -> (Int, Int)
modDiv a b = (mod a b, div a b)

matches :: (Int, Int) -> (Int, Int) -> Bool
matches (a,b) (c,d) = a == c || a == d || b == c || b == d