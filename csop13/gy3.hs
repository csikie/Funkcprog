import Data.Char

and' :: Bool -> Bool -> Bool
and' True True = True
and' _ _       = False
{-and' True False = False
and' False True = False
and' False False = False-}

or' :: Bool -> Bool -> Bool
or' False False = False
or' _ _         = True

xor :: Bool -> Bool -> Bool
xor True False = True
xor False True = True
xor _ _        = False

add2 :: Int -> Int -> (Int, Int)
add2 1 1 = (0, 1)
add2 0 1 = (1, 0)
add2 a b = (a, b)

paren :: Char -> Char -> Bool
paren '(' ')' = True
paren '[' ']' = True 
paren '{' '}' = True
paren _ _     = False

calc :: (Int, Char, Int) -> Int
calc (a, '+', b) = a+b
calc (a, '-', b) = a-b
calc (a, '*', b) = a*b
calc (a, '/', b) = div a b

isSpace :: Char -> Bool
isSpace ' ' = True
isSpace _   = False

headInt :: [Int] -> Int
headInt (x:_) = x

tailInt :: [Int] -> [Int]
tailInt (_:xs) = xs

nullInt :: [Int] -> Bool
nullInt [] = True
nullInt _  = False

isSingletonInt :: [Int] -> Bool
isSingletonInt [x] = True
isSingletonInt _   = False

toUpperFirst :: String -> String
toUpperFirst "" = ""
toUpperFirst (x:xs) = toUpper x : xs

isLetter' :: Char -> Bool
isLetter' c = elem c ['A'..'Z'] || elem c ['a'..'z']