conjugate (of elements; $x, y \in G$)
: $x$ and %y$ are conjugate iff for some $g \in G$, $gxg ^{-1} = y$

conjugacy class
: Orbits of this action atr conjugacy class.
: Classes of element conjugate to each other.
: $\{g \in G : \exists\, a \in G: g = aga ^{-1} \}$

Centeralizer (of $S \subseteq G$)
: $C_G(S) =\{ g \in G : gs = sg, \forall s \in S \} =  \{ g \in G : sgs^{-1} =g, \forall s \in S \}$
: Set of all elements that commute with elements of $S$
: (?) Largest subgroup that $S$ is a subset of the center of.


Convergence tests
- Comparism tests: $\sum a_k$ converges, $|b_k| \le a_k \Longrightarrow \sum b_k$ converges
- Comparism tests: $\sum a_k$ diverges, $b_k \ge a_k \Longrightarrow \sum b_k$ diverges

Ratio test
1. $\limsup |\frac {a_{n_1}}{a_n} < 1 \Longrightarrow \sum |a_n|$ converges
1. $\liminf |\frac {a_{n_1}}{a_n} > 1 \Longrightarrow \sum a_n$ diverges
1. $\liminf |\frac {a_{n_1}}{a_n} \le 1 \le \limsup |\frac {a_{n_1}}{a_n}$ Dunno
   mate.

Root test: $\alpha = \limsup|a_n|^{1/n}$
1. If $\alpha < 1$ then $\sum |a_n|$ converges
1. If $\alpha > 1$ then $\sum |a_n|$ diverges

--- 

Compact $\Longrightarrow$ closed & bounded

If $\mathbb R^n$, TFAE:
* Closed and bounded
* compact
* Every sequence in $C$ has a subseqwunce converging in $C$

Subsequences of a closed set converge in the set.

Absolute convergence $\Longrightarrow$ convergence

Cauchy Criterion: TFAE in $\mathbb R^n$
* $\sum^{\infty} a_n$ converges
* $s_n = \sum^n a_j$ is cauchy
* $\lim a_n = 0$

Continuous $f: C \to \mathbb R$ on compact $C \subet \mathbb R^n$ then $f(C)$ is bounded.  
$f$ achieves min and max (inf and sup) in $C$ 

on $[a, b]$ continuous implies uniform

uniformly continuous takes cauchy to cauchy  
continuous takes open to open  
continuous takes compact to compact
continuous takes connected to connected
differential implies continuous
continuous implies integrable

Uniformly converging functions, have integrals that coverge

Connected

: S is connectected if for all sets A, B:
   * (A \cap E)\cup (B \cap E) = S
   * A \cap B \cap E = \phi
   * A, B open
  implies A\cap E or B \cap E = \phi
 
x is in the closure of O if $\forall \epsilon > 0,  B_\epsilon(x)  \cap O \ne \phi$

$a_k ^ {1/n} = a_{k+1} / a_k$

The power series $\sum a_k(x - x_))^k; \beta = \limsup |a_k^{1/k}$
$$\begin{aligned}
R = \begin{cases}
\infty  & if \beta = 0 \\
1/\beta & if 0<\beta < \infty \\
0       & if \beta = \infty \\
\end{cases}
end{aligned}$$

* Series converges if $|x - x_0| < R$
* Series diverges  if $|x - x_0| > R$

Taylor series
> $\sum \frac 1 {k!} f^{(k)(c) (x - x_0)^k$






\sum \frac 1 {k!} f^{(k)} (x - x_0) ^ k
