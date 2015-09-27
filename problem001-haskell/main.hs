main :: IO ()

isCool :: Integer -> Bool
isCool x = x `mod` 3 == 0 || x `mod` 5 == 0

addIfCool a b | a `mod` 3 == 0 = a + b 
addIfCool a b | a `mod` 5 == 0 = a + b
addIfCool a b | otherwise = b


main = print $ foldr addIfCool 0 $ take 1000 [1..]
