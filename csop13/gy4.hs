import Data.List

{-
    Listakifejezés:
                    [ elem amit vissza adunk | elem <- lista, feltételt ]
                    [ x | x <- [1..5], mod x 2 == 0]
                    [ 2^x | x <- [1..5]]

-}

mountain :: Int -> [Int]
mountain n = [x | x <- [1..n]] ++ [ x | x <- [(n-1),(n-2)..1]]
-- mountain n = [1..n] ++ [(n-1),(n-2)..1]

divisors :: Int -> [Int]
divisors 0 = [1..]
divisors n = [x | x <- [1..n], mod n x == 0]

powersOfTwo :: [Int]
powersOfTwo = [ 2^x | x <- [0..]]

isPrime :: Int -> Bool
isPrime 0 = False
isPrime 1 = False
isPrime 2 = True
isPrime n = null [ x | x <- [2..((div n 2)+1)], mod n x == 0]

primes :: [Int]
primes = [x | x <- [1..], isPrime x]

allPositive :: [Int] -> Bool
allPositive l = null [x | x <- l, x < 0]

alphabet :: [(Int, Char)]
alphabet = zip [0..] ['a'..'z']

everyThird :: String
everyThird = [ y | (x,y) <- alphabet, x `mod` 3 == 2]

courses = [ ("Programozasi nyelvek II.", [("Horvath", "Istvan", "BDE91E"), ("Fodros", "Aniko", "DDA3KX")]), ("Imperativ programozas", [("Nemeth", "Eniko", "ALX1K0"), ("Horvath", "Istvan", "BDE91E")]), ("Funkcionalis programozas", [("Kiss", "Elemer", "ABCDE6"), ("Nagy", "Jakab", "CDE560")])]

students :: String -> [String]
students nev = [kod | (t,l) <- courses, (x,y,kod) <- l, t == nev]

compress :: String -> [(Int, Char)]
compress s = [ (length y, head y) | y <- group s]

decompress :: [(Int, Char)] -> String
decompress l = concat [ replicate a b | (a,b) <- l]

foo 42 = 24
foo x = x+1
foo _ = 42
