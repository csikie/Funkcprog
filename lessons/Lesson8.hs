module Lesson8 where

import Data.Char

-- (\n1 (x,y) (x:xs) ... n_n -> n1*2) p1 p2 p3 ... p_n

upperToLower :: String -> String
upperToLower s = map toLower (filter isUpper s)
-- upperToLower = map toLower . filter isUpper

all' :: (a -> Bool) -> [a] -> Bool
all' _ [] = True
all' f (x:xs) = f x && all' f xs

any' :: (a -> Bool) -> [a] -> Bool
any' _ [] = False
any' f (x:xs) = f x || any' f xs

hasLongLines :: String -> Bool
hasLongLines s = any (\x -> length x >= 3) (map words (lines s))
-- hasLongLines = any (\x -> length x >= 3) . map words . lines

elem' :: Eq a => a -> [a] -> Bool
elem' e l = any (\x -> x == e) l
-- elem' e l = any (== e) l

hasAny :: Eq a => [a] -> [a] -> Bool
hasAny l1 l2 = any (\x -> elem x l2) l1
-- hasAny l1 l2 = any (`elem` l2) l1