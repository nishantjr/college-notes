---
title: Math 570 - Homework 4
author: Nishant Rodrigues
geometry: margin=1cm
---

\newcommand \bottom {\text{Bottom}}
\newcommand \theory {\text{Th}}
\newcommand \elementarySubstruct \preceq
\newcommand \FOL{\mathbb {FOL}}
1.  a.  Show that: $T$ is semantically complete $\iff$ $\forall M, M' \satisfy T, M \equiv M'$

        Let $T$ be a semantically complete $\sigma$-theory. Let $M, M' \satisfy T$.

        For every $\sigma$ statement $\phi$, either $T\satisfies\phi$ or $T\satisfies\lnot \phi$.
        This means that either $M,M'\satisfies \phi$ or  $M,M'\satisfies \lnot\phi$.
        So $M \equiv M'$

    b.  Given a satisfiable theory $T$, and $M\models T$, then the set of true
        statements in $M$, $\theory(M)$ is maximally complete and has a model ($M$).
        It is maximally complete because of the law of the excluded middle.

    c.  Since any two models of a semantically complete theory are elementarily equivalent,
        the theories' of those models must have the same true statements.
        Those theories are the maximal completion of $T$. So the maximal
        completion of a semantically complete theory must be unique.

2.  **Claim**: By composing homomorphisms, we can have an arbitary finite
    subset of $B \setminus A$ such that $h(Q) \subset A$.

    Let $Q = \{b_1, b_2\}$, For the homomorphism $h_1$, let
    $h_1(b_1) \in A$. For the homomorphism $h_2$, let
    $h_2(h_1(b_1)) = h_1(b_1)$, i.e. let $h_1(b_1)$ be one of the points
    that $h_2$ fixes, let $h_1(b_2) \in A$.S Then
    $h_1 \cdot h_2 (Q) \subseteq A$. By induction we can show that this
    works for any finite cardinality of $Q$.

    By Homework 1's (1), for all QF formula,
    $A \satisfies \phi \iff B \satisfies \phi$

    **Claim**: for all existential formula,
    $A \satisfies \phi \iff B \satisfies \phi$

    $\Longrightarrow$: By Homework 1's (1), existential formulae,
    $A \satisfies \phi \implies B \satisfies \phi$.

    $\Longleftarrow$: 
    Let $b_1, b_2, \ldots, b_n$ be the witness to the
    existential formula $\phi(\vec x) = \exists\vec v, \psi(\vec x, \vec v)$.
    There is an isomorphism, $h$, of **B** such that
    $h(\{b_1, b_2, \ldots, b_n\})\subset A$. Since $h$ is a homomorphism
    we know that $h(b_1), h(b_2), \ldots, h(b_n)$ are witness to $h(\phi)$.
    So all existential formulae hold in $A$.

    **Claim**: for all universal formula,
    $A \satisfies \phi \iff B \satisfies \phi$
    
    $\Longleftarrow$: By Homework 1's (1), quantifier formulae,
    $A \satisfies \phi \implies B \satisfies \phi$.
     
    $\Longrightarrow$: Since there is an isomorphism, $h$ that takes a finite
    set of elements $Q \subset B$ to $A$, it's inverse must bring some elements
    of $A$ to those $Q$.
    
    Since the formula holds for all $\vec a \in A^n$, and for any $\vec B \in B^n$ 
    and we have a homomorphism, $h(\vec b) \in A^n$, there exists some $\vec a \in A^n$
    such that $h^{-1}(\vec a) = \vec b$. Since for all $\vec b$, $\psi(\vec a)$ holds, 
    $\psi(x, h^{-1}(\vec a)) = \psi(x, \vec b)$ holds, and $\phi(x) = \forall b, \psi(\vec b)$ holds
    
