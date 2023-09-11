# Telepítés Windowsra
## Video Tutorial
A telepítésre egy tutorial itt található: https://www.youtube.com/watch?v=bB4fmQiUYPw

## Szöveges Tutorial
Nyissunk egy `Powershell` (NEM adminisztrátor) ablakot, és futassuk le az alábbi parancsot benne (A sortöréseket/újsorokat töröld ki a terminálba beillesztés előtt!):
```ps
Set-ExecutionPolicy Bypass -Scope Process -Force;[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; try { Invoke-Command -ScriptBlock ([ScriptBlock]::Create((Invoke-WebRequest https://www.haskell.org/ghcup/sh/bootstrap-haskell.ps1 -UseBasicParsing))) -ArgumentList $true } catch { Write-Error $_ }
```
Innentől elég, ha az Entert nyomogatod, mert a telepítő alap opciói tökéletesek. 

A telepítő által felsorolt opciók (Minden opció után `Enter` nyomása szükséges):

* Megkérdezi a telepítő, hova telepítse a GHCup-ot (alapból `C:\`). Itt nyomj `Enter`-t.
* Megkérdezi a telepítő, hova telepítse a `cabal`-t (alapból `C:\cabal\`). Itt nyomj `Enter`-t.
* Megkérdezi a telepítő, szeretnénk-e Haskell Language Server (HLS)-t telepíteni. Itt nyomj `N`-t.
* Megkérdezi a telepítő, szeretnénk-e Stack-et telepíteni. Itt nyomj `N`-t.
* Megkérdezi a telepítő, hogy telepítsen-e `msys2`-t. Ez szükséges (Nyomj `Y`-t).

Ezek után egy új ablak nyílik meg, ahol a telepítő magától feltelepíti a GHC `9.2.8`-as verzióját és a cabal `3.6.2.0`-s verzióját. A Haskell REPL elindítható a `ghci` paranccsal egy terminál újraindítás után.

Ez azonban nem a legfrissebb verziója a GHC-nek. A legfrissebb verzió telepítéséhez egy `cmd` (NEM adminisztrátor) ablakban futtassuk le a következőt: `ghcup rm ghc 9.2.8 && ghcup rm cabal 3.6.2.0 && ghcup install cabal latest && ghcup install ghc latest`

Törölni nagyon egyszerű az egészet. A `ghcup nuke` paranccsal az egész törölhető. Windows-on GHCUP_INSTALL_BASE_PREFIX és GHCUP_USE_XDG_DIRS környezeti változókat hagyja maga után, ezeket lehet, hogy törölni kell manuálisan. Bármi más, ami a rendszeren marad, törölhető manuálisan.

# Telepítés Linuxra, macOS-re vagy WSL2-be
## 1. Előkészítés
A telepítő csak `bash` és `zsh` shelleket támogat hivatalosan, ezért a telepítés előtt kérlek, állítsd be a default shellt valamelyikre ezek közül. A telepítéshez szükséges néhány package, ezek telepítése az alábbi módon lehetséges:

* Debian alapú distrok (Debian, Ubuntu stb): `sudo apt install build-essential curl libffi-dev libffi7 libgmp-dev libgmp10 libncurses-dev libncurses5 libtinfo5`
* Arch alapú distrok (Arch, Manjaro stb):  `sudo pacman -S curl gcc gmp make ncurses coreutils xz`
* Fedora: `sudo dnf install gcc gcc-c++ gmp gmp-devel make ncurses ncurses-compat-libs xz perl`

MacOS esetén ez a lépés kihagyható, a telepítő magától fel fogja ezeket telepíteni. Egyéb distro esetén nézz utána, hogy a package managered hogyan működik, és telepítsd az alábbi packageket: `curl g++ gcc gmp make ncurses realpath xz-utils`

## 2. Telepítés
A telepítés indításához futtasd le az alábbi parancsot (NEM root felhasználóként):
```sh
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```
Ha eddig mindent sikeresen feltelepítettél, akkor elég, ha az Entert nyomogatod, mert a telepítő alap opciói tökéletesek. 

A telepítő által felsorolt opciók (Minden opció után `Enter` nyomása szükséges):

* A telepítő közli, hova fog telepíteni (ami `$HOME/.ghcup`) és sehova máshova, ezt nem lehet megváltoztatni (Nyomj `Enter`-t).
* A használt shell alapján a telepítő belerakja a `$HOME/.ghcup/bin` mappát a `$PATH`-ba, ezt a shellnek megfelelő run commands (`.bashrc`, `.zshrc`) fájlba. A modifikációt a fájl elejére (nyomj `P`-t) vagy a végére (nyomj `A`-t) rakhatja a telepítő, illetve ezt a lépést át is lehet ugrani (nyomj `N`-t). __Fontos:__ Powerlevel10k vagy hasonló szoftver használata esetén a fájl elejére kell rakni, különben nem fog működni!
* Megkérdezi a telepítő, akarunk-e Haskell Language Server (HLS)-t telepíteni. Itt nyomj `N`-t.
* Megkérdezi a telepítő, akarunk-e Stack-et telepíteni. Itt nyomj `N`-t.
* A telepítő felsorolja a feljebb említett szükséges packageket, ezeket már feltelepítettük szóval nyomjunk `Enter`-t.

Ez után a telepítő magától feltelepíti a GHC `9.2.8`-as verzióját és a cabal `3.6.2.0`-s verzióját. A Haskell REPL eldinítható a `ghci` paranccsal egy terminál újraindítás után.