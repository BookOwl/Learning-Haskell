-- evanfibsum.hs - Solves https://projecteuler.net/problem=2

-- fibonachi number generator function 
-- taken from http://stackoverflow.com/a/21605696
fib :: Integer -> Integer -> [Integer]
fib a b = a : fib b (a + b)
fiblist = fib 0 1

main = print $ sum $ filter even $ takeWhile (<4000000) fiblist