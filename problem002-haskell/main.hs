fibs = 0 : 1 : map fib [2..]
    where fib n = (fibs !! (n - 1)) + (fibs !! (n - 2)) 

    
-- takeWhile does exactly what you think it does. different from filter in that it stops at the first counter example
-- dropWhile is the inverse of take while which starts taking values at the firs counter example

main = print $ sum $ filter myEven $ takeWhile (myLimit) (fibs)
    where myEven x = (x `rem` 2) == 0
          myLimit x = x < 4000000