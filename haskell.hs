import Text.Printf

a :: Int
a = 3

b :: Int
b = 5

c :: Int
c = a * b

f :: Int -> Int
f x = x + 2

topla :: Int -> Int -> Int
topla x y = x + y

d :: Int
d = topla 5 12

--main = print d

x :: Bool
x = True

y :: Char
y = 'A'

s :: String
s = "Hello"

i :: Integer
i = 912312590342580275823745034273270879869869097987467487574454565654757575658797087978987575456

si :: Int
si = 2348

fl :: Double
fl = 3.888888888888888888888

db :: Double
db = 3.888888888888888

--main = printf "%d %c %s %d %d %f %f" b y s i si fl db


--main = print (f 5);
main = printf "%d" (f 5)