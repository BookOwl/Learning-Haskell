-- pyth.hs - Solves https://projecteuler.net/problem=9

main = print (n, (product n))
    where n = [ [a,b,c] | a <- [200..500], b <- [a+1..500], c <- [b+1..500], a^2 + b^2 == c^2, a + b + c == 1000] !! 0
