Look at:
 * Dedeking cuts
 * Which bits are 1st order logic and which are set theory
   - Logical inference systems

A First order logic _theory_ provides:
- Language: $x \in y$, $x = y$, $(\exists x) \phi$ ....
    
- Axioms: List of formulae that are assumed true

Relative consistency axioms


first order logic's inference rules 

Zermelo Fraenkel set theory (with choice)

1. Null set exists: $\exists x: \forall y, y \notin x$

   The null set exists

2. Extensibility: $(\forall X, Y)((\forall e)e \in X \Leftrightarrow e \in Y) \Longrightarrow X = Y$

   Definition of equality

3. ~~Comprehension: For any $\phi$ in the language of set theory $\mathcal L$, $(\exists! X)(\forall e \in X \Longleftrightarrow \phi)$~~

   Fails because the set of all non-circular sets is a paradox.

.

3. Separation: For any $\phi$ in the language of set theory $\mathcal L$,
   $(\forall \mathcal U)(\exists! X)(\forall e \in X \Longleftrightarrow e \in \mathcal U ^ \phi)$



# Exercise 2

Assuming that the set N of natural numbers has been fully axiomatized
in set theory, and in particular that all the natural numbers 0, 1, 2, 3, etc.,
and the multiplication operation2 · on natural numbers have been axiomatized in
this way, write a formula that, using the axiom of separation, can be used to
define the set of prime numbers as a subset of N.

$P = \{ x | \forall a, b \in \mathbb N; a, b \ne 1; x \ne a\cdot b; x \in \mathbb N \}$

---


