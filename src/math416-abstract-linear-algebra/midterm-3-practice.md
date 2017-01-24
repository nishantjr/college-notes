A polynomial $f(x)$ in $P(F)$ splits over field $F$
: if $\exists c, a_1, a_2... a_n \in F$ such that
  $f(x) = c(x - a_1)(x-a_2)...(x-a_n)$

#### Theorem 5.1: $T$ on f.d $V$ diagonizable iff ordered basis of eigen vectors

#### Theorem 5.5: e-vectors corr to distinct e-values are independent

By induction
1. $v_1$ is e-vector, so not 0. So $\{v_1\}$ is independent
2. $v_1, v_2... v_k$ corr to $\lambda_i$, $k-1$ e-vectors are independent
   Use independence equation, apply $(T - \lambda_kI)$, $T(v_i) = \lambda_i$,
   somethings must be 0, others can't

#### Corr: $T$ is on $n$ dim v.s. $T$ has $N$ distinct e-values, then $T$ diagonizable

#### Theorem 5.6: The char. poly. of any diagonizable operator splits.

1. Since $T$ is diagonizable, theres is a basis that has $[T]_b$ diagonal.
2. Char poly from that splits clearly

multiplicity of $\lambda$
: is the largest $k$ for which $(t - \lambda)^k$ is a factor of $f(t)$.

Eigen space of $\lambda$
: $E_\labmda = \{ x \in V : T(x) = \lambda x \} = N(T - \labmda I_V)$
  The union of $\{0\}$ and all the eigen vectors of $\lambda$

#### Theorem 5.7: $T$ on f.d. $V$ $\lambda$ has mult $m$. Then dim $E_ \lambda \le m$ 
1. Ordered basis of $E_ \lambda$ can be extended to o.b. of $V$
2. $[T]_\beta$ must be of the form $\begin{bmatrix}\lambda I_p & B \\ 0 &
   C\end{bmatrix}$
3. Calculate char polynomial $= (\lambda - t)^pg(t)$
4. $(\lambda - t)^p$ is a factor of $f(t)$ so multiplicity is atleast $p$
   dim $E_\lambda$ is $p$ so $\le m$.

Inner product space
: Given v.s. $V$ over $F$ ($F$ can be either $\mathbb R$ or $\mathbb C$)
  Then, an inner product on $V$, denoted $\langle \cdot, \cdot \rangle$, is a
  function $V\times V \to F$, such taht
  * linear:
     - $<x + y , z> = <x, z> + <y, z>$
     - $<cx , y> = c<x, z>$
  * $\bar{<x, y>} = <y, x>$
  * $<x, x> > 0$ if $x \ne 0$


Frobenius Inner Product (matrices)
: $<A, B> = tr(B*A)$ 

Norm
: $\|x\| = \sqrt{<x, x>}$

(some) important properties
* $<x, cy> = \bar c <x, y>$
* $<x, 0> = <0, x> = 0$
* $<x, x> = 0$ iff $x = 0$
* if $\forall x \in V, <x, y> = <x, z>$, then $x =z$

* $\|cx\| = |c| \cdot \|x \|$
* $\|x\|= 0$ iff $x=0$
* Cauchy-Schwarz: $|<x, y>| \le \|x\|\cdot\|y\|$
  - Proof using $\|x - cy\|^2$, and set $c = \frac{<x, y>}{<y, y}$
* $\|x = y\| \le \|x \| + \|y\|$

Unit vector
: $x \in$ i.p.s. $V$ iff $\|x\| = 1$

Orthogonal vectors
: given i.ps $V$, $x, y \in V$ are orthogonal iff $<x,y> = 0$  

Orthogonal sets
: Any two $x, y \in S$ are orthogonal

Orthonormal sets
: $S$ is orthogonal, and consists of only unit-vectors

Adjoint of matrix $A \in M_{m\times n}(F)$
: Let $A_{ij}$ be the entry in the i, jth row/column of $A$.
  A*_{ij} = \bar{A_{ji}}$

Orthonormal complement, $S^{\perp}$
: Set of all vectors orthogonal to all vectors in $S$.
  $S^{\perp} = \{ x \in V | <x, s> = 0 \forall s in S \}$

Adjoint (Linear operator)
: i.p.s. $V$, linear operator $T$, the $T*: V \to V$ is the adjoint of $T$ iff
  $<T(x), y> = <x, T*(y)>$

#### Least square approximation $A*Ax = A*y$
