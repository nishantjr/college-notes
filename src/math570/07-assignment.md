---
title: Math 570 - Homework 7
---

\newcommand \ACF {\text{ACF}}

1.  In the signature of rings, given a polynomial $f(\vec x)$ of degree $n$, there is a statement
    $\phi(\vec x)$ that is satisfied iff the $f$ is reducible in the model.
    For example, assuming one variable, that statement is:
 
    $$\begin{aligned}\phi(x) := & \forall \vec x, \vec g, \vec h, \\
                 & f(x) = (g_n x^n + g_{n-1} x^{n-1} + \cdots g_0 x^0)
                          (h_n x^n + g_{n-1} x^{n-1} + \cdots g_0 x^0) \\
                 & \implies (      (g_n = 0 \land g_{n-1} = 0 \cdots g_1 = 0 )
                              \lor (h_n = 0 \land h_{n-1} = 0 \cdots h_1 = 0 )
    \end{aligned}$$

    By the Lefschetz Principle, $C \satisfies \phi(x) \iff$ for
    sufficiently large primes $p$, $\ACF_p \satisfies \phi(x)$.
    i.e. A polynomial $f$ is irreducible in $\C[\vec x]$ $\iff$ it is
    irreducible in $ACF_p$ (i.e., the algebraic closure of $\F_p$)

2.  a.  Let $\phi_n(\vec x)$ be the statement "The elements of $\vec x$
        form an equivalence class of size exactly $|\vec x|$. i.e:

        $$\phi_n(\vec x) :=       \text{"$x_1, x_2\ldots, x_n$ are distinct"}
                            \land \text{"$x_1, x_2\ldots, x_n$ are related pairwise"}$$

        Let $T$ contain:

        1.  Axioms for equivalience relation
            *    Reflixive
            *    Symmetric
            *    Transitive
        2.  For each $n \in \N$:
            -   At least one class of size $n$: $\exists \vec x, \phi(\vec x)$
            -   At most  one class of size $n$: $\forall \vec x, \vec y, (\phi(\vec x) \land \phi(\vec y)) \limplies \text{"$\vec x$ and $\vec y$ are the same up to rearrangement"}$

    b.  There are $\aleph_0$ countable models: each having a differenet
        number of equivalence classes of size $\aleph_0$.

    c.  For cardinality $\aleph_1$ each model has:
        -   exactly 1 $n$ component, for each $n \in \N$
        -   countable or $\aleph_1$, $\aleph_0$ components
        -   countable or $\aleph_1$, $\aleph_1$ components

        giving us a total of $\aleph_0 \times \aleph_0 = \aleph_0$ models.

    d.  INCOMPLETE: Take $\bar \sigma := \sigma
                             \union \{ c_n : n \in \N \}$

        Let $$\bar T :=        T 
                       \union \{ \text { "$c_i$ is connected with atleast $n$ other distinct elements" }
                                    : \forall i, n \in \N \}
                       \union \{ \lnot c_i E c_j : \forall i, j \in \N \}
        $$
        Since there is a model with $n$ infinite components for every $n \in \N$,
        $\bar T$ is finitely satisfyable. By the compactness theorem, there must
        be a model **M** with countable cardinality. This model must have
        inifinite infinite components, since no two $c_n$s can be in the same component,
        and no $c_n$ can be in a class of any finite cardinality.
        
    e.  INCOMPLETE: Let $N \satisfies T$, and have $n$ countably inifinite componenets.
    
        Let $\psi$ be a statement in $\sigma-$statement, $M_\omega \satisfies \psi$.
        Since $N \elEmbeds M_\omega$
        But since $\psi$
        
3.  1.  We can encode $\arith$ sentences in $\arith$. Let $[\phi]$
        represent this encoding.
    2.  For any sigma sentence, $\theta$, we can define an $\arith$
        formula $\phi$ such that
        $N \satisfies \theta \iff N \satisfies \phi([\theta])$
    3.  If $T$ is recursive, we can define a sentence that checks proofs
        and provability of sentences in $\arith$

    Let $T \subset \Th(N)$ be a recursive theory. For any sentence $\phi$
    `1.` and `3.` let us write a statement "$\phi$ is not provable".
    `2.` lets us write "this statement is not provable". Since this
    statement is a paradox -- it can neither be true or false, $T$ must be
    incomplete.

4.  Fixed Point Lemma $\implies$ $\Th(N)$ not arithemetical:
    Suppose $\Th(N)$ is arithmetical, then there is a formula $\text{Axiom}(v)$,
    such that $N \satisfies \lnot Axiom([\phi]) \iff \phi \in T$.
    By the fix point lemma, $\exists \theta, N \satisfies \theta \iff \lnot Axiom([\phi])$

    INCOMPLETE: $\Th(N)$ not arithemetical $\implies$ fixed point Lemma:
    Suppose the fixed point lemma does not hold. Then for some sentence,
    $\phi$, has no fixed point, $N \satisfies \theta$ 

5.  The program is able to substitute a marker ("x :=") with arbitary
    text. It surrounds that marker with enough infrastructure to peform
    the same substitution and sets a variable to that string. So, when
    it replaces the marker in that string with the string itself, it is
    still able to peform that substitution, and contains a similarly
    constructed string.

6.  a.  *   $f: n \mapsto 2^n$:
            Let $g = 1$, $h(n, x) = 2*x$, where $h$ is the doubling function. Define $f$ as:

            $$\begin{aligned}
                f(0)     &= g() = 1    \\
                f(n + 1) &= h(n, f(n))
            \end{aligned}$$ 
    
        *   Addition in terms of `successor` and $0$: $$\begin{aligned}
            +(m, 0) &= m \\
            +(m, n+1) &= s(+(m, n)) 
            \end{aligned}$$
            
        *   Multiplication in terms of addition and zero
            $$\begin{aligned}
            \times(m, 0)   &= 0 \\
            \times(m, n+1) &= +(m, \times(m, n))
            \end{aligned}$$
    
        * Factorial can be defined in terms of multiplication with successor and the constant function, $1$:
        
            $$\begin{aligned}
                f(0)     &= g() = 1    \\
                f(n + 1) &= h(n, f(n))
            \end{aligned}$$ 
            where $h(n, m) = (n+1) \times m$
        
    b.  $f(\vec a, n) = m$ if and only if there is $\vec b \in \N^{<\N}$ such 
        that $|\vec b| = n + 1$
        and $\vec b(0) = g(\vec a)$
        and for each $i < n + 1$, $\vec b(i) = h(\vec a, i -1, \vec b(i - 1))$
        and $\vec b(n) = m$.

        *   $\Longrightarrow$: If $f(\vec a, 0) = m$, then $(m)$ is such a certificate.

            Let $f(\vec a, i)$ and $0 < i < n+1$ and assume we have the hypothesis holds for $i - 1$.
            
            By definition, $m = f(\vec a, i) = h(\vec a,  i - 1, f(\vec a, i -1))$
            By the induction hypothesis, we have a certificate for $f(\vec a,i - 1)$, say $\vec b$.
            Since,  $\vec b(i - 1) = f(\vec a, i -1)$, $h(\vec a,  i - 1, \vec b(i -1))$,
            and $(\vec b, m)$ is the required certificate.
            
        *  $\Longleftarrow$: Let $\vec b$ be a certificate for $f(\vec a, n)$.
           By definition $\vec b(0) = g(\vec a) = f(\vec a, 0)$.
           By induction on $i<n$, and by definition of primitive recursion, 
           we get the $b(i + 1) = h(\vec a, i, b(i)) =  h(\vec a, i, f(\vec a, i))$
           and $f(\vec a, n) = h(\vec a, i, f(\vec a, i)) = m$.
           
    c.  $g, h$ are arithmetical.  $f$ is primitive recursive.
        
        Let $\phi_h$ and $\phi_g$ be the sentences in $\sigma_\text{arith}$ 
        defining the graphs of $f$ and $g$. i.e., $N \satisfies \phi_g(\vec a, m) \implies g(\vec a) = m$ 
        and $N \satisfies \phi_h(\vec a, n, b, m) \implies g(\vec a, n, b) = m$ 
         
        $$\begin{aligned}
            \phi_f(\vec a, n, m) := \exists b, &\quad&              & \phi_g(\vec a, \beta(b, 0))                 \\
                                               &     &  \land \quad & \phi_h(\vec a, n, \beta(b, n), m)           \\
                                               &     &  \land \quad & \forall i', i' < n, \exists i, s(i) = i'      
                                                                      \quad\phi_h(\vec a, i, \beta(b, i), \beta(i'))   \\
        \end{aligned}$$

        where $<, >$ are sugar for their usual meaning.
        $\phi_f$ defines the graph of $f$, and so $f$ is arithmetical.
