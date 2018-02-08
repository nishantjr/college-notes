---
title: Math 525 - Algebraic Topology - Homework 1
---

1.  Since $f_1$ and $f_2$ agree on the intersection of $A_1$ and $A_2$,
    we know that $f_1 = f | A_1$ and $f_2 = f | A_2$. Thus $f$ is
    continuous on $A_1$ and on $A_2$. Since $X = A_1 \union A_2$, $f$ is
    continuous on $X$.

2.  For some $x_0 \in X$, let $c_{x_0}$ be the constant function $x \mapsto x_0$.

    Lemma?
        Since $X$ is contractible, there is some point $x_0$ in $X$ such
        that there is an $f : X \to \{ x_0 \}$ and a
        $g: \{ x_0 \} \to X$, such that $fg \homotopic \id_X$ and
        $gf \homotopic \id_{\{x_0\}}$. There is only one such $f$ --
        $f : x \mapsto x_0$. Since $X$ is contractible it must be path
        connected (any map that continuously deforms $X$, will
        continuously deform paths in it), and there is a continuous path
        from any point in $X$ to $x_0$. Thus we can assume $g = \id$. We
        know that $y \homotopic y$ and $fg = f \homotopic \id$.

    a.  $\Rightarrow$: Let $X$ be a contractible space. Let $Y$ be an
        arbitary space s.t. $f : X \to Y$ is continuous.
        
        Since $X$ is contractible, $\id_X \homotopic c_{x_0}$ for some $x_0$.
        Then, $f \compose \id_x \homotopic f \compose c_{x_0}$ a constant 
        function. $f$ is nullhomotopic.

        $\Leftarrow$: Let $X$ be a space, such that all maps from
        $X \to Y$ are nullhomotopic for any topological space $Y$. Show
        that $X$ is contractible.

        Consider the map $\id_X : X \to X$. By assumption, this is
        nullhomotopic, and so $X$ is contractible.

    b.  $\Rightarrow$: Show: $X$ is contractible $\implies$ every map
        $f: Y \to X$ is nullhomotopic.
        
        Let $f: Y \to X$. Since $X$ is contractible, we have $\id_X \homotopic c_{x_0}$, for some
        $x_0 \in X$. Thus, $f \homotopic f \compose c_{x_0}$, a constant function. Thus 
        $f$ is nullhomotopic.

        $\Leftarrow$: For an arbitary topological space $Y$, every map $f: Y \to X$ 
        is nullhomotopic.

        Let $Y = X$, then $\id_X$ is nullhomotopic: $\id_X \homotopic c_{x_0}$, and
        so is contractible. 

3.  $f\compose g = \id$ and $h \compose f = \id$. Thus $h$ and $g$ are
    the left- and right-identities of $f$. If a function has a left and
    a right identity, then they must be the same. So $g = h$. Thus,
    $f\compose g = \id \homotopic\id$ and
    $g \compose f = h \compose f = \id\homotopic\id$ and $f$ is a
    homotopy equivalence.

    Now, more generally, suppose $fg$ and $hf$ are homotopy
    equivalences. Then, there is some $g'$ and $h'$ such that:

    $$
    \begin{aligned}
    (f\compose g) \compose g' \homotopic \id_X  \\
    g' \compose (f\compose g) \homotopic \id_X 
    \end{aligned}\quad\quad
    \begin{aligned}
    (h \compose f) \compose h' \homotopic \id_Y \\
    h' \compose (h \compose f) \homotopic \id_Y 
    \end{aligned}
    $$
    
4.  Let $X$ and $Y$ be two equivalant homotopy spaces, and $f$ is an equivalence.
    We must show that two points $x_0$ and $x_1$ are connected
    iff $f(x_0)$ and $f(x_1)$ are connected.

    If $x_0$ and $x_1$ are connected, then there is a path $p_x$ between them.
    Then, $f \compose p_x$ is a path between $f(x_0)$ and $f(x_1)$

    Since $f$ is an equivalence, there is a function $g$ such that $gf \homotopic \id$.
    and $fg \homotopic \id$. Observe that $g$ is also a homotopy equivalence.
    Thus if $f(x_0)$ and $f(x_1)$ have a path in $Y$, then $g(f(x_0))$ and $g(f(x_1))$
    have a path between them, and since $fg \homotopic \id$, this path is
    homotopic to a path between $x_0$ and $x_1$.

    Thus $X$ and $Y$ must have the same number of path components, and
    number of path component is a homotopy invariant.

5.  $(a) \implies (b)$: Let $f: \S^1 \to X$ be a map. Since this is
    homotopic to some constant function $c_{x_0}$, $x_0 \in X$, we have
    $\bar f : \S^1 \times I \to X$, such that $\bar f(s, 0) = x_0$, and
    $\bar f(s, t) = f$. Define
    $d: \D^2 \to \S^1 \times I : (\theta, r) \mapsto (\theta, r)$. Since
    $D^2$ is the unit disk, this is $r$ can be atmost 1 and the
    restriction of the map to the circumference of the disk is
    $f \times \{1\}$. Thus, $d \compose \bar f$ is an extension of the
    map to the unit disk.

    $(b) \implies (a)$: Similarly, we can define an inverse map
    $s: S^1 \times I\to \D^2$, that defines a homotopy from the
    extension.

    $(a) \implies (c)$: Given that every map $f: \S^1 \to X$ extends to
    a map $\bar f: \D^2 \to X$, we need to show that
    $\forall [p], [q] \in \pi_1(X, x_0), [p] = [q]$. i.e.
    $p \homotopic q$. The unit interval can be projected on to the circle
    via the continuous map $f: \theta \mapsto \frac {\theta} {2\pi}$
    and back via it's inverse $f^{-1}: t \mapsto 2\pi t$.
    Thus, for any path $p$, $p = f \compose f^{-1} \compose p$.
    But, since $f^{-1} \compose p$ is a function from the circle to $X$,
    it is homotopic to a point, and $p$ is homotopic to a constant function.
    Thus, all paths with endpoints at $x_0$ are homotopic.
    
    $(c) \implies (a)$: Let $f$ be a map from $\S^1 \to X$.
    Let $x_0 := f(0)$.
    Since the fundemental group of $X$ at $x_0$ is trivial,
    all paths with endpoints at $x_0$ are homotopic to the constant path.
    $f(\S^1)$ is such a path so $f \homotopic c_{x_0}$.
    
6.  Given a space $X$, a path connected subspace $A$, and a point $x_0 \in A$. 
    Show equiv: 
    
    *   The map $\pi_1(A, x_0) \to \pi_1(X, x_0)$ induced by the inclusion
        $A$ in $X$, is surjective
    *   every path in $X$ with endpoints in $A$ is homotopic relative to its
        entpoints to a path in $A$

    $\Leftarrow$: Let $[p_x] \in \pi_1(X, x_0)$. Every path in $X$ with endpoints
    in $A$ is homotopic to a path in $A$. Let $p_a$ in $A$, $p_a \homotopic p_x$.
    Thus $[p_a] \mapsto [p_x]$, and the induced map is surjective.

    $\Rightarrow$:
    Since $A$ is path-connected, every path in $X$ with endpoints in $A$ is path
    homotopic to a path with endpoints $x_0$. Thus, without loss of generality, we
    only consider paths with endpoints at $x_0$.
    Let $p_x$ be a path in $X$ with endpoints at $x_0$.
    Since the map $\pi_1(A, x_0) \to \pi_1(X, x_0)$ induced by the inclusion is surjective, there is some
    path $p_a$ in $A$ such that $[p_x] = [p_a]$, i.e. $p_a \homotopic p_x$.

