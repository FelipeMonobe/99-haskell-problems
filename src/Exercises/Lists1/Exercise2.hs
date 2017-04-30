{--

2. Find the last but one element of a list.

--}

module Exercises.Lists1.Exercise2
( myButLast
) where

myButLast :: (Ord a) => [a] -> Maybe a
myButLast [] = Nothing
myButLast xs
  | length xs < 2 = Nothing
  | otherwise     = Just $ last $ init xs
