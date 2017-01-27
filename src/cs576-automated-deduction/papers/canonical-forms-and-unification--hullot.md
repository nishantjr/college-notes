$T$
: equational thoery

$\mathcal R$
: Cannonical term rewriting system 

$\mathcal R(M)$
: cannonical form of a term $M$

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

Cannonical term re-writing system
: Confluent, terminating

Narrowing
: ?? Applyign to a a term the minimum substitution such that the resulting term
is not in normal from, and then reducing it oen step
  See: [Narrowing FAQ](http://web.cecs.pdx.edu/~antoy/research/narrowing/FAQ.html)

  ~~~
  add(U, succ(zero))
    -> succ(add(V, succ(zero)))            # Narrows by assuming U = succ(V)
    -> succ(succ(zero))                    # Narrows by assuming V = zero
  ~~~
