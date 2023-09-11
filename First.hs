y :: Int
y = x + 1

x :: Int
x = 42

d :: Double
d = 1.23

c :: Char
c = 'c'

s :: String
s = "alma fa"

b :: Bool
b = True

tuple :: (Int, String)
tuple = (42,"alma fa")

l :: [Int]
l = [1..]

isEven :: Int -> Bool
isEven a = mod a 2 == 0

isOdd :: Int -> Bool
isOdd x = mod x 2 /= 0

isOdd' :: Int -> Bool
isOdd' x = not (isEven x)