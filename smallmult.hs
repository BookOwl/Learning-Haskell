-- smallmult.hs - Solves https://projecteuler.net/problem=5

import Data.List
import Prime

prod = foldl1 (*)

extend :: [a] -> [a] -> [a]
extend a b = concat $ a : b : []

lcm' :: Integer -> Integer -> Integer
lcm' a b = prod $ map fromIntegral (extend a' (b' \\ a'))
     where
         a' = primeFactors a 
         b' = primeFactors b

main = do
    putStr "The smallest number that every number from 1 to 20 divides into evenly is "
    print $ foldl1 lcm' [1..20]
