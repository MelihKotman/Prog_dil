import Text.Printf
import Data.List
{-
fact x = product (take x [1,2..])

d = fact 8

main = do
    print d



all_odd [k] =  mod k 2 == 1
all_odd (x:xs) = (mod x 2 == 1) && (all_odd xs)

d = all_odd ([1,3,4])

main = do
    print d
-}
3 : [] = [3]
3: 5: [] = [3,5]
3: 1: 2: [] = [3,1,2]
[1,2] ++ [3,4] = [1,2,3,4]
3: [1,2] = [3,1,2]
-- `a` : [1,2] = [a,1,2]
[1..5] = [1,2,3,4,5]
[1,3,5..15] = [1,3,5,7,9,11,13,15]
[1,3..15] = [1,3,5,7,9,11,13,15]
[2,4..10] = [2,4,6,8,10]
[1,2..] = --sonsuza kadar gider...
length [1,2,3,4] = 4
length [] = 0
length [1..5] = 5
reverse [1,2,3,4] = [4,3,2,1]
null [] = True
null[1] = False
null[1,2] = False
head [1,2,3] = 1
head [2,1,3] = 2
tail [1,2,3] = [2,3]
tail[2] = []
last [1,2,3] = 3
init [1,2,3] = [1,2]
take 2 [1,2,3,4] = [1,2]
take 1 [1,2,3,4] = [1]
drop 2 [1,2,3,4] = [3,4]
drop 1 [1,2,3,4] = [2,3,4]
elem 2 [1,2,3,4] = True
elem 7 [1,2,3,4] = False
7 `elem` [1,2,3,4] = False
7 `elem` [1,2,3,4,7] = True
mod 12 5 = 2
mod 10 5 = 0
mod 22 11 = 0
product[1,2,3] = 6 -- 1*2*3
product[1,2,3,4] = 24 -- 1*2*3*4
product [take 4 [1,2..]] = 24
[x | x <- [1..10]] = [1,2,3,4,5,6,7,8,9,10]
[x^2 | x <- [1..10]] = [1,4,9,16,25,36,49,64,81,100]
[x^2 | x <- [1..10], mod x 2 == 0] = [4,16,36,64,100]
[x^2 | x <- [1..10], mod x 2 == 0 || mod x 3 == 0] = [4,9,16,36,64]
sort [3,1,2] = [1,2,3]
a:b = [1,2,3]
a = 1
b = [2,3]
a:b:c = [1,2,3]
a = 1
b = 2
c = [3] -- en sondaki her zaman liste olur
first:rest = [1,2,3]
first = 1
rest = [2,3]
x:xs = [1,2,3]
x = 1
xs = [2,3]
x:y:rest =[1..10]
x = 1
y = 2
rest = [3,4,5,6,7,8,9,10]