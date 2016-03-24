-- Prime.hs - Prime number related functions
module Prime
( primeFactors,
  isPrime,
) where

floordiv a b = floor ((fromIntegral a)/(fromIntegral b))

primeFactorsRec :: Integer -> Integer -> [Integer] -> [Integer]
primeFactorsRec n d l
    | n == 1         = l
    | n `mod` d == 0 = primeFactorsRec (floordiv n d)  d    (d:l)
    | otherwise      = primeFactorsRec  n          (d+1)  l

primeFactors :: Integer -> [Integer]
primeFactors n = primeFactorsRec n 2 []

isPrime :: Integer -> Bool
isPrime n = length (primeFactors n) == 1