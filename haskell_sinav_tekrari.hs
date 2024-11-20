--Haskell Vize Sinavi icin Onemli Kodlar
import Text.Printf (printf)
import Data.List
--import Data.List: Listelerle ilgili fonksiyonlarin oldugu kutuphanedir




--FromIntegral: Integer ve Int arasinda donusum yapar
ar :: Int
ar = 5
bba :: Int
bba = 3
f :: Double
f = fromIntegral ar / fromIntegral bba

main :: IO ()
main = do 
    printf "a=%d\nb=%d\na/b=%f\n" ar bba f
    -- a = 5 b = 3 a/b = 1.6666666666666667

--Mod: Modulus islemi yapar yani kalanini verir
as :: Int
as = 5
kb :: Int
kb = 4

g :: Int
g = Prelude.mod as kb

--1


--Yas Fonksiyonu
yas :: (Eq a, Num a) => a -> String
yas 18 = "Genc"
yas 40 = "Orta"
yas 60 = "Yasli"
yas _ = "Bilinmeyen"

yas3 :: (Eq a, Num a) => a -> String --a tipinde bir deger alir ve string tipinde bir deger dondurur
yas3 x
    | x == 18 = "Genc"
    | x == 40 = "Orta"
    | x == 60 = "Yasli"
    | otherwise = "Bilinmeyen"



 
--Faktoriyel
fact :: (Eq t, Num t) => t -> t --Bunun anlami t tipinde bir deger alir ve t tipinde bir deger dondurur
fact 0 = 1
fact x = x * fact (x - 1)
c :: Integer
c = fact 5

--120


--fibonnacci
fib :: (Eq t, Num t, Num a) => t -> a --Bunun anlami t tipinde bir deger alir ve a tipinde bir deger dondurur
fib x
    | x == 0 = 0
    | x == 1 = 1
    | otherwise = fib (x - 1) + fib (x - 2)
d :: Integer
d = fib 6

--8

-- $: Fonksiyon cagirirken parantez kullanmamizi saglar
--ornegin: topla (mod 5 3) 4 yerine topla $ mod 5 3 $ 4 yazilabilir

--Fonksiyon ornekleri
arttir :: Num a => a -> a --Bunun anlami a tipinde bir deger alir ve a tipinde bir deger dondurur
arttir x = x + 1
k :: Integer
k = arttir 5
l :: Double
l = arttir 5.5

--k = "Hey" --k'nin deger degistirilemez cunku statik bir veri tipidir

--Lazy vs Eager Evaluation
--Lazy: Sadece istendigi zaman calisir
--Eager: Hemen calisir
--Ornek: int i = 5; int j = f(7); printf(".....");
--Haskell'da fonksiyona bir deger verdigimizde cozmez sadece istendigi zaman yapar

faktoriyel :: (Eq t, Num t) => t -> t ---Bunun anlami t tipinde bir deger alir ve t tipinde bir deger dondurur
faktoriyel x 
    | x == 0 = 1
    | otherwise = x * faktoriyel (x - 1)

y :: Integer
y = faktoriyel 5
--main = print y
--120
{-
fib x
    | x == 1 = 1
    | x == 2 = 1
    | otherwise = fib (x - 1) + fib (x - 2)
-}
x :: Integer
x = 0
kapi :: (Eq a1, Num a1, Num a2) => a1 -> a2 --
kapi x 
    | x == 0 =  1
    | x == 1 =  0
    | otherwise = 0

ö :: Integer
ö = kapi 1
ç :: Integer
ç = kapi 0
ğ :: Integer
ğ = kapi 12
{-main = do
    print d
    print f
    print e
--0
--1
--0
-}

hesapMakinesi :: Fractional a => a -> a -> String -> a --Fractional: Ondalikli sayilar icin --a: Tip --a -> a -> String -> a: Fonksiyonun parametreleri
hesapMakinesi k l m
    | m == "+" = k + l
    | m == "-" = k - l
    | m == "*" = k * l
    | m == "/" = k / l
    | otherwise = error "Hatali islem"
    --islemleri bize double olarak dondurur cunku Fractional tipini kullandik
p = hesapMakinesi 5 3 "+"
o = hesapMakinesi 5 3 "-"
n = hesapMakinesi 5 3 "*"
m = hesapMakinesi 5 3 "/"



--ghc haskell'in derleyicisidir ve bu derleyecide bircok liste islemi yapabiliriz ayni zamanda haskellde de yapilir ayni islemler bu islemleri gorelim

--fact x = product [1..x] --product: Carpma islemi yapar ve listenin elemanlarini carpip sonucu verir 
--f = fact 5
--main = print f
--120 bu sonuc liste icine alinmaz

--a = product [1,2,3,4]
--main = print a
--24
--bir listedeki elemanlarin tek olup olmadigini kontrol eden fonksiyon ve bool donduren fonksiyon
--kalan [x] = mod x 2 == 1
--kalan (x:xs) = (mod x 2 == 1) && (kalan xs)
--list = kalan [1,3,4]
--list2 = kalan [1,3,5]



-- : operatoru listeye soldan eleman ekler 
3 : [] = [3]
3 : 7: [1,2] = [3,7,1,2]
-- ++ operatoru iki listeyi birlestirir
[1,2] ++ [3,4] = [1,2,3,4]
-- .. operatoru aralik belirler
{-[1..5] = [1,2,3,4,5]
[1,3,5..15] = [1,3,5,7,9,11,13,15]
[1,3..15] = [1,3,5,7,9,11,13,15]
[1,3..15] = [1,3,5,7,9,11,13,15]
[2,4..10] = [2,4,6,8,10]
[1..] = --sonsuz listeler olusturabiliriz
-}
'a' : ['1','2'] = ['a','1','2']
--farkli tiplerde elemanlar ekleyebiliriz
--'a' : [1,2] = ['a',1,2]
--length: Listenin uzunlugunu verir
length :: (Eq a1, Num a1, Num a2) => [a1] -> a2
length [1,2,3,4] = 4
length [] = 0
--length [1..5] = 5
--reverse: Listeyi ters cevirir
reverse :: (Eq a1, Num a1, Num a2) => [a1] -> [a2]
reverse [1,2,3,4] = [4,3,2,1]
--null: Listenin bos olup olmadigini kontrol eder
null :: (Eq a, Num a) => [a] -> Bool
null [] = True
null [1] = False
null [1,2] = False
--head: Listenin ilk elemanini verir ve liste olmadan sonuc çikarir
head :: (Eq a1, Num a1, Num a2) => [a1] -> a2
head [1,2,3] = 1 
--tail: Listenin ilk elemanini cikarir ve geri kalanini verir
tail :: (Eq a1, Num a1, Num a2) => [a1] -> [a2]
tail [1,2,3] = [2,3]
--last: Listenin son elemanini verir ayni head gibi liste olmadan sonuc cikarir
last :: (Eq a1, Num a1, Num a2) => [a1] -> a2
last [1,2,3] = 3
--init: Listenin son elemanini cikarir ve geri kalanini verir
init :: (Eq a1, Num a1, Num a2) => [a1] -> [a2]
init [1,2,3] = [1,2]
--take: Belirli bir sayida elemani alir
take :: (Eq a1, Eq a2, Num a1, Num a2, Num a3) => a1 -> [a2] -> [a3]
take 2 [1,2,3,4] = [1,2]
--drop: Belirli bir sayida elemani cikarir ve sol kisimdan geri kalanini verir
drop :: (Eq a1, Eq a2, Num a1, Num a2, Num a3) => a1 -> [a2] -> [a3]
drop 2 [1,2,3,4] = [3,4]
--elem: Elemanin listede olup olmadigini kontrol eder
elem :: (Eq a1, Eq a2, Num a1, Num a2) => a1 -> [a2] -> Bool
elem 2 [1,2,3,4] = True
elem 7 [1,2,3,4] = False

