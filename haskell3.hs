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