{--

1. Find the last element of a list.

--}

module Exercises.Lists1.Exercise1
( myLast
) where

myLast :: [a] -> Maybe a
myLast [] = Nothing
myLast xs = Just $ last xs
