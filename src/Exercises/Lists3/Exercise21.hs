{--

21. Insert an element at a given position into a list.

--}

module Exercises.Lists3.Exercise21
( insertAt
) where

insertAt :: a -> [a] -> Int -> [a]
insertAt x ys n = start ++ [x] ++ end
  where start   = take (n-1) ys
        end     = drop (n-1) ys
