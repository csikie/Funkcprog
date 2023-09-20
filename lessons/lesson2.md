### Definiálj egy függvényt, mely kiszámolja egy téglalap területét két oldalának hosszából! (area)

```
area 6 10 == 60
```

### Definiálj egy függvényt, mely megvizsgálja, hogy egy egész szám oszt-e egy másikat! (divides)

```
divides 2 4
not (divides 4 2)
```

Definiálj egy függvényt, mely megállapítja, megszerkeszthető- e egy háromszög!

```
triangleSides 2 1 2
not (triangleSides 3 4 1)
```

_Tipp: a logikai operátorok: `&&` és `||.` A relációs operátorok: `>` `<` `>=` `<=` `==` és `/=`._

### Definiálj egy függvényt, mely megmondja három egész számról, hogy azok pitagoraszi számhármasok-e!

```
pythagoreanTriple 3 4 5
pythagoreanTriple 5 3 4
not (pythagoreanTriple 2 3 4)
```

_Tipp: a hatványozás operátora a `^`. Például 2 ^ 3. 14._

### Állapítsd meg egy évszámról, hogy szökőév-e!

Egy év szökőévnek számít, ha 4-gyel osztható és 100-zal nem, de a 400-zal oszthatóak ugyancsak szökőévek. Például:

- 1992, 1996, 2012, 2016 szökőévek: oszthatók 4-gyel, de 100-zal nem.
- 1700, 1800, 1900 nem szökőév: osztható 4-gyel, de 100-zal is.
- 1600, 2000 szökőév: osztható 100-zal, de 400-zal is.

```
isLeapYear 1992
isLeapYear 1996
isLeapYear 1600
isLeapYear 2000
not (isLeapYear 1700)
not (isLeapYear 1800)
```