--7 `elem` [1,2,3,4] = False
7 `elem` [1,2,3,4,7] = True
--mod: Modulus islemi yapar
mod :: (Eq a1, Eq a2, Num a1, Num a2, Num a3) => a1 -> a2 -> a3
mod 12 5 = 2
mod 10 5 = 0
mod 22 11 = 0
--product: Listenin elemanlarini carpip sonucu verir
product :: (Eq a1, Num a1, Num a2) => [a1] -> a2
product [1,2,3] = 6
product [1,2,3,4] = 24
--bu islemleri ic ice kullanabiliriz
--product [take 4 [1,2..]] = 24
--biz listelerde ayni kume islemlerini yapabiliriz
--[x | x <- [1..10]] = [1,2,3,4,5,6,7,8,9,10]
--[x^2 | x <- [1..10]] = [1,4,9,16,25,36,49,64,81,100]
--[x ^ 2 | x <- [1..10], mod x 3 == 0] = [9,36,81]
--[x ^ 2 | x <- [1..10], mod x 2 == 0] = [4,16,36,64,100]
--[x ^ 2 | x <- [1..10], mod x 2 == 0 || mod x 3 == 0] = [4,9,16,36,64,100]
--sort: Listeyi siralar
{-
sort [3,1,2] = [1,2,3]
t:c = [1,2,3]
t = 1
c = [2,3]
x:y:z = [1,2,3]
x = 1
y = 2
z = [3]--en sondaki her zaman liste olur
first:rest = [1,2,3]
first = 1
rest = [2,3]
x:xs = [1,2,3]
x = 1
xs = [2,3]
x:y:rest = [1..10]
x = 1
y = 2
rest = [3,4,5,6,7,8,9,10]
-}

-- listeler ile fonksiyonlar
uzunluk :: Num a1 => [a2] -> a1
uzunluk []  = 0
uzunluk (x:xs) = 1 + uzunluk xs
--main = print (uzunluk [1,2,3,4,5]) --5
tersCevir :: [a] -> [a]
tersCevir [] = []
tersCevir [x] = [x]
tersCevir (x:xs) = tersCevir xs Data.List.++ [x]
--main = print (tersCevir [1,2,3,4,5])--[5,4,3,2,1]
bos :: [a] -> Bool
bos [] = True
bos (x:xs) = False
--main = print (bos [1,2,3,4,5]) --False
nncinciEleman :: (Eq t, Num t) => [a] -> t -> a
nncinciEleman (x:xs) 0 = x
nncinciEleman (x:xs) n = nncinciEleman xs (n-1)
--main = print (nncinciEleman [1,2,3,4,5] 2) --3
enBastaki :: [a] -> a
enBastaki (x:xs) = x
--main = print (enBastaki [1,2,3,4,5]) --1
enSondaki :: [a] -> a
enSondaki [x] = x
enSondaki (x:xs) = enSondaki xs
--main = print (enSondaki [1,2,3,4,5]) --5
sondakiHaricHepsi :: [a] -> [a]
sondakiHaricHepsi [x] = []
sondakiHaricHepsi (x:xs) = x : sondakiHaricHepsi xs
--main = print (sondakiHaricHepsi [1,2,3,4,5]) --[1,2,3,4]
bastanAl :: (Eq a1, Num a1) => [a2] -> a1 -> [a3]
bastanAl l 0 = []
bastanAl [] n = []
bastan (x:xs) n = x : bastan xs (n-1)
--main = print (bastan [1,2,3,4,5] 2) --[1,2]

elemanMi :: Eq t => t -> [t] -> Bool
elemanMi x [] = False
elemanMi x (y:ys)
    | x == y = True
    | otherwise = elemanMi x ys
--main = print (elemanMi 3 [1,2,3,4,5]) --True
--main = print (elemanMi 6 [1,2,3,4,5]) --False
enBuyuko :: [Int] -> Int
enBuyuko [x] = x
enBuyuko (x:y:xs)
    | x < y = enBuyuk (y:xs)
    | otherwise = enBuyuk (x:xs)
--main = print (enBuyuk [1,2,3,4,5]) --5
--main = print (enBuyuk [5,4,3,2,1]) --5
toplam :: Num a1 => [a2] -> a1
toplam [] = 0
--toplam (x:xs) = x + (toplam xs)
--main = print (toplam [1,2,3,4,5]) --15
palindromMu :: Eq a => [a] -> Bool
palindromMu x = x == tersCevir x --burada sonucu bool olarak dondurur cunku == operatorunu kullandik
--main = print (palindromMu [1,2,3,2,1]) --True
--main = print (palindromMu [1,2,3,4,5]) --False
carpim [x] = x
carpim (x:xs) = x * carpim xs
--main = print (carpim [1,2,3,4,5]) --120

siralimi :: Ord a => [a] -> Bool
siralimi [] = True
siralimi [x] = True
siralimi (x:y:xs)
    | x > y = False
    | otherwise = siralimi (y:xs)
--main = print (siralimi [1,2,3,4,5]) --True
--main = print (siralimi [1,2,3,5,4]) --False
birKezSirala [] = []
birKezSirala [x] = [x]
birKezSirala (x:y:xs)
    | x > y = y : birKezSirala (x:xs)
    | otherwise = x : birKezSirala (y:xs)
--main = print (birKezSirala [1,2,3,5,4]) --[1,2,3,4,5]
--main = print (birKezSirala [5,4,3,2,1]) --[4,3,2,1,5]
--burada bir kez siraladik ve sonucu verdi yani calisma mantigi soyle 

sirala :: Ord a => [a] -> [a]
sirala l 
    | siralimi l = l
    | otherwise = sirala (birKezSirala l)
--main = print (sirala [1,2,3,5,4]) --[1,2,3,4,5]
--main = print (sirala [5,4,3,2,1]) --[1,2,3,4,5]

--Haskell Son Ornekler
topla :: Num a => a -> a -> a
topla a b = a + b
ucleTopla :: Integer -> Integer
ucleTopla = topla 3

--map: Fonksiyonu listeye uygular
karesi :: Num a => a -> a
karesi x = x ^ 2
myMap :: (t -> a) -> [t] -> [a]
myMap f [] = []
myMap f (x:xs) = f x : myMap f xs

--dordunTamKatiMi x = mod x 4 == 0

--foldr: Listeyi bir degerde toplar(sağdan sola)
--foldl: Listeyi bir degerde toplar(soldan saga)

toplamko :: Integer
toplamko = foldr (+) 0 [1,2,3] -- 1 + (2 + (3 + 0)) => 1 + (2 + 3) => 1 + 5

hepsiDogruMu :: Bool
hepsiDogruMu = foldr (&&) True [True, 5 == 7] -- True && (5 == 7 && True)
--main = print hepsiDogruMu --False cunku 5 == 7 false
facto :: (Num b, Enum b) => b -> b
facto x = foldr (*) 1 [1..x]
tersSirala :: [Int] -> [Int]
tersSirala = Data.List.reverse . sort
tersSirali :: [Int]
tersSirali = tersSirala [5, 1, 2]
--main = print tersSirali --[5,2,1]
-- . operatoru fonksiyonlari birlestirir
-- Folding
-- JS: Reduce
-- foldr fun a [x1, x2, ..., xn] = fun x1 (fun x2 (fun x3 (... fun xn a))) --sağdan sola
-- foldl fun a [x1, x2, ..., xn] = fun (... (fun (fun a x1) x2) ...) xn
--soldan saga
ucArtiBes :: Integer
ucArtiBes = (+) 3 5
--ucArtiBes = 8
toplamlar :: Integer
toplamlar = foldr (+) 0 [1, 2, 3] -- 1 + (2 + (3 + 0))
--toplamlar = 6


yedilerinSayisi :: Integer
yedilerinSayisi = foldr (\x sayi -> if x == 7 then sayi + 1 else sayi) 0 [3, 7, 1, 7, 2]
-- f 3 (f 7 (f 1 (f 7 (f 2 0))))
--2 cikar
carpimlar :: Integer
carpimlar = foldl (*) 1 [3, 5, 7] -- ((1 * 3) * 5) * 7

tersi :: [Integer]
tersi = foldl (\acc x -> x : acc) [] [1, 2, 3] -- f (f (f [] 1) 2) 3
--acc burada bos liste olur ve x degeri 1 olur ve 1:[] olur ve 1 olur sonra 2 olur ve 2:1:[] olur ve 2:1 olur ve 3 olur ve 3:2:1:[] olur ve [3,2,1] olur
{-main = do 
    print "topla:"
    print (topla 3 5)
    print "ucletopla"
    print (ucleTopla 5)
    print "map anonim"
    print (map (\x -> x ^ 2) [1,2,3]) -- \ = lamda anlamina gelir ve anonim fonksiyon olustururuz...
    print (map (\x -> mod x 4 == 0) [1..50]) -- map tum degerleri degistirir uygulayıp sonra bize verir
    print (filter dordunTamKatiMi [1..50]) -- ust seviye fonksiyon olan filter'dır. Boolean deger alir ve fonksiyonu tekrar uygulayıp bize true olanları yeni listeye verir int olarak
    print (filter (\x -> mod x 4 == 0) [1..50]) -- filtre kullaniyoruz aslinda veri tabani icin
    --burada filter fonksiyonu ile liste icindeki elemanlari filtreleyip bize true olanlari verir misal 4'un katlarini 1-50 arasinda bulmak istedik ve True False seklinde verdik
    print (filter (\x -> x `elem` ['a'..'z'] || x  `elem` ['A'..'Z'] ) ['1', 'S','a','5', 'b'])
    --bu yukaridaki fonksiyon eger liste icindeki eleman a-z veya A-Z araliginda ise true dondurur
    
    print "map"
    print (map karesi [1,2,3])
    print "myMap"
    print (myMap karesi [1,2,3])
-}
enBuyuk :: [Int] -> Int
-- Değiştirilebilir alan 0'ın başlangıcı
enBuyuk [] = 0
enBuyuk [a] = a
enBuyuk [a, b] = if a < b then b else a
enBuyuk (x:y:xs) = if x > y then enBuyuk (x:xs) else enBuyuk (y:xs)
-- Değiştirilebilir alan 0'ın bitişi
aa = enBuyuk [1,2,-5,3,15,20]
--main = print a
--20
ucluFibo :: Int -> Int 
-- Değiştirilebilir alan 1'in başlangıcı
ucluFibo x
  | x == 1 = 1
  | x == 2 = 1
  | x == 3 = 1
  | otherwise = ucluFibo(x-1) + ucluFibo(x-2) + ucluFibo(x-3)
-- Değiştirilebilir alan 1'in bitişi
q :: Int
q = ucluFibo 6
--main = print b
-- 9 soyle yapar 
--ucluFibo(6) = ucluFibo(5) + ucluFibo(4) + ucluFibo(3) = 5 + 3 + 1 = 9
--ucluFibo(5) = ucluFibo(4) + ucluFibo(3) + ucluFibo(2) = 3 + 1 + 1 = 5
--ucluFibo(4) = ucluFibo(3) + ucluFibo(2) + ucluFibo(1) = 1 + 1 + 1 = 3
--ucluFibo(3) = ucluFibo(2) + ucluFibo(1) + ucluFibo(0) = 1 + 1 + 1 = 3
ortasi :: Fractional a => [a] -> a
-- Değiştirilebilir alan 2'nin başlangıcı
ortasi [] = 0
ortasi [x] = x
ortasi [x, y] = (x + y) / 2
ortasi (x:xs) = ortasi (Data.List.init xs)
-- Değiştirilebilir alan 2'nin bitişi
rr :: Double
rr = ortasi [1,2,3,4,5]
dd :: Double
dd= ortasi [1,2,3]
ee :: Double
ee = ortasi [1,2]
ff :: Double
ff = ortasi [1,2,3,4,5,6,7,8,9,10]


tamBolenler :: Int -> [Int]
-- Değiştirilebilir alan 3'ün başlangıcı
tamBolenler x = [y | y <- [1..x], x `Prelude.mod` y == 0]
-- Değiştirilebilir alan 3'ün bitişi
gas :: [Int]
gas = tamBolenler 12
--main = print g
--[1,2,3,4,6,12]

buyukleriBul :: Int -> [Int] -> [Int]
-- Değiştirilebilir alan 4'ün başlangıcı
buyukleriBul a = filter (>a)
-- bu fonksiyon 5'ten buyuk olanlari filtreler
po :: [Int]
po = buyukleriBul 5 [1,2,3,4,5,6,7,8,9,10]


