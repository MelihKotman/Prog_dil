import Text.Printf
import Data.List
import System.Win32 (xBUTTON1, lANGIDFROMLCID)

{- 
zunluk [] = 0
zunluk (x:xs) = 1 + (zunluk xs)
-}
tersCevir [] = []
tersCevir [x] = [x]
tersCevir (x:xs) = (tersCevir xs) ++ [x]
{-
bos [] = True
bos (x:xs) = False
-}

ennciEleman (x:xs) 0 = x
ennciEleman (x:xs) n = (ennciEleman xs (n-1))

enBastaki (x:xs) = x

enSondaki [x] = x
enSondaki (x:xs) = (enSondaki xs)

sondakiHaric [x] = []
sondakiHaric (x:xs) = (x : sondakiHaric xs)

bastanAl l 0 = []
bastanAl [] n = []
bastanAl (x:xs) n = (x : bastanAl xs (n-1))

elemanMı  x [] = False
elemanMı x (y:ys)
    |x == y = True
    |otherwise = elemanMı x ys

enBuyuk [x] = x
enBuyuk (x:y:xs)
    | x < y = enBuyuk (y:xs)
    | otherwise = enBuyuk (x:xs)
    --en kucuk icin tam tersi yapilir
toplam [] = 0
toplam (x:xs) = x + (toplam xs)

palindromMu x = x == (tersCevir x)

carpim [x] = x
carpim (x:xs) = x * (carpim xs)

siraliMi [] = True
siraliMi [x] = True
siraliMi (x:y:xs)
    |x > y = False
    |otherwise = siraliMi (y:xs)

birKezSirala [] = []
birKezSirala [x] = [x]
birKezSirala (x:y:xs)
    | x > y = y : birKezSirala (x:xs)
    | otherwise = x : birKezSirala (y:xs)

sirala l
    | siraliMi l = l
    | otherwise = sirala (birKezSirala l) --bir keze yolladi eger sirali degilse kendine geri doner ve olana kadar devam eder
main = do
    print (birKezSirala [1,2,9,4,5])
    print (birKezSirala [5,4,3,2,1]) -- bir kez siraladigi icin 4,3,2,1,5 olur
    print(sirala [5,4,3,2,1])
