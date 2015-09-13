module Main
	where

import System.IO
import System.Random

main :: IO()
main = do
	hSetBuffering stdin LineBuffering
	putStrLn "I'm thinking of a number between 1 and 100"
	num <- randomRIO (1::Int, 100)

	doGuessing (num)


doGuessing num = do
	putStrLn "Enter your guess"
	guess <- getLine
	let guessNum = read guess
	if guessNum < num
		then do putStrLn "Too Low!"
		        doGuessing num
		 else if guessNum > num
		 	then do putStrLn("Too High!")
		 	        doGuessing num
		 	else do putStrLn("You Win!")