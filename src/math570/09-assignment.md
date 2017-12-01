---
title: Math 570  Homework 9
---


3.  *   Clearly addition, multiplication, projection and order are
        arithmetical.

    *   Arithmetical functions are closed under composition: Let
        $g: \N^m \to \N$, $h_1, \ldots, h_m: \N^k \to \N$ be arithmetical.

        Then there are formulae:
        $\phi_g(\vec a, n), \phi_{h_1}(\vec b, n), \ldots, \phi_{h_m}(\vec b, n)$
        where $|\vec a| = m$ and $|\vec b | = k$, such that $g(\vec a) = n \iff N \satisfies \phi_g(\vec a, n)$ XXX

        \newcommand \COMP {g\comp(h_1,\cdots,h_m)} 
        Then we define the formula: 
        $$\phi_\COMP(\vec b, n) := \exists \vec a,
                    \Land_{1\le i\le m} \phi_{h_i}(\vec b, a_i)
                    \land \phi_g(\vec a, n)$$

    *   Arithmetical functions are closed unded successful search:

        Let $g \subset \N^k$ be an arithmetical relation, then there is a
        formula $\phi_g(\vec a, m)$ such $g(\vec a, m) \iff N \satisfies \phi_g(\vec a, m)$

        We can define $\phi_{\mu_x(g, m)}(\vec a, m) := \phi_g(\vec a, m) \land  \forall x, \phi_g(\vec a, m) \implies m \le m$

4.  a.  Let $\phi_g(\vec a, n)$ represent a function $g$ in
        $T \subseteq \Th(N)$.

        Then
        $T \satisfies \forall n \big[\phi_g(\Delta(\vec a), n) \liff \Delta(g(\vec a)) = n \big]$.

        But $T \subset \Th(N)$, so
        $N \satisfies \forall n \big[\phi_g(\Delta(\vec a), n) \liff \Delta(g(\vec a)) = n \big]$.

        $$\begin{aligned}
        \implies& \forall n \in \N,& N \satisfies& \phi_g(\Delta(\vec a), \Delta(n)) \liff \Delta(g(\vec a)) = \Delta(n) \\
        \implies& \forall n \in \N,& N \satisfies& \Delta(g(\vec a)) = \Delta(n) \liff  \phi_g(\Delta(\vec a), \Delta(n))\\
        \implies& \forall n \in \N,& N \satisfies& \Delta(g(\vec a)) = \Delta(n) \limplies  \phi_g(\Delta(\vec a), \Delta(n))\\
        \implies& \forall n \in \N,& N, \Delta(g(\vec a)) = \Delta(n) \satisfies& \phi_g(\Delta(\vec a), \Delta(n))\\
        \implies& \forall n \in \N,& g(\vec a) = n \implies N \satisfies& \phi_g(\Delta(\vec a), \Delta(n))\\
        \end{aligned}$$
        
        and,

        $$\begin{aligned}
        \lnot g(\vec a) = n &\implies N, \lnot \Delta(g(\vec a)) = \Delta(n) &&\satisfies \phi_g(\Delta(\vec a), \Delta(n)) \limplies \Delta(g(\vec a)) = \Delta(n) \\
                            &\implies N,                                     &&\satisfies \lnot \Delta(g(\vec a)) = \Delta(n) \limplies \phi_g(\Delta(\vec a), \Delta(n)) \limplies \Delta(g(\vec a)) = \Delta(n) \\
        \end{aligned}$$

    b.  In $T = \Th(N)$, arithmetic $\implies$ representable:

        Let function $g$ be arithmetical, then there is a formula $\phi_g$
        such that, $\forall n \in \N$,
        $$\begin{aligned}
        &g(\vec a) = n \iff N                &&\satisfies \phi_g(\vec a, n) \\
            \\
         &\Delta(g(\vec a)) = \Delta(n), N   &&\satisfies \phi_g(\vec a, n) \\
         &N                                  &&\satisfies \Delta(g(\vec a)) = \Delta(n) \limplies \phi_g(\vec a, n) \\
         \\
        \lnot g(\vec a) = n &\implies  N     &&\nsatisfies \phi_g(\vec a, n) \\
        \lnot g(\vec a) = n &\implies  N     &&\satisfies \lnot \phi_g(\vec a, n) \\
        &\implies  N,   \lnot g(\vec a) = n  &&\satisfies \lnot \phi_g(\vec a, n) \\
        &\implies  N                         &&\satisfies \lnot g(\vec a) = n \limplies  \lnot \phi_g(\vec a, n) \\
        &\implies  N                         &&\satisfies \phi_g(\vec a, n) \limplies  g(\vec a) = n  \\
        \\        
        &\implies  N                         &&\satisfies \phi_g(\vec a, n) \liff  g(\vec a) = n  \\
        \end{aligned}$$

        By induction axiom, we get $\N \satisfies \forall n \phi_g(\vec a, n) \liff  g(\vec a) = n$

    c.  -   Turing machines and so halting problem can be encoded... so no.
        -   Previous argument relied on completeness of $\Th(N)$
       
        The fixed points of $\text{NotProvableInPA}(n)$ defines a unary relation.
        This is definable in $N$, and so arithimical.
        
        Suppose it is representable in $PA$. Then given this formula we can
        search for a fixed point say $f$. Then let $\phi$ be the statement that $f$ encodes.
        Since $PA \satisfies \phi$, by completeness of FOL, $PA \proves \phi$.
        But this is a contradiction 

5.  a.  Let $\phi$ represent $f$.

        Then for all $a \in \N^n$,
        $T \satisfies \forall y [ \phi (\Delta(\vec a), y) \liff y = \Delta(f(\vec a)) ]$.

        Fix $\vec a, y$. Then
        $T \satisfies \phi (\Delta(\vec a), \Delta(y)) \liff y = \Delta(f(\Delta(\vec a)))$.

        -   $T, \Delta(f(\vec a)) = \Delta(y) \satisfies \phi (\Delta(\vec a), \Delta(y))$
            (implication is transitive )
        -   $f(\vec a) = y \implies T \satisfies \phi(\Delta(\vec a, y))$

        and:
        -   $T, \lnot \Delta(f(\vec a)) = \Delta(y) \satisfies \lnot\phi(\Delta(\vec a), \Delta(y))$
            (distinct terms are distinct in model, proof by
            contradiction)
        -   $\lnot \phi(\vec a, y) \implies T \satisfies \lnot \phi((\Delta(\vec a, y))$

    b.  If $M$ is non-standard model of $\Th(N)$, then even though the subgraph $E \intersect \N^{n+1}$
        is representable, there may be some $\vec a \in \N^{n}$ such that $f(\vec) \notin \N$
        $\phi(\vec a, n)$ represents the graph of $f$.

---

1.
       
2.  >     PR is R (n is depth of recursion):
    >     Need to define a function $\bar f(\vec a, n)$ that returns the least tuple
    >     such that: 
    >      
    >     - Lenght is $n$
    >     - $(x)_0$ is $g(0)$, 
    >     - $(x)_n$ is $h(\vec a, n, (x)_{n-1})$.
    >       The $s(n)$th term can be specified using recursion in terms of the previous
    >       $n$ terms.

    Need to define a function $\bar f(n, l, v)$ that returns the least tuple
    such that:

    - each element is a tuple of size 3
        * First component encodes a function $f$
        * Second it's arguments $\vec a$
        * third is $f(\vec a)$
      conforming to rules in question.
      
        
    -   * If $(x)_n = \langle \langle 0, d, m\rangle, \langle \vec a \rangle\rangle$: Then can de defined from base cases of recursion without using anything previously in the tuple
        * If $(x)_n = \langle \langle 1, d, m\rangle, \langle \vec a \rangle\rangle$: Then can de defined from base cases of recursion without using anything previously in the tuple
        * If $(x)_n = \langle \langle 2, d, m\rangle, \langle \vec a \rangle\rangle$: Then can de defined from base cases of recursion without using anything previously in the tuple
        * If $(x)_n = \langle \langle 3, d, m\rangle, \langle \vec a \rangle\rangle$:
        * If $(x)_n = \langle \langle 4, d, m\rangle, \langle \vec a \rangle\rangle$
          then $m$ can be defined in terms of primitive recursion
          on $g$, $h$. Note that tuples encoding $g$ must be strictly less that $m$
          and if $(x)_{n-1} = \langle \langle 4, d, m\rangle, \langle \vec a' \rangle\rangle$
          then $\langle \vec a' \rangle < \langle \vec a \rangle$
          by primitive recursion. So $(x)_{n-1} < (x)_{x-1}$

