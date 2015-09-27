import Data.List
import qualified Data.Set as Set


merge [] ys = ys
merge (x:xs) ys = x:merge ys xs


prime_factors 1 = []
prime_factors n
  | factors == []  = [n]
  | otherwise = factors ++ prime_factors (n `div` (head factors))
  where factors = take 1 $ filter (\x -> (n `mod` x) == 0) [2 .. n-1]
prime_factors_inclusive n = n : (prime_factors n)
 
unique :: Ord a => [a] -> [a]
unique = Set.toList . Set.fromList

prime_factors_of_number_range :: Integer -> [Integer]
prime_factors_of_number_range 1 = []
prime_factors_of_number_range a = union (prime_factors_inclusive a) (prime_factors_inclusive (a - 1))

main = do 
    print "this does not work"
    let uniquePrimeFactorsOfRange = prime_factors_of_number_range 20
    let listProduct = foldl (\acc x -> acc * x) 1 uniquePrimeFactorsOfRange
    print listProduct
