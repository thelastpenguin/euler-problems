
sqr :: Integer -> Integer
sqr x = x * x

sum_of_squares :: Integer -> Integer
sum_of_squares 1 = 1
sum_of_squares n = n * n + sum_of_squares (n - 1)

square_of_sums :: Integer -> Integer
square_of_sums n = sqr (foldl (+) 0 ([1..n]))
-- main = print $ (square_of_sums (50 + 50)) - (sum_of_squares 100)




loopMyShiz 1 = print "shiz achieved"
loopMyShiz i = do 
    print i
    loopMyShiz (i - 1)

main = loopMyShiz 100