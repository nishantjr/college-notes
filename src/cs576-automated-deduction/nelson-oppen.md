Retract:
:   homomorphism from model $M'$ to $M$ is call a retract if
    * $M \subset M'$
    * $r_s(r_s(a)) = r_s(a))$ i.e. $r$ is the identity on $M$.

Stable finite (Order Storted)
:   Let $T$ be an OS-FO theory with $\text{sig}(T) = \Sigma((S, \le) , F, P)$, $s_1, \ldots, s_n \in S$ and $\mathcal F \subset FO(\Sigma)$
    Then, $T$ is called stably infinite in $s_1, \ldots s_n$ for $\mathcal F-$satisfiablity iff for each $\phi \in \mathcal F$, if 
 
\newcommand \ot {\{1, 2\}}
\newcommand \larger  {\text{larger}}
\newcommand \smaller {\text{smaller}}

${[s_i]}_j$
: Denotes the connected component in $(S_j, \le_j)$ of a sort $s_i \in S_i$

$F_i, P_i$ 
: interpretation of the function in $i$

(letcure 28) Optimally Intersectable Signatures (a more general notion)

:   The order sorted signatures $\Sigma_1$ and $\Sigma_2$ are optimally
    intersectable iff for each pair of connected components in different theories:

    1.  either:
        a.  Their intersection is trivial (ignoring this).
        b.  They intersect at a single sort,
            and that sort is the top element of a connected component in atleast one signature.

            -   $[s_1]_1 \intersect [s_2]_2 = \{s_0\}$
                and $\exists k \in { 1, 2 }$ such that $s_0$ is the top
                element of $[S_k]_k$
            -   and **uniqueness**:
                $[s_i]_i \intersect S_j = [s_j]_j \intersect S_i = \{S_0\}$.

        c.   They are components with a non-trivial intersection and:

              * One component is a subset of the other and they agree on the order relation
              * The smaller component is not ragged
              * Downward closure:  $s_{\larger} \le_{\larger} s_\smaller  \implies s_\larger \in [\smaller]$
              * Uniqueness: No other components intersect with either $[s_1]_1$ or $[s_2]_2$

             $[s_i]_i \intersect [s_j]_j \ne \emptyset$:
             $\{i, j\} \subset \{1, 2\}$ and $\exists k \in \ot$ we have:
             - $[s_k]_k$ has a top sort 
                 - $[s_k]_k \subset [s_l]_l$, $\{k, l\} = \ot$
                 - ${\le_k} \intersect [s_k]_1^2 = {\le_l} \intersect [s_k]_2^2$
             - (**downward closure**): $\forall s \in [s_l]_l \forall s' \in [s_k]_k, s \le_l s' \implies s \in [s_k]_k$.
             - (**uniquenes**): $[s_i]_i \intersect S_j = [s_j]_j \intersect S_i = [S_k]_k$

    2.  and: If $f \in \text{fun}(\Sigma_1) \intersect \text{fun}(\Sigma_2)$, resp $p \in \text{pred}(\Sigma_1) \intersect \text{pred}(\Sigma_2)$
        then $\exists i \in \ot$, such that:
        if $(s_1, \ldots s_n, s) \in F_i(f)$ (resp $(s_1, \ldots, s_n) \in P_i(p)$) then,

        * $F_i(f) = F_j(f) \intersect ([s_1]_i \times \ldots [s_m]_i) \times [s_i]$ (resp. predicates)
        * $[s_l]_i \subset [s_l]_j$, $1 \le l \le m$, and $[s]_i \subset [s]_j$
          (resp. $[s_l]_i \subset [s_l]_j\quad 1 \le l \le n$

## Analysis of `joint-sort` in `contrib/tools/meta.md/cterms.md`

```
op joint-sort : Sort ModuleDeclSet ModuleDeclSet -> Sort .                  
----------------------------------------------------------                  
ceq joint-sort(S, MDS, MDS') = S if S inS intersect(MDS, MDS') .        --- This rule is subsumed into the third, but here for efficiency
ceq joint-sort(S, MDS, MDS') = joint-sort(S, MDS', MDS) if (not S inS MDS) /\ S inS MDS' .
ceq joint-sort(S, MDS, MDS') = if S inS MDS'' then S else #top-sort(MDS'') fi
                            if S inS MDS                                    
                            /\ MDS'' := intersect(connected-component(MDS, (sorts S .)), MDS') .

op joint-sort : Sort Module           Module           -> Sort .            
op joint-sort : Sort ModuleExpression ModuleExpression -> Sort .            
----------------------------------------------------------------            
eq joint-sort(S, ME,  ME')  = joint-sort(S, intersect(ME, ME'), intersect(ME, ME')) . --- Huh?
eq joint-sort(S, MOD, MOD') = joint-sort(S, asTemplate(MOD), asTemplate(MOD')) .
```

Given a sort $S$, and optimally intersecting theories $MDS$ and $MDS'$,
we calculate the least sort for variables of that sort that are viable
in both theories. By the rule
`ceq joint-sort(S, MDS, MDS') = joint-sort(S, MDS', MDS) if (not S inS MDS) /\ S inS MDS' .`
we can assume WLOG $S \in MDS$.

Let $MDS''$ be the intersection of the connected components .

* `1.b.`: then either
    *   $S$ is in $[s_k]_k$ and so a subsort of $s_0$. In which case `#top-sort(MDS'')` is the required sort.
        If $S \notin MDS''$ we get `#top-sort(MDS'')`.
        Otherwise, we get $S$ itself, which is `#top-sort(MDS'')` in any case.
    *   $S$ is not in $[s_k]_k$, then it is either:
        *    not related to $s_0$. XXX: #top-sort(MDS'') seems wrong
        *    is a super sort of $s_0$: `#top-sort(MDS'')` is appropriate.
             $S \notin MDS''$ so we get `#top-sort(MDS'')`.
* `1.c.`: then either:
    *   $S \in [\smaller]$: Then, $S \in MDS''$ and $S$ itself is appropriate.
    *   $S \in [\larger], \notin [\smaller]$: `#top-sort(MDS'')$ is appropriate.

\pagebreak



