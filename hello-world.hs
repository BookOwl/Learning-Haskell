module Main where
import System.Environment

main :: IO ()
main = do
    putStrLn "Hello, World!"
    putStrLn "What is your name?"
    name <- getLine
    putStrLn ("Hello, " ++ name)