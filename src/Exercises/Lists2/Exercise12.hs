{--

12. Decode a run-length encoded list. Given a run-length code list generated
as specified in problem 11. Construct its uncompressed version.

--}
module Exercises.Lists2.Exercise12
( decodeModified
) where

import Exercises.Lists2.Exercise11

decodeModified :: [ListItem a] -> [a]
decodeModified = concatMap decodeHelper
    where
      decodeHelper (Single x)     = [x]
      decodeHelper (Multiple n x) = replicate n x
