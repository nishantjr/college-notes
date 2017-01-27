$T$
: equational thoery

$\mathcal R$
: Canonical term rewriting system 

$\mathcal R(M)$
: Canonical form of a term $M$

Two terms are $T$-equal if their canonical form is identical.
This is decidable.

Complete set of $T$-unifiers $\Sigma$ of $M$ and $M'$
: * All $\sigma$s unify $M$ and $M'$ and ?? $I(\sigma) \cap W = \phi$
  * $\forall \sigma \in \Sigma$, $\sigma$ acts on a subset of the variables in
    the two terms.
  * All other unifiers are instances of unifiers in the complete set $\Sigma$
  * $\Sigma$ is *minimal* iff no two unifiers in $\Sigma$ are instances of the
    other.

$T$-unification is complete iff it generates a complete set of $T$-unifiers for
all unifiable terms.

$M \to_{\mathcal R} N$, ($M$ $\mathcal R$-rewrites to $N$)
: $\exists$ rewrite rule $\gamma \to \delta$, $\exists$ substitution $\sigma$,
$\exists$ position $u$, such that $M|u = \sigma(\gamma)$ and $N = M[u \gets
\sigma(\delta)]$ ($M$ with position $u$ replaced by $\sigma(\delta)$

Canonical term re-writing system
: Confluent, terminating

Narrowing
: Let $M$ be a term with variables $\mathcal V(M) \subset V$ . Assume $\exists$ subterm $M'$ at position
$u$ in $M$, and rewrite rule $\gamma \to\delta$ such that $\gamma$ and $M'$ are
unifiable. Let $\sigma$ be a minimum unifier of $M'$ and $\gamma$. $\sigma$ is
called a "narrowing substitution of $M$ away from $V$".

    See: [Narrowing FAQ](http://web.cecs.pdx.edu/~antoy/research/narrowing/FAQ.html)

  ~~~
  add(U, succ(zero))
    -> succ(add(V, succ(zero)))            # Narrows by assuming U = succ(V)
    -> succ(succ(zero))                    # Narrows by assuming V = zero
  ~~~
