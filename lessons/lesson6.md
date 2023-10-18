### Számold ki az n. Fibonacci-számot!

_fib n = fib (n-1) + fib (n-2)_

```
fib 0 == 0
fib 1 == 1
fib 2 == 1
fib 4 == 3
fib 5 == 5
```

### Definiáld a hatvány függvényt! Haskellben ez a ˆ operátor, nevezzük el a sajátunkat pow-nak. Definiáld rekurzívan, ne használd a ˆ-t!

```
pow 0 2 == 0
pow 2 0 == 1
pow 2 1 == 2
pow 3 2 == 9
```

### Definiáld újra a minimum függvényt, mely megkeresi egy lista legkisebb elemét!

_segitseg: min fg_

```
  minimum' [0] == 0
  minimum' [9, 3, 4, 1, 10] == 1
```

### Módosítsd a range függvényt, hogy csökkenő sorozatot is elő tudjon állítani, ha a második paraméter kisebb, mint az első!

```
  range 5 9 == [5, 6, 7, 8, 9]
  range 5 5 == [5]
  range 0 3 == [0, 1, 2, 3]
```

### Definiáld újra az and függvényt!

```
and' [True, True, True, True]
and' []
not (and' [True, False, True, True])
not (and' [False, False, False])
```

### Definiáld újra az or függvényt!

```
or' [True, True, True, True]
or' [True, True, False, True]
not (or' [])
not (or' [False, False, False, False])
```

### Definiáld újra a repeat függvényt!

```
take 3 (repeat' 'a') == "aaa"
take 10 (repeat' 'a') == replicate 10 'a'
```

### Definiáld újra a take függvényt!

```
take' 3 [1] = [1]
take' 3 [1..5] == [1,2,3]
take' 10 (repeat' 'a') == replicate 10 'a'
```

### Definiáld újra a drop függvényt!

```
drop 3 [1] = []
drop 3 [1..5] == [4,5]
```
