1.  Fix $m$.

    Let $\sigma$ be a signature containing:

    -   $\sigma_+$
    -   relations $R_c$ for each color $\in \bar m$

    Let $T$ be the union of:

    - Presburger arithmetic
    - sentences that make the relations $R_c$ form a coloring

    Fix $k > 1$. Let $\phi_n$ be a sentence stating that each of
    $0, s(0), \ldots , s^n(0)$ do not have an arithmetic progression of
    size $k$.

    Suppose that for all $n$, there is no arithmetic progression of size
    $k$ on $\bar n$. Then, $T \union \{\phi n \}$ is finitely
    satisfyable and has a model, say $M$.

    Now, by van der Waerden, one color class contains an arithmetic
    progression of size $k$. Let the $k$th element of this progression
    be $x$. This contradicts $\phi_x$.

2.  a.  To the theory of graphs add the constant $a, b, c, d$.

        Let $T$ be a theory containing:

        -   $\Th(G_2)$.
        -   $\lnot \phi(a, b, \vec p)$, $\phi(a, c, \vec p)$ and
            $\phi(b, d, \vec p)$.
        -   $\forall n \in \N, \phi\_n := \text{"there is no path of length $n$ between $a$ and $c$."}$.
        -   $\forall n \in \N, \phi\_n := \text{"there is no path of length $n$ between $b$ and $d$."}$.

        $T$ is clearly finitely satisfyable. Let $M \satisfy T$.

        Let $h: M \to M$, $a \mapsto a, b \mapsto b$. (Modulo direction)
        this fixes the the elements connected to $C$ by a finite path. 

        But, this has not defined any mapping for $c$ and $d$, since they are
        not connected by any finite number of edges.
        Let $h(c) := d$. This satisfies the definition of isomorphism, 
        since all finite application of functions are respected.
        
        But this is a contradiction, since $\phi(h(a), h(d))$ does not evaluate the same as $\phi(a, c)$

3.  a.  Extend the signature of graphs with constants $\{ c_n : \forall n \in \N\}$.
        For each $n \in \N, m \in \N$, add the sentence`
        
        $$\phi_{n,m} := \text{ There is no path of length $< n$ between each $c_i, c_j$ pairwise }$$

        Clearly $T = \Th(G_k) \union \{\phi_{n,m} \forall n, m \in \N\}$ is finitely
        satisfyable. Let $M \satisfy T$. But in $M$ there are countable points that are not
        finitely connected to $c_1$ and $c_2$. These must be on seperate connected components.
        
    b.  Both $\bar G$ and $G_{\aleph_0}$ have countably many bi-finite paths
        so there must be a bijection between them. Any two $\Z$ lines are isomorhic,
        so we can extend both these to get an isomorphism between the two models.
    
    c.  

    d.  Suppose the connectedness relation was 0-definable. Let $\phi(x, y)$ define it.
        Then the statement $\psi_k := \forall x, \phi(c_1, x) \lor \phi(c_2, x) \cdots \lor \phi(c_k, x)$ would be 0-definable
        in $G_k$, and would be in $\Th(G_k)$ butsince $G_k$ has elementary extensions with $\aleph_0$ connected components
        this is a contradiction for the finite case.
        
        Since for any finite $k$, $G_{\aleph_0} \iso \bar G_k$.
        But $G_{\aleph_0}$ would be able to state and satisfy, $\psi_{k+1}$.
        But, this is not satisfied in $G_k \equiv \bar G_k$.

4.  Suppose such an axiomatization exists.

    Let
    $DG(a, b) = \{ \text{there is no path of length $n$ between $a$ and $b$}, \forall n \in \N\} \union \text{GRAPHS}$.

    Then: A graph $G$ is disconnected $\iff$ $\exists x, y$ in $G$, such
    that for all $\phi$ in $DG(x, y)$, $G \satisfies \phi(x, y)$.

    Let $T$ be an axiomatization of disconnected graphs.

    Add two constant symbols $a, b$ to the signature of graphs.

    Let $X \in T$. Since $X$ is one of the axioms of disconnected
    graphs, all models Any model of $DG(a, b)$, is a disconnected graph,
    so $DG(a / x, b / y) \satisfies X$.

    By the compactness theorem, there is a finite subset $DG_X$ such
    that $DG_X(a/x, b/y) \satisfies X$. By exists elemenation, we get
    $\exists x, y \Land DG_X(x, y) \satisfies X$.

    Define a theory
    $T' = \{ \exists x, y \Land DG_\chi(x, y), \forall \chi \in T \}$. Since
    from the theory, we can derive $T$, all models of $T'$ must be
    disconnected graphs. But graph with a single bifinite connected
    component has two points that satisfy every finite subset of $DG$
    but is not disconneted. This is a contradiction, and so there cannot
    be such an axiomatization.

5.  a.  Let $A$ and $B$ be two $\aleph_0-$categorical models. Since they
        are both countable, there is a bijection between each set and
        $\N$. Let these bijections be $a$ and $b$.
        
        Let:
        
        1.   Pair $a(i)$ with the the lowest $j$, such that $b(j)$ is not
             paired with a member of $A$, and $a(i) > a(x) \iff b(j) > pair(a(x))$.
             
             Such an element must exists, because only a finitely many of $B$ has been selected
             and density.

        2.   Pair $b(j)$ with the the lowest $i$, such that $a(i)$ is not
             paired with a member of $B$, and $b(h) > b(x) \implies a(i) > pair(b(x))$.

        3.   Repeat with next unpaired element.

        This pairing is a bijection between $A$ and $B$ that preserves the order
        and DLO is $\aleph_0$ categorical.
        
    b.  Let $A, B \model \text{DLO}_n$. We know that DLO is $\aleph_0$-categorical.
        So the reduct in $DLO$ of $A, B \iso \Q$. 
        Let $a, b$ be those isomorphisms.
        
        Let $C_A = a(\{ c_i^A \}), C_B = b(\{ c_i^B \})$. Since they are finite
        linear orders of the same cardinialtiy, they are isomorphic.
        By the ultra homogenousity of $\Q$ this can be extended to an automorphism on $\Q$.
        
        This can be extended to a $\text{DLO}_n$ isomorphism. 
        
        So we have $A \iso Q_a \iso Q_b \iso B$
        
        Since DLOs dont have finite models, by Los-Vaught, we have $\text{DLO}_n$ is complete.
        
    c.  Consider the case where $\{c_n\}$ is not bounded above. Then for any $x$
        there is some constant $c_i$, such that $x < c_i$. But this is not
        true when it is not bounded above, and there can be no isomorphisms
        between these two cases.
        
        The constants must be bounded below by $c_1$
        
        This gives us at least three non-isomorphic classes of models:
        
        2.  Bounded below and not above
        3.  Bounded both above and below
            
    d.  Let $\phi$ be a statement in $DLO_\infty$. Then this statement mentions
        only a finite number of constants. i.e. $\phi$ is a $DLO_n$ statement
        for a sufficiently large $n$. $M_\infty$ be an $\aleph_0$ model of $DLO_\infty$
        . Let $M_n$ be it's reduct in $DLO_n$. Clearly $M_n \satisfies \phi \iff M_\infty \satisfies \phi$.
        But since $DLO_n$ is complete, either $\phi$ or $\lnot \phi$ is satisfied
        and $DLO_\infty$ is complete.

