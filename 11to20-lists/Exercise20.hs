{--

20. Remove the K'th element from a list.

--}

module Exercise20
( removeAt
) where

removeAt :: (Eq a, Ord a) => Int -> [a] -> (a, [a])
removeAt 1 (x:xs) = (x, xs)
removeAt n xs
  | n >= length xs = (head xs, [])
  | otherwise      = (i, filter (/= i) xs)
    where i = xs !! (n - 1)

