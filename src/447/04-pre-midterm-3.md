Connected spaces
: A Metric/Topological space is connected if, for all $U, V \subseteq S$ such that
  * $U, V$ are open
  * $X= U \cup V$
  * $U\cap V \ne \phi$
  implies $U = \phi$ or $V = \phi$

Path Connected
: ... if forall $x, y \ion S, \exists f:[a, b] \to S$ continuous, so that $f(a) = x, f(b) = y$

Differentiablilty
: Let $I \subseteq \mathbb R$ be an open interval, $f: I \to \mathbb R, a \in I$  
  Then, $f$ is differentiable at $a$ iff $\lim_{x\to a}\frac {f(x) - f(a)}{x - a}$ exists.
  
#### Theorem N24.1: Continuous functions  map connected sets to connected sets.

#### Theorem 22.5: A path connected space is connected

Note: Converse is NOT true
XXX: "Deleted broom" is an example of connected space that is not path connected.

#### Theorem 28.2: $f: I \to \mathbb R$ is differentiable at $a$, then $f$ is continuous at $a$

$$\begin{aligned}
f(x) &= f(x) - f(a) + f(a) \\
     &= \frac{f(x) - f(a)}{x - a} (x - a) + f(a) \\
\lim_{x\to a}f(x) &= \lim_{x\to a}(\frac{f(x) - f(a)}{x - a} (x - a) + f(a)) \\
                  &= \lim_{x\to a}(\frac{f(x) - f(a)}{x - a} (x - a)) + f(a) \\
                  &= f'(x)(a - a) + f(a) \\
                  &= f(a)
\end{aligned}$$

