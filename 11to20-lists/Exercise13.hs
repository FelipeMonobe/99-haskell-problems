{--

13. Run-length encoding of a list (direct solution). Implement the so-called
run-length encoding data compression method directly. I.e. don't explicitly
create the sublists containing the duplicates, as in problem 9, but only
count them. As in problem P11, simplify the result list by replacing the
singleton lists (1 X) by X.

--}

module Exercise13
( encodeDirect
) where

import Exercise11

encode' :: Eq a => [a] -> [(Int,a)]
encode' = foldr helper []
    where
      helper x [] = [(1,x)]
      helper x (y@(a,b):ys)
        | x == b    = (1+a,x):ys
        | otherwise = (1,x):y:ys

encodeDirect :: Eq a => [a] -> [ListItem a]
encodeDirect = map encodeHelper . encode'
    where
      encodeHelper (1,x) = Single x
      encodeHelper (n,x) = Multiple n x
