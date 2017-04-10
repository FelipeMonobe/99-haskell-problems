{--

26. Generate the combinations of K distinct objects chosen from the N
elements of a list. In how many ways can a committee of 3 be chosen from a
group of 12 people? We all know that there are C(12,3) = 220 possibilities
(C(N,K) denotes the well-known binomial coefficients). For pure
mathematicians, this result may be great. But we want to really generate all
the possibilities in a list.

A) In how many ways can a group of 9 people work in 3 disjoint subgroups of
2, 3 and 4 persons? Write a function that generates all the possibilities
and returns them in a list.

B) Generalize the above predicate in a way that we can specify a list of
group sizes and the predicate will return a list of groups.

Note that we do not want permutations of the group members;
i.e. ((ALDO BEAT) ...) is the same solution as ((BEAT ALDO) ...). However,
we make a difference between ((ALDO BEAT) (CARLA DAVID) ...) and
((CARLA DAVID) (ALDO BEAT) ...).
You may find more about this combinatorial problem in a good book on
discrete mathematics under the term "multinomial coefficients".

--}
