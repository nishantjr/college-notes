---
style: number-sections
---

# Representation of Finite Groups

Representation theory studies algebraic structures by representing their
elements as linear transformations of vector spaces and studies modules over
these linear transformations. In this presentation, we talk about how this
applies to finite groups.

## Linear representation of a group

Let $V$ be a vector space over the field $\mathbb C$, and let $\mathrm{GL}(V)$
be the group of isomorphisms of $V$ to itself. Let $G$ be a finite group. The
**linear representation** of $G$ in $V$ is a homomorphism $\rho: G \to
\mathrm{GL}(V)$.

If $V$ is an $n$-dimensional vector space, then by fixing a basis, we get
$\mathrm{GL}(V) \cong \mathrm{GL}_n(F)$. Since we deal with linear
representations of finite degree, we can use this isomorphism to pass freely
between these *matrix representations* and the *linear representation*. In
other words, $\rho$ associates each element of $G$ with an $n\times n$
invertible matrix such that $\rho(st) = \rho(s)\rho(t) \forall s, t \in G$.

## Some more definitions...

(Hermitian) inner product
: Given a vector space $V$, a function $\langle \cdot, \cdot \rangle: V \to \mathbb C$
  is an inner product iff:
  1. Linear:
     * $\langle u + v , w \rangle = \langle u, w \rangle + \langle v, w \rangle$
     * $\langle u, v + w \rangle = \langle u, v \rangle + \langle u, w \rangle$
     * $\langle \alpha v, w \rangle =  \alpha \langle v, w \rangle$
  2. * $\langle v, w\rangle = \overline{\langle w, v \rangle}$
     * $\langle v, \alpha w \rangle =  \overline\alpha \langle v, w \rangle$
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

## An example

Consider the representation $\phi: \mathbb Z / 2 \mathbb Z \to \mathbb C^2$,
where $0 \mapsto \begin{bmatrix} 1 & 0 \\ 0 & 1\end{bmatrix}$, $1 \mapsto
\begin{bmatrix} 0 & 1 \\ 1 & 0\end{bmatrix}$. $0$ acts on any vector by leaving
it unchanged. $1$ acts on a vector by switching it's coordinates. i.e. $1 \cdot
\begin{bmatrix} x \\ y \end{bmatrix} = \begin{bmatrix} 0 & 1 \\ 1 &
0\end{bmatrix} \begin{bmatrix} x \\ y \end{bmatrix} = \begin{bmatrix} y \\ x
\end{bmatrix}$. This means that the vector space, $\begin{bmatrix} x \\
x\end{bmatrix}$ is not irreducible.

Since one of it's invariant subspaces is $\begin{bmatrix} x \\ x\end{bmatrix}$,
the other must be it's orthogonal complement, $\begin{bmatrix} x \\ -x\end{bmatrix}$.

We can find two sub representations:
  1. On the invariant subspace $x = y$:  
     $\alpha: 0 \mapsto \frac 1 2\begin{bmatrix} 1 & 1 \\ 1 & 1\end{bmatrix}$  
     $\alpha: 1 \mapsto \frac 1 2\begin{bmatrix} 1 & 1 \\ 1 & 1\end{bmatrix}$
  2. On the invariant subspace $x = -y$:  
     $\beta: 0 \mapsto \frac 1 2\begin{bmatrix} 1 & -1 \\ -1 & 1\end{bmatrix}$  
     $\beta: 1 \mapsto \frac 1 2\begin{bmatrix} -1 & 1 \\ 1 & -1\end{bmatrix}$

Now, you may say that those matrices aren't invertible, but when restricted to
each invariant subspace they are! Taking their sum, we get the original
representation:

$$\begin{aligned}
\alpha + \beta(0)
        =   \frac 1 2\begin{bmatrix} 1 & 1 \\ 1 & 1\end{bmatrix}
          + \frac 1 2\begin{bmatrix} 1 & -1 \\ -1 & 1\end{bmatrix}
        =   \frac 1 2\begin{bmatrix} 1 & 0 \\ 0 & 1\end{bmatrix} \\
\alpha + \beta(1)
        =   \begin{bmatrix} 1 & 1 \\ 1 & 1\end{bmatrix}
          + \frac 1 2\begin{bmatrix} -1 & 1 \\ 1 & -1\end{bmatrix}
        =   \begin{bmatrix} 0 & 1 \\ 1 & 0\end{bmatrix}
\end{aligned}$$

