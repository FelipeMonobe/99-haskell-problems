{--

11. Modified run-length encoding. Modify the result of problem 10 in such a
way that if an element has no duplicates it is simply copied into the result
list. Only elements with duplicates are transferred as (N E) lists.

--}

module Exercises.Lists2.Exercise11
( encodeModified
, ListItem (Single, Multiple)
) where

import Data.List(group)

data ListItem a = Single a | Multiple Int a
    deriving (Show, Eq)

encodeModified :: (Eq a) => [a] -> [ListItem a]
encodeModified xs = map (\x -> if length x == 1
                               then Single (head x)
                               else Multiple (length x) (head x)
                        ) $ group xs
