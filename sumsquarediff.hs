-- sumsquarediff.hs - Solves https://projecteuler.net/problem=6

main = print $ abs $ ((sum [x^2 | x <- [1..100]]) - (sum [1..100])^2)