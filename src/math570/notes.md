Structure
:   $\mathcal S = (S, C, F, R)$: Set, Constants, Functions and Relations. 

Signature
:   $\sigma = (C, F, R, a)$ constant symbols, function and relation symbols, a is the arity functions
    (pairwise disjoint)

$\sigma-$structure
:   $(S, i)$ set, interpretation from $C \union F \union R \to$ a function / relation
    of the correct arity.


$\sigma-$substructure
:   1.  Sets are subsets
    2.  Constants have same interpretation,
    3.  Functions of $B$ are their restriction to $A$.
    4.  $R^A = R^B \cup A^{a(R)}$

$\sigma-$embedding
:   $h: A \to B$ is an embedding iff $A \cong h(A)$
