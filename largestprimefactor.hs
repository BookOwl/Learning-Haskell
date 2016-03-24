-- largestprimefactor.hs - Solves https://projecteuler.net/problem=3

import Prime

main = do
        putStr "The largest prime factor of 600851475143 is "
        print $ factorlist !! 0
        putStrLn "List of prime factors:"
        print factorlist
      where factorlist = primeFactors 600851475143