{--

17. Split a list into two parts; the length of the first part is given.

--}

module Exercises.Lists2.Exercise17
( split
) where

split :: [a] -> Int -> ([a], [a])
split xs n = splitAt n xs
