-- largestprimefactor.hs - Solves https://projecteuler.net/problem=3

floorSqrt = floor . sqrt . fromIntegral
factors n = [x | x <- [2..floorSqrt n], n `mod` x == 0]
floordiv a b = floor ((fromIntegral a)/(fromIntegral b))

primeFactorsRec :: Integer -> Integer -> [Integer] -> [Integer]
primeFactorsRec n d l
    | n == 1         = l
    | n `mod` d == 0 = primeFactorsRec (floordiv n d)  d    (d:l)
    | otherwise      = primeFactorsRec  n          (d+1)  l

primeFactors :: Integer -> [Integer]
primeFactors n = primeFactorsRec n 2 []

main = do
        putStr "The largest prime factor of 600851475143 is "
        print $ factorlist !! 0
        putStrLn "List of prime factors:"
        print factorlist
      where factorlist = primeFactors 600851475143