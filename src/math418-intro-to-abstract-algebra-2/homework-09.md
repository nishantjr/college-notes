## 10.1 #8

### (a) Show that $\text{Tor}(M)$ is a submodule

$0$ is a torsion element of $M$ since $r 0 = 0 \forall r \in R$. So
$\text{Tor}(M)$ is not empty. Suppose $u, v \in \text{Tor}(M)$, i.e $\exists a,
b \in R$ such that $a u = 0, b v = 0$, then $\forall c \in R, ab (u + cv) = ab u + ab v = bau + a
0 = b 0 + 0  = 0$ since multiplication commutes in IDs. So $u + cv \in
\text{Tor}(M)$. By the submodule test, $\text{Tor}(M)$ is a submodule.


### (b) Example

Let $R$ be the ring of $2\times 2$ matices. $R$ is an $R$-module.

$\begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}
 \begin{bmatrix} 1 &-1 \\-1 & 1 \end{bmatrix} =
 \begin{bmatrix} 0 & 0 \\ 0 & 0 \end{bmatrix}$

$\begin{bmatrix} 0 & 0 \\ 1 &-1 \end{bmatrix}
 \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix} =
 \begin{bmatrix} 0 & 0 \\ 0 & 0 \end{bmatrix}$

So both 
$\begin{bmatrix} 1 &-1 \\-1 & 1 \end{bmatrix}$ and
$\begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}$
are torsion elements.

But,
$\begin{bmatrix} 1 &-1 \\-1 & 1 \end{bmatrix} +
 \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix} =
 \begin{bmatrix} 2 & 0 \\ 0 & 2 \end{bmatrix}$ is obviously not torsion.


### (c) Show that if $R$ has zero-divisors, then $\text{Tor}(M)$ is non-trivial.

Let $a$ be a zero-divisor, i.e. $ab = 0, a, b \in R \backslash \{0\}$.

Let $v$ be a non-zero element of $M$ (this exists since $M$ is non-zero), and
assume $b v \ne 0$. (If $bv = 0$ then $v$ is the required torsion element).
Then $abv = 0 v = 0$, so $bv$ is a non-zero torsion element.


## 10.1 #9

$N$ is a submodule of $M$. $A$ is the annihilator of $N$ in $R := \{ r \in R |
rn = 0 \forall n \in N\}$. Show that $N$ is an 2-sided ideal.

$\forall n \in N, 0_R n =  0 \Longrightarrow 0_R \in A$. So $N$ is not empty.

Let $a, b \in A$. i.e. $\forall n \in N, an = 0, b n = 0$.

Since $0 = 0n = (a-a)n = an -an = -an$, $-a$
is also in $A$. So $R$ is closed for additive inverses.

$(a + b)n = an + b n = 0 + 0 = 0$, so $A$ closed under addition.

$ra n =  r(an) = r 0_M = 0_M$ so $A$ is a left-ideal (since $b - ra$ is an
annihilator).

$a r n =  a(rn) = 0_M$ (since $rn \in N, and $a$ is an annihilator), so $A$ is
a right-ideal too.

## 10.1 #10

$I$ is an right-ideal of $R$, $M$ is left-$R$-module. Annihilator of $I$ in $M$ is
$N = \{ m \in M : i m = 0, \forall i \in I \}$

Show that $N$ is a left-$R$-submodule of $M$.

$i 0_M = 0 \forall i \in I$ so the $N$ is not empty.

If $v \in N$, then $i(rv) = (ir) v = 0$ since $ir \in I$ and $v$ is an
annihilator. So  $rv$ is an anhilator.

If $u \in N$ too, then $i(u + rv) = iu + i(rv) = 0 + 0 = 0$ so $u + rv \in N$.
So by the submodule test, $N$ is an $R$-submodule of $M$.

## 10.1 #11

### (a) Find the annihilator of $M$ in $\mathbb Z$

Let $a = (a_{24}, a_{15}, a_{50}) \in M$. If $n \in \mathbb Z$ is in the annihilator,
$na = n(a_{24}, a_{15}, a_{50}) = (n a_{24}, n a_{15}, n a_{50}) = (0, 0, 0)$.

So 
$n a_{24} = 0 \text{ mod 24}$,
$n a_{15} = 0 \text{ mod 15}$,
$n a_{50} = 0 \text{ mod 50}$, for all 
$a_{24} \in \mathbb Z/24 \mathbb Z$,
$a_{15} \in \mathbb Z/15 \mathbb Z$,
$a_{50} \in \mathbb Z/50 \mathbb Z$

This means that $n$ must be divisible by $24, 15$ and $50$. i.e. $n = 600$.
So the annihilator of $M$ must be $(600) = 600 \mathbb Z$.

### (b) Describe the annihilator of $I = 2 \mathbb Z$ in $M$

The annihilator of $I$ in $\mathbb Z$ is $\{ (12m, 0, 25n ) \forall m, n = \{0,
1 \} \} = 12 \mathbb Z / 24 \mathbb Z \times \{0\} \times 25 \mathbb Z / 50
\mathbb Z \cong \mathbb Z / 2 \mathbb Z \times \mathbb Z / 2 \mathbb Z$. 


