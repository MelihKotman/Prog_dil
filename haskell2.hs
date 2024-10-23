--Functions

import Text.Printf

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
{-
faktoriyel x 
    |x == 0 = 1
    |otherwise = x * faktoriyel (x-1)

k = faktoriyel 5
-}
{-
fib y
    |y == 1 = 1
    |y == 2 = 1
    |otherwise = fib (y-1) + fib(y-2)

fib 1 = 1
fib 2 = 1
fib x = fib (x-1) + fib(x-2)
d = fib 6
g = fib 10 -- 40 gibi sayilari cok uzun surede cozer cunku recursive functions'dan dolayı her seferinde katlana katlana fonksiyon cagirir

main = do
    print d
    print g


x = 0;
y = 0;
kapi x
    | x == 0 = 1
    | x == 1 = 0
    | otherwise = 0

d = kapi 1 -- acik kapiyi kapat
f = kapi 0 -- kapali kapiyi ac

e = kapi 2 --kilit yanlis
main = do
    print d
    print "Kapi kapali"
    print f
    print "Kapi acik"
    print e
    print "Kapi kilitli"
-}

hesapMakinesi x y z
    | z == "+" = x + y
    | z == "-" = x - y
    | z == "*" = x * y
    | z == "/" = x / y
    | otherwise = error "Hatali islem" --error fonksiyonu programi durdurur

a = hesapMakinesi 5 3 "+"
b = hesapMakinesi 5 3 "-"
c = hesapMakinesi 5 3 "*"
d = hesapMakinesi 5 3 "/"
e = hesapMakinesi 5 3 "a"

main = do
    putStrLn "Hesap makinesi"
    putStrLn "Toplama islemi"
    print a
    putStrLn "Cikarma islemi"
    print b
    putStrLn "Carpma islemi"
    print c
    putStrLn "Bolme islemi"
    print d
    putStrLn "Lutfen dogru islem sec"
    print e

