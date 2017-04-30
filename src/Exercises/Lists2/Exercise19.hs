{--

19. Rotate a list N places to the left. Hint: Use the predefined functions
length and (++).

--}

module Exercises.Lists2.Exercise19
( rotate
) where

rotate :: [a] -> Int -> [a]
rotate [] _ = []
rotate xs 0 = xs
rotate xs n = if n < 0
              then take (length xs) (drop (length xs + n) (cycle xs))
              else take (length xs) (drop n (cycle xs))
