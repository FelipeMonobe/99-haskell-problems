{--

14. Duplicate the elements of a list.

--}

module Exercise14
( dupli
) where

dupli :: [a] -> [a]
dupli [] = []
dupli (x:xs) = replicate 2 x ++ dupli xs
