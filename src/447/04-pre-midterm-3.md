Connected spaces
: A Metric/Topological space is connected if, for all $U, V \subseteq S$ such that
  * $U, V$ are open
  * $X= U \cup V$
  * $U\cap V \ne \phi$
  implies $U = \phi$ or $V = \phi$

Path Connected
: ... if forall $x, y \ion S, \exists f:[a, b] \to S$ continuous, so that $f(a) = x, f(b) = y$

#### Theorem N24.1: Continuous functions  map connected sets to connected sets.

#### Theorem 22.5: A path connected space is connected

Note: Converse is NOT true
XXX: "Deleted broom" is an example of connected space that is not path connected.


Differentiablilty
: Let $I \subseteq \mathbb R$ be an open interval, $f: I \to \mathbb R, a \in I$  
  Then, $f$ is differentiable at $a$ iff $\lim_{x\to a}\frac {f(x) - f(a)}{x - a}$ exists.

#### Theorem 28.2: $f: I \to \mathbb R$ is differentiable at $a$, then $f$ is continuous at $a$

* Start with $f(x) = f(x) - f(a) + f(a)$ and show that $\lim{x\to z} f(x) = f(x)$

$$\begin{aligned}
f(x) &= f(x) - f(a) + f(a) \\
     &= \frac{f(x) - f(a)}{x - a} (x - a) + f(a) \\
\lim_{x\to a}f(x) &= \lim_{x\to a}(\frac{f(x) - f(a)}{x - a} (x - a) + f(a)) \\
                  &= \lim_{x\to a}(\frac{f(x) - f(a)}{x - a} (x - a)) + f(a) \\
                  &= f'(x)(a - a) + f(a) \\
                  &= f(a)
\end{aligned}$$

#### Theorem 2.8.4: Chain rule
> $f$ differentiable at $a$, $g$ is differentiable at $f(a)$, then $(f\circ g)'(a) = g'(f(a))\times f'(a)$.

XXX 

Local Minimum, mimima
: $f(x)$ has a local minimum at $a$  
  if, $\exists \epsilon > 0$, such that $f(a) \le f(x)$ for all $x \in (a-\epsilon, a+\epsilon)$
  
  i.e, if $f(a) \le f(x)$ for all $x$ "near" $a$

#### Theorem 29.1: Suppose $f$ is differentiable at $X_0$, and $f$ has an extremum at $x_0$, then $f'(x_0) = 0$ 

1. Definition of local maximimum.
2. Chose any sequence in $(a, a + \delta)$ with $x_n \to x_0$,  
   show that $\frac {f(x_n) - f(a)} {x_n - a} \le 0$  
   $f'(a) = lim_{n\to\infty}\frac {f(x_n) - f(a)} {x_n - a} \le 0$
   
   XXX: The definition of derivative uses $f:I \to \mathbb R$ but here a sequence is used: $f:\mathbb N \to \mathbb R$
3. Chose any sequence in $(a - \delta, a)$ with $x_n \to x_0$,  
   similarly show $f'(a) = lim_{n\to\infty}\frac {f(x_n) - f(a)} {x_n - a} \ge 0$
4. By 2 and 3, $f'(0) = 0$

#### Theorem: Rolle's theorem

> If 
>  * $f:[a, b] \to \mathbb R$ is continuous
>  * $f|(a, b)$ is differentiable
>  * f(a) = f(b)
> there exists $c \in (a, b)$ so that $f'(c) = 0$

1. For constant $f$, proof is trivial
2. Otherwise, $f$ achieves max and min on $[a, b]$ since $f$ is continuous.
3. Since $f$ is not constant, max $\ne$ min.
4. Since $f(a) \ne f(b)$, at least one extremal point MUST be in $(a, b)$

#### Theorem 29.3: Mean value theorem
> If 
>  * $f:[a, b] \to \mathbb R$ is continuous
>  * $f|(a, b)$ is differentiable
> there exists $c \in (a, b)$ so that $f'(c) = \frac {f(b) - f(a)} {b - a}$

1. Take $h(x)$ so that $h(a) = f(a), h(b) = f(b)$, constance slope.
2. Consider the function $f(x) - h(x)$, apply Rolle's thoerem.

XXX Rest of lecture 27

---

