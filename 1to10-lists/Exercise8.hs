{--

8. Eliminate consecutive duplicates of list elements. If a list contains
repeated elements they should be replaced with a single copy of the element.
The order of the elements should not be changed.

--}

module Exercise8
( compress
) where

import Data.List(group)

compress :: (Eq a) => [a] -> [a]
compress = map head . group
