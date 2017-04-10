import Data.List(group)

-- 1. Find the last element of a list.
myLast :: [a] -> Maybe a
myLast [] = Nothing
myLast xs = Just $ last xs

-- 2. Find the last but one element of a list.
myButLast :: (Ord a) => [a] -> Maybe a
myButLast [] = Nothing
myButLast xs
  | length xs < 2 = Nothing
  | otherwise     = Just $ last $ init xs

-- 3. Find the K'th element of a list. The first element in the list is number 1.
elementAt :: (Ord a) => [a] -> Int -> Maybe a
elementAt [] _ = Nothing
elementAt xs x
  | x <= 0    = Nothing
  | otherwise = Just $ xs !! (x - 1)

-- 4. Find the number of elements of a list.
myLength :: [a] -> Int
myLength = length

-- 5. Reverse a list.
myReverse :: [a] -> [a]
myReverse = reverse

-- 6. Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = True
isPalindrome [_] = True
isPalindrome xs
  | xs == reverse xs = True
  | otherwise        = False

-- 7. Flatten a nested list structure.
data NestedList a = Elem a | List [NestedList a]
flatten :: NestedList a -> [a]
flatten (Elem x)  = [x]
flatten (List xs) = concatMap flatten xs

-- 8. Eliminate consecutive duplicates of list elements. The order of the elements should not be changed.
compress :: (Eq a) => [a] -> [a]
compress = map head . group

-- 9. Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.
pack :: (Eq a) => [a] -> [[a]]
pack = group

-- 10. Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method.
-- Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.
encode :: (Eq a) => [a] -> [(Int, a)]
encode xs = map (\x -> (length x, head x)) $ group xs