#### Theorem N28.1: $f:(a, b) \to \mathbb R$ is differentiable, $f'(x) \ge 0$ $\Longleftrightarrow$ $f$ is non-decreasing

$\Rightarrow$: Use mean value theorem on any $x, y \in (a, b)$, definition of $f'(x)$ to get $f(x) \ge f(y)$  
$\Leftarrow$: Definition of non-decreasing ($\frac {f(y) - f(x)}{y - x} \ge 0$), apply limit

#### Theorem 29.9: Inverse funciton theorem
> Suppose:
> * $f:(a, b) \to (c, d)$ is continuous (NOTE domain and codomain MUST be open)
> * $f$ is differentiable at $x_0 \in (a, b)$
> * $f'(x_0 \ne 0)$
> Then,
> * $f^{-1}$ is differentiable at $y_0 = f(x_0)$
> * $(f^{-1}(y_0) = f'(x_0) = 1$\

1. Assume $f^{-1}$ is continuous (we prove this later, using Theorem N28.1)
2. Since $f'(x_0)$ exists, $\ne 0$, use any sequence: $\{y_n\} = \{ f(x_n) \} \to Y, definition of limit, to show $\lim_{n\to\infty} \frac {f^{-1}(y_n) - f^{-1}(Y)} {y_n - Y} = \lim \frac {x_n - x_0} { f(x_n) - X } = \lim \frac {1} { \frac { f(x_n) - X } {x_n - x_0}  } = \frac 1 {f'(X)}$

#### Theorem 18.6: $f:(a, b) \to (c, d)$ is a continuous bijection then $f$ is strictly monotonic
#### Theorem N28.1: $f:(a, b) \to (c, d)$ is a continuous bijection then $f^{-1}$ is continuous

---

## Lecture 29: Integration

Notation:
1. $M(f, S):= \sup \{f(x) | \forall x \in S \}$
1. $m(f, S):= \inf \{f(x) | \forall x \in S \}$

Partition $P$ pf $[a, b]$
: set of points $t_0, t_1, t_2 \ldots t_n \in [a, b]$, s.t. $a = t_0 < t_1 < t_2 \ldots  < t_n = b$

Upper sum w.r.t partition $P$
: $U(f, P) := \sum_{i=1} M(f, [t_{i-1}, t_i])\cdot(t_i - t_{i-1})$

Lower sum w.r.t partition $P$
: $L(f, P) := \sum_{i=1} m(f, [t_{i-1}, t_i])\cdot(t_i - t_{i-1})$


## Lecture 31

#### Theorem 33.4 (i): $f(x) \le g(x) \Rightlongarrow \int_a^b f \le\int_a^b g$
(where $f, g: [a, b] \to \mathbb R$ are integrable)

$$\begin{aligned}
            &&        f(x) &\le g(x)  \\
\Rightarrow && g(x) - f(x) &\ge 0 \\
\Rightarrow && L(g - f, P) &= \sum_P m(g - f, [t_{i-1}, t_i])\cdot(t_i - t_{i-1}) \\
            &&             &\ge 0 \\
\Rightarrow && \int_a^b g - \int_a^b &= \int_a^b g - f \\ && &= \sup_P\{ L(g - f, P) \} \ge 0
\end{aligned}$$

#### Theorem 33.4 (ii): $g$ is continuous, $g(x) \ge 0$, $\int g = 0$ implies $g(x) = 0
(all on the interval $[a, b]$)

Proof by contradiction at $x_0$
1. Definition of continuity at $x_0$: Since one point $x_0$ has non-zero value, it's locality has non zero value
  * $I$ is CLOSED, so $x \in (x_0 - \delta,x_0 + \delta) \cap [a, b]$
  * ... $ \int_{\text{locality}} = XXX \ge \text{length}(\text{locality})  \frac 1 2 g(x_0) $
2. Since $g(x) \ge 0$, $\int_a^b \ge \int_{\text{locality of }x_0} > 0$

#### Theorem 34.1 Fundamental Theorem of Calculus I

> Suppose $g: [a, b] \to \mathbb R$ is continuous, differentiable on $(a, b)$
> and $g'$ is itegrable on $[a, b]$, then $\int_a^b g' = g(b) - g(a)

