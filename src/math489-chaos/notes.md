---
title: Discrete-time Dynamical Systems
---

Dynamical Syatem 
: Set $S$ of states, and a deterministic rule that determines the present state
  based only on the previous states. 

Source, Sink
: Let $p$ be a fixed point ($f: \mathbb R \to \mathbb R, p \in \mathbb R, f(p) = p$).

  If  $\exists \epsilon > 0 : \forall x \in N_\epsilon(p) \cap S, \lim_{k\to\infty}
  f^k(x) = p$, then $p$ is a sink / attracting fixed point.   
  If  $\exists \epsilon > 0 : \forall x \ne p \in N_\epsilon(p) \cap S, \lim_{k\to\infty}
  f^k(x) \notin N_\epsilon$, then $p$ is a source / repelling fixed point.

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

---

$G(x) = g_4(x) = 4x(1 - x)$

Fixed points are $x = 4x(1 - x) \Longrightarrow 0 = 3x - 4x^2 \Longrightarrow x
= 0, \frac 3 4$

$$\begin{aligned}
g_4^2(x) &= 4g(x)(1 - g(x)) = 4(4x)(1 - x)(1 - 4x(1 -x)) \\
         &= 4*4*x*(1 - x)(1 - 4x + 4x^2)
\end{aligned}$$

$2$-periodic points at

---

## Sharkovski's theorem
if $G: S \to S, S \subset \mathbb R$ interval, continuous and has a
$3$-periodic orbit for all periods.

In general if a system has an orbit of period $n$ then if $n \prec m$ then
it has an orbit of order $m$ where $\prec$ is defined as:

$$\begin{aligned}
    3 \prec 5 \prec 7 \prec \cdots  \prec \\
    2\cdot 3 \prec 2\cdot 5 \prec 2\cdot 7 \prec \cdots  \prec \\
    2^2\cdot 3 \prec 2^2\cdot 5 \prec 2^2\cdot 7 \prec \cdots  \prec \\
    2^3\cdot 3 \prec 2^3\cdot 5 \prec 2^3\cdot 7 \prec \cdots  \prec \\
    \vdots \\
    \cdots 2^2 \prec 2 \prec 1
\end{aligned}$$

> Proof as final project?

Sensitive dependence of initial condition
: $f: S \to S, S \subseteq \mathbb R$ then $x_0 \in S$ has sensitive dependence
  on initial conditions if $\exists d > 0, \forall N_\epsilon(x), \exists x_1 \in
  N_\epsilon(x_0), \exists k \in \mathbb N |f^k(x_1) - f^k(x_0)|$

eg: $f(x) = 3x \mod 1$. Choose $d < \frac 1 2$
We can write $x$ in base $3$ as $x = x_1 \frac 1 3 + x_2 \frac 1 3^2 \cdots x_i
\frac 1 3 ^ i \cdots, x_i \in \{0, 1, 2\}$

---

## Two dimensional maps

$f: S \to S$ where $S \subset \mathbb R^n$. $f$ is a function on a vector with
$m$ elements -- equivalent to $m$ equations from $\mathbb R^m \to \mathbb R$

### Theorem: If $p$ fixed point, $f$ is differentiable at $p$

$$
Df(p) = \begin{bmatrix}
\frac {\partial f_1} {\partial x_1} \cdots \frac{\partial f_1} {\partial  x_m } \\
\frac {\partial f_2} {\partial x_1} \cdots \frac{\partial f_2} {\partial  x_m } \\
\vdots \\
\frac {\partial f_m} {\partial x_1} \cdots \frac{\partial f_m} {\partial  x_m } \\
\end{bmatrix}$$
* If all e-values of $Df(p)$ has absolute value $< 1$ then $p$ is a sink.
* If all e-values of $Df(p)$ has absolute value $> 1$ then $p$ is a source.

Hyperbolic point
: All e-values $\ne 1$ then $p$ is a hyperbolic point. in addition if some
e-values are greater than $1$ and others are lower, you call the point a saddle
point.

