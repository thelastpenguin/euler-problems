isPerfect n = (sum [x | x <- [1..(n-1)], n `rem` x == 0]) == n

main = print $ isPerfect 8
