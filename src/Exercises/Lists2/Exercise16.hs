{--

16. Drop every N'th element from a list.

--}

module Exercises.Lists2.Exercise16
( dropEvery
) where

dropEvery :: [a] -> Int -> [a]
dropEvery [] _ = []
dropEvery xs 0 = xs
dropEvery xs 1 = []
dropEvery xs n = extract $ splitAt n xs
  where extract (xs, ys) = take (n - 1) xs ++ dropEvery ys n
