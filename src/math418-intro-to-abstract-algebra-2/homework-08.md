## 14.2 #6

Let $K = \mathbb Q( \sqrt[8] 2, i)$ show that: 

$$\begin{aligned}

F_1 &= \mathbb Q (i)             & \text{Gal}(K/F_1) &\cong \mathbb Z_8 \\
F_2 &= \mathbb Q (\sqrt 2)       & \text{Gal}(K/F_2) &\cong D_8         \\
F_3 &= \mathbb Q(\sqrt {-2}      & \text{Gal}(K/F_3) &\cong Q_8         \\

\end{aligned}$$

---

### $\mathbb Q(\sqrt[8] 2, i)$ is Gallois

$\mathbb Q(\sqrt[8] 2)$ has basis $1, \sqrt[8] 2, \sqrt[8] 2^2 \cdots \sqrt[8]
2^7$ and so is a degree 8 extension over $\mathbb Q$.
$\mathbb Q(i)$ has basis $1, i$ and so is a degree 2 extension.
Since $i \notin \mathbb Q(\sqrt[8] 2)$, $\mathbb Q(\sqrt[8] 2, i)$ is a degree
16 extension over $\mathbb Q$.


---

The minimal polynomial for $\sqrt [8] 2$ is $x^8  - 2$ (its irreducible by
Eisenstein's Criterion, $p=2$). 

It's roots are $\sqrt [8] 2$ times the $8$th roots of 1. These are:
$$\begin{aligned}
\sqrt[8] 2
,\sqrt[8] 2 e^{\frac 1 4 i \pi}
,\sqrt[8] 2 e^{\frac 2 4 i \pi}
,\sqrt[8] 2 e^{\frac 3 4 i \pi}
,\sqrt[8] 2 e^{\frac 4 4 i \pi}
,\sqrt[8] 2 e^{\frac 5 4 i \pi}
,\sqrt[8] 2 e^{\frac 6 4 i \pi}
,\sqrt[8] 2 e^{\frac 7 4 i \pi}
\end{aligned}$$


Automorphism of $K$ must send $\sqrt [8] 2$ to some root of $x^8 - 2$ and $i$
to a root of $x^2 + 1$, its minimal polynomial. 
Let

$$\begin{aligned}

\alpha&: K \to K \quad

        && \sqrt[8] 2 \mapsto \sqrt[8] 2 e^{\frac 1 4 i \pi}
        && i \mapsto i
        \\

\beta&: K \to K
        && \sqrt[8] 2 \mapsto \sqrt[8] 2
        && i \mapsto -i
\end{aligned}$$

This means that $|\text{Aut}(K/ \mathbb Q)| = 8 \times 2 = 16$
XXX $[ K : \mathbb Q] = 16$, so $K / \mathbb Q$ is Galois.


Then $\text{Aut}(\mathbb Q(\sqrt [8]2, i)) = \{
\mathbb 1,
\alpha^1,
\alpha^2,
\alpha^3,
\alpha^4,
\alpha^5,
\alpha^6,
\alpha^7,
\beta,
\beta\alpha^1,
\beta\alpha^2,
\beta\alpha^3,
\beta\alpha^4,
\beta\alpha^5,
\beta\alpha^6,
\beta\alpha^7
\}$

$$\begin{aligned}
\alpha \beta: K \to K 
        && \sqrt[8] 2 \mapsto \sqrt[8] 2 e^{\frac 1 4 i \pi}
        && i \mapsto -i
        \\

\beta \alpha: K \to K 
        && \sqrt[8] 2 \mapsto  \text{conjugate} ( \sqrt[8] 2 e^{\frac 1 4 i \pi}
        )
        && i \mapsto -i
        \\
\end{aligned}$$

So this group of automorphisms is NOT abelian, and $


#### Show that $\text{Gal}(K/\mathbb Q(i)) \cong \mathbb Z_8$

Let $G = \text{Gal}(K/\mathbb Q(i))$.
Since $\alpha: i \mapsto i$, i.e. it fixes $i$, $\alpha \in G$
Since $G$ is a group, we know that at least the identity and all powers of
$\alpha$ are in $G$. Since $\beta: i \mapsto -i$, it doesn't fix $i$ and $\beta
\notin G$.
So $8 \le |G| < 16$.
By Lagrange's theorem, those must be exactly the elements of $G$.
Since $G$ is cyclic with $8$ elements, $G \cong \mathbb Z_8$

#### Show that $\text{Gal}(K/\mathbb Q(\sqrt 2)) \cong D_8$

Let $G = \text{Gal}(K/\mathbb Q(\sqrt 2))$.
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
$\alpha^2 \mapsto a, \beta \mapsto b$ is an isomorphism between $G and D_8$.

#### Show that $\text{Gal}(K/\mathbb Q(\sqrt {-2})) \cong D_8$

Let $G = \text{Gal}(K/\mathbb Q(\sqrt {-2}))$.

$\alpha^2(\sqrt{-2}) = \alpha^2(i \sqrt 2) = i \sqrt 2 = \sqrt{-2}$ and
$\beta \alpha^3(\sqrt{-2}) = (\beta\alpha)(\alpha^2)(\sqrt{-2}) =
\beta\alpha(\sqrt{-2}) = \beta(e^{\frac 5 4 i \pi}\sqrt 2)
= \beta(e^{\frac 5 4 i \pi}\sqrt 2)
= \beta(1-i) 
$



