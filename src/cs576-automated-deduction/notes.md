Set of B_unifiers is complete is any other unifier is less general
i.e. any other unifier is an instance of one of those unifiers
i.e. \theta is \beta unifier of ^_j u_j = v
-

finitary == most general unifiers are finite
egs unification mod AC, C, I, mod \phi
Assosiatvty but no repeated variables

inifinitary
ex; assoc without comm
consider a.x = x.a. solns are x = a^n
But if we included comm, a.x = x.a is already unified mod comm.

A =(A,__A)
a \in [X \tp A] 
assinment / substitution: _a : T_sigma(x) \to A
xa = a(x)
f(t...t_n) = f_A(t1a... t_na)
---

\gamma, \delta \in [X \to T_\sigma(x)]

_\gamma\delta = composition of \gamma and \delta



B-unifiation algorithms are specific to B. Not genrealized to all Bs. Efficient
but not extensible. 

ONe possible solution is combination algortihms.


Let \scrpt T be a class of equational theories. $T\in\scrpt T$o

T \in \s T, T = (\sigam B)

A generic unification algo/simi algo for \s T

Take two equations
1. T \in \s T,  T = (\sigma , B)
2. a system of \sigma eqs, ^u_I = u_j

and generates Unif... picture


---

A rewrite theory is a tupple R = (\sigma, B, R)
with B = \sigma-equations
     R = \sigma rewrite rules

     This defines a rewrite relation \to _{R/B}

     u \to_{R/B} v iff \exist u' v' st u =B u' \to_R v' = v

     \to_{R/B} == []_B \to_R []_B
     generalization of \to_R mod B

\to_R/\phi == \to_R

---

Terminating: No infinite seq

---

Corr: If Confluent + terminating, then =_B (Or =_{R/B}) is decidable

Calll u!_E/B the uniique  term s.t. u\to_E/B^* u!_{E/B}
Cannonical form cannot be reduced.

u =_e \longleftrightarrow u! = u!E


Chosing E and B wisely allows tradeoff between confluencablilty/terminatiablilty
and efficiency...
                                                                                 

SMT solvers?

---

Computing $u \to_{R/B} v$ is difficult since we need to explore all the terms in
$[u]_{B}$ and $[v]_B$, and these can be large or even infinite. So a more
efficient relatiln $B$-matching is used.

$B$-matching
: Let $R = (\Sigma, B, R)$ be a rewrite theory and $u, v \in T_{\Sigma(X)}$.
Then $u \to_{R,B} v \Longleftrightarrow \exists$ position $p$, rule