3.  a.  Let $P \subseteq \Q$ be a finite set. Let
        $b \in \R \setminus \Q$. Suppose without loss of generality, that $\exists p, q \in P$
        such that $p < b < q$. (If no such $p$ or $q$ exist, we can add arbitary such elements to $P$). Let $$\begin{aligned}
        f:&x \mapsto \frac {x - p} {b - p} \cdot \frac {p + q} 2 + p&\text{when } p\le x \le b  \\
          &x \mapsto \frac {x - q} {q - b} \cdot \frac {p + q} 2 + q&\text{when } b\le x \le q  \\
          &x \mapsto x                                              &\text{otherwise}   \\
        \end{aligned}$$

        If $b \in \R$, then let $f = id_B$.

    b.  There can be no isomorphism between $\Q$ and $\R$ since they
        have different cardinalities, and there can be no bijection
        between them.

4.  a.   Let the $\N \times \N$ be the vertices, and $E = \{ ((2n, m), (2n +1, m)) : \forall n \in \N\}$, 
         ($0 \notin \N$).
         
         Let **B** $= (\N \times \N, E)$.
         Let $A = \{ (n, m) , (n, m) \in \N \times \N, n > 2 \}$. 
         Let **A** $= (A, E \cap A^2)$.
         
         Let $h: (n, m) \mapsto (n + 2, m)$
         
         This is an isomorphism between $A, B$ but, the inclusion map is not an
         elementary embedding, since $\phi(z) = \exists x, x E z$ holds for $(2, 0)$
         in $B$, but not in $A$. 
       
    b.   Let $C = \{ (n, m) , (n, m) \in \N \times \N, n \ne 1, n \ne 3 \}$. 
         Let **C** $= (C, E \cap A^2)$.
         
         Let $g: (1, m) \mapsto (2, m), (n, m) \mapsto (n+1, m) \text{ for } n > 2$

         $A \cup C$ has no elements of degree $0$ and so cannot be elementarily
         equivalent to $B$.

5.  a.  ($I \implies II$): Suppose (I) holds and $T$ is not satisfiable.
        Since $T$ has no non-empty models, $T \satisfies \forall x, x \ne x$ holds.
        By (I), there is a finite subset $T_0$, such that $T_0 \satisfies \forall x, x \ne x$.
        But then models of $T_0$ must be empty, and $T_0$ is not satisfiable.

    b.  ($II \implies I$):
    
6.  
    
7.  a.  ZFC has the signature $(\in)$. By Lowenheim-Skokem, for
        $S = \{\phi\}$, there is a model of ZFC, whose cardinality is at
        most $\max(|S|, |\sigma|, \aleph_0) = \aleph_0$.

    b.  $\FOL$ allows only countable many variables and countable many
        sentences. Thus this model of ZFC need only have countable
        witnesses for each of these. Since we can only talk about
        countable things, a countable model is enough for that.\
        Even though there is an uncountable set in the model of ZFC, all
        FOL sentences can only talk about a countably many of it's
        members. The concept uncountable sets is internal to ZFC, and
        doesn't require that the model itself if uncountable.

--- 
    
$\top$:
:   $\forall x(x = x)$

$\bottom$:
:   $\lnot \top \equiv (\exists x, x \ne x)$

Model: $M \models T$
:   **M** is non-empty, $\forall \phi, T \satisfies \phi \implies M \satisfies \phi$

Semanically consistant:
: $T \nsatisfy \bottom$

Semanically $\sigma$-complete:
:   iff $\forall \phi, T\satisfy \phi$ or $T \satisfies \lnot \phi$

Elementary Equivalent for $\sigma$-structures **A**, **B**:
:   $A \equiv B$ iff $\theory(A) = \theory(B)$
:   $A \equiv B$, if $\forall \phi, A \satisfies \phi \iff B \satisfies \phi$

Maximal complete:
:   if for every $\sigma$-sentence $\phi$ 

$A \elementarySubstruct B$ (A is an elementary substructure of B):
:   $A\subseteq B$, and inclusion map is an elementary embedding

Elementary embedding (XXX Notation):
:   $h: A \to B$ homomorphism, if $\forall, \phi(\vec v), \forall a \in A^n$,
    $A \satisfies \iff B \satisfies \phi (h(\vec a))$

Inclusion map:
:   $f: A \to B$, $A\subseteq B$ $id_B|_A$
