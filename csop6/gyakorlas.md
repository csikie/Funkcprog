# 1. Forgatás

Definiáld azt a függvényt, amely egy rendezett hármast eggyel jobbra forgat!

```
rotateR :: (Int, Char, Bool) -> (Bool, Int, Char)

rotateR (1, 'a', True) == (True, 1, 'a')
```

# 2. Ternáris logikai diszjunkció

Definiáld a három paraméteres logikai `\/` operátort!

```
or3 :: Bool -> Bool -> Bool -> Bool

or3 True    (3<1)  False == True
or3 (2>4)   False  (0<0) == False
or3 (1<2)   False  True  == True
or3 (odd 3) (0==0) True  == True
```

# 3. Maradékok

Definiáld azt a függvényt, amely eldönti egy számról, hogy `5`-tel osztva legalább annyi maradékot ad-e, mint `3`-mal osztva!

```
leMod3Mod5 :: Int -> Bool

leMod3Mod5 0  == True
leMod3Mod5 1  == True
leMod3Mod5 2  == True
leMod3Mod5 3  == True
leMod3Mod5 4  == True
leMod3Mod5 5  == False
leMod3Mod5 10 == False
```

# 4. Páratlan számok köbei 

Definiáld azt a listát, amely az első `13` nemnegatív páratlan egész köbét tartalmazza!

```
oddCubes13 :: [Int]

(oddCubes13 !! 0) == 1
(oddCubes13 !! 3) == 343
(oddCubes13 !! 9) == 6859
length oddCubes13 == 13
```

# 5. Hosszabb-e

Definiáld azt a függvényt, amely eldönti, hogy az első paraméterében kapott lista hosszabb-e, mint a második paraméterében kapott lista! A függvény működjön minden olyan esetben, amikor legalább az egyik lista nem végtelen!

```
isLonger :: [Int] -> [Int] -> Bool

isLonger []     []     == False
isLonger []     [1..3] == False
isLonger [1..3] [1..2] == True
isLonger [1..]  [1..9] == True
isLonger [1..9] [1..]  == False
```

# 6. Számok összege

Definiáld azt a függvényt, amely egy listából kiválogatja a `3`-mal osztva *páros* maradékot adó számokat, majd összeadja őket!

```
sumOnlyMod3Even :: [Int] -> Int

sumOnlyMod3Even [] == 0
sumOnlyMod3Even [0..9] == 33
sumOnlyMod3Even [1,6,5,13,12] == 23
```

# 7. ,,Kezelhető'' számok 

Egy $n$ természetes számot ,,kezelhetőnek'' (amenable) hívunk, ha
4-gyel osztva 0-át vagy 1-et ad maradékul, azonban 4 nem tartozik
a kezelhető számok közé.

Vizsgáld meg egy természetes számról, hogy ,,kezelhető-e''!

~~~~
isAmenable :: Int -> Bool

isAmenable 0
isAmenable 1
not (isAmenable 2)
not (isAmenable 4)
isAmenable 5
not (isAmenable 6)
isAmenable 8
isAmenable 9
~~~~

# 8. Autókölcsönző

Egy autókölcsönző cég arra készül, hogy az autónyilvántartó
adatbázisát frissítse. Minden autónál számon tartják a rendszámot,
a márkát és a gyártási évet. A frissítés során azt is tárolni akarják,
hogy mely autókat kell rendszeres felülvizsgálatra küldeni. Tapasztalatok
alapján úgy döntenek, hogy a 2000 előtt gyártott Ford és Suzuki autókat
kell felülvizsgálni időről időre.

Írj egy függvényt, mely segít az adatbázis bővítésében! A bemenet
egy autó adatai, a kimenet az adatok kibővített változata egy
logikai mezővel (`True`, ha rendszeres felülvizsgálatra szorul,
`False` különben).

~~~~
upgrade :: (String, String, Int) -> (String, String, Int, Bool)

upgrade ("GBC-123", "Ford", 1999) == ("GBC-123", "Ford", 1999, True)
upgrade ("GBC-123", "Ford", 2000) == ("GBC-123", "Ford", 2000, False)
upgrade ("HAS-581", "BMW", 1998) == ("HAS-581", "BMW", 1998, False)
upgrade ("HAS-581", "BMW", 2000) == ("HAS-581", "BMW", 2000, False)
upgrade ("GHC-222", "Suzuki", 1999) == ("GHC-222", "Suzuki", 1999, True)
upgrade ("GHC-222", "Suzuki", 2000) == ("GHC-222", "Suzuki", 2000, False)
~~~~

