# Discrete-time Dynamical Systems

Dynamical Syatem 
: Set $S$ of states, and a deterministic rule that determines the present state
  based only on the previous states. 

Source, Sink
: Let $p$ be a fixed point ($f: \mathbb R \to \mathbb R, p \in \mathbb R, f(p) = p$).

  If  $\exists \epsilon > 0 : \forall x \in B_\epsilon(p), \lim_{k\to\infty}
  f^k(x) = p$, then $p$ is a sink / attracting fixed point.   
  If  $\exists \epsilon > 0 : \forall x \ne p \in B_\epsilon(p), \lim_{k\to\infty}
  f^k(x) \notin B_\epsilon$, then $p$ is a source / repelling fixed point.

## Theorem 1.5: Source / Sink based on slope of map

> Let $f$ be a smooth map  on $\mathbb R, f(p) = p$,
> * $|f'(p)| < 1 \Longrightarrow p$ is a sink
> * $|f'(p)| > 1 \Longrightarrow p$ is a source

Periodic points
: $f: S \to S, p \in S$ is a periodic point if $f^k(p) = p$. If $k$ is the
  smallest such $\mathbb N$ then $k$ is called the period.
  
  ## Example

  $f(x) = 2x^2 - 5x$
  
  Fixed points given by
  $$\begin{aligned}
    x &= 2x^2 - 5 \\
    0 &= 2x^2 - 6x \\
      &= 2x(x - 3) \\
    x &\in \{ 0, 3 \}
  \end{aligned}$$

  $2$-period points:
  $$\begin{aligned}
  f^2(x) &= x \\
  f(f(x)) &= 2(f(x))^2 - 5f(x) \\
         &= 2(2x^2 - 5x)^2 - 5(2x^2 - 5x) \\
         &= 2(4x^4 - 20x^3 - 25x^2) - 10x^2 + 25x \\
         &= 8x^4 - 40x^3 - 50x^2 - 10x^2 + 25x \\
       x &= 8x^4 - 40x^3 - 60x^2 + 25x \\
       0 &= 8x^4 - 40x^3 - 60x^2 + 24x
  \end{aligned}$$
  We know that $0, 3$ are solutions, so $x, x - 3$ are factors... 
  $$\begin{aligned}
     0 &= (x)(8x^3 - 40x^2 - 60x + 24) \\
       &= (x)(x - 3)(8p^2 - 16p - 8) \\
       &= 8 (x)(x - 3)(x^2 - 2x - 1) \\
       &= 8 (x)(x - 3)(x - 1 + \sqrt 2) (x - 1 - \sqrt 2)
  \end{aligned}$$

  Orbits $= \{ p, f(p), f^2(p), ..., f^{k-1}(p)\} = \{ 1 + \sqrt 2, 1 - \sqrt 2\}$

$k$-peridodic sink
: $k$-periodic is a sink if it is a sink for the dynamic system $f^k(x)$.

  $p$ is a $k$-periodic sink if $|f'(p)\cdot f'(f(p))\cdot f'(f^2(p))\cdot \ldots f'(f^{k-1}(p))| < 1$

## Family of Logistic Maps

Dynamic systems of the form $g_a: [0, 1] \to [0, 1]; g_a(x) = ax(1-x)$

Properties:
* If $0 < a < 1$,
  -  then $0$ is a sink with basin of attraction $\forall x_0 \in
  [0, 1]$. State will converge at $0$.
  - Since $g_a(0) = 0$, $0$ is a fixed point. $g'_a(0) = a - 2ax | _{x = 0} =
    a$, so $0$ is a sink.
  - Graph is parabola with vertex $(\frac 1 2, \frac a 4)$
* If $1 < a < 3$, then 
  - $x = 0$ is a source, $x = \frac {a-1} a$ is a sink.
