---
header-includes: |
    \usepackage{tikz}
---

\newcommand \Provable {\text{Provable}}

$\sigma-$structure
:   Underlying set or "Universe" along with an interpretation of contant
    symbols, functions and relations.

Embedding
:   A homomorphism is an embedding if $h(A) \iso A$.

Elementary embedding
:   A homomorphism $h:A \to B$ is an elementary embedding if forall
    $\sigma-$formulae $\phi(\vec x)$ and tuples $\vec a \in A^n$,
    $A\satisfies \phi(\vec a) \iff B \satisfies \phi(\vec a)$

\begin{tikzpicture}
\node (hom) at (3,0) {Homomorphism} ; 
\node [below of=hom] (emb) {Embedding} ;
\node [below left of=emb] (elEmb) {El. Emb} ;
\node [below right of=emb] (subst) {Substr} ;
\node [below of=elEmb] (iso) {Iso} ;
\node [below right of=subst] (elsubst) {El. Substr} ;
\node [right of=elsubst] (elEquiv) {$\equiv$} ;

\draw (hom) -- (emb);
\draw (emb) -- (elEmb);
\draw (emb) -- (subst);
\draw (elEmb) -- (iso);
\draw (elEmb) -- (elsubst);
\draw (iso) -- (elsubst);
\draw (elEquiv) -- (elsubst);
\end{tikzpicture}

\newcommand \const {\text{const}} 

1.  Assume $L$ non-empty. We know that $\forall c \in \const{A_l}, c \in A$ for any
    $l \in L$, since $A$ is the union of these substructures. Thus the constants of
    sigma can be interpreted in $A$. For any $\vec a \in A^n$, define $R \in
    \text{Rel}(\sigma)$ as $R_{A_l}(\vec A)$ for some $l, such that $\vec a \in {A_l}^n$.
    This is well defined, since for any two $\sigma-$structures that contain $\vec
    a$, $A_l \satisfies R(\vec a) \iff A_m \satisfies R(\vec a)$, similarly for
    functions. This **A** is the unverse of a substructure and $A$ is it's universe.

    For any $A_l$, and $\phi$ of the form $R(\vec a)$ or $f(\vec a) = y$,
    by construction, $A \satisfies \phi \iff B \satisfies \phi$.

    Let $\psi := \exists x \phi(\vec a)$. Suppose this holds in $A_l$, then there
    must be some $a\in A_l$ that is a witness to this, and since $A$ contains
    $A_l$, $a \in A$, and $A \satisfies \phi(\vec a)$.

    Suppose that an existential formula holds in $A$, then there is a witness.
    This witness must be in some $A_m, m > l$ and since $A_l \prec A_m$, the
    statement holds in $A_l$.

---

2.  Let $A\subset M$, finitely generated.
    $h: A \embeds M$.

    We want to show that for every embedding for a substructure $A$,
    $\forall a \in A, M \satisfies \phi(\vec a) \iff K \satisfies \phi(h(\vec
    a))$

    Suppose $\phi$ is quantifier free, then since $h$ is an isomorphism
    and relations and functions preserve equality, the hyposthesis holds.

    Suppose that $\phi$ is existential and the hypothesis holds for less complex
    sigma sentences. i.e. $\phi := \exists x \psi(\vec a, x)$. If this formula
    is satisfied, then there is some $w$ in $M$ such that $M \satisfies
    \psi(\vec a, w)$. Since $M$ is weakly homogenous, we can extend $h$ to map
    $w$ to some $\sigma$ structure $h(\langle A, w\rangle)$. Now, 
    $\psi(h(\vec a)$,  is a less complex $\sigma-$sentence and so by the
    inductive hypothesis, $M \satisfies \phi(\vec a)$.
    Since there $A \iso h(A)$, $h^{-1}$ exists and $h$ is a $\sigma-$embedding from
    $h(A)$ to  $M$, and we can make the same argument that $w$, a witness
    for $M \satisfies \exists x, \psi(\vec a, x)$ exists, and the bijection
    holds.

    Suppose that $\phi := \lnot \psi(\vec a)$ and the hypothesis holds for
    $\psi$. Then $$\begin{matrix}
        &M \satisfies & &\psi(\vec a)      &\iff& M &\satisfies& &\psi(h(\vec a)) \\
    \tiff&M \nsatisfies & &\psi(\vec a)     &\iff& M &\nsatisfies& &\psi(h(\vec a)) \\
    \tiff&M \satisfies & \lnot&\psi(\vec a) &\iff& M &\satisfies& \lnot&\psi(h(\vec a)) \\
    \tiff&M \satisfies & &\phi(\vec a)      &\iff& M &\satisfies& &\phi(h(\vec a)) \\
    \end{matrix}$$
    
    So by induction on the structure of formulae, the hyposthesis must hold.
    
    Conversely, every partial elemtary map from $M$ to $M$ is an embedding, since
    $M \satisfies f(\vec a) = a' \iff M \satisfies f(h(\vec a)) = h(a')$
    and $M \satisfies R(\vec a) \iff M \satisfies R(h(\vec a))$
    
    Let $\kappa = \aleph_0$. Then $|A| < \kappa$ implies $A$ finite.
    Since every partial elementary map is an embedding,
    it can be extended to an embedding on $A \union \{a\}$ (since that too
    is finite). As proved above this is a partial elementary map.

3.  Let $\sigma = (<)$. Let $M$ be a model of strict partial orders
    where there are elements with an infinite number of 
    of children and some do not. $Q(x, y) \iff x < y \land \lnot \exists z, x < z < y$

4.  a.  -   Undirected: $\forall x, y, x E y \limplies y E x$
        -   Degree 2:
            $\forall x, \exists y, z, x E y, x E z, \land \forall w, x E w \limplies w = y \lor w = z$\
        -   acyclic: For all $n \in \N$ define:
            $\forall {\vec x}, \Land x_i\, E\, x_{i+1} \limplies \lnot x_1 E x_n$


    b.  Let $\kappa$ be an uncountable cardinality. Let $M, N$ be a model of
        cardinality $\kappa$. Since each component is a $\Z$ line, these are
        countable. Thus there must be $\kappa$ many $\Z$ lines in both $M$
        and $N$. Since they have the cardinality of $\Z$ lines, there is a
        bijection of sets between them. This extends to an isomorphism
        between the sets. and the models are isomorphic. This means that the
        theory is $\kappa$ categorical, and by the Los-Vaught test, it is
        complete.

    c.  \newcommand \conn {\text{Conn}}
        Let $\text{Conn}$ be a formula defining connectedness. Let $Z$ be a
        model with a single connected component. Let $ZZ$ be a model with
        two components.

        Then, $Z \satisfies \exists x, y \conn(x, y)$
        $ZZ \satisfies \lnot \exists x, y \conn(x, y)$. But since $T$ is complete and
        consistent (there are models of it), one and only one of these formula
        may be in $T$, a contradiction.

    d.  XXX: define automorphism

    e.  Since there are some automorphisms that moves any pair of elements,
        the only sets that are fixed by all automorphisms are the empty set
        and $M$ itself. Thus these are the $0-$definable sets.

    f.  XXXX: T is model complete (no q.e.)


5.      There are two possibilities:

    1.  For every possible $n$, there is a string of $n$ $0$s in $\pi$.
        In this case, the require function is simply $1$

    2.  There is some maximum number $N$ of $0$s in a $\pi$'s decimal
        representation. In this case the formula is simply: $n \le N$

    Since it is not known if $\pi$ is normal, we don't know which of the
    two hold, but in either case, the required function is
    primitive recursive (and thus, recusive and $\Sigma^0_1$)

    [https://cs.stackexchange.com/questions/367/how-can-it-be-decidable-whether-pi-has-some-sequence-of-digits]
    
6.  $\text{Provable}_{\text{PA}} := \exists p, \text{Proof}(p, y)$:
    Proof is primitive recursive. Provable isn't otherwise PA would be
    decidable.

7.  a.  $\theta \mapsto 1 + 2 = 1$. $Provable_PA$ can only find proofs that
        use the axioms of $PA$
    b.  Since the FOL is sound, and assuming the $\Provable_{PA}$ is
        correct, $PA$ must satisfy this implication.
    c.  This implication does not hold.
        An example is $\theta := \bot$. $\Th(N)$ is a satisfyable theory since
        a model, namely **N**, exists. However, by Lob's theorem, there is
        no way for $PA$ to prove this. In addition, other, non-standard models
        of $PA$ may not satisfy this.
    d.  Since $PA \satisfies \phi$, and $N\satisfies PA$, $N \satisfies \lnot \text{Provable}_{PA}([\theta])$

8.  a.  Since $A$ and $B$ are $\Sigma_1^0$ sets, there are relations $R_A$ and $R_B$
        recursive, such that: $\vec a \in A \iff \exists x, R_A(\vec a)$
        and $\vec a \in B \iff \exists x, R_B(\vec a)$.

        Then we can define sets:

        $$\begin{aligned}
        \vec a \in A^* \iff \exists x, y, R_A(\vec a, x) \land \lnot R_B(\vec a, x)  \\
        \vec a \in B^* \iff \exists x, y, R_B(\vec a, x) \lor  (\lnot R_A(\vec a, x) \land R_A(\vec a, x)) \\
        \end{aligned}$$
        
        These are recursive, since 
        * conjunction of two recusive relations can be defined as the product of their indicator functions.
        * disjunction can be defined as $\max(A, B)$
        * negation can be defined using subtraction
       
        And so the sets $A^*$ and $B^*$ are $\Sigma_1^0$

    b.  

9.  a.  Universal set for $\Sigma_n^0(\N^k)$

        (consistent recursive)
        In $Q, N$, any relation representable $R \subset N^k$ is recursive.
        Let $\phi$ be the formula representing $R$.
        $\vec a  \in R iff T \proves \phi(\delta(a)) \iff [\phi(\delta)] \in [Thm(T)]$

        $\Sub_0([\phi], n) = [\phi(\delta(n)/v_0)]$ is primitive recursive.

        Thus $U_{PA} \iff Sub_0(a, b) \in [Thm(T)]$

    b.  Note that $\Delta$ under complements and recursive preimages. 
        Suppose $U \subset N \times N^k$ is its universal set. 
        Then let $p \in \AntiDiag(U)\implies p \notin U$

    c.  Since $\Delta$ is defined as the intersection of $\Pi$ and $\Sigma$,
        we have the inclusions.
        Suppose that one of the inclusions was not strict, then $\Delta$ would
        admit a universal set. But by $(b)$ this is a contradiction.
        
    d.  Let $S$ be an arithmetical set. Then, there is a sentence $\phi(\vec a)$, such
        that $a \in S \iff N \satisfies \phi(\vec a)$.
        But then $\phi$ is a sentence with a finite number of projections  and
        co-projections and a quantifier free part, or conjunctions of such formula.
        After substituting these variables with values, this is just an
        arithemic equation that we can compute and so is recursive.
        Since Substitution is primitive recursive, this set must lie in
        some arithemtic class Sigma_n. Since we have the heirarchy of inclusion,
        it must also be in some Detla and PI. This all artihemetical sets 
        are in some set of the heirarchy.

    e.  Suppose that $\Th(N)$ is arithmetical. Then it must reside in one
        of the classes, say $\Sigma_k$. Let $\phi$ be a formaula in $\Sigma_{k+1} \setminus \Delta_{k+1}$
        then $\Provable_N(..., \phi)$
    
10. (1) => (2)

    Suppose $T$ is model-complete. 
    
    
    Let $A$ be a models of $T$.
    If $A$ is finite, then Diag(A) specifies all the functions and relations
    the models of $T \union Diag(A)$ since all other models must have ..
    and it is complete.
    
    Assume $A$ is not finite, then $T \union Diag(A)$ has models of all cardinalities 
    greater than $|A|$. Let $X, Y$ be two models of $\kappa$ cardinality. 
    
    For each of these models, there is a embedding of $A$ into them: $a \in A \mapsto a_X$
    i.e. mapping it to the interpretation of the contant in $\sigma(A)$ ...
    So, $A \prec X$, $A\prec Y$.
    
    XXX
    
    (2) => (3.a), (3.b)
   
    Let $A$ be a model of $T$. Let $\phi(\vec x)$ be a formula..
    Let $Q$ be a set of quantifier free sentences such that $T \satisfies \phi \limplies \psi$.
    
    Suppose $A \satisfies T \union Q$ and $A\satisfes \lnot \phi$
    Then these are a subset of diag. and $T \union Diag$ is complete.
    so $T \union Diag \proves \lnot \phi$. By compactness there is
    a finite subset such that this holds. So $T \union \{\psi\} \satisfies
    \lnot \phi$ and so $\T \satisgies \phi \implies \lnot \psi$
    
    (3.b) -> (3.a)
    
    Let $\phi$ be a formula, then it's negation $\lnot \phi$ is equivalent to a universal formula
    $\lnot \phi \liff \forall\psi \implies \phi \liff \exists \psi$
    
    (3.a) and/or (3.b) -> (1):
    Let $A$, $B$ model $T$, $A\subset B$. Let $\phi$ be a statement.
    Let $A \satisfy \phi(\vec a)$. Then $\phi$ can be written as
    an existential statement. i.e., there is some witness $\vec x$ such 
    that $\phi(\vec x)$. But this witness are in $B$ too, so holds there too.
    Suppoes holds in B. Then write as universal statement. Then holds in A.
    
11. 
