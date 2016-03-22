-- fizzbuzzsum.hs - Solves https://projecteuler.net/problem=1

main = putStrLn $ show $ sum $ findMults 1000

findMults :: Int -> [Int]
findMults maxnum = [x | x <- [1..(maxnum-1)], x `mod` 3 == 0 || x `mod` 5 == 0]