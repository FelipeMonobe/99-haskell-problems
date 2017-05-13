{--

23. Extract a given number of randomly selected elements from a list.

--}

module Exercises.Lists3.Exercise23
( rndSelect
) where

import System.Random(getStdGen,randomRs)

rndSelect :: [a] -> Int -> IO[a]
rndSelect xs n = do
          gen <- getStdGen
          let rNums = randomRs (1, length xs - 1) gen
          let idxs  = take n rNums 
          return $ map (\x -> xs !! x) idxs
