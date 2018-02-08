---
style: number-sections
---

# Representation of  Finite Groups

Representation theory studies algebraic structures by representing their
elements as linear transformations of vector spaces (matrices), and their operations
in terms of matrix addition and multiplication.

## Linear representation of a group

Let $V$ be a vector space over the field $\mathbb C$, and let $GL(V)$ be the
group of isomorphisms of $V$ to itself. i.e. $GL(V)$ is the set of $n\times n$
invertible matrices.

Let $G$ be a finite group. The **linear representation** of $G$ in $V$ is a
homomorphism $\rho: G \to GL(V)$.
In other words, $\rho$ associates each element of $G$ with an $n\times n$
invertible matrix such that $\rho(st) = \rho(s)\rho(t) \forall s, t \in G$.

?? When $\rho$ exists, we call $V$ a representation space of $G$.

### Example: Unit / Trivial representation

Let $G$ be a finite group. Let $\rho: G \to \mathbb C^*$, where $\mathbb C^*$ is
the multiplicative group of non-zero complex numbers.

Let $\rho(s) = 1$ for all $S$ in $G$ then $\rho$ is a representation of $G$
called the trivial or unit representation.

### Example: The Symmetric group $S_n$

Let $S_n$ be the symmetric group. We can construct an representation of $S_n$ in
$\mathbb R^4$. Let $\sigma \in S_n$ act on the standard basis of $\mathbb R^n$,
$\{e_1, e_2, \cdots e_n\}$, such that $\sigma\cdot e_i = e_{\sigma(j)}$.

This uniquely defines a linear map: $\rho_\sigma: \mathbb R^n \to \mathbb R^n$:

$\rho(\sigma) \begin{pmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{pmatrix} =
\rho(\sigma) (\sum x_j e_j) = \sum\sigma(x_j e_{\sigma(j)}) =
\begin{pmatrix}
x_{\sigma ^{-1}(1)} \\
x_{\sigma ^{-1}(2)} \\
\vdots            \\
x_{\sigma ^{-1}(n)}
\end{pmatrix}$.

For example, with $S_3$ and the standard basis for $\mathbb R^n$ we get:
$e         \mapsto \begin{bmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{bmatrix},
 (1, 2)    \mapsto \begin{bmatrix} 0 & 1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 1 \end{bmatrix},
 (3, 2, 1) \mapsto \begin{bmatrix} 0 & 1 & 0 \\ 0 & 0 & 1 \\ 1 & 0 & 0 \end{bmatrix}$
etc.

This is called the canonical representation of $S_3$.

### Example: $\mathbb Z / n \mathbb Z$, the cyclic group

$\mathbb X / 3 \mathbb Z$

2 Dimensional representations:

 * $\begin{bmatrix}1 & 0 \\ 0 & 1\end{bmatrix},
    \begin{bmatrix}0 &-1 \\ 1 &-1\end{bmatrix},
    \begin{bmatrix}-1& 1 \\-1 & 0\end{bmatrix}$
 * $\begin{bmatrix}1 & 0 \\ 0 & 1\end{bmatrix},
    \begin{bmatrix}-\frac 1 2 & \frac {-\sqrt 3} 2 \\ \frac {\sqrt 3} 2 & -\frac 1 2 \end{bmatrix},
    \begin{bmatrix}-\frac 1 2 & \frac {\sqrt 3} 2 \\ \frac {-\sqrt 3} 2 & -\frac 1 2 \end{bmatrix}$

3-dimensional representation:

 * $\begin{bmatrix}1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1\end{bmatrix},
    \begin{bmatrix} 0 & 1 & 0 \\ 0 & 0 & 1 \\ 1 & 0 & 0 \end{bmatrix},
    \begin{bmatrix} 0 & 0 & 1 \\ 1 & 0 & 0 \\ 0 & 1 & 0 \end{bmatrix}$

## Some more definitions...
* Define:
  - unitary, irreducible Representation, inner product.

Direct Sum
:   A vector space $V$ is a direct sum of subspaces $W$ and $W'$ if
    $\forall v \in  V, \exists$ a unique $w \in W, w' \in W'$ such
    that $v = w + w'$. We write $V =  W \oplus W'$

  e.g. $V = \mathbb C^2$, $W = \{(z_1, z_2)  : z_1 = z_2 \}, W' = \{ z_1, z_2  :
  z_1 = -z_2 \}$

  e.g. Given vector spaces $V, W$, $V \times \{0\} \oplus \{0\}\times W = V
  \times W$

  ?? Canonical Projections

Invariant / stable subspace
: Given a representation $\rho: G \to GL(V)$, a subspace $W \subset V$ is
  invariant if $\forall w \in W, g \in G, \quad \rho(g) w \in W$

  e.g.: For the trivial representation, any subspace is invariant.

  e.g.: The representation $\phi$ of $\mathbb Z / 2 \mathbb Z \to \mathbb C^2$, such that $0
  \mapsto \begin{bmatrix} 1 & 0 \\ 0 & 1\end{bmatrix}$, and $1 \mapsto
  \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}$.

  This has a subspace $\begin{bmatrix}
  \end{bmatrix}$

Irreducible representation
: A representation $\rho: G \to GL(V)$ is irreducible if it's only invariant
  subspaces are $\{0\}$ and $V$ itself.


## Lemma 1: Finite representation $\Longrightarrow$ $G$-invariant product

Let $P: G \to GL(V)$ be a finite representation, $V$ has a $G$-invariant inner
product $\langle\langle \cdot, \cdot \rangle\rangle$.
product $\langle\langle \rho(g) v, \rho(g)w\rangle\rangle = \langle\langle v, w
\rangle\rangle, \forall v, w \in V$.

Proof:

Pick a hermitian inner product $\langle\cdot, \cdot \rangle$ on
$V$. Define $\langle\langle v, w \langle\langle = \frac 1 {|G|} \sum_{g\in G}
\langle \rho(g) v, \rho(g)w\rangle$.

### Show $\langle\langle \cdot , \cdot \rangle\rangle$ is an inner product.

$\forall v \ne 0$, $\rho (g)v \ne 0 \Longrightarrow \langle \rho (g)v,
\rho(g) v\rangle > 0$.
$\Longrightarrow \langle\langle v, v \rangle\rangle > 0$.

and $\langle\langle v, \lambda w \rangle\rangle
= \frac 1 {|G|} \sum_{g \in G} \langle \rho (g) v, \rho (g) \lambda w \rangle 
= \frac 1 {|G|} \sum_{g \in G} \langle \rho (g) v, \lambda \rho (g) w \rangle 
= \lambda \langle\langle v, w \rangle\rangle$

### $\langle\langle \cdot, \cdot \rangle\rangle$ is $G$-invariant.

$\forall a \in G, G = \{ ga : g \in G \}$

$\Longrightarrow \forall a \in G$,
$$\begin{aligned}
\langle\langle \rho (a) v, \rho(a) w \rangle\rangle
&= \frac 1 {|G|} \sum_g \langle \rho (g) \rho (a)v, \rho (g) \rho(a) w\rangle \\
&= \frac 1 {|G|} \sum_g \langle \rho (ga) v, \rho (ga) w\rangle \\
&= \langle\langle v, w \rangle\rangle
\end{aligned}$$



##  Lemma 2: $W \subseteq V \Longrightarrow V = W \oplus W^{\perp}$



## Theorem: Any unitary representation $\rho: G \to GL(V)$, is the direct sum of irreducible representations.

## Corollary: The representation of a finite group is the direct sum of irreducible representations.

XXX Walk through an example ($\rho S_n \to \mathbb C^2$?)
