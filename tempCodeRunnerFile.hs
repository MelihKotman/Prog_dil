import Text.Printf
import Data.List

{- 
zunluk [] = 0
zunluk (x:xs) = 1 + (zunluk xs)

tersCevir [] = []
tersCevir [x] = [x]
tersCevir (x:xs) = (tersCevir xs) ++ [x]

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

main = do
    print "enSondaki"
    print (enSondaki [1,2,3,4,5])
