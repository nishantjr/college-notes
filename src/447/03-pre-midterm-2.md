## Lecture 19, 20, 21: Important definitions and theorems (no proofs)

Continuity

: Let $(S, d), (S', d')$ be metric spaces.  
  Then $f:(S, d) \to (S', d')$ is continuous at $L$  
  if $\forall x_n \to L, \{x_n\} \subseteq S \Rightarrow f(x_n) \to f(L)$

  $f$ is continuous if $f$ is continuous at all $L \in S$

  Informally, if $\{x_n\}$ in $S$ converges to $L$ implies  
                 $\{f(x_n)\}$ converges to $f(L)$, then  
              $f$ is continuous.


#### Lemma N 19.2: Composition of continuous functions is continuous

> $f:(S_1, d_1) \to (S_2, d_2)$ is continuous at $x_0 \in S_1$ and  
> $g:(S_2, d_2) \to (S_3, d_3)$ is continuous at $f(x_0)$  
>
> Then, $g(f(x))$ is continuous at $x_0$.

Corollaries: if $f, g$ are continuous at $L$ imply:

 * $f+g$ is continuous at $L$
 * $f\times g$ is continuous at $L$
 * if $g(L) \ne 0, \frac f g$ is continuous at $L$

$\epsilon - \delta$ definition of continuity

: $f:(S,d) \to (S', d')$ is continuous at $x_0 \in S$  
  if $\forall \epsilon > 0, \exists \delta > 0$ so that for any $x\in S$  
  if $d(x, x_0)< \delta \Rightarrow d'(f(x), f(x_0)) < \epsilon$

: If for all balls of radius $\epsilon > 0$ centered at $x$ that sits in $S$,  
  there is a ball of radios $\delta > 0$ centered ad $f(x)$ that sits in $S'$  
  then, $f$ is continuous.


> $\epsilon - \delta$ definition of continuity is equivalent 

---

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

Theorem 19.2 if $f:[a, b] \to \Bbb R$ is  continuous, it is uniformly continuous

Proof: Suppose it is not uniformly continuous.

Then $\exists \epsilon_0: \forall \delta > 0, \exists x_d, y_d \in [a, b]$,
with $\x_d -y_d| < \delta$ and $|f(x_d, y_d) \ge \epsilon_0$

Take $\delta = \frac 1 n$, Let $x_n = x(\frac 1 n), y_n = y(\frac 1 n)$
