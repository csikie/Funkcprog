module Lesson12 where

import Data.Char
import Data.Maybe

which :: ([Char], [Char], [Char]) -> Char -> Int
which (a, b, c) x
  | elem x a = 0
  | elem x b = 1
  | elem x c = 2
  | otherwise = -1

matches :: (Int, Int) -> (Int, Int) -> Bool
matches (a, b) (c, d) = a == c || a == d || b == c || b == d

toUpperCase :: String -> String
toUpperCase "" = ""
toUpperCase (x:xs) = toUpper x : xs

swap :: Maybe a -> b -> Maybe b
swap Nothing _ = Nothing
swap (Just _) y = Just y

numeric :: String -> Int
numeric s = sum $ map foo s where
  foo 'r' = 4
  foo 'w' = 2
  foo 'x' = 1
  
pythagoreans :: [(Int, Int, Int)]
pythagoreans = [(a, b, c) | a <- [1..100], b <- [1..100], c <- [1..100], a^2 + b^2 == c^2, a < b]

hasLongWord :: Int -> String -> Bool
hasLongWord n s = any (\x -> length x >= n) (words s)

align :: Int -> String -> String
align n s
  | len < n = replicate (n - len) ' ' ++ s
  | otherwise = s
  where
    len = length s

modify :: (a -> Maybe a) -> [a] -> [a]
modify _ [] = []
modify f (x:xs)
  | isNothing $ f x = xs
  | otherwise = fromJust (f x) : xs

isLonger :: [a] -> Int -> Bool
isLonger [] _ = False
isLonger (_:xs) n
  | n == 0 = True
  | otherwise = isLonger xs (n - 1)

removeAccents :: String -> String
removeAccents "" = ""
removeAccents s = map removeAccents' s 
  where
    removeAccents' c
      | c == 'á' = 'a'
      | c == 'é' = 'e'
      | c == 'í' = 'i'
      | elem c "óöő" = 'o'
      | elem c "úűü" = 'u'
      | otherwise = c

strip :: String -> String
strip = reverse . dropWhile (== ' ') . reverse . dropWhile (== ' ')

data RPS = Rock | Paper | Scissors 
  deriving (Eq, Show)

beats :: RPS -> RPS
beats Paper = Rock
beats Rock = Scissors
beats Scissors = Paper

firstBeats :: [RPS] -> [RPS] -> Int
firstBeats [] [] = 0
firstBeats (x:xs) (y:ys)
  | beats x == y = 1 + firstBeats xs ys
  | otherwise = firstBeats xs ys

data Temperature = Daytime Int | Night Int
  deriving (Eq, Show)

isDaytime :: Temperature -> Bool
isDaytime (Daytime _) = True
isDaytime _ = False

extremes :: [Temperature] -> (Int, Int)
extremes l = (maxDaytime l, minNight l)
  where
    maxDaytime l = maximum [x | Daytime x <- l]
    minNight l = minimum [x | Night x <- l]