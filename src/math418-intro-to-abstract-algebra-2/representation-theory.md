---
style: number-sections
---

# Representation of Finite Groups

Representation theory studies algebraic structures by representing their
elements as linear transformations of vector spaces and studies modules over
these linear transformations. In this presentation, we talk about how this
applies to finite groups.

## Linear representation of a group

Let $V$ be a vector space over the field $\mathbb C$, and let $\mathrm{GL}(V)$ be the
group of isomorphisms of $V$ to itself. i.e. $\mathrm{GL}(V)$ is the set of $n\times n$
invertible matrices.

Let $G$ be a finite group. The **linear representation** of $G$ in $V$ is a
homomorphism $\rho: G \to \mathrm{GL}(V)$. In other words, $\rho$ associates
each element of $G$ with an $n\times n$ invertible matrix such that $\rho(st) =
\rho(s)\rho(t) \forall s, t \in G$.

### Example: Unit / Trivial representation

Let $G$ be a finite group. Let $\rho: G \to \mathrm {GL}(V)$. Let $\rho(s) =
\text{identity}$ for all $S$ in $G$ then $\rho$ is a representation of $G$
called the trivial or unit representation.

### Example: The symmetric group $S_n$

We can construct a representation of $S_n$, the symmetric group, in
$\mathbb R^n$. Let $\sigma \in S_n$ act on the standard basis of $\mathbb R^n$,
$\{e_1, e_2, \cdots e_n\}$, such that $\sigma\cdot e_i = e_{\sigma(i)}$.
This defines a unique linear map $\rho_\sigma: \mathbb R^n \to \mathbb R^n$
for each $\sigma$:

