{--

6. Find out whether a list is a palindrome. A palindrome can be read forward
or backward; e.g. (x a m a x).

--}

module Exercise6
( isPalindrome
) where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = True
isPalindrome [_] = True
isPalindrome xs
  | xs == reverse xs = True
  | otherwise        = False
