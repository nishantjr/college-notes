- Brouwer Fixed Point
    - Ham Sandwidch
- Induced homomorphisms
    - This is what makes Fundamental Group a functor:
        - $(\phi ; \psi)_* = \phi_* ; \psi_*$
        - $\id_* = \id$
    - Induced homomorphism of 
        - retracts are injective
        - deform retracts are isomorphisms
- Bursuk-Ulam
- Van Kampen
    - Application to Cell Complexes
- Covering Spaces
    - Lifting properties
    - Classification
    - Universal Covering Spaces
    - Deck transformations


Ask at office hours

--


Homotopy on spaces $X$ and $Y$
:   is a family of maps $f_t$ from $X$ to $Y$, $t \in \closedUnitInterval$ such that
    $f(x, t) := f_t(x)$ is continuous.
:   a continuous transformation of (continuous) maps from one space to another

$f_0, f_1$ homotopic maps ($f_0 \homotopic f_1$)
:   iff there exists a homotopy between them. (i.e. they are the
    endpoints of a homotopy)

Homotopy relative to $A$
:   is a homotopy from $f: X \to X$ such that $f | A = 1$

Homotopic equivalence $h: X \to Y$, $X, Y$ have same homotopic type
:   if there is a map $g: Y \to X$ s.t. $gh \homotopic 1$ and $hg = 1$

Homeomorphic spaces
:  if there is a bi-continuous function map between them
:  if there is a continuous bijection whos inverse is continuous

??? If two spaces are subsets of the same (simply connected space) then
    homotopy = homotopy-equivalance.

Homotopic-equivalent vs Homeomorphic
:   The letters `X` and `Y` are homotopy-equivalent, but they are not homeomorphic.

Contractible, Nullhomotopic space:
:   $\id_X$ homotopic to the constant map
:   has homotopy equivalent to a point

Mapping cylinder for two disjoint spaces $X$ and $Y$, map $f: X \to Y$
:   The mapping cylinder is the quotient of the disjoint union of
    $X \times I$ and $Y$, modulo $f(x) = y$

Deformation retraction of a space $X$ onto a subspace $A$:
:   a homotopy between $X$ and $X$, such that

    -   $f_0 = 1$
    -   $f_1 = A$
    -   $f_t|A = 1 \forall t$

Simply connected
:   can shrink any closed curve to a point

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

  $\RP^2$ Real projective plane                             
  --------------------------------------------------------------------------------------------

Real Projective Plane $\RP^2$
:   set of lines through the origin
:   sphere, identifying antipodal points
:   points can be represented using homogenuous coordinates:
    $\R^3 /_{(x, y, z) \squiggle (rx, ry, rz)}$

`fmap[`$\FundGroup$`]`{ maps into a space $X$ } are injective if:

- the map is a covering space
- the image of $X$ is a retract; Deform retract implies isomorphism

Covering spaces
===============

Covering space of $X$
:   is a space $\bar X$ with a map $p : \bar X \to X$ such that

    $\forall x\in X$, there is a neighbourhood $U$ such that $p^{-1}(U)$
    is the disjoint union of open sets in $\bar X$

    Each of these open sets in $\bar X$:

      * are homeomorphic to $U$
      * are called sheets of $\bar X$ over $U$

: Open sets in $X$ have images that are disjoint unions of open sets in the
  covering space $\squiggle X$

Unique Lifting Property
:   | Given
    |       a covering space $p: \squiggle X \to X$,
    |       a map $f: Y \to X$   (e.g. a path, homotopy...)
    | then if two lifts of $f$ agree at one point in $Y$ and $Y$ is connected
    |       the lifts agree on all of $Y$.


Isomorphism between covering spaces $p_1 : \squiggle X_1 \to X$, $p_2 : \squiggle X_2 \to X$

:   is a homeomorphism $f: \squiggle X_1 \to \squiggle X_2$, such that $p_1 = p_2 f$


Cell Complexes
---------------

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

---

