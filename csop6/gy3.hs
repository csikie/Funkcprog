import Data.Char

and' :: Bool -> Bool -> Bool
and' True True = True
{-and' False True = False
and' True False = False
and' False False = False-}
and' _ _       = False

or' :: Bool -> Bool -> Bool
or' False False = False
or' _ _         = True

xor :: Bool -> Bool -> Bool
xor True False = True
xor False True = True
xor _ _        = False

add2 :: Int -> Int -> (Int, Int)
add2 1 1 = (0, 1)
--add2 0 1 = (1, 0)
--add2 1 0 = (1, 0)
add2 0 0 = (0, 0)
add2 _ _ = (1, 0)

paren :: Char -> Char -> Bool
paren '(' ')' = True
paren '[' ']' = True
paren '{' '}' = True
paren _ _     = False

calc :: (Int, Char, Int) -> Int
calc (a, '+', b) = a+b
calc (a, '*', b) = a*b
calc (a, '-', b) = a-b
calc (a, '/', b) = div a b

isSpace :: Char -> Bool
isSpace ' ' = True
isSpace _   = False

headInt :: [Int] -> Int
headInt (x:_) = x
-- headInt [1,2]
-- x == 1 , xs == [2]
-- [(Int, Int)] --> ((a,b):xs)

tailInt :: [Int] -> [Int]
tailInt (x:xs) = xs

nullInt :: [Int] -> Bool
nullInt [] = True
nullInt _  = False

isSingletonInt :: [Int] -> Bool
isSingletonInt [x] = True  -- x:[] == [x]
isSingletonInt _   = False

toUpperFirst :: String -> String -- [Char]
toUpperFirst ""     = ""
toUpperFirst (x:xs) = toUpper x : xs

isLetter' :: Char -> Bool
isLetter' c = elem c (['a'..'z'] ++ ['A'..'Z'])