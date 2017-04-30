{--

10. Run-length encoding of a list. Use the result of problem P09 to
implement the so-called run-length encoding data compression method.
Consecutive duplicates of elements are encoded as lists (N E) where N is the
number of duplicates of the element E.

--}

module Exercises.Lists1.Exercise10
( encode
) where

import Data.List(group)

encode :: (Eq a) => [a] -> [(Int, a)]
encode xs = map (\x -> (length x, head x)) $ group xs
