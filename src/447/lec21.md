Uniform continuity

: $f:(S, d) \to (S',d')$ is uniformly continous
if $\forall \epsilon > 0, \exists \delta > 0$
so that $\forall x, y \in S:
d(x, y) < \delta \Rightarrow d'(f(x), f(y)) < \epsilon$

: Informally(?):
  * derivative is bounded.
  * The graph doesn't become "arbitarilly steep

Example: $f: (1, \infty) \to \Bbb R, f(x) = \frac 1 x$ is  uniformly continous

$\forall x, y > 1, |\frac 1 x  - \frac 1 y| = \frac { |y - x| } { |xy| } < |x - y|$
So, $\forall \epsilon > 0, |x -y| < \epsilon \Rightarrow |\frac 1 x - \frac 1 y| < \epsilon$

Counter: $f: (0, \infty) \to \Bbb R, f(x) = \frac 1 x$ is NOT uniformly confinuous. (but it IS continuous)

Theorem 19.2 if $f:[a, b] \to \Bbb R$ is  continuous, it is uniformly continuous

Proof: Suppose it is not uniformly continuous.

Then $\exists \epsilon_0: \forall \delta > 0, \exists x_d, y_d \in [a, b]$,
with $\x_d -y_d| < \delta$ and $|f(x_d, y_d) \ge \epsilon_0$

Take $\delta = \frac 1 n$, Let $x_n = x(\frac 1 n), y_n = y(\frac 1 n)$
