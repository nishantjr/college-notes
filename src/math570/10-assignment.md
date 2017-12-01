\newcommand \len      {\text{lh}}
\newcommand \get      {\text{get}}
\newcommand \SN       {\text{SN}}
\newcommand \gc[1]    {\ulcorner #1 \urcorner}
\newcommand \tuple[1] {\langle #1 \rangle}
\newcommand \wij    {w_{i,j}}

### 1: the graph of the Ackermann function is primitive recursive


We define the function $\get : \N^3 \to \N$ as
$(i, j, c) \mapsto (c)_{\text{getIndex(i, j, c)}}$  
and $\text{getIndex} : \N^3 \to \N$ as $(i, j, c) \mapsto \mu_{x < \len(c)} (((c)_x)_0 = i \land ((c)_x)_1 = j)$

$A(n, x, w) :=$ 

-   If $\exists \mu_c$, bounded by $\tuple{ w, w, \ldots, w}_{n\cdot w}$ such that
    -   each element is a 3-tuple
    -   the last element $e$ has $e = \tuple{n, x, w}$
    -   for any $e = (c)_k$
        -   If $(e)_0 > 0$
            -   If $(e)_1 > 0$ then
                $(e)_2 = \get((e)_0 - 1, \get((e)_0, (e)_1 - 1), c)$
            -   If $(e)_1 = 0$ then $(e)_2 = \get((e)_0 - 1, 1, c)$
        -   otherwise, $(e)_2 = (e)_1 + 1$ and $k = 0$

    then return $1$
    
-   Otherwise return $0$

#### Lemma: Such a tuple must exist with length less than $n\cdot w$

From the definition of the Ackermann function, calculating the value at
$(i, j)$ only uses recursive calls where $i' \le i$, so the highest
first argument needed is $n$. By **6 (a):
$A(n, x + y) \ge A(n, x) + y$** from homework 8, the value of the second
argument can be atmost $w$.

---


$(\gc \phi, \SN(var)) = (f, v) \in \text{VarInTerm} \iff$

**5.32(c):** $a \in \text{Formula} \iff$ any of:

*   $(a)_0 = \SN(\dot =)     \land \len(a) = 3 \land (a)_1 \in \text{Term} \land (a)_2 \in \text{Term}$
*   $(a)_0 = \SN(R)          \land \len(a) = 3 \land (a)_1 \in \text{Term} \land (a)_2 \in \text{Term}$  for each $R \in \sigma$
*   $(a)_0 = \SN(\lnot)      \land \len(a) = 2 \land (a)_1 \in \text{Formula}$
*   $(a)_0 = \SN(\limplies)  \land \len(a) = 3 \land (a)_1 \in \text{Formula} \land (a)_2 \in \text{Formula}$
*   $(a)_0 = \SN(\forall)    \land \len(a) = 3 \land (a)_1 \in \text{Variable} \land (a)_2 \in \text{Formula} \land \in \text{FreeVar}((a)_2, (a)_1)$
    XXX Convention for free variables

**5.34 (a):** $(\gc \phi, \SN(var)) = (f, v) \in \text{FreeVar} \iff \text{Formula}(f)$ and any one of:

*   $(f)_0 = \SN(\dot =)        \land (\text{VarInTerm}(v, (f)_1) \lor \text{VarInTerm}(v, (f)_2) )$
*   $(f)_0 = \SN(R)             \land (\text{VarInTerm}(v, (f)_1) \lor \text{VarInTerm}(v, (f)_2) )$
*   $(f)_0 = \SN(\lnot)         \land  \text{FreeVar}  (v, (f)_1)$
*   $(f)_0 = \SN(\limplies)     \land (\text{FreeVar}(v, (f)_1) \lor \text{FreeVar}(v, (f)_1))$
*   $(f)_0 = \SN(\forall)       \land  \lnot (f)_1 = \gc v \land \text{FreeVar}  (v, (f)_2)$

**5.34 (b):** It is OK to plug in $t$ for a variable $v$ if $v$ is a
free variable, or $v$ does not occur in the sentence.
$(f, t, v) \in \text{OKtoSub} :\iff  \text{Formula}(f)$:

-   $\text{FreeVar}(f, v)$
-   or $\lnot\text{Var}(f, v)$

**5.34 (d):**  $\text{Axiom}(\gc f)  \iff \text{Sentence}(\gc f)$ and any of

-   *if-true-then-implied*:
    there is a least $\gc \phi, \gc \psi$ both bounded by $\gc f$  
    such that:
    * $\text{Sentence}(\gc \phi)$ and $\text{Sentence}(\gc \psi)$
    * $\gc f = \tuple{ \SN(\limplies), \gc \phi, \tuple { \SN(\limplies), \gc \psi, \gc \phi} }$

-   *implication-is-transitive*:
    there is a least $\gc \phi, \gc \psi, \gc \chi$ bounded by $\gc f$  
    such that:
    * $\text{Sentence}(\gc \phi)$ and $\text{Sentence}(\gc \psi)$ and $\text{Sentence}(\gc \chi)$
    * $\gc f = \tuple{
        \SN(\limplies), 
            \tuple { \SN(\limplies) , \gc\phi, \gc\psi },
            \tuple { \SN(\limplies)
                   , \tuple {   \SN(\limplies)
                            ,   \gc\phi
                            ,   \tuple{\limplies, \gc \psi, \gc \chi }
                            }
                   , \tuple{    \SN(\limplies)
                           ,    \gc \phi
                           ,    \gc \chi
                           }
                   }
            }$
-   *proof-by-contradiction*: Similar
-   *instantiation*: there is a least $\gc v, \gc \phi, \gc t$ bounded by $\gc f$ such that:
    -   $\text{Sentence}(\tuple{\SN(\forall), \gc v, \gc \phi})$
    -   $\text{OKtoSub}(\gc f, \gc t, \gc t)$
    -   $\text{Term}(\gc t)$
    -   $\gc f = \tuple{ \SN(\limplies)
                       , \tuple{ \SN(\forall)
                               , \gc v
                               , \gc \phi
                               }
                       , \text{Sub}(\gc \phi, \gc v, \gc t)
                       }$
- the remaining axioms are similar

**5.34 (e):**
$\text{MP}(\gc \phi, \gc { \text{MP} }, \gc \psi) \iff \text{Sentence}(\gc \phi)$
and $\text{Sentence}(\gc\psi)$ and $\gc {\text{MP}} = \tuple{\limplies, \phi, \psi }$

### 3 (a): Any arithmetical theory  $T \subseteq \Th(N)$ is incomplete. In particular PA is incomplete.

Since recursive functions are arithmetical, the Godel encoding function,
$\text{Sub}_0$ and the $\beta-$function are all arithmetical. Also,
since the set of axioms of $T$ are arithmetical, we can construct an
$\arith-$formula that defines the set of provable statements and their
proofs:

$$ \text{Proof}_T(a, b) \iff \text{ $a$ is a code of a $\arith-$formula and $b$ is it's proof. }$$

Thus $\text{Proof}_T(a, b) \iff N \satisfies \text{Proof}_T(a, b)$

we can go on to define $\text{Provable}_T(x) := \exists p \text{Proof}_T(p, x)$.

Thus $\phi$ is provable in $T \iff \text{Provable}_T(\gc \phi)$

Applying the fixed point lemma to $\phi(v) := \lnot \text{Provable}_T(v)$
we get $N \satisfies \gamma_T \liff \lnot \text{Provable}_T(\gc {\gamma_T})$

Thus 
$$\begin{aligned} 
T \proves \gamma_T &\implies N \satisfies \gamma_T \\
                   &\iff N \satisfies \lnot \text{Provable}_T(\gc {\gamma_T})\\
                   &\iff \text{for all} b \in \N, N \satisfies \lnot \text{Proof}_T(\gc {\gamma_T} , b)\\
                   &\iff T \nproves \gamma_T
\end{aligned}$$

and $N \satisfies \lnot \text{Provable}_T(\gc {\gamma_T})$ and so $N \satisfies \gamma_T$ showing that $T$ is incomplete.

### 3 (b): Any arithmetical theory  $T \supseteq PA$ has a maximal completion. 

Let $T_0 := T$ be an arithmetical theory with $\text{Axiom}(\gc\phi)$ a
formula defining the set of axioms.

Let $T_n := T \union \{ n : \text{Sentence}(n) \land
                \lnot\text{Provable}_{T_{n-1}}(\gc \phi)
           \land \lnot\text{Refutable}_{T_{n-1}}(\gc \phi) \}$.
i.e. if $n$ is the godel code for a statement that is neither provable
nor refutable, add that statement to the theory. This theory is
consistent. Since $T_n$ is the union of an arithmetical theory with
finitely many additional axiom, it is arithmetical.

Define $\bar T := T_\infty := \Union_{n \in \N}T_n$. This is consistent since
proofs are finite, and any contradiction would be a contradiction in
some $T_i$. Since the set of statements are countable, all statement are
either provable or refutable and it is complete.

\newcommand \Axiom  {\text{Axiom}_{\bar T}}
\newcommand \PAT {\text{ProvableWithAux}_{T}}
\newcommand \NPR {\text{NeitherProvableNorRefutable}}

Now, we define

$$\PAT(a, \gc \phi) \iff \text{$\phi$ is provable from the axioms of $T$ and the axioms in the tuple $a$}$$

and

$$\NPR(a, \gc\phi) :=  \begin{aligned}      &  \lnot\PAT(a, \gc \phi) \\
                                      \land &  \lnot\PAT(a, \gc {\lnot \phi})
                       \end{aligned}$$

From this we can define
$$\begin{aligned}
 \Axiom(\gc \phi):= \exists a,&      && (a)_{\len(a) - 1} = \gc \phi \\
                                 &\land &&\forall i, i < \len(a) \limplies & \\
                                 &&&&\begin{aligned} 
                                      &    ( &&\NPR(\text{initSeg}(a, i), (a)_i) \\
                                      &    \land &&  \forall n, \NPR(a, n) \limplies n > (a)_i  \\
                                      &    )
                                  \end{aligned}\\
\end{aligned}$$

We claim that this statement defines the set of axioms in $\bar T$.
