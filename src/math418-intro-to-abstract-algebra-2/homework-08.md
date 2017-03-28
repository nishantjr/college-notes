Let $K = \mathbb Q( \sqrt[8] 2, i)$ show that: 

$$\begin{aligned}

F_1 = \mathbb Q (i)             & \text{Gal}(K/F_1) \cong \mathbb Z_8 \\
F_2 = \mathbb Q (\sqrt 2)       & \text{Gal}(K/F_2) \cong D_8         \\
F_3 = \mathbb Q(\sqrt {-2}      & \text{Gal}(K/F_3) \cong Q_8         \\

\end{aligned}$$

The minimal polynomial for $\sqrt [8] 2$ is $x^8  - 2$ (its irreducible by
Eisenstein's Criterion, $p=2$).

It's roots are $\sqrt [8] 2$ times the $8$th roots of 1. These are:
$$\begin{aligned}
\sqrt[8] 2
,\sqrt[8] 2 e^{\frac 1 4 i \pi}
,\sqrt[8] 2 e^{\frac 2 4 i \pi}  = i \sqrt[8] 2
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
        && \sqrt[8] 2 \mapsto  \text{conjugate) ( \sqrt[8] 2 e^{\frac 1 4 i \pi}
        )
        && i \mapsto -i
        \\
\end{aligned}$$

So this group of automorphisms is NOT abelian, and $
