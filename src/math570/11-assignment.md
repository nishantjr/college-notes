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
        $\lnot \Provable {T_n}(\gc{\lnot\phi})$. Define a new theory
        $T_{n+1} := T_n\union\{\phi\}$. This theory is recursive, since
        it is the union of a recursive theory and a finite set of
        elements. We can define
        $\Provable {T_{n+1}}(\psi) := \Provable {T_n}(\phi\limplies\psi)$
        Define the theory $T_\infty := \Union_{n\in\N} T_n$. For a
        statement $\phi$, $\phi \in T_\infty \iff \phi \in T_{\gc\phi}$.
        So $T_\infty$ is a recursive theory.

        i.e. given a statement, $\psi$ we can search through the infinite
        list of codes of statements added to $T$. Since $T$ is decidable,
        we can list the codes of all these statements up to $\gc \psi$. 
        If $\Provable{T}(\Land \phi_i \limplies \psi)$ then $\psi$ is
        provable in this completion, where $\{\phi_i\}$ is the set of all
        statements added to $T$ and $\gc{\phi_i} < \gc\psi$

    b.  Assume $T$ consistent. Since $T$ recursively interprets $PA$ and $PA \proves Q$,
        $T$ recursively interprets $Q$.
        Let $T$ have a consistent maximal completion, $\bar T$, but then, by Rosser's form
        of the First Incompleteness theorem, $\bar T$ cannot be recursive.
        Since $T$ does not have a recursive completion, then $T$ cannot be decidable.

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
\newcommand \p[1] {\Pi^0_{#1}}

5.  a.  Suppose $P$ and $Q \subset \N^k \in \s n$, then there are
        relations $R_P, R_Q$ such that
        $\vec p \in P \iff \exists x \lnot R_P(\vec p, x)$ and
        $\vec q \in Q \iff \exists y \lnot R_Q(\vec q, y)$, and $R_P$
        and $R_Q$ are $\s {n-1}$, and $f : \N^m \to \N^k$ is recursive:

        $$\begin{aligned}\vec a \in P \intersect Q
        &\iff \exists x, \lnot R_P(\vec a, x) \land \exists y, \lnot  R_Q(\vec a, y) \\
        &\iff \exists t, \lnot R_P(\vec a, \text{Left}(t)) \land \lnot R_Q(\vec a, \text{Right}(t))\\
        &\iff \exists t, \lnot (R_P(\vec a, \text{Left}(t)) \lor R_Q(\vec a, \text{Right}(t)))\\
        \end{aligned}
        \quad
        \begin{aligned}\vec a \in P \union Q
        &\iff \exists x, \lnot R_P(\vec a, x) \lor \exists y, \lnot R_Q(\vec a, y) \\
        &\iff \exists t, \lnot R_P(\vec a, \text{Left}(t)) \lor \lnot R_Q(\vec a, \text{Right}(t))\\
        &\iff \exists t, \lnot (R_P(\vec a, \text{Left}(t)) \land R_Q(\vec a, \text{Right}(t)))\\
        \end{aligned}
        $$ For projections, $$\begin{array}{l r l l}
                & p \in P &\iff& \exists x, \lnot R_P(\vec p, x) \\
        \implies& a \in \exists^\N P &\iff& \exists y, \exists x, \lnot R_P(\vec a, x, y) \\
                &                    &\iff& \exists t, \lnot R_P(\vec a, \text{Left}(t), \text{Right}(t))
        \end{array}$$
        and recursive pre-images,
        $$\begin{array}{l r l l}
                & p \in P        &\iff& \exists x \lnot R_P(\vec p, x) \\
        \implies& a \in f^{-1}(P) &\iff& \exists x \lnot R_P(f(\vec a), x) \\
        \end{array}$$

        For $n = 1$, $\lnot \s 0 \equiv \text{recursive}$ and
        $\text{Left}$ and $\text{Right}$ are recursive, so if
        $1_P(\vec x)$ and $1_Q(\vec y)$ are the indicator function of
        $R_P$ and $R_Q$ then, $1_\ge((1_P(\vec x) + 1_Q(\vec y)), 1)$ is
        the indicator function of $R_P(\vec x) \land R_Q(\vec y)$ and
        recursive function are closed under composition and projection,
        so $R_P(\text{Left}(x)) \land R_Q(\text{Right}(x))$,
        $R_P(\text{Left}(x)) \lor R_Q(\text{Right}(x))$
        , $R_P(\vec a, \text{Left}(t), \text{Right}(t))$ and $\lnot R_P(f(\vec a), x)$ are also
        recursive.

        Assume the hypothesis holds for $\forall k < n, \s k$, then,
        again, since $\s k$ relations are closed under projection,
        and recursive pre-images,
        so $R_P(\text{Left}(x)) \land R_Q(\text{Right}(x))$,
        $R_P(\text{Left}(x)) \lor R_Q(\text{Right}(x))$
        and $R_P(\vec a, \text{Left}(t), \text{Right}(t))$ are also
        $\s {n-1}$.
        By induction the hypothesis must hold for all $n$.
        
        Furthurmore, by induction we can extend this to any finite union or intersection.
        
    b.  Suppose $P$ and $Q \subset \N^k \in \p n$, then there are
        relations $S_P, S_Q \in \s_n$ such that $P = \lnot S_P = \N^k \setminus S_P$
        and $Q = \lnot S_Q = \N^k \setminus S_Q$.
        
        Then, $$
        \begin{aligned}
        P \union Q &= (\N^k \setminus S_P) \union (\N^k \setminus S_Q) \\
                   &= \N^k \setminus ( S_P \intersect S_Q )
        \end{aligned} \quad\quad
        \begin{aligned}
        P \intersect Q &= (\N^k \setminus S_P) \intersect (\N^k \setminus S_Q) \\
                   &= \N^k \setminus ( S_P \union S_Q )
        \end{aligned}
        $$
        But by the previous result, $S_P\union S_Q$ and $S_P \intersect S_Q$ are
        $\s n$, so $P \union Q$ and $P \intersect Q$ are $\p n$.
        
        $\forall^\N P = \lnot \exists ^\N \lnot P$, by $\lnot P$ is $\s n$ 
        and $\s n$ is closed under $\exists^\N$, and so $\p n$ is closed under
        $\forall^\N$ (co-projections) too.
        
        Let $f$ be as in `(a)`.
        Then $$\begin{aligned}
        \vec p \in P    &\iff \vec p \in \lnot S \quad\text{where $S$ is a $\s n$ set} \\
        \vec a \in f(P) &\iff \vec a \in f^{-1}(\lnot S) \\
                        &\iff \vec a \in \lnot f^{-1}(S)
        \end{aligned}$$

        again, since $\s n$ is closed under preimage of recursive maps.

    c.  Let $f : \N^k \to \N^m$, let $P$ be $\s n$  as before.
        Then $$\begin{aligned}
                \vec p \in P    &\iff \exists x,                                     R_P(\vec p, x) \\
                \vec a \in f(P) &\iff \exists \vec p,\exists x, \vec  a = f(\vec p) \land R_P(\vec p, x)
             \end{aligned}$$
             
        Suppose $n = 1$.
        Since $=$, $f$ and $\land$ are recursive, $a = f(\vec p) \land R_P(\vec p, x)$ is recursive.
        Since $\s 1$ is closed over $\exists$, the set $f(P)$ is $\s 1$.

        ---

        Assume $n > 1$
        then
        $$\begin{aligned}
                \vec p \in P    &\iff \exists x,                                     S_P(\vec p, x) \\
                \vec a \in f(P) &\iff \exists \vec p,\exists x,\vec a = f(\vec p) \land S_P(\vec p, x) \\
                \vec a \in f(P) &\iff \exists \vec p,\exists x,\vec a = f(\vec p) \land \lnot P_P(\vec p, x) \\
        \vec a \in \lnot f(P) &\iff \forall \vec p,\forall x, \lnot \vec a = f(\vec p) \lor \lnot S_P(\vec p, x)
        \end{aligned}$$

        Closed under prim rec since those are quantifier free, and the 
        quantifiers can be normalized.