$\rho_\sigma \begin{pmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{pmatrix} =
\rho_\sigma (\sum x_j e_j) = \sum x_j e_{\sigma(j)} = \sum x_k e_{\sigma^{-1}(k)} =
\begin{pmatrix}
x_{\sigma ^{-1}(1)} \\
x_{\sigma ^{-1}(2)} \\
\vdots            \\
x_{\sigma ^{-1}(n)}
\end{pmatrix}$.

For example, with $S_3$ and the standard basis for $\mathbb R^3$ we get:
$e         \mapsto \begin{bmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{bmatrix},
 (1, 2)    \mapsto \begin{bmatrix} 0 & 1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 1 \end{bmatrix},
 (3, 2, 1) \mapsto \begin{bmatrix} 0 & 1 & 0 \\ 0 & 0 & 1 \\ 1 & 0 & 0 \end{bmatrix}$
etc.

This is called the canonical representation of $S_3$.

### Example: $\mathbb Z / n \mathbb Z$, the cyclic group

Similarly, we can construct a representation for $\mathbb Z / n\mathbb Z$.
Let $i \in \mathbb Z / n\mathbb Z$ act on the standard basis of $\mathbb R^n$
by $i \cdot e_j = e_{i+j_{\mathrm{mod }n}}$. This defines the unique map:

$\rho_i\begin{pmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{pmatrix}
=\rho_i (\sum x_j e_j) = \sum x_j e_{i+j} = \sum x_k e_{-i + j}
=\begin{pmatrix}
x_{(1-i)} \\
x_{(2-i)} \\
\vdots            \\
x_{(n-i)}
\end{pmatrix}$.

In $\mathbb Z / 4 \mathbb Z$, for example, $2 \; \mathrm{mod } 4 \mapsto \begin{bmatrix}
0 & 0 & 1 & 0 \\
0 & 0 & 0 & 1 \\
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0
\end{bmatrix}$.

## Some more definitions...

Inner product
: 1. Linear:
     * $\langle u + v , w \rangle = \langle u, w \rangle + \langle v, w \rangle$
     * $\langle \alpha v, w \rangle =  \alpha \langle v, w \rangle$
  2. Commutative: $\langle v, w\rangle = \langle w, v \rangle$
  3. Positive-definite: $\langle v, v\rangle \ge 0$ and $\langle v, v \rangle =
     0 \Longleftrightarrow v = 0$

Orthogonal Complement ($W^{\perp}$)
: Given a vector subspace $W \subset V$, it's orthogonal complement,
  $W^{\perp} = \{ x \in V: \langle x, w \rangle = 0, \forall w \in W \}$.

Direct Sum
: A vector space $V$ is a direct sum of subspaces $W$ and $W'$ if $\forall v \in
  V, \exists$ a unique $w \in W, w' \in W'$ such that $v = w + w'$. We write $V =
  W \oplus W'$

  e.g. $V = \mathbb C^2$, $W = \{(z_1, z_2)  : z_1 = z_2 \}, W' = \{ z_1, z_2  :
  z_1 = -z_2 \}$

  e.g. Given vector spaces $V, W$, $V \times \{0\} \oplus \{0\}\times W = V
  \times W$

Unitary (invariant) inner product
: $\rho : G \to \mathrm{GL} (v)$ is  unitary iff $\langle \rho(g) v, \rho (g) w\rangle \forall v, w \in V, g \in G$

Stable (invariant) subspace
: Given a representation $\rho: G \to \mathrm{GL}(V)$, a subspace $W \subset V$ is
  stable if $\forall w \in W, g \in G, \quad \rho(g) w \in W$

  e.g.: For the trivial representation, any subspace is stable.

Irreducible representation
: A representation $\rho: G \to \mathrm{GL}(V)$ is irreducible if it's only stable
  subspaces are $\{0\}$ and $V$ itself.

## Lemma 1: Finite representation $\Longrightarrow$ $G$-unitary product

Let $P: G \to \mathrm{GL}(V)$ be a finite representation, $V$ has a $G$-unitary inner
product $\langle\langle \cdot, \cdot \rangle\rangle$.
product $\langle\langle \rho(g) v, \rho(g)w\rangle\rangle = \langle\langle v, w
\rangle\rangle, \forall v, w \in V$.

*Proof:* Pick a hermitian inner product $\langle\cdot, \cdot \rangle$ on
$V$. Define $\langle\langle v, w \rangle\rangle = \frac 1 {|G|} \sum_{g\in G}
\langle \rho(g) v, \rho(g)w\rangle$.

### Show $\langle\langle \cdot , \cdot \rangle\rangle$ is an inner product.

$\forall v \ne 0$, $\rho (g)v \ne 0 \Longrightarrow \langle \rho (g)v,
\rho(g) v\rangle > 0$.
$\Longrightarrow \langle\langle v, v \rangle\rangle > 0$.

and $\langle\langle v, \lambda w \rangle\rangle
= \frac 1 {|G|} \sum_{g \in G} \langle \rho (g) v, \rho (g) \lambda w \rangle 
= \frac 1 {|G|} \sum_{g \in G} \langle \rho (g) v, \lambda \rho (g) w \rangle 
= \lambda \langle\langle v, w \rangle\rangle$

### $\langle\langle \cdot, \cdot \rangle\rangle$ is $G$-unitary.

$\forall a \in G, G = \{ g a : g \in G \}$

$\Longrightarrow \forall a \in G$,
$$\begin{aligned}
\langle\langle \rho (a) v, \rho(a) w \rangle\rangle
&= \frac 1 {|G|} \sum_g \langle \rho (g) \rho (a)v, \rho (g) \rho(a) w\rangle \\
&= \frac 1 {|G|} \sum_g \langle \rho (g a) v, \rho (g a) w\rangle \\
&= \langle\langle v, w \rangle\rangle
\end{aligned}$$

##  Lemma 2: $W \subseteq V \Longrightarrow V = W \oplus W^{\perp}$

Let $\rho: G \to \mathrm{GL}(V)$ be a representation with an unitary inner product.
Then for any  stable subspace $W$, $W^{\perp}$ is also stable.
Consequently, $V=W\oplus W^{\perp}$.

**Proof:** It'll suffice to show that $\forall v \in W^{\perp}$ $\forall g \in
G$ $\rho(g)v\in W^{\perp}$. So for any $w\in W$

$$\begin{aligned}
<w,\rho(g)v>
&=<\rho(g^{-1})w,\rho(g^{-1})\rho(g)v>\\
&=<\rho(g^{-1})w, \rho(g^{-1}g)v>\\
&=<\rho(g^{-1})w,v>\\
&=0
\end{aligned}$$

## Theorem: Any unitary representation $\rho: G \to \mathrm{GL}(V)$, is the direct sum of irreducible representations.

**Proof:** Assume we have a unitary representation $\rho: G \to \mathrm{GL}(V)$,
that is an inner product that is unitary under $\rho$. To prove this, we use
induction on the dimension, $n$, of $V$.

*Basis:* If $n=1$, then $V$ is irreducible (each subspace has to have dimension
$k\leq 1$, which just leaves the $0$ subspace and $V$ itself)

*Induction:* Suppose that the claim holds
for all vector spaces $W$ with $\mathrm{dim}W\leq n$ and $V$ is a vector space with
$\mathrm{dim}V=n+1$. Now if $V$ is irreducible, then there's nothing to prove. If we have
the case where $V$ is reducible, then there exists an stable subspace
$W\subset V$ such that $0<\mathrm{dim}W<n+1$. By the above Lemma, we know that $V=W\oplus
W^{\perp}$. By inductive hypothesis, we know that $W$ and $W^{\perp}$ are both
direct sums of irreducible representations, so $V$ must ultimately be a direct
sum of irreducible representations. i.e. since $W=A_1\oplus\cdots\oplus A_r$ and
$W^{\perp}=B_1\oplus\cdots\oplus B_s$, $V=A_1\oplus\cdots\oplus A_r \oplus
B_1\oplus\cdots\oplus B_s$.

## Corollary: The representation of a finite group is the direct sum of irreducible representations.

XXX Walk through an example ($\rho S_n \to \mathbb C^2$?)
