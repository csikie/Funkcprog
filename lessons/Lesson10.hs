module Lesson10 where

type String' = [Char]
type Point = (Int, Int)

p :: Point
p = (0,0)

newtype Vector = V Point
  deriving (Show, Eq)

data Days = Mon | Tue | Wen | Thu | Fri | Sat | Sun
  deriving (Eq, Enum)

data Time = T Int Int
  deriving Show

instance Show Days where
  show :: Days -> String
  show Mon = "Hétfő"
  show Tue = "Kedd"
  show Wen = "Szerda"
  show Thu = "Csütörtök"
  show Fri = "Péntek"
  show Sat = "Szombat"
  show Sun = "Vasárnap"

eqDays :: Days -> Days -> Bool
eqDays Mon Mon = True
eqDays Tue Tue = True
eqDays _ _ = False

eqTime :: Time -> Time -> Bool
eqTime (T h1 m1) (T h2 m2) = h1 == h2 && m1 == m2

time :: Int -> Int -> Time
time h m
  | h > 23 || h < 0 = error ("invalid hour: " ++ show h) 
  | m > 59 || m < 0 = error ("invalid minute: " ++ show m)
  | otherwise = T h m

data USTime = AM Int Int | PM Int Int
  deriving (Show, Eq)

-- foo (AM h m) = undefined
-- foo (PM h m) = undefined
-- foo t = undefined
-- foo format h m <- nem helyes