(Left) Group Action (denoted $g.x$)
: Given group $G$, any set $X$, then $f: G\times X\to X$ is a group action iff,
  $\forall a, b \in G, x \in x$:
  * Associative: $(ab).x = a.(b.x)$
  * $e.x = x$
: A left action of $G$ on $X$ is a group homomorphism $\varphi: G\to Sym(X)$,
  the permutations of elements of $X$

---

Orbit $O(x)$
: Given, group $G$ acts (left) on $X$, $x, y \in X$ are in the same orbit iff $y
  = g.x$ for some $g \in G$

## Left group homomorphisms are an *Equivalence Relation*, the *orbits* are the equivalance classes

Define $\sim$ on $X$ as: $x\sim y \Longleftrightarrow y = g.x$ for some $g \in
G$  That is $x\sim y$ iff they share the same "orbit".

*  Reflexive: $x \sim x$, since $x = e.x$
* Symmetry: $x \sim y \Rightarrow y = g.x \Rightarrow g^{-1}.y = g^{-1}.(g.x) = (g^{-1}g).x = e.x = x$
* Transitive: $x \sim y, y \sim z \Rightarrow y = g_1.x, z = g_2.y \Rightarrow z = g_2.(g_1.x) = (g_2g_1).x \Rightarrow x \sim z$

This means that (left) group actions partition the group.

Transitive
: Single orbit for group action

Stabalizer
: $\text{Stab}(x) = \{ g \in G : g.x = x \}$  

  $\text{Stab}(x)$ is a subgroup of $G$

Normalizer
: For the action conjugation of subgroups, $\text{Normalizer}(H) = N_G(H) :=
\text{Stab}(H)$
: (?) Largest subgroup that $S$ is a subset of a normal subgroup of.

Centeralizer
: For the action conjugation of elements of the group, $\text{Centeralizer}(g) = \text{Cent}(g) = \text{Stab}(g)$
: $C_G(S) =\{ g \in G : gs = sg, \forall s \in S \} =  \{ g \in G : sgs^{-1} =g, \forall s \in S \}$
: Set of all elements that commute with elements of $S$
: (?) Largest subgroup that $S$ is a subset of the center of.

conjugate (of elements; $x, y \in G$)
: $x$ and %y$ are conjugate iff for some $g \in G$, $gxg ^{-1} = y$

conjugacy class
: Orbits of this action atr conjugacy class.
: Classes of element conjugate to each other.
: $\{g \in G : \exists\, a \in G: g = aga ^{-1} \}$

## Proposition 5.1.13: $G/\text{Stab}(X) \cong O(x), \phi(g \text{Stab}(x)) = gx$ 

## Example: $G$ "acts" on itself by left multiplication; $g.a := ga$
* Transitive

## Example: $G\to G/H$ by "left translation": $g.aH := (ga)H
* Transitive

## Example: $G$ "acts" on itself, by conjugation
## Example: $G$ "acts" on it's subgroups, by conjugation
