## 14.2 #6

In the example on page 577, we showed that $\text{Gal}(K)

#### Show that $\text{Gal}(K/\mathbb Q(i)) \cong \mathbb Z_8$

Let $G = \text{Gal}(K/\mathbb Q(i))$.
By the fundamental theory of Galois Theory, we know that $G \subseteq K$.
Since $\alpha: i \mapsto i$, i.e. it fixes $i$, $\alpha \in G$.
Since $G$ is a group, we know that at least the identity and all powers of
$\alpha$ are in $G$. Since $\beta: i \mapsto -i$, it doesn't fix $i$ and $\beta
\notin G$.
So $8 \le |G| < 16$.
By Lagrange's theorem, those must be exactly the elements of $G$.
Since $G$ is cyclic with $8$ elements, $G \cong \mathbb Z_8$

#### Show that $\text{Gal}(K/\mathbb Q(\sqrt 2)) \cong D_8$

Let $G = \text{Gal}(K/\mathbb Q(\sqrt 2))$.
By the fundamental theory of Galois Theory, we know that $G \subseteq K$.
Since $\alpha: \sqrt 2 \mapsto (\sqrt[8] 2 e^{\frac 1 4 i \pi})^4 = - \sqrt 2$
and,
$$\begin{aligned}

\alpha^2(\sqrt 2) &= \alpha^2(\sqrt[8] 2 ^ 4) =  \alpha^2(\sqrt[8] 2)^4
= \alpha(\sqrt[8] 2 e^{\frac 1 4 i \pi })^4 \\
&= \alpha(\sqrt[8] 2)^4 \alpha(e^{\frac 1 4 i \pi })^4 \\
&= (\sqrt[8] 2 e^{\frac 1 4 i \pi })^4 \alpha(e^{\frac 4 4 i \pi }) \\
&= (\sqrt 2 e^{\frac 4 4 i \pi }) \alpha(i)^2 \\
&= -i^2\sqrt 2 = \sqrt 2
\end{aligned}$$
and $\beta: \sqrt 2 \mapsto \sqrt 2$, $\alpha \notin G$, but $\beta, \alpha^2
\in G$.

By closure, $1, \alpha^2,\alpha^4,  \alpha^6, \beta, \beta\alpha^2,
\beta\alpha^4,  \beta\alpha^6$ are in $G$. By Lagrange's Theorem, these are
exactly the elements of $G$.

Now,
$\beta \alpha^2 \beta(i) = \beta \alpha^2(-i) = \beta(-i) = i$ and
$\beta \alpha^2 \beta(\sqrt[8] 2) = \beta \alpha^2(\sqrt[8] 2) = \beta(\sqrt[8] 2 e^{\frac 2 4 i \pi}) = \sqrt[8] 2 \beta(i) = -i \sqrt[8] 2$
and $\alpha^2(-i \sqrt[8] 2) = -i e^{\frac 2 4 i \pi} \sqrt[8] 2 = \sqrt[8] 2$.

So $\alpha^2$ and $\beta \alpha^2 \beta$ are inverses.

Since $D_8 = \langle a^4 = x^2 = e, xax ^{-1} = a ^{-1} \rangle$, the map
$\alpha^2 \mapsto a, \beta \mapsto b$ is an isomorphism between $G$ and $D_8$.

#### Show that $\text{Gal}(K/\mathbb Q(\sqrt {-2})) \cong D_8$

Let $G = \text{Gal}(K/\mathbb Q(\sqrt {-2}))$.
By the fundamental theory of Galois Theory, we know that $G \subseteq K$.

$\alpha^2(\sqrt{-2})
= \alpha^2(i \sqrt 2)
=i \alpha^2(\sqrt[8] 2 ^ 4)
= ie^{\frac 8 4 i \pi} \sqrt 2
= \sqrt {-2}$

$\beta \alpha^3(\sqrt{-2}) = (\beta\alpha)(\alpha^2)(\sqrt{-2}) =
\beta\alpha(\sqrt{-2})
= \beta\alpha(i \sqrt[8]  2^4)
= \beta(ie^{\frac 4 4 i \pi})
= \beta(e^{\frac 6 4 i \pi}  \sqrt 2)
= \beta(-i \sqrt 2)
= \sqrt{-2}$

In the example we also showed that $\alpha\beta = \beta\alpha^3$
so $\alpha^2 \beta \alpha^3 = \alpha \beta \alpha^6 = \beta \alpha$

By closyure : $
1, \alpha^2, \alpha^4, \alpha^6,
\beta \alpha^3,
\beta \alpha^5,
\beta \alpha^7,
\beta \alpha$

We know that $\alpha \notin G$, so by Lagrange's Theorem, these are
exactly the elements of $G$.

The isomorphism $\alpha^2 \mapsto i,
\beta \alpha^3 \mapsto j,
\beta \alpha^7 \mapsto k$ is an isomorphism to $Q_8 = \langle i, j, k | i^2 =
j^2 = k^2 = -1, ij = l\rangle$ since those multiplication rules hold.


