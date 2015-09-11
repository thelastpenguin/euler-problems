main :: IO ()

isCool :: Integer -> Bool
isCool x = x `mod` 3 == 0 || x `mod` 5 == 0

addIfCool a b = do
	if isCool a
		then b + a
		else b


main = do 
	print (foldr addIfCool 0 [1, 2 .. 999])