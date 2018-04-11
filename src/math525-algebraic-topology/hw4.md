---
title: Math 525 - Algebraic Topology - Homework 3
---

1.  The preimage of each open neighbourhood $U$ in $A$ is set of disjoint open
    sets in $X$ all in $p^{-1}(A)$. 

    Since $\squiggle X$ with $p$ is a
    covering space each of the open sets in the preimage are
    mapped homeomorphicly into $U$ by $p$ and so by $p|_{\squiggle A}$.

2.  ($\Rightarrow$) Compact: Let $C$ be cover of $X$. Then, its preimage
    is a cover of $\squiggle X$ and it must have a finite subcover
    $\squiggle F$. Let $F = p(\squiggle F)$. Since $\squiggle F$ covers
    $\squiggle X$ $p(\squiggle F)$ must cover $p(\squiggle X)$ i.e. $A$,
    and $A$ is compact.

    Haussdorff: Take two points in $X$. If they do not have any shared
    neighbourhoods then we are done. Otherwise, take one such
    neighbourhood $U$ with preimage $\squiggle U$. The preimage of these
    two points in $\squiggle X$ are distinct since $p$ maps $\squiggle U$ homeomorphicly
    to $U$. Since $\squiggle X$ is Haussdorff, there are two disjoint open neighbourhoods
    containing the preimages of the points. Mapping these points back into
    $X$ gives us two distinct neighbourhoods since $\squiggle U$ is mapped homeomorphicly
    and we can assume that these neighbourhoods are subsets of $\squiggle U$ (otherwise
    take their intersection with $\squiggle U$).

    ($\Leftarrow$)
    Compact: Take a cover $\squiggle C$ of $\squiggle X$. Its image is
    a cover of $X$ and so has a finite subcover. The preimage of this subcover
    is finite (since $p^{-1}(U)$ is a finite number of disjoint open sets). 

    Haussdorff: Take two distinct  points sharing a neighbourhood $\squiggle U$ in $\squiggle X$.
    The images of these points are distinct in $X$ since $p$ maps the neighbourhood homeomorphicly
    and they have distinct neighbourhoods since $X$ is Haussdorff.
    Since $U$ and $\squiggle U$ are homeomorphic, the preimage of these two neighbourhood
    are disjoint and $\squiggle X$ is Haussdorff.

3.  $Y$ is a covering space of $Z$, and so $f$ is a lift of $g \compose f$
    to $Y$. By the lifting criterion, $gf_*(\FundGroup(X)) \subset g*(\FundGroup(Y))$.
    
    Consider a point $y \in Y$, and a path connected neighbourhood $U_Y$.
    Its image $U_Z$ by $g$ is an open path connected neighbourhood in $Z$, $U_Z$.
    Now, since $X$ covers $Z$ via $f;g$, the preimage of $U_Z$ in $X$ is a set of disjoint homeomorphic open sets.

    Now, $f^{-1}(U_Y)$ is a subset of $(f;g)^{-1}(U_Z)$.

    incomplete

4.  Let $p : X \to Y$. Map each vertical segment between integers to the
    $a$ loop, horizontal to the $b$ loop in the positive direction.

    Since loops must take an integer number of steps along each axis,
    and return to the origin, the subgroup contains all words with an
    equal number of $a$s and $a^{-1}$s, and also $b$s and $b^{-1}$s.
    Thus it is the group $\angleb{ a^nb^ma^{-n}b^{-m} : m, n \in \N }$
    the commutator of $a, b$.

5.  `(a)` In this case there is a point on the sphere, where single loop
    leaves and returns. The preimages of this point's neighbourhood must preserve this.
    Since a sphere is simply connected we can form this a chain of spheres
    attached by a line tangent to each sphere.

    $$\begin{aligned}\\ \\ \\ \\ \\ \\\end{aligned}$$

    \pagebreak
    `(b)` In this case there is a point on the sphere, where single loop
    leaves and and another where it returns.
    Since a sphere is simply connected we can form this a chain of spheres
    attached by line segments between each sphere.

    $$\begin{aligned}\\ \\ \\ \\ \\ \\\end{aligned}$$
    
    `(c)` In this case the sphere attaches directly to itself, 
    and we can form a simply connected space by attaching a string of spheres.

    $$\begin{aligned}\\ \\ \\ \\ \\ \\\end{aligned}$$
    
    `(e)` Starting with an open disk, where at an infinite amount points
    e.g. at $\{ (1 - 1/n, 1 - 1/m, 0 ) : n, m \in \N - 0 \}$
    we attach a sphere. At the other point of the shere, we attach a similarly
    contructed open disk, and so on.
    
