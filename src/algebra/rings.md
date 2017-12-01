---
title: Rings
---

Types of Rings
==============

Ring $(R, 0, +, \cdot)$
:   1.  $(R, 0, +)$ is an abelian group
    2.  Multiplication is assoc
    3.  Multiplication distributes

Integral Domain $R$
:   1.  $1$
    2.  Commutative
    3.  No non-zero divisors

Unique Factorization Domain
:   $\forall a \in R, a = i_1 \cdot i_2 \cdots i_n$, unique up to associates and ordering

Principle Ideal Domain
:   All ideals are principal ($I$ ideal $\implies I = (a)$ for some $a \in R$)

Euclidean Domain
:   *Integral domain* with euclidean algorithm. i.e $\exists$ norm $N$
    such that $\forall a, b \in R, b \ne 0, \exists q, r \in R$ such
    that $a = qb + r$, and $N(r) < N(q)$

Field
:   *Commutative ring* with every non-zero element having a
    multiplicative inverse.
:   Commutative *division ring*.

+-----------+----------------------------------+--------------------+--------------------------------+-----------+
|           | Examples                         | Props              |                                | $R[x ]$   |
+===========+==================================+====================+================================+===========+
| Ring      |                                  |                    |                                |           |
+-----------+----------------------------------+--------------------+--------------------------------+-----------+
| Comm with | $\{0\}$                          |                    |                                | Comm with |
| $1$       |                                  |                    |                                | $1$       |
+-----------+----------------------------------+--------------------+--------------------------------+-----------+
| ID        | $\Z[\sqrt 5]$                    | No zero divisors   | prime $\implies$ irreducible   | ID        |
+-----------+----------------------------------+--------------------+--------------------------------+-----------+
| UFD       | $\Z[x]$                          |                    | prime $\equiv$ irreducible     | UFD       |
+-----------+----------------------------------+--------------------+--------------------------------+-----------+
| PID       | $\Z\big[\frac 1 2 (1+\sqrt{-  19 |                    | p $\equiv$ irr $\equiv$ max    |           |
|           | } ) \big]$                       |                    |                                |           |
+-----------+----------------------------------+--------------------+--------------------------------+-----------+
| Euclidian | $\Z$                             | Euclidian alg      |                                |           |
| Dom       |                                  |                    |                                |           |
+-----------+----------------------------------+--------------------+--------------------------------+-----------+
| Field     | $\R$                             | Mult inverses      |                                | Euc. Dom  |
+-----------+----------------------------------+--------------------+--------------------------------+-----------+

Homomorphisms
-------------

Homomorphism:
1.  Group homomorphism
2.  $\phi(ab) = \phi(a)\phi(b)$

*   $\text{image } h$ is a subring
*   $\ker h$ is an ideal

Ideals
------

*   $I$ is an ideal $\iff$ $R / I$ is a ring
*   Sum of ideals $I + J = \{ i + j, \forall i \in I ,  j \in J \}$
*   Product of ideals $IJ = \{ \sum_{\text{finite}} i_n j_n , i \in I , j \in J\}$

*   In a ring with $1$, every proper ideal is contained in a maximal ideal.

Commutative:

*   Ideal gnereated by the set $A$, $(A)$ is the smallest ideal containing $A$.
    For a commutative ring, $RA = AR = RAR = (A) = \{ \sum_{\text{finite}} ra  \}$
*   $I  = R \iff I$ contains a unit.

ID:

*   $P$ is prime ideal $\iff$ $R/P$ is an integral domain

PID:

*   $(a, b) = (d) \implies d = \gcd(a, b)$, $gcd(a, b)$ unique up to associates

Fields:

*   $R$ is a field $\iff$ its only ideals are $\{0\}$ and $R$
*   All non-zero homomorphisms are injections (have $\ker = 0$
*   In a comm ring, $I$ is maximal $\iff$ $R/I$ is a field

prime, irreducible and maximal
------------------------------

*   Commutative:    maximal $\implies$  prime 
*   ID:                                 prime   $\implies$  irreducible
*   UFD:                                prime   $\iff$      irreducible
*   PID:            maximal $\iff$      prime   $\iff$      irreducible
*   Field:          All non-zero elements are units $\implies$ no primes, irreducibles; only maximal is $0$

Noetherian Ring
---------------

Every infinite chain of ideals stab

-   PID               $\implies$  Noetherian
-   UFD  + Noetherian $\nimplies$ PID (e.g. $\Z[x]$ is Noetherian, not PID since $(2, x)$)
-   Comm + Noetherian $\nimplies$ ID (e.g. $\Z / n$ is finite, so noetherian. But when $n \ne p$, not integral.)

Constructing rings
==================

Polynomial Rings 
----------------

*   degree of $p(x)q(x) = \text{degree }p(x) + \text{degree }q(x)$
*   unit in $R[x] \iff$ unit in $R$.
*   In an ID, $R[x] / (I) \cong (R/I)[x]$ and $I$ prime $\implies I[x]$ prime

*   $R$ comm with $1$   $\iff$ $R[x]$   comm with $1$
*   $R$ ID              $\iff$ $R[x]$   ID
*   $R$ UFD             $\iff$ $R[x]$   UFD 
*   $R$ Field           $\iff$ $R[x]$   PID 

*   $R$ Field, $((f(x))$ maximal $\implies f(x)$ irreducible

### Irreducability Criteria for polynomials

Gauss' Lemma
:   $R$ UFD, $Q$ its field of fractions then: $p(x)$ factorizable in
    $Q[x] \Longrightarrow$ factorizable in $R[x]$

-   $p(x)$ of degree 2/3 over field $F$ irreducible
    $\Longleftrightarrow$ has root in $F$.
-   $p(x) \in \mathbb Z[x]$, monic. then the roots of $p(x)$ in
    $\mathbb Q$ must be integers dividing the constant term.
-   ID R, Ideal I, $p(x)$ non-constant monic polynomial. Then if $p(x)$
    cannot be reduced into polynomials of a smaller degree, then $p(x)$
    is irreducible in $R[x]$
-   Eisenstien's Criterion: $P$ prime ideal of $R$ Integral domain.
    $f(x) = x^n + a_{n-1}x^{n-1} + \cdots a_1 x + a_0 \in R[x]$.
    $a_{n-1}, \ldots, a_1, a_0 \in P, a_0 \notin P^2 \Longrightarrow f(x)$
    is irreducible.

Group Rings
-----------

Given ring $R$, group $G$, $(r_1 g_1 + r_2 g_2 + \cdots + r_n g_n)$:

*   Addition defined componenetwise
*   Multiplication defined as $(r g) (s h) = (rs)(gh)$ extended by distribution.

Properties:

*   Both $R$ and $G$ are subrings/groups
*   $|G| > 1 \implies$ zero-divisors. (e.g. $(1 - g)(1 + g + \cdots + g^{m-1}$, where $|g| = m$)


Direct Products
---------------

Direct product as groups is a ring (defining mutliplication componenetwise).

Co-maximal / Relatively prime:
:   $I + J = R$

Chinese remainder theorem:
:   Let $I$, $J$ be ideals of $T$. Let $\phi: R \to R / I \times R/ J, r \mapsto (r + I ,  r + J)$

    1. $\phi$ is a homomorphism
    2. $\ker\phi = I \intersect J$
    3. If $I, J$ are comaximal, then: $I \intersect J = IJ$ and $R / (IJ) \iso R/(I\intersect J) \iso R/I \times R/J$

Ring of Fractions
-----------------

For any non-zero, non-zero-divisor subset $D$ of $R$, there is a ring $Q$

-   $D$ are units in $Q$
-   with $1$
-   "unique" (?)
-   $D = R \setminus 0 \implies R$ is a field. $Q$ is called the *field
    of fractions* or *quotient field*


Basic definitions
=================
 
Zero-divisor:
:   $a, b \in R\setminus \{0\}$, $a b = 0$ then $a, b$ are zero divisors.

Norm $N$
:   $N: R \to \mathbb N \cup \{0\}$ with $N(0) = 0$

$a$ multiple $b$, $b$ divisor of $a$, $b|a$
:   if $\exists x \in R$ with $a = bx$

$\gcd(a, b), a, b \ne 0$
:   0.  $R$ commutative
    1.  $d|a$ and $d|b$
    2.  $d'|\{a, b\} \Longrightarrow d | d'$.

Unit $u \in R$
:   $\exists u', u \cdot u' = 1$

Irreducable in $R$
:   0.  $r\in R \ne 0$, and not a unit.
    1.  $r = ab \Longrightarrow a$ or $b$ is a unit.

Prime in $R$
:   0.  $r \ne 0$
    1.  $p | ab \Longrightarrow p | a$ or $p|b$. i.e. $(p)$ is a prime
        ideal

Maximal ideal:
:   An ideal $I$ is maximal $\iff$ for any ideal $J$, $I \subseteq J$, $I = J$ or $J = R$.

Associate
:   $a$, $b$ differing by a unit are associates.
