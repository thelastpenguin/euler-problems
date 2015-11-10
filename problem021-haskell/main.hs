d n = sum [n' | n' <- [1..(n - 1)], n `rem` n' == 0]
d' = map d [1..]
