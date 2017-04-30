{--

15. Replicate the elements of a list a given number of times.

--}

module Exercises.Lists2.Exercise15
( repli
) where

repli :: [a] -> Int -> [a]
repli [] _ = []
repli (x:xs) n = replicate n x ++ repli xs n
