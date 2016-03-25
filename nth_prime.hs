-- nth_prime.hs - Solves https://projecteuler.net/problem=7
import Prime

main = do
    putStrLn "Which prime do you want?"
    s <- getLine
    putStr ("The " ++ s ++ " prime is ")
    print $ primes !! ((read s :: Int) - 1)