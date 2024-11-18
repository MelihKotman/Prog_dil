{-# LANGUAGE DataKinds #-}
import Text.Printf
import System.Win32 (xBUTTON1)
{-
--main = putStrLn "Hello, World!"
--ciktisi: Hello, World!

b :: Bool
b = True

c :: Char
c = 'A'

s :: String
s = "Hello, World!"

i :: Integer
i = 92233720368547758079223372036854775807

si :: Int
si = 9223372036854775807

f :: Float
f = 3.888888888889

d :: Double
d = 3.888888888889


main = printf "b(String) =%s\nc = %c\ns=%s\ninteger=%d\nInt =%d\nf=%f\nd=%f" (show b) c s i si f d
-}
{-
--Aritmetikler

a :: Int
a = 22

b :: Int
b = 5

c :: Int
c = a * b

d :: Int
d = a + b

e :: Int
e = a - b

f :: Double
f = fromIntegral a / fromIntegral b
--burada fromIntegral fonksiyonu ile a ve b yi double a çeviriyoruz

g :: Int
g = mod a b

h :: Int
h = a ^ b

main :: IO ()
main = do
    printf "a=%d\nb=%d\na*b=%d\na+b=%d\na-b=%d\na/b=%f\na mod b=%d\na^b=%d" a b c d e f g h
    -}
--Fonksiyonlar
{-
inc :: Int -> Int
inc x = x + 1

k = inc 3

topla :: Int -> Int -> Int
topla a b = a + b

b = topla 3 5

yas 17 = "Genc"
yas 25 = "Orta"
yas 40 = "Yasli"
yas _ = "Bilinmeyen"

y17 = yas 17
y25 = yas 25
y40 = yas 40

yas2 x
    | x == 18 = "Genc"
    | x == 40 = "Orta"
    | x == 60 = "Yasli"
    | otherwise = "Bilinmeyen"

yo = yas2 52

fact 0 = 1
fact x = x * fact (x - 1)

c = fact 5 --120

fib x 
    | x == 0 = 0
    | x == 1 = 1
    | otherwise = fib (x - 1) + fib (x - 2)

d = fib 6 --8

main = do
    print k
    print b
    print y17
    print y25
    print yo
    print c
    print d
    print $ fib 8 --buradaki $ işareti print fonksiyonunu daha önceki fonksiyonun sonucuna uygular
    print (fib 8) --bu şekilde de aynı sonucu alırız
-}