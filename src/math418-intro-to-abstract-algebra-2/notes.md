| Ring, $\mathbb 1$, comm| $\subset$ Integral Dom. | $\subset$ Unique Factor. Dom. | $\subset$ Principal Ideal Dom. | $\subset$ Euclidean Dom. | $\subset$ Field |
|-|---------------|-------------------------------|------------------------|-----------------------|-----------------|
|$\{0\}$ | $\mathbb Z[\sqrt{5}]$|$\mathbb Z[x]$ | $\mathbb Z[\frac 1 2 + \frac 1 2 \sqrt{-19}]$ | $\mathbb Z$            | $\mathbb R$       |

Integral Domain $R$
: 1. $\mathbb 1$
  2. Commutative
  3. No non-zero divisors

Norm $N$
: $N: R \to \mathbb N \cup \{0\}$ with $N(0) = 0$

Euclidean Domain
: - *Integral domain*
  - Has euclidean algorithm.   
    i.e $\exists$ norm $N$ such that $\forall a, b \in R, b \ne 0, \exists q, r
    \in R$ such that $a = qb + r$, and $N(r) < N(q)$


$a$ multiple $b$, $b$ divisor of $a$, $b|a$ 
: if $\exists x \in R$ with $a = bx$

$\gcd(a, b), a, b \ne 0$
: 0. $R$ commutative
  1. $d|a$ and $d|b$
  2. $d'|\{a, b\} \Longrightarrow d | d'$.

---

Irriducable in $R$
: 0. $r\in R \ne 0$, and not a unit.
  1. $r = ab \Longrightarrow a$ or $b$ is a unit.

Prime in $R$
: 0. $r \ne 0$
  1. $p | ab \Longrightarrow p | a$ or $p|b$  
     i.e. $(p)$ is a prime ideal

Associate
: $a$, $b$ differing by a unit are associates.


* In an *integral domain*: prime $\Longrightarrow$ irriducable  
* In a  *principal domain*: prime $\Longleftrightarrow$ irriducable
* In a *UFD* prime $\Longleftrightarrow$ irriducable

In $\mathbb Z[\sqrt{5}]$ $3$ is irriducable but not prime
since $3$ divides $9$, but not $2 + \sqrt{5}$ and $2-\sqrt{5}$
$\Longrightarrow \mathbb Z[\sqrt{5}]$ is ID but not PID or UFD.


Unique Factorization Domain
: 0. *Integral Domain*
  1. If $r\in R$ not a unit, there exists unique (upto associates)...


> If $R/(p(x))$ is the equivalence classes mod $p(x)$ -- $f(x) = g(x)p(x) + r(x)
> \mapsto r(x)$
> 

## Irreducability Criteria

* $p(x)$ of degree 2/3 over field $F$ irreducible $\Longleftrightarrow$ has root
  in $F$.
* $p(x) \in \mathbb Z[x]$, monic. then the roots of $p(x)$ in $\mathbb Q$ must be integers
  dividing the constant term.
* ID R, Ideal I, $p(x)$ non-constant monic polynomial. Then if $p(x)$ cannot be
  reduced into polynomials of a smaller degree, then $p(x)$ is irreducible in
  $R[x]$
* Eisenstiens Criterion: XXX

## Field Extensions

Field $F$, $p(x) \in F[x]$ irreducible. $\alpha \in K$ (extension) is a root
$\Longrightarrow F(\alpha) \cong F[x]/(p(x))$

---

## Modules
An element $m$ of an $R$-module $M$ is called a torsion element if $rm = 0$
for some non-zero element $r \in R$. The set of torsion elements is denoted

Module
: Given ring (scalars) $R$, abelian group (~vectors) $M$, (scalar multiplication)
  $\_\cdot\_ : R \times M \to M$

  1. Distributive: $c(v + w) = cv + cw$ **and** $(a + b)v = av + bv$
  2. Associatvie (ish): $a(b v) = (a b) v$
  3. $1_R v = v$

Submodule Criterion
: Non empty, $u + cv \in N$ ($N$ submodule)

