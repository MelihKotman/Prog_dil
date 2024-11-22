

import Text.Printf

import Data.List

--currying
-- int topla(int,int);
-- int topla(int a, int b) {return a + b};

topla :: Num a => a -> a -> a
topla a b = a + b

ucleTopla  = topla  3

--ucleTopla 5 -> topla 3 5

-- map
-- map f 1

karesi :: Num a => a -> a
karesi x = x ^ 2

myMap :: (t -> a) -> [t] -> [a]
myMap f [] = []
myMap f (x:xs) = f x : myMap f xs

dordunTamKatiMi :: Int -> Bool
dordunTamKatiMi x = mod x 4 == 0

toplamlar = foldr (+) 0 [1,2,3] -- 1 + (2 + (3 + 0)) => 1 + (2 + 3) => 1 + 5

hepsiDogruMu = foldr (&&) True [True, 5 == 7] -- True && (5 == 7 && True)



fact :: (Num b, Enum b) => b -> b
fact x = foldr (*) 1 [1..x] 
main = do 
    print "topla:"
    print (topla 3 5)
    print "ucletopla"
    print (ucleTopla 5)
    print "map anonim"
    print (map (\x -> x ^ 2) [1,2,3]) -- \ = lamda anlamina gelir ve anonim fonksiyon olustururuz...
    print (map (\x -> mod x 4 == 0) [1..50]) -- map tum degerleri degistirir uygulayıp sonra bize verir
    print (filter dordunTamKatiMi [1..50]) -- ust seviye fonksiyon olan filter'dır. Boolean deger alir ve fonksiyonu tekrar uygulayıp bize true olanları yeni listeye verir int olarak
    print (filter (\x -> mod x 4 == 0) [1..50]) -- filtre kullaniyoruz aslinda veri tabani icin
    print (filter (\x -> x `elem` ['a'..'z'] || x  `elem` ['A'..'Z'] ) ['1', 'S','a','5', 'b'])
    {-
    print "map"
    print (map karesi [1,2,3])
    print "myMap"
    print (myMap karesi [1,2,3])
    -}