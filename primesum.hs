-- primesum.hs - Solves https://projecteuler.net/problem=10
import Prime

main = print $ sum $ takeWhile (<2000000) primes