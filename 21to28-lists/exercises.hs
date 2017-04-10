-- 21. Insert an element at a given position into a list.

-- 22. Create a list containing all integers within a given range.

-- 23. Extract a given number of randomly selected elements from a list.

-- 24. Lotto: Draw N different random numbers from the set 1..M.

-- 25. Generate a random permutation of the elements of a list.

-- 26. Generate the combinations of K distinct objects chosen from the N
-- elements of a list. In how many ways can a committee of 3 be chosen from a
-- group of 12 people? We all know that there are C(12,3) = 220 possibilities
-- (C(N,K) denotes the well-known binomial coefficients). For pure
-- mathematicians, this result may be great. But we want to really generate all
-- the possibilities in a list.

-- 27. Group the elements of a set into disjoint subsets.

-- A) In how many ways can a group of 9 people work in 3 disjoint subgroups of
-- 2, 3 and 4 persons? Write a function that generates all the possibilities
-- and returns them in a list.

-- B) b) Generalize the above predicate in a way that we can specify a list of
-- group sizes and the predicate will return a list of groups.

-- Note that we do not want permutations of the group members;
-- i.e. ((ALDO BEAT) ...) is the same solution as ((BEAT ALDO) ...). However,
-- we make a difference between ((ALDO BEAT) (CARLA DAVID) ...) and
-- ((CARLA DAVID) (ALDO BEAT) ...).
-- You may find more about this combinatorial problem in a good book on
-- discrete mathematics under the term "multinomial coefficients".

-- 28. Sorting a list of lists according to length of sublists
-- A) We suppose that a list contains elements that are lists themselves. The
-- objective is to sort the elements of this list according to their length.
-- E.g. short lists first, longer lists later, or vice versa.

-- B) Again, we suppose that a list contains elements that are lists
-- themselves. But this time the objective is to sort the elements of this list
-- according to their length frequency; i.e., in the default, where sorting is
-- done ascendingly, lists with rare lengths are placed first, others with a
-- more frequent length come later.
