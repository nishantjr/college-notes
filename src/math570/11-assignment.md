---
title: Homework 11
---
\newcommand \Provable[1] {\text{Provable}_{#1}}
\newcommand \PA       {\text{PA}}
\newcommand \gc[1]    {\ulcorner #1 \urcorner}

1.  a.  Theorem $T$ is decidable. Since $\sigma$ is a finite signature,
        we can enumerate the all $\sigma-$sentences. Since it is
        decidable, there is a recursive relation
        $\Provable T \subset \N$, such that for all $\sigma-$statements
        $\phi$, $\Provable T(\gc\phi) \iff T \proves \phi$.

        We define a set of theories $T_n$ as follow. Let $T_0 = T$.

        Assume that $T_n$ is not complete and is recursive. Then there
        is some least $n \in N$, such that there is a $\phi$,
        $n = \gc \phi$ and $\lnot\Provable {T_n}(\gc\phi)$ and
        $\lnot Provable {T_n}(\gc\phi)$. Define a new theory
        $T_{n+1} := T_n\union\{\phi\}$. This theory is recursive, since
        it is the union of a recursive theory and a finite set of
        elements. We can define
        $\Provable {T_{n+1}}(\psi) := \Provable {T_n}(\phi\limplies\psi)$

        Define the theory $T_\infty := \Union_{n\in\N} T_n$. For a
        statement $\phi$, $\phi \in T_\infty \iff \phi \in T_{\gc\phi}$
        So $T_\infty$ is a recursive theory.

    b.

2.  $(3)\implies(2)$:
    :   Since $N \satisfies \PA$,
        $\PA \satisfies \phi \implies N \satisfies \phi$ so,
        $\PA \satisfies \Provable\PA([\theta]) \implies N \satisfies \Provable\PA([\theta])$.

    $(2)\implies(1)$:
    :   If $N\satisfies \Provable \PA([\theta])$, Then by definition of
        $\Provable\PA$ there is a proof of $\theta$ in $\PA$ and
        $\PA \proves \theta \implies \PA \satisfies \theta$.

    $(1) \implies (3)$:
    :   By the completeness of first order logic,
        $\PA \satisfies \theta \implies \PA \proves \theta$ and so there
        must be some finite proof of $\theta$ and so
        $\PA \satisfies \Provable \PA([\theta])$.

3.  $(1) \implies (2)$:
    :   $\PA \proves \phi \implies \PA \proves \psi$ implies that
        $\PA, \phi \proves \psi$ and so by deduction theorem
        $\PA \proves \phi \limplies \psi$.

    $(2) \implies (1)$:
    :   Suppose $\PA \proves \phi \limplies \psi$. By the deduction
        theorem, $\PA, \phi \proves \psi$. So,
        $\PA \proves \phi \implies \PA \proves \psi$.

4.  a.  Since the Rosser statement $\rho$ is self contradictory, so
        $\PA \nsatisfies \Provable{\PA\union\{\lnot\lnot\rho\}}([\lnot\rho]) \limplies \Provable\PA([\lnot\rho])$
    b.  The Rosser sentence is a counter example, since it proves its
        own negation:\
        $\PA \nsatisfies \Provable\PA([\rho]) \limplies \lnot \Provable\PA([\lnot\rho])$
    c.  $\PA, \Provable\PA(\Provable\PA([\theta])) \satisfies \Provable\PA([\theta])$
        by $(3) \implies (1)$ of $2$.\
        So
        $\PA \satisfies \Provable\PA(\Provable\PA([\theta])\implies\Provable\PA([\theta])$
        by the deduction theorem.

\newcommand \s[1] {\Sigma^0_{#1}}

5.  a.  Suppose $P$ and $Q \subset \N^k \in \s 1$, then there are
        relations $R_P, R_Q$ such that
        $\vec p \in P \iff \exists x R_P(\vec p, x)$ and
        $\vec q \in Q \iff \exists y R_Q(\vec q, y)$, and $R_P$ and
        $R_Q$ are recursive. Then,
        $$\begin{aligned}\vec a \in P \intersect Q
        &\iff \exists x, R_P(\vec a, x) \land \exists y, R_Q(\vec a, y) \\
        &\iff \exists t, R_P(\vec a, \text{Left}(t)) \land R_Q(\vec a, \text{Right}(t))
        \end{aligned}$$
        But, $\text{Left}$ and $\text{Right}$ are recursive,
        so if $1_P(\vec x)$ and $1_Q(\vec y)$ are the indicator function of $R_P$ and $R_Q$
        then, $1_P(\vec x) \cdot 1_Q(\vec y)$ is the indicator function of $R_P(\vec x) \land R_Q(\vec y)\vec y)$
        and recursive function are closed under composition and projection, so
        $R_P(\text{Left}(x)) \land R_Q(\text{Right}(x))$ is also recursive.
        Using induction we can generalize this to finite intersections.

        Similarly, for unions,
        $$\begin{aligned}\vec a \in P \union Q
        &\iff \exists x, R_P(\vec a, x) \lor \exists y, R_Q(\vec a, y) \\
        &\iff \exists t, R_P(\vec a, \text{Left}(t)) \lor R_Q(\vec a, \text{Right}(t))
        \end{aligned}$$
        where the indicator function for $P \lor Q$ can be defined as
        $1_P(\vec x) + 1_Q(\vec y)$. Again, this can be generalized to finite unions.

        For projections,
        $$\begin{array}{l r l l}
                & p \in P &\iff& \exists x R_P(\vec p, x) \\
        \implies& a \in \exists^\N P &\iff& \exists y, \exists x R_P(\vec a, x, y) \\
                &                    &\iff& \exists t, R_R(\vec a, \text{Left}(t), \text{Right}(t))
        \end{array}$$
        and again, $R_R(\vec a, \text{Left}(t), \text{Right}(t))$ is recursive.

        and, if $f: \N^m \to \N^k$ is a recursive function, 
        $$\begin{array}{l r l l}
                & p \in P        &\iff& \exists x R_P(\vec p, x) \\
        \implies& a \in f^{-1}(P) &\iff& \exists x R_P(f(\vec a), x) \\
        \end{array}$$
        and since recursive functions are closed under projection, $R_P(f(\vec a), x)$
        is recursive.

        ---
        $\s {n+1}(P) \iff (\exists R \in \s n) (\forall \vec x)
        (P(\vec x) \iff (\exists y) \lnot R(\vec x, y))$