Linear map
: $f: \mathbb R^n \to \mathbb R^n$ is linear iff $\forall u, v \in \mathbb R^n$j
    * $f(u + v) = f(u) + f(v)$
    * $f(c x) = cf(x)$

  Equivalantly: $f(au + bv) = af(x) + bf(y)$

$f: \mathbb R^2 \to \mathbb R^2$ linear, $\exists A \in M_{2\times 2}, f(x) =
Ax$

For $x \in S$ orbit is $\{x, f(x), f^2(x) \cdots \} = \{x, Ax, A^2x, A^3x \cdots
\}$

Case 1: $A$ has $2$ distinct eigen-values $\lambda_1, \lambda_2$. Then $S ^{-1} A S =
\begin{bmatrix}\lambda_1 & 0 \\ 0 & \lambda_2\end{bmatrix}$. $S =
[\text{e-vector}_1,  \text{e-vector}_2]$.

Then $A^n = S \begin{bmatrix}\lambda_1^n& 0 \\ 0 & \lambda_2^n\end{bmatrix} S ^{-1}$

## Theorem: Normal Jordan form

$\forall A \in M_{m\times m} \exists S \in M_{m\times m}$ invertible, such that
$D = S ^{-1} A S$ with $D$ diagonal blocks:

$$D = \begin{bmatrix}
\lambda & 1 & 0 & 0 \cdots \\
0 &\lambda & 1 & 0 \cdots \\
\vdots & \vdots & \vdots &\vdots \\
0 & 0&  \cdots  &\lambda
\end{bmatrix}$$

$$D^n = \begin{bmatrix}
\lambda^n & \binom n 1 \lambda^{n-1} &  \cdots \\
0 &\lambda & 1 & 0 \cdots \\
\vdots & \vdots & \vdots &\vdots \\
0 & 0&  \cdots  &\lambda
\end{bmatrix}$$

----

For an $n$ dimensional map

case 1 : distinct roots $m_1 = m_2 = m_3 = \cdots = 1$, $\text{Null}(A - \lambda 

---

If $f$ is differentiable at poing $p$ and 
 1. $Df(p)$ has $e$-values with magnitude $> 1\Longrightarrow p$ is a
    sink
 1. $Df(p)$ has $e$-values with magnitude  $< 1 \Longrightarrow p$ is a
    source

$p$ is $k$-periodic for $f$ then it is a $k$-periodic if 
1. a sink if $Df^k(p) = Df(p)Df(f^{1}(p))\cdots Df(f^k(p))$

---

Lyopunov' Number at $x_0$
: $$L = \lim_{x\to \infty} | f'(x_0)f'(x_1)f'(x_2)\cdots f'(x_m)| ^{\frac 1 n}$$
: $$h = \lim_{x\to \infty} \ln |f'(x_0)| \ln|f'(x_1)| \ln|f'(x_2)|\cdots \ln| f'(x_m)| ^{\frac 1 n}$$


If $p\in S$ isa fixed point. THen $L = |f'(p)|$ if less than 1 then sink,
grerater than one source.

Similarly $h$ >/< 0.

$P \in S$ is periodic with period $k$ the limit converges to $L = |f'(x_0)
\cdots f'(x_{k-1})|^{\frac 1 k}$

If the $k$-orbit of $x_0$ under $f$ has Lyopunov # of $L$ then under $f^k$ it
has an L-number of $L^k$

Asymptotically periodic orbit
: orbit $\{x_0, x_1, \cdots, x_n \}$ is Asymptotically periodic if $\exists ???$
: iterations converge to a $k$-orbit.

If an orbit is asymptotically periodc then the $L$ of the orbit is the same as
it's periodic orbit.

If $\{ x_0, x_1\cdots \}$ is asymptotically periodic and the has $h>0 / L>1$ then the orbit is eventually periodic. (otherwise it's not possible for a asymptotic repulsive point).