# 9. Bash

Unix rendszerek shell programjai a `~/` karakterekkel kezdődő útvonalakat
speciálisan kezelik. A `~` (tilde) karaktert kicseréli a felhasználó saját
mappájának útvonalára.

Írj egy függvényt, mely egy felhasználó saját mappájának útvonala
alapján kibővít egy útvonalt, ha az utóbbi `~/`-rel kezdődik!
Egyébként nem változik az útvonal.

~~~~
expandPath :: String -> String -> String

expandPath "/home/krisz" "fp/vizsga_megoldasok_2019.hs" == "fp/vizsga_megoldasok_2019.hs"
expandPath "/home/krisz" "/root/fp/vizsga_megoldasok_2019.hs" == "/root/fp/vizsga_megoldasok_2019.hs"
expandPath "/home/jenny" "~/elte/tetelsor.doc" == "/home/jenny/elte/tetelsor.doc"
expandPath "/home/jenny" "/elte/tetelsor.doc" == "/elte/tetelsor.doc"
expandPath "/home/jenny" "~elte/progalap.txt" == "~elte/progalap.txt"
~~~~

# 10. Binomiális együttható

Adott $n$ és $k$ egészek ($1 \leq k \leq n$), számold ki
$\binom{n}{k} = \frac{n!}{(n - k)! \times k!}$-t!

~~~~
binom :: Integer -> Integer -> Integer

binom 5 4 == 5
binom 5 1 == 5
binom 6 2 == 15
binom 90 5 == 43949268
~~~~

# 11. Sudoku

Állapítsd meg, hogy egy Sudoku-szerű rejtvény megoldásainak soraiban a
számok összege azonos-e!  Egy sor számok listájaként ábrázolt:
`[Int]`.

~~~~
quasiMagicSquare :: [[Int]] -> Bool

quasiMagicSquare []
quasiMagicSquare [[5,8,3]]
quasiMagicSquare [[5,2,8], [5,5,5], [2,9,4], [1,3,11]]
not (quasiMagicSquare [[5,2,8], [5,5,5], [2,6,4], [1,3,11]])
not (quasiMagicSquare [[5,2,8], [5,5,5], [2,9,4], [1,3,1]])
~~~~

# 12. grep

Adott egy szövegrészlet és sorok egy szöveges fájlban sortöréssel
(`'\n'`) elválasztva.  Sorold fel azokat a sorokat sorszámukkal
együtt, melyek egy megadott szövegrészlettel kezdődnek!

A sorszámozás 1-gyel kezdődjön!

~~~~
simpleGrep :: String -> String -> [(String, Int)]

simpleGrep "haskell" "elso\nmasodik\n\nhaskell lusta\n" == [("haskell lusta",4)]
simpleGrep "python" "elso\nmasodik\n\nhaskell vs python\n" == []
simpleGrep "haskell" "elso\nmasodik\n\ncpp\n" == []
simpleGrep "cpp" "elso\ncpp eloadas\n\ncpp gyakorlat\nvizsga cpp" == [("cpp eloadas",2),("cpp gyakorlat",4)]
simpleGrep "cpp" "" == []
~~~~

# 13. Külügyminisztérium

Lyonesse ország külögyminisztériuma számon tartja, hogy mely
országokból érkezhetnek küldöttségek. Minden országról ismert a
hivatalos nyelve (egyszerűség kedvéért ebből országonként csak egy
van).

Írj függvényt, amely megállapítja, hogy Lyonesse mely országok
küldöttségét nem tudja fogadni, azaz mely országok hivatalos nyelvét
nem beszéli legalább egy tolmács!

~~~~
hasNotTranslator :: [(String, String)] -> [(String, String, String)] -> [String]

hasNotTranslator [("USA", "angol"), ("Franciaorszag", "francia")] [("John", "Smith", "angol")] == ["Franciaorszag"]
hasNotTranslator [("USA", "angol"), ("Franciaorszag", "francia")] [("Jakob", "Jeremy", "francia")] == ["USA"]
hasNotTranslator [("USA", "angol"), ("Franciaorszag", "francia")] [("Jakob", "Jeremy", "francia"), ("James", "Bond", "angol")] == []
~~~~