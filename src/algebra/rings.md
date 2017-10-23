---
title: Rings
author: Nishant Rodrigues
geometry: margin=2cm
---


\newcommand \Z {\mathbb Z}
\newcommand \R {\mathbb R}

+-------------------------+-----------------------------------+------------------------------------+-----------------------------------------------+
|                         | Examples                          | Props                              |                                               |
+=========================+===================================+====================================+===============================================+
| Ring                    |                                   |                                    |                                               |
+-------------------------+-----------------------------------+------------------------------------+-----------------------------------------------+
| Comm. $1$               | $\{0\}$                           |                                    |                                               |
+-------------------------+-----------------------------------+------------------------------------+-----------------------------------------------+
| ID                      | $\Z[\sqrt 5]$                     | No non-zero divisors               | prime $\implies$ irreducible                  |
+-------------------------+-----------------------------------+------------------------------------+-----------------------------------------------+
| UFD                     | $\Z[x]$                           |                                    | prime $\equiv$ irreducible                    |
+-------------------------+-----------------------------------+------------------------------------+-----------------------------------------------+
| PID                     | $\Z\big[\frac 1 2 (1+\sqrt{-19} ) |                                    | p $\equiv$ irr $\equiv$ max                   |
|                         |   \big]$                          |                                    |                                               |
+-------------------------+-----------------------------------+------------------------------------+-----------------------------------------------+
| Euclidian Dom           | $\Z$                              | Euclidian alg                      |                                               |
+-------------------------+-----------------------------------+------------------------------------+-----------------------------------------------+
| Field                   | $\R$                              | Mult inverses                      |                                               |
+-------------------------+-----------------------------------+------------------------------------+-----------------------------------------------+

Integral Domain $R$
:   1.  $\mathbb 1$
    2.  Commutative
    3.  No non-zero divisors

Norm $N$
:   $N: R \to \mathbb N \cup \{0\}$ with $N(0) = 0$

Euclidean Domain
:   -   *Integral domain*
    -   Has euclidean algorithm.\
        i.e $\exists$ norm $N$ such that
        $\forall a, b \in R, b \ne 0, \exists q, r \in R$ such that
        $a = qb + r$, and $N(r) < N(q)$

$a$ multiple $b$, $b$ divisor of $a$, $b|a$
:   if $\exists x \in R$ with $a = bx$

$\gcd(a, b), a, b \ne 0$
:   0.  $R$ commutative
    1.  $d|a$ and $d|b$
    2.  $d'|\{a, b\} \Longrightarrow d | d'$.
 
---

Irriducable in $R$
:   0.  $r\in R \ne 0$, and not a unit.
    1.  $r = ab \Longrightarrow a$ or $b$ is a unit.

Prime in $R$
:   0.  $r \ne 0$
    1.  $p | ab \Longrightarrow p | a$ or $p|b$. i.e. $(p)$ is a prime
        ideal

Associate
:   $a$, $b$ differing by a unit are associates.

Irreducability Criteria
-----------------------

Gauss' Lemma
:   $R$ UFD, $F$ it's FoF then $p(x)$ factorizable in
    $F[x] \Longrightarrow$ factorizable in $R[x]$

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