1. Use mean value theorem on any point in $(t_{k-1}, t_k)$ of a partition of size $n$  
   $g(t_k) - g(t_{k-1}) = g'(t_k)(t_k - t_{k-1}) \forall k, 0 < k \le n$
2. Show:
   * $m(g', [t_{k-1}, t_k])(t_k - t_{k-1}) \le g(t_k) - g(t_{k-1}) = g'(t_k)(t_k - t_{k-1})Z$
   * $M(g', [t_{k-1}, t_k])(t_k - t_{k-1}) \ge g(t_k) - g(t_{k-1}) = g'(t_k)(t_k - t_{k-1})Z$
3. Continue using definition $L(g', P)$ and $U(g', P)$

#### Theorem 34.2: Integration by parts
> $f, g: [a, b] \to \mathbb R$ are contiuius diffrentiable on $(a, b)$, $f', g'$ are integrable,  
> then $\int_a^b f g'  = \int_a^b (fg)' - \int_a^b f' g = f(b)g(b) - f(a)g(a) - \int_a^b f' g$

1. $(fg)' = f'g + fg'$, all terms of which are integrable. So can apply Fundamental theorem to $(fg)'$.

#### Fundamental Theorem of Calculus II
> $f:[a,b] \to \mathbb R$ is integrable. then, $F(x) := \int_a^x f$ is continiuous.  
> If $f$ is contiuous at $x_0$ and $F'(x_0) = f(x_0)$.

1. $f$ is contiuous, so bounded by say $M$.
2. $|F(y) - F(x)| = | \int _a^y f - \int _a^x f | = | \int _a^x f + \int _x^y f - \int _a^x f |  = |\int_x^y f| \le  \int_x^y |f|$
3. Choose $\delta = \epsilon / M$, definition of uniform continuous.

XXX: $F'(x_0) = f(x_0)$.


---

Pointwise convergence of sequence of functions
: $\{g_n : D \to \mathbb R\}$ converges pointwise to $g: D \to \mathbb R$  
  iff $forall x \in D, g_k(x) = g(x)$

Uniform convergence of sequence of functions
: iff $\forall \epsilon > 0, \exists N: \foral n > N \Longrightarrow |g_n(x) - g(x)| < \epsilon, \forall x \in D$

http://math.stackexchange.com/questions/597765/pointwise-vs-uniform-convergence

---

# Lecture 33

### Lemma N33.1
$g_k, g: D \to \mathbb R$ and  $g_k \to g$ uniformly \Longrightleftarrow \sup_{x\in D} |g_k(x) - g(x)| \to 0$

### Theorem 24.3: Uniform limit of continuous funciton is continuous
### Theorem 25.2: If $\{f_n: [a, b] \to \mathbb R \}$ continuous, converges uni. to $f$ then $\int^b_a f_n = \int^b_a f$


XXX

# Lecture 34

Power series
: $$\sum^\infty_{n=0} a_n(x - c)^n$$

Theorem 23.1:
> For  $\sum_{k} a_k(x - x_0)^k$, leg $\beta = \limsup|a_k|^{\frac 1 k }$. Let
> $$R = \begin{cases}
0 				& \text{if} \beta = \infty \\
\frac 1 \beta 	& \text{if} 0 < \beta < \infty \\
\infty 			& \text{if} \beta = 0
\end{cases}$$
> Then,
> 1. The series converges for  $|x - x_0| < R$
> 1. The series diverges for  $|x - x_0| > R$

#### $R$ is the radius of convergence

Interval of convergence
: $(x - x_0, x+x_0)$

Theorem 26.1: if radius of convergence, $R > 0$, then for $0 < R_1 < R$, the series convverges uniformly in $[x_0 - R_1, x_0 + R_1]$

> Goal: Can we integrate a  convergent power series and get a convergent power series?

#### Theorem 25.2:
>$\{f+n: [a, b] \to \mathbb R\}$, continuous, uni converges to $f$  
> then $\lim_{n\to\infty} \int_a^b f_n = \int_a^b \lim_{n\to\infty} f_n \quad (= \int_a^b f)

#### Lemma 26.3 $\sum^\infty_{n=0} na_n(x)^{n-1}$ and $\sum^\infty_{n=0} \frac{a_{n+1}}{n+1} x^{n+1}$ have the same radius of c.
