---
title: Homework 8 - Math 525
---

### `(1)`

Since $(X, A)$ is a pair, i.e. $A$ is subspace of $X$, $(X \times Z, A \times Z)$
is also a pair.
Given a map, $f: (X, A) \to (Y, B)$, define the map $f_z: (x, z) \mapsto (f(x), z)$.

a.  We have $(f g)_z = (f_z) (g_z)$ and so $(f g)_{z*} = f_{z*} g_{z*}$
b.  If $f, g$ are homotopic through maps that send $A$ to $B$, then
    they are $f_z$ and $f_z$ are homotopic through maps that send $A\times Z \to B\times Z$
c.  Since the closure of a product is the product of the closure,     
    we have $\bar{ V\times Z} \subset { A\times Z}^{\cdot}$, and
    by excision, $H_n^Z(X\setminus V, A\setminus V) \to H^Z_n(X, A)$
    is an isomorphism.
d.  

e.  Since $X$ is the disjoint union of connected spaces $X_\alpha$, then
    $X\times Z$ is the disjoint union of connected spaces $X_\alpha \times Z$
    and $H_n^Z(X) = \oplus_a H_n^Z(X_\alpha)$.

### `2.1:` For any continuous function $f : D^n \to D^n$ there is a point such that $f(x) = x$.

Let $p: S^n \to D^n$ map the hemispheres to the disk, with the equator mapped
to the boundry of the disk.
Let $s: D^n \to S^n$ map the disk to the southern hemisphere, with the boundary
mapping to the equator.

Since $m$ is not surjective it has degree 0. But maps $S^n \to S^n$
that have no fixed points cannot have degree zero.

So there is a point $x$, such that $m(x) = p(f(s(x)) = x$. Since no
point in the northern hemisphere (minus the equator) can be fixed, $x$
must be in the southern hemisphere. But, $p$ and $s$ restricted to the
southern hemisphere are bijections between the southern hemisphere and
the disk. Thus $f$ must have a fixed point.

### `2.2:` Maps $f: S^{2n} \to S^{2n}$ have either $f(x) = x$, or $f(x) = -x$ for some $x$.

Suppose $f$ has no fixed points. Then the degree is $(-1)^{2n + 1} = -1$.
Now, consider, the map $f \compose a$, where $a$ is the antipodal map.
This has degree $1$, for $2n-$sphere and must have a fixed point.
Thus, $a(f(x)) = x$ for some $x$, but $a\compose a = \id$ and so
$f(x) = a(x) = -x$.

Since the real projective plane can be defined as $n-$spheres with
antipodal points identified, $\RP^{2n}$ must have fixed points.

In $\R^2$, rotation be $\pi/2$ radians is a transformation who's only fixed
point is the origin. Since no point maps to its antipodal point, this rotation
acting on $\RP$ as an embedding in $R^2$ with antipodal points identified
admits no fixed points.

Consider $\RP^{2n+1}$ as an embedding in $\R^{2n+2}$. If we have a
transform on $\R^{2n}$ that only fixes the origin, and does not let
points map to antipodal points, then the transform obtained by rotating
by $\pi/2$ on the additional two components, and applying the previous
transform on the remaining is the required map. i.e.
$$T = \begin{bmatrix}
0      & -1     & \cdots &        &        & 0         \\
1      & 0      & \cdots &        &        & 0         \\
0      & 0      & 0      & -1     & \cdots & \vdots    \\
0      & 0      & 1      & 0      & \cdots & \vdots    \\
\vdots & \vdots &        & \ddots &        &           \\
0      & 0      &        &        & 0      & -1        \\
0      & 0      &        &        & 1      & 0
\end{bmatrix}$$

### 2.7

### 2.8

Consider the one-point contraction of $\C = \S^2$ as built up from two
$2-$simplices $(U, V)$, three $1-$simplexes $(a, b, c)$ and three
$0-$simplices $(v_1, v_2, v_3)$.

\newcommand \p {p_{*}} 

For a polynomial $(z - z_1)(z -z_2) \cdots (z-z_n)$ of degree $n$, the
preimage of the origin are the roots of that polynomial
$z_1, \ldots, z_n$ (allowing for repeared roots).

Let $z_1, \ldots, z_m$ be a root of multiplicity $m$. Then for points
within a small enough neighbourhood of $z_0$ approximate
$(z - z_0)^m(z_0 - z_{m+1})\cdots(z_0 - z_{n})$, and so is locally homotopic
to $(z - z_0)^m z_c$, where $z_c$ is some constant.
With a change of cordinates, this becomes $z^m$ and has local degree $m$.

Since the degree of a map is sum of its local degree, the degree of a polynomial
becomes the sum of the multiplicities of its roots, i.e. its degree.
