--Functions

import Text.Printf
import System.Win32 (xBUTTON1, COORD (yPos))
{-
arttir :: Num a => a -> a
arttir x = x + 1
-- Eger ondalikli sayi verirsek calismaz

k :: Int
k = arttir 5

l = arttir 5.5

topla a b = a + b

c = topla 3 5

-- k = "hey" cunku k'nin degerini bir kere verince degistiremeyiz
-- static tipli dil

main = do
    print k
    print l
    print c

-}


{-
faktoriyel 0 = 1
faktoriyel x = x * faktoriyel (x-1)

k = faktoriyel 5

main = do
    print k

-- Lazy(Tembel) vs. Eager(Istekli) Evaluation

int i = 5;
int j = f(7);
printf(".....");

Haskell fonksiyona bir deger verdigimizde cozmez sadece istendigi zaman yapar
-}

faktoriyel x 
    |x == 0 = 1
    |otherwise = x * faktoriyel (x-1)

k = faktoriyel 5

{-
fib y
    |y == 1 = 1
    |y == 2 = 1
    |otherwise = fib (y-1) + fib(y-2)
-}
fib 1 = 1
fib 2 = 1
fib x = fib (x-1) + fib(x-2)
d = fib 6
g = fib 40 --cok uzun surede cozer

main = do
    print d
    print g