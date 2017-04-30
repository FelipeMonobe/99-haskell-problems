{--

3. Find the K'th element of a list. The first element in the list is
number 1.

--}

module Exercises.Lists1.Exercise3
( elementAt
) where

elementAt :: (Ord a) => [a] -> Int -> Maybe a
elementAt [] _ = Nothing
elementAt xs x
  | x <= 0    = Nothing
  | otherwise = Just $ xs !! (x - 1)
