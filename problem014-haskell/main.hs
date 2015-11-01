max' (a,a1) (b, b1) = if a1 < b1
    then (a,a1)
    else (b,b1)
    

collatz 1 = 1
collatz n | n `rem` 2 == 0 = 1 + collatz (n `div` 2)
          | otherwise = 1 + collatz (3 * n + 1)


main = print $ foldr max 0 $ map collatz [1..100]