$u \to_{R,B} v$, $B$-matching substitution, $l \sqsupseteq_B u|_p$ ($l$ $B$-matches $u$ at position $p$)
: In rewrite theory $R = (\Sigma, B, R)$, $u, v \in T_{\sigma(X)}$ iff $\exists$
  position $p$, rule $l \to r \in R$ and substitution $\alpha$ such that:
  1. $u|_p =_B l\alpha$
  2. $v = u[r\alpha]_B$

  Then we say $\alpha$ is a $B$-matching substituion, and $u|_p$ $B$-matches $l$:
  $l \sqsupseteq_B u|_p$


$B$-coherence
: $R = (\Sigma,\beta, R)$ is strictly $B$-coherent iff $\forall u, u', v \in
  T_{\sigma(X)}$ such that $u =_B u'$ and $u \to_{R/B} v$, strict coherence
  holds ($\exists v'$ such that $u' \to_{R,B} v'$ and $v =_B v'$)

  $$\begin{matrix}
  u & \rightarrow_{R/B} & v \\
  \parallel_B & & \parallel_B  \\
  u' & \dashrightarrow_{R,B} & v'
  \end{matrix}$$
  
  Always true for $B =$ commutativity, but not always for assoc or assoc-comm.  
  Examples:
   * $R = \{a + b \to c \}$. Then $(b + d) + a \to_{R/B} d +c$ but **cannot** be
     rewritten with $\to_{R,AC}$


## Narrowing as Symbolic execution

$$
R = \begin{cases}
x + 0 &\to x\\
x + s(y) &\to s(x + y)
\end{cases}
$$

Consider $N+M$:
- Can it be re-written? No.
- But we can symbolically exectute it.

  Find the most general instance of $N+M$ that can be rewritten.
  Unify the left hand side of a rule  with a *non-variable* subterm of the term
  to be symbolically exectuted. This is called narrowing.
  
$\alpha = U(N+M, X+0) = \{ M \to 0, N \to X' \}$
and $\beta = U(N+M, X+s(Y)) = \{ M \to s(Y'), N \to X' \}$, allowing them to be
rewritten.

We write these symbolic executions as $N+M \leadsto_R^\alpha x'$ and $N+M
\leadsto_R^\beta s(x' + y')$  and call them narrowing steps.

We can keep going and optain a narrowing tree:
$$N+M\begin{cases}
\leadsto_R x' \\
\leadsto_R s(x' + y')
\begin{cases}
\leadsto_R s(x'') \\
\leadsto_R s(s(x' + y'))
\begin{cases}
\leadsto_R s(x''') \\
\leadsto_R s(s(s(x' + y')))
\end{cases} \\
\end{cases} \\
\end{cases}
$$

---
We define the relation $\alpha \sqsupseteq_B \beta$ over substitutability in
full generalitiy.

Let $\alpha, \beta \in [X \to T_{\sigma(X)}]$ be (*finite) substitutions  and
equational theories $(\Sigma, \beta)$. We define $\alpha \sqsupseteq_B \beta$
iff $\exists \rho$ a finite substitution such that:

$$\begin{aligned}
 (\alpha\rho)|_{\text{dom}(\alpha)\cup \text{dom}(\beta)} =_B \beta
\end{aligned}$$

(*) dom($\alpha$) and dom($\beta$) are finite sets.

--- 

XXX
* When are $B$ axioms regular and linear
