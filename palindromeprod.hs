-- palindromeprod.hs - Solves https://projecteuler.net/problem=4

maxof :: (Ord a) => [a] -> a -> a
maxof list start = foldl max start list

isPalindrome :: String -> Bool
isPalindrome s
    | length s <= 1 = True
    | otherwise = (s !! 0) == (s !! (length s - 1)) && isPalindrome (tail $ init s)

candidates :: Int -> Int -> [Int]
candidates lo hi = [x*y | x <- [lo..hi], y <- [lo..hi]]

palindromes :: Int -> Int -> [Int]
palindromes lo hi = filter (isPalindrome . show) $ candidates lo hi

main = do
    putStr "The largest palindrome created by multiplying two three digit numbers is "
    print $ maxof (palindromes 100 999) 0