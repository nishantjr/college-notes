(Left) Group Action (denoted $g.x$)
: Given group $G$, any set $X$, then $f: G\times X\to X$ is a group action iff, $\forall a, b \in G, x \in x$:
  * Associative: $(ab).x = a.(b.x)$ (NOTE: In LHS, a and b are multiplied, but in RHS, only the group action is used)
  * $e.x = x$

[https://www.math.utah.edu/~schwede/math435/GroupSetNotes.pdf](Additional notes) (Not from class)

---

A left action of $G$ on $X$ is "the same" as a group homomorphism $\varphi: G\to Sym(X)$  
XXX: What is $\text{Sym}(X)$?! Permutations of X?

NOTE: This is not tru about right actions of $G$,
since $\varphi: G \to Sym(X)$, $\varphi(g_1, g_2)= \varphi(g_2) \circ \varphi(g_1) \ne \varphi(g_1) \circ \varphi(g_2)$

---

Orbit
: Given, group $G$ acts (left) on $X$, $x, y \in X$ are in the same orbit iff $y = g.x$ for some $g \in G$

Left group homomorphisms are an *Equivalence Relation*:

Define $\sim$ on $X$ as: $x\sim y \Longleftrightarrow y = g.x$ for some $g \in G$  
That is $x\sim y$ iff they share the same "orbit".

* Reflexive: $x \sim x$, since $x = e.x$
* Symmetry: $x \sim y \Rightarrow y = g.x \rightarrow g^{-1}.y = g^{-1}.(g.x) = (g^{-1}g).x = e.x = e$
* Transitive: $x \sim y, y \sim z \Rightarrow y = g_1.x, z = g_2.y \Rightarrow z = g_2.(g_1.x) = (g_2g_1).x \Rightarrow x \sim z$

This means that (left) group actions partition the group.

## Example: $G$ "acts" on itself, with left multiplication

> $g.a := ga$

### is it a group action?
$$\begin{aligned}
(g_1g_2).a &= g_1g_2a \\
           &= g_1.(g_2.a)
\end{aligned}$$
and, $e.a = a$

so it IS a group action.

### How many orbits?

For any $a, b \in G$, we have $b = (ba^{-1}).a = (ba^{-1})a = b$, so ALL elements of $G$ are in the same orbit.  
So only 1 orbit.

Transitive (group action)
: If a group action has exactly one orbit, it's called transitive.

## Example: $G\to G/H$ by "left translation"

> $g.aH := (ga)H

### Is it a group action?
$$\begin{aligned}
(g_1g_2).aH &= (g_1g_2)aH \\
           &= g_1(g_2)aH \\
           &= g1.(g2.aH)
\end{aligned}$$
and, $e.aH = eaH = aH$

So, yes.

### How many orbits?

Here too, we can use $b^{-1}a \in G$: 

$$\begin{aligned}
ba^{-1}.(aH) = 
\end{aligned}$$

## Example: $G$ "acts" on itself, by conjugation

XXX

conjugate (of elements; $x, y \in G$)
: $x$ and %y$ are conjugate iff for some $g \in G$, $gxg ^{-1} = y$

conjugacy class
: Orbits of this action atr conjugacy class.
: Classes of element conjugate to each other.
: $\{g \in G : \exists\, a \in G: g = aga ^{-1} \}$

Centeralizer (of $S \subseteq G$)
: $C_G(S) =\{ g \in G : gs = sg, \forall s \in S \} =  \{ g \in G : sgs^{-1} =g, \forall s \in S \}$
: Set of all elements that commute with elements of $S$
: (?) Largest subgroup that $S$ is a subset of the center of.

## Example: $G$ "acts" on it's subgroups, by conjugation

XXX

Normalizer  (of $S \subseteq G$)
: $N_G(S) = \{ g \in G : gS = Sg \}= \{ g \in G : gSg ^{-1} = S \}$ 
: (?) Largest subgroup that $S$ is a subset of a normal subgroup of.

Note: 

conjugate (of subgroups; $X, Y \le G$)
: $x$ and $y$ are conjugate iff for some $g \in G$, $gXg ^{-1} = Y$
