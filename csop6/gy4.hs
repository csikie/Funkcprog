{-
    Listakifejezések:
                        [elem amit beleteszünk | elem <- lista, feltétel]
-}

divisors :: Int -> [Int]
divisors 0 = [1..]
divisors n = [x | x <- [1..n], mod n x == 0]

powersOfTwo :: [Int]
powersOfTwo = [2^x | x <- [0..]]

isPrime :: Int -> Bool
isPrime 0 = False
isPrime 1 = False
isPrime 2 = True
isPrime n = null [x | x <- [2..((div n 2) + 1)], mod n x == 0]

primes :: [Int]
primes = [x | x <- [1..], isPrime x]

allPositive :: [Int] -> Bool
allPositive l = null [x | x <- l, x <= 0]

dominoes :: [(Int, Int)]
dominoes = [(x,y) | x <- [0..6], y <- [0..x]]

alphabet :: [(Int, Char)]
alphabet = zip [0..] ['a'..'z']

everyThird :: String
everyThird = [y |(x,y) <- alphabet, mod x 3 == 2]

courses = [ ("Programozasi nyelvek II.", [("Horvath", "Istvan", "BDE91E"), ("Fodros", "Aniko", "DDA3KX")]), ("Imperativ programozas", [("Nemeth", "Eniko", "ALX1K0"), ("Horvath", "Istvan", "BDE91E")]), ("Funkcionalis programozas", [("Kiss", "Elemer", "ABCDE6"), ("Nagy", "Jakab", "CDE560")])]

students = [(nev,x,y,kod) | (nev, l) <- courses, (x,y,kod) <- l]