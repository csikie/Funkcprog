module Lesson3 where

-- tuple, rendezett n-esek
-- (,) -> konstruktor
-- tobb tipust is kepes tarolni


x :: (Int, Bool, String)
x = (42, True, "Haskell")

fst3 :: (Int, Bool, String) -> Int
fst3 (x, _, _) = x

add :: (Int, Int) -> (Int, Int) -> (Int, Int)
add (x1,y1) (x2, y2) = ((x1*y2+x2*y1), y1*y2)

mul :: (Int, Int) -> (Int, Int) -> (Int, Int)
mul (x1,y1) (x2, y2) = (x1*x2, y1*y2)

modDiv :: Int -> Int -> (Int, Int)
modDiv x y = (mod x y, div x y)

--foo :: Bool
-- foo a b c d = undefined

quadratic :: Double -> Double -> Double -> (Double, Double)
quadratic a b c = ((-b - sqrt(b^2-4*a*c))/(2*a),(-b + sqrt(b^2-4*a*c))/(2*a))

distance :: (Int, Int) -> (Int, Int) -> Double
distance (x1, y1) (x2, y2) = sqrt(fromIntegral((x2-x1)^2+(y2-y1)^2))

-- []
-- konstruktor (:)
-- homogen
--type String = [Char]

headInt :: [Int] -> Int
headInt [] = error "Empty list"
headInt (x:_) = x

{-
    Definiald a XOR fuggvenyt mintaillesztessel.
-}