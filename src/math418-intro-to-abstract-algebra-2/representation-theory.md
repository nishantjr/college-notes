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

XXX

## Some more definitions...
* Define:
  - unitary, irreducible Representation, direct sum, inner product.

### Big theorem

## Lemma 1: Finite representation $\Longrightarrow$ $G$-invariant product

Let $P: G \to GL(V)$ be a finite representation, then $\exists G$-invariant
product $\langle\langle \rho(g) v, \rho(g)w\rangle\rangle = \langle\langle v, w
\rangle\rangle, \forall v, w \in V$.

## Lemma 2: 

## Big Theorem
## Corollary
