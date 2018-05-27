---
title: Homework 9
---

## `2.2.14` $f$ is even $\implies \deg f$ is even

Since $f$ is even, we have:
$$\begin{aligned}
              & f &=&\, f \comp (-\id) \\
\implies \deg & f &=&\, \deg (- \id) \deg( f ) \\
\implies \deg & f &=&\, \deg (- \id) \deg( f ) \\
\implies \deg & f &=&\, 0 \quad \text{or} \quad \deg (-\id) = 1 \\
\implies \deg & f &=&\, 0 \quad \text{or} \quad (-1) ^{n-1} = 1 \\
\implies \deg & f &=&\, 0 \quad \text{or} \quad n \text{ is odd} \\
\end{aligned}$$

So either, $n$ is odd, or $f$ has degree 0.

------------------------------------------------------------------------

Let $q: S^n \to \RP^n$ be the quotient map
identifying antipodal points. Define the map $F : \RP^n \to S^n$ such
that the diagram shown commutes. $F$ is well defined since
$f(x) = f(-x)$.

$S^n$ can be composed as a delta complex of two $n-$simplices,
identifying their boundary, an $n-1$ sphere, via the identity map.

$S^n$ as a $\Delta$-complex with the two hemispheres as its
$n-$simplices identified at their boundries via the identity map. Let
$\Delta^n_1$ and $\Delta^n_2$ be these simplices. Then the generator is
$\Delta_1 - \Delta_2$. The map to $\RP^2$ identifies the northern
hemisphere with the southern one by the antipodal map.
$q_*(\Delta_1 - \Delta_2) = 2 q_*(\Delta_1)$.

If $n$ is even, then this is trivial in $\Z_2$ and $f$ has degree $0$.
If $n$ is odd, then $f_*$ must take every  chain in $H(S^n)$ to twice
of some element in $H(S^n)$ giving it an even degree.

## `2.2.21` Euler Characteristic of Union of CW-Complex

Let $P$ and $Q$ be two CW complexes with non-trivial intersections.
Then, their intersections must be contained in some sub-complex of $P$,
and also some subcomplex of $Q$. We can divide each cell in these sub-complexes
into smaller cells, and identify their boundaries to obtain a CW structure
such that $P^n \intersect Q^n = (P\intersect Q)^n$ for all $n$.

Assume that this has been done for the complexes $A, B$ and $X$. Now,
each generator of $C^{CW}_n(A \intersect B)$, i.e. an $n$-cell, maps to
a generator of $A$ and $B$ and then to $X$. Since the $n-$cells of $X$
are the union of those of $A$ and $B$, its generators are the union of
the generators via the map induced by the inclusion. Thus
$|C^{CW}_n(X)| = |C^{CW}_n(A)| + |C^{CW}_n(B)| - |C^{CW}_n(A\intersect B)|$
and $\chi(X) = \chi(A) + \chi(B) - \chi(A\intersect B)$.

## `2.2.38`

Let $T_n = C_n\tensorProduct D_n$.
Let $ab, bc, \ldots$ be the map from $A \to B$, $B \to C$, etc.

We want to show that the maps $ea ; ab$, $bt$ and $te$ and $ea; ab$ form an exact sequence.

The composition of the first two maps, is zero since:

* $ab ; bc = 0$ from the upper exact sequence.
* $ea ; ab ; bd = ea; ad$ by commutativity of the diagram, and the lower sequence.
 
Similarly, the composition of the last two maps is zero since:

* $ce ; ec ; ab = ca ; ab = 0$ by the upper sequence.
* $de; ea = 0$ by the lower sequence.

Since the diagram commutes, we have $bc ; ce$ = $bd ; de$. Since one of the components
in $bt$ has a minus sign in one coordinate, we have $bt; te = 0$.

For each map, we have the image is a subset of the kernel of the next.

$\ker {bt} = \ker{bc} \intersect \ker {bd} = \image {ab} \intersect \ker {bd}$.
But all elements in both the image of $ab$ and kernel of $bd$ must come
from an element of $A$ that is in the kernel of $ad$ by commutativity of
diagram. By exactness of the lower sequence $\ker ad = \image ea$ and so
$\ker {bt} = ab(ea(E_{n+1})) = \image {ea; ab}$.

Let $b_i$ be the generators of $B_n$. Then
$\image bt = \image bc \tensorProduct \image bd$ has generators
$bc(b_i) \tensorProduct (- bd(b_i))$. The kernel of $te$ is the set of
elements $(c, d)$ such that $de(d) = ce(c)$. All elements in the image
of $bt$ have this property.

$\image te = \image ce \intersect \image de = \image ce \intersect \ker ea$,
i.e the elements coming from $C_n$ that are in the kernel of $ea$. 
By commutativity, and exactness of the upper sequence, these are the elements
in the kernel of both $ea$ and $ab$, i.e. in the kernel of $ea; ab$.
