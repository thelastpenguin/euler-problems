import Data.Numbers.Primes


factorCount :: Int -> Int
factorCount n = length [a | a <- [1..sqrt(n)], n `rem` a == 0]


factorPairings = factorPairings' $ map factorCount [1..]
    where factorPairings' (a : b : xs) = (a + b - 1 - 1) : factorPairings' (b : xs) -- minus 1 to account for a double counted factor. minus 1 again to account for the divide by 2.




--main = print $ foldr (*) 1 (take 8 primes)


{-
main = do
    print $ factorCount 10
    print $ head $ filter (>=40) factorPairings
-}