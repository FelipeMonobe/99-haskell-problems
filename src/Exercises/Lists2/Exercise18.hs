{--

18. Extract a slice from a list. Given two indices, i and k, the slice is
the list containing the elements between the i'th and k'th element of the
original list (both limits included). Start counting the elements with 1.

--}

module Exercises.Lists2.Exercise18
( slice
) where

slice :: [a] -> Int -> Int -> [a]
slice [] _ _ = []
slice xs 0 _ = []
slice xs _ 0 = []
slice xs y z = drop (y - 1) $ take z xs
