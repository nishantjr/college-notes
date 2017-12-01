---
title: Modules
geometry: margin=2cm
---

$R-$module:

:   0.  Ring $R$ of scalars
    1.  Abelian group $M$ of vectors
    2.  Scalar multiplication $\cdot: R\times M \to M$:

        1.  Distributive: $c \cdot (v + w) = c \cdot v + c \cdot w$
            **and** $(a + b) \cdot v = a \cdot v + b \cdot v$
        2.  Associatvie: $a \cdot (b v) = (a b) \cdot v$
        3.  (if $1_R \in R$) $1_R v = v$

Examples
--------

-   All ideals of $R$ are modules
-   Vector spaces are $F$-modules of a Field
-   $R^n$ is an $R-$module
-   If $I \subset R$ annhilates $M$ ( $IM = 0$ ) then $M$ is a
    $R/I-$module.

    If $I$ is maximal, $M$ is a vector space over $R/I$

-   $\Z-$modules are abelian groups. $\Z$-submodules are subgroups
-   $F[x]-$modules: $V$ is a vector space over $F$.\
    $T: V \to V$ linear. Let $p(x)$ act on $V$ as
    $(f, v) \mapsto fv ; (x, v) \mapsto T(v)$

    **All $F[x]$ modules can be constructed like this:**

    $\Big\{ F[x]-\text{module} \Big\} \bijection \Big\{ V, F, T \text{ linear} \Big\}$

Homomorphism
------------

1.  Group homomorphism
2.  $\phi(rm) = r\phi(m)$

NOTE: When $R$ as a $R-$module, ring homomorphism $\ne$ module homomorphism

*   $R = \Z$, $x \mapsto 2x$
    *    is a $\Z-$module homomorphism: $\phi(m n) = 2 m n = m \phi(n)$
    *    is not a ring homomorphism: $\phi(1) = 2 \ne \phi(-1)\phi(-1)$
*   $R = F[x]$, $p(x) \mapsto p(x^2)$
    *    is not a $\Z-$module homomorphism: $\phi(x^2) = x^4 \ne x \phi(x) = x^3$
    *    is a ring homomorphism $\phi(p(x) q(x)) = p(x^2) q(x^2) = \phi(p(x)) \phi(q(x))$
*   For rings has a non-zero-divizor, the only ring homomorphism that is a
    $R-$modules homomorphism is id.

Isomorphism theorems
:   work as in groups, all submodules are "normal"

Homomorphism test
:   $\phi(rx + y) = r \phi(x) + \phi(y)$

$\hom_R(M, N)$ form an $R-$module, $R$ commutative

-   $(\phi + \psi)(x) = \phi(x) + \psi(x)$
-   $(\phi\psi)(rx) = r\phi(\psi(x))$

$\hom_R(M, M)$ is a ring with $1$.

### Examples

1.  $R^n \to R^m$, $n \ge m$, the projection map
2.  When $R$ is a field, linear transformations.
3.  $R = \Z$, homomorphism on groups
4.  If $M, N$ are $R-$modules annhilated by $I$, then any $R-$module
    homomorphism is a $(R/I)-$module homomorphism.

### When are sums and direct products equivalent

TFAE:

-   There is an $R-$module homomorphism from $N \times M \to N + M$
-   $N \intersect M = 0$
-   For all $x \in N + M$, uniquely $x = n + m$

this is written as $R = M \oplus N$

## Free $R-$modules on set $A$

Free $R-$module $F(A)$
:   $x \ne 0 \in F(A) \implies x$ can be expressed uniquely as $r_1 a_1 + r_2 a_2 + \cdots r_n a_n$
:   i.e. Fixing $R$, $A$, $\phi$, $F(A)$ is initial on the class of $R-$modules.

Properties: 

-   If $R$ is commutative, $|A|$ is called the rank of $F$
-   For any set $A$ there is a free $R-$module, $F(A)$, such that, for
    any $R-$module $M$, and a mapping of sets $\phi(a)$, there is a
    unique $R-$module homomorphism, such that $\Phi(a) = \phi(a)$

-   $F(A) \cong \bigoplus_{a \in A} R$


## Modules over a PID

If $R$ is a PID, and $M$ is a module of rank $m$ with submodule $N$, then

1.  $N$ has rank $n \le m$
2.  There is a basis of $M$, $y_1, y_2, \ldots y_m$
    such that $r_1 y_1, r_2 y_2, \ldots, r_n y_n$ is a basis of $N$, and
    $r_1 | r_2 | \cdots | r_n \in R$


### Fundamental Theorm (Free modules over PIDs)

Let $R$ be a PID, $M$ an $R-$module, then 

-   Invariant Factor Form:
    $M \cong R^r \oplus R /(a_1) \oplus \cdots \oplus R/(a_n)$ where
    $a_1, \ldots a_n$ are not units and $a_1 | a_2 | \dots | a_n$. This
    decomposition is unique
-   Elementary Divisor Form: Each factor can be split up:
    $R / (a_i) \cong R / (p_1^{\alpha_1}) \cdots R / (p_t^{\alpha_t})$
    by chinese remainder theorem

    $M \cong R^r \oplus R /(p_1^{\alpha_1}) \oplus \cdots \oplus R/(p_n^{\alpha_n})$
    $p_i$ are (non necessarily distinct) primes in $R$

Free rank $r$, *invariant factors*:
:   In this decomposition $r$ is the free rank of $M$.
:   $a_1, \ldots , a_n$ are the invariant factors of $M$


---

Torsion element
: An element $m$ of an $R$-module $M$ is called a torsion element if $rm = 0$
  for some non-zero element $r \in R$. The set of torsion elements is denoted
  $\mathrm{Tor}(M)$
: $m \in M, r \in R \setminus \{0\}, r m = 0 \Longrightarrow$ $m$ is torsion 
