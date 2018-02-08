> Note: We assume:
>
> -   All maps continuous
> -   All spaces connected

$I := [0, 1]$

Homotopy between spaces $X$ and $Y$:

:   a family of maps $f_t : X \to Y, t \in I$

    -   $f(x, t) := f_t(x)$ is continuous

:   a continuous transformation of (continuous) maps from one space to another

$f_0, f_1$ homotopic maps ($f_0 \homotopic f_1$)
:   iff there exists a homotopy between them. (i.e. they are the
    endpoints of a homotopy)

Homotopy relative to $A$
:   is a homotopy from $f: X \to X$ such that $f | A = 1$

Homotopic Equivalence $h: X \to Y$, $X, Y$ have same homotopic type
:   if there is a map $g: Y \to X$ s.t. $gh \homotopic 1$ and $hg = 1$

Contractible
:   has homotopy of a point

Nullhomotopic
:   homotopic to the constant map

Mapping cylinder for two disjoint spaces $X$ and $Y$, map $f: X \to Y$
:   The mapping cylinder is the quotient of the disjoint union of
    $X \times I$ and $Y$, modulo $f(x) = y$

Deformation retraction of a space $X$ onto a subspace $A$:

:   a homotopy between $X$ and $X$, such that

    -   $f_0 = 1$
    -   $f_1 = A$
    -   $f_t|A = 1 \forall t$

simply connected
:   Can shrink any closed curve to a point

Cell Complexes
---------------

XXX


Topology
: assigins discrete algebraic invariants to topological spaces and continuous maps

Homotopy $h : p \homotopic q$ between maps $p, q: X \to Y$
:   is a continuous map $h : X \times I \to Y$ such that
    * $h(x, 0) = p(x)$
    * $h(x, 1) = q(x)$

Path $p$
: continuous function from $I \to X$

Path homotopy
:   two paths from $f, g: x \to y$ are homotopic iff there is a homotopy $h: I \times I \to X$
    such that:
        * (paths are homotopic) $h(s, 0) = f(s)$, $h(s, 1)$
        * (endpoints match)     $h(0, t) = x$,    $h(1, t) = y$

Fundamental Group based at point $x_0 \in X$ ($\Pi_1(X, x_0)$
:   * Underlying set := Equivalence classes of paths starting at $x_0$
    * Inverse        := Follow path in other direction
    * Addition       := Path concatenation
    * Identity       := Constant path $f: t \mapsto x_0$


Common Topological spaces
--------------------------

  --------------------------------------------------------------------------------------------
  Space                                                       $\Pi_1(X)$
  ------------------------------------- ------------------------------------------------------
  $\R^n$                                                         $0$

  Disk                                                           $0$
  $D^n = \{ x \in \R^n : |x| \le 1\}$   

  Circle $\S^1$                                                  $\Z$

  $n-$sphere $\S^n, n>2$                                         $0$

  Torus                                     $F(a, b) / \angleb{ab a^{-1}b^{-1}} \iso \Z^2$

  Two-hole donut                         $F(a, b) / \angleb{ab a^{-1}b^{-1} cd c^{-1}d^{-1}}$

  Direct Product $X\times Y$                          $\Pi_1(X) \times \Pi_1(Y)$
          
  $\R P^2$ Projective plane                             
  --------------------------------------------------------------------------------------------

Paths and Homotopy
------------------

path in a space $X$
:   continuous map $f : I \to X$

Homotopy of paths $p_0, p_1$ in $X$
:   is a family of maps $f_t : I \to X$

    1.  $f_t(0) = p_0$ and $f_t(1) = p_1$ for all $t$
    2.  $f(s, t) := f_t(s)$ is continuous
    ---
    3.  $f_0 = p_0$, $f_1 = p_1$
    
---
    
: Homotopic reative to endpoint

:   Two paths thus connected are homotopic

Linear Homotopy, re-parameterization
:   When two paths are the same except for the "speed" at which they move
:   e.g. in $\R^n$: Two paths homotopic via $f_t(s) = (1 - t)f_0(s) + tf_1(s)$

Homotopy class
:   


Homotopy group of Circle is Z
- covering map


---

### Homotopic-equivalent vs Homeomorphic

Let $X$ be the letter $\mathsf{X}$ and $Y$ be the letter $\mathsf{Y}$
Then $X$ and $Y$ are homotopy-equivalent, but they are not homeomorphic.

**Sketch proof:** let $f:X\to Y$ map three of the prongs of the
$\mathsf{X}$ on to the $\mathsf{Y}$ in the obvious way, and let it map
the fourth prong to the point at the centre. Let $g:Y\to X$ map the
$\mathsf{Y}$ into those three prongs of the $\mathsf{X}$. Then $f$ and
$g$ are both continuous, and $f$ is a surjection but is not injective,
while $g$ is an injection but is not surjective. Now the compositions
$f\circ g$ and $g\circ f$ are both easily seen to be homotopic to the
identities on $X$ and $Y$, so $X$ and $Y$ are homotopy-equivalent.
In other words, observe that $\mathsf Y$ is a *deformation retract* of
$\mathsf X$. Alternatively, observe that $\mathsf X$ and $\mathsf Y$
both retract on to the point at the centre.

On the other hand, $X$ and $Y$ are not homeomorphic. For example,
removing the point at the centre of the $\mathsf{X}$ yields a space with
four connected components, while removing any point from the
$\mathsf{Y}$ yields at most three connected components.
