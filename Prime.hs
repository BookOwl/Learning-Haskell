-- Prime.hs - Prime number related functions
module Prime
( primeFactors,
  isPrime,
  primes,
) where
import Data.List

divides a b = a `mod` b == 0

floordiv a b = floor ((fromIntegral a)/(fromIntegral b))
floorsqrt = floor . sqrt . fromIntegral

primeFactorsRec :: Integer -> Integer -> [Integer] -> [Integer]
primeFactorsRec n d l
    | n == 1         = l
    | n `mod` d == 0 = primeFactorsRec (floordiv n d)  d    (d:l)
    | otherwise      = primeFactorsRec  n          (d+1)  l

primeFactors :: Integer -> [Integer]
primeFactors n = primeFactorsRec n 2 []

isPrime :: Integer -> Bool
isPrime n
    | n == 2    = True
    | n < 2     = False
    | otherwise = not $ any (divides n) (2:[3,5..(floorsqrt n)])

primes = [p | p <- 2:[3,5..], isPrime p]