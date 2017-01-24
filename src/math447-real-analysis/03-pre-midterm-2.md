Metric in $S$
: $d: S\times S \to \mathbb R$, such that

  1. Non-negative: $d(x, y) \ge 0$
  2. Symmetric: $d(x, y) = d(y, x)$
  3. Non-degenerate: $d(x, y) = 0 \Longleftrightarrow x = y$
  4. Triangle in-equality: $d(x, z) \le d(x, y) + d(y, z)$

Cauchy-Schwarz (Used for proving euclidian distance's triangle law)
: $|\langle x, y \rangle| \le \|x\|\|y\|$

Convergence
: A sequence $\{ a_n \} \to a \in S$ if $\forall \epsilon > 0, \exists N : \forall n > N, d(a_n, a) < \epsilon$

#### Theorem N13.1: $\frac 1 k d_1 \le d_\infty \le d_2 \le d_1$
#### Corollary N13.2: Sequences converge to the same value in all those metrics.
#### Corollary N13.3: Those metrics have the same cauch sequences

Completeness  (Metric Space)
: A metric space $(S, d)$ is complete is every Cauchy Sequence converges in $S$

Cauchy Sequence
: A sequence $S_n$ is Cauchy, iff $\forall \epsilon > 0, \exists N(\epsilon):
  \forall m, n > N, |d(S_n, S_m)| = 0$

Open Ball of radius $R$, centered at $y$
: $B_R(y) = \{ x \in S | d(x, y) < R \}$

Open (Metric space)
: Metric space $(S, d); O \subset S$ is open if $\forall s \in S, \exists r:
  B_r(s) \subseteq S$

Closed (Metric Space)
: A set is closed if it's complement is open.

Bounded
: $\exists R > 0: B \subseteq B_R(o)$

### Propeties of open sets
* Finite intersections: if $O_1, O_2$ are open, then $O_1\cap O_2$ is too
* Infinite unions: if $\{O_\alpha\}, \alpha \in A$ are open then
  $\bigcap_{\alpha\in A}O_\alpha$ is also open

Note: $\phi$ and $S$ are both open and closed.

Topology on set $S$
: a collection of subsets of $S$ called open sets:
  * $\phi, S$ are open
  * $X, Y$ are open, implies, $X\cup Y$ is open
  * All $O_\alpha$ are open, implies $\bigcup_{\forall\alpha}O_\alpha$ is open

NOTE: Metrics $d_1, d_2, d_\infty$ define the same open sets - they define the
same topology, called the standard topology on $\mathbb R^k$

#### Lemma N14.2: $A d_1(x, y) < d_2(x, y) < B d_1(x, y) \Longrightarrow$ they have the same topology (open sets)

Open cover of a set $E \subseteq S$ with topoplogy $T$ : is a collection of open sets $\{O_\alpha\}$ so that $E \subseteq \bigcup O_\alpha$

Sub-cover
: is a subcollection of an open-subcover

Compact subset of $S$ with topology $T$
: A subset $C$ is compact, if every open subcover has a finite subcover

#### Lemma N15.1: If $C$ is compact then it's bounded
For a fixed x, $\{B_R(x)\} \forall R > 0$ is a subcover, has a finite subcover.

#### Lemma N15.2: If $C$ is compact then it's closed
XXX

#### Discrete metric
* all sets are both closed AND open (balls of radius $\frac 1 2$ always
  exists...)
* All sets are bounded
* $Rightarrow$ All sets have a open subcover - union of the set of individual
  elements.
* $Rightarrow$ only finite sets are compact

#### Theorem N16.1: For $C\subseteq(\mathbb R^k, d_2)$
* Every sequence has a subsequence converginq at in $C$
* C is closed and bounded
* C is compact

XXX (Lec 16)

#### Theorem 13.10

XXX

Continuity (Using limits of series)

: Let $(S, d), (S', d')$ be metric spaces.  
  Then $f:(S, d) \to (S', d')$ is continuous at $L$  
  if $\forall x_n \to L, \{x_n\} \subseteq S \Rightarrow f(x_n) \to f(L)$

  $f$ is continuous if $f$ is continuous at all $L \in S$

  Informally, if $\{x_n\}$ in $S$ converges to $L$ implies  
                 $\{f(x_n)\}$ converges to $f(L)$, then  
              $f$ is continuous.

$\epsilon - \delta$ definition of continuity

: $f:(S,d) \to (S', d')$ is continuous at $x_0 \in S$  
  if $\forall \epsilon > 0, \exists \delta > 0$ so that for any $x\in S$  
  if $d(x, x_0)< \delta \Rightarrow d'(f(x), f(x_0)) < \epsilon$

: If for all balls of radius $\epsilon > 0$ centered at $x$ that sits in $S$,  
  there is a ball of radios $\delta > 0$ centered ad $f(x)$ that sits in $S'$  
  then, $f$ is continuous.

#### Lemma N 19.2: Composition of continuous functions is continuous

Corollaries: if $f, g$ are continuous at $L$ imply:

 * $f+g$ is continuous at $L$
 * $f\times g$ is continuous at $L$
 * if $g(L) \ne 0, \frac f g$ is continuous at $L$

#### Theorem  N20.1 (.1): $C \in \mathbb R^k$ is compact and $f:C\to \mathbb R$ is continuous, then the image of $C$ is bounded.
#### Theorem  N20.1 (.2): $C \in \mathbb R^k$ is compact and $f:C\to \mathbb R$ is continuous, then the pre-image of the bounds of $f$ are in $C$ (aka: $f|_C$ achieves it's max and min on $C$)

#### Theorem 18.2: Intermediate value theorem: $f:[a,b]\to \mathbb R$ is continuous implies, $f(x)$ takes all values between $f(a)$ and $f(b)$

#### Fixed point theorem: if $f:[a, b] \to [a, b]$ is continuous, then $\exists x_0,$ s.t. $f(x_0) = x_0$

---

Uniform continuity

: $f:(S, d) \to (S',d')$ is uniformly continuous
  if $\forall \epsilon > 0, \exists \delta > 0$
  so that $\forall x, y \in S:
  d(x, y) < \delta \Rightarrow d'(f(x), f(y)) < \epsilon$

: For all balls of radius $\epsilon > 0$ centered at $f(x)$ that sits in $S'$,  
  there is a ball of radius $\delta > 0$ centered at $x$ that sits in $S$  
  then, $f$ is uniformly continuous.

: Informally:
  * The derivative is bounded.
  * The graph doesn't become arbitrarily steep

Example: $f: (1, \infty) \to \Bbb R, f(x) = \frac 1 x$ is  uniformly continous

$\forall x, y > 1, |\frac 1 x  - \frac 1 y| = \frac { |y - x| } { |xy| } < |x - y|$
So, $\forall \epsilon > 0, |x -y| < \epsilon \Rightarrow |\frac 1 x - \frac 1 y| < \epsilon$

Counter: $f: (0, \infty) \to \Bbb R, f(x) = \frac 1 x$ is NOT uniformly confinuous. (but it IS continuous)

#### Theorem 19.2 if $f:[a, b] \to \Bbb R$ is  continuous, it is uniformly continuous

---

NOT Connected
: Topological Space $X$ is NOT connected if $\exists U, V \subseteq X$ s.t.:
  * $U, V$ are open
  * $X = U \cup V$
  * $U\cap V \ne \phi$
  * $U, V \ne \phi$

Connected
: Topological Space $X$ is connected if $\forall U, V \subseteq X$ s.t.:
  * $U, V$ are open
  * $X = U \cup V$
  * $U\cap V \ne \phi$
  
  $\Rightarrow U = \phi \text{ or } V = \phi$

