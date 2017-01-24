## Metric Spaces

##### Definition: Metric

Let $S$ be a set. A **metric** (aka distance) on $S$ is a function,
$d: S \times S \to [0, \infty)$,  
such that $\forall x, y, z \in S$:

1. Symmetric: $d(x, y) = d(y, x)$
2. Non-degenerate: $d(x, y) = 0 \Leftrightarrow x = y$
3. Triangle law applies: $d(x, z) \le d(x, y) + d(y, x)$

##### Notation: Inner product: $\langle x, y\rangle$

In general: scalar quantitiy associated with two vectors, s.t.:

* Conjugate symmetry: $\langle a, b\rangle = \overline{\langle b, a\rangle}$

  XXX: What is a conjugate in general for any Field $F$?
  For $\mathbb C, \overline{a + bi} = a - bi$

* Linearity in first argument:
  - $\langleax, y\rangle = a\langle x, y\rangle$
  - $\langle x + y, x\rangle = \langle x, y\rangle + \langle y, z\rangle$

* Positive definiteness (who makes up these terms??):
  - $\langle x, x\rangle \ge o$
  - $\langle x, x\rangle = 0 \Leftrightarrow x = 0$

For $\mathbb R$, $\langle x, y \rangle := xy$, and $<\cdot, \cdot>$ is
commutative, linear for all arguments.

##### Notation "euclidian distance from origin" $\|x\|= \sqrt{\langle x, x \rangle} $

##### Example: s.t. Euclidian distance over $\mathbb R^n$ is a metric

Cauchy-Schwarz: $|\langle x, y \rangle \le \|x\|\|y\|$
XXX: Huh. For $\mathbb R^n$, seems to be same as $x_i y_i \le x$

$\text{Euclidian Distance} = d(x, y) = (\sum_i (y_i - x_i)^2 )^{\frac 1 2}$

1. Symmetric: Trivial, since squares of difference are commutative.
2. non-dgeneracy: 
   - $0 = d(x, y) \Leftrightarrow 0 = d(x, y) ^ 2 = \sum(x_i - y_i)^2$
   - $\forall i, x_i - y_i = 0 \Leftrightarrow x = y$
3. Triangle Law:
   - Start with $\|x + y\|^2 = \langle x + y, x + y \rangle$ and  
     use Cauchy-Schwarz to show $\|x + y\| \le \|x\| + \|y\|$
   - Apply in $x(x, y) = \|x - z\| = \|(x - y) + (y -z)\|$

##### Examples of metrics for $\mathbb R^n$

* Discrete metric:
  $ d(a, b) = \bigg\{
      \begin{aligned}
       & 1 \quad a \ne b \\
       & 0 \quad a = b 
     \end{aligned}
  $
* Manhattan distance: $d_1(a, b) = |x - y|$
* Euclidian distance: $d_2(a, b) = (\sum (x - y)^2) ^{\frac 1 2}$
* Supremum metric: $d_\infty(a, b) = \text{max}\{|a_i - b_i| 1 \le i \le n \}$

##### Definition: Convergence for metric spaces

A series $a_n: \mathbb N \to \mathbb F$ converges to $L$ in metric space $(\mathbb F, d)$  
iff $\forall \epsilon > 0, \exists N(\epsilon)$ such that $d(N, L) < \epsilon$

##### Example: if $a_n = \big(\dfrac 1 n, \dfrac 1 {n^2})$; then $a_n \to (0, 0)$

* Since we're using $d_2$ and $\mathbb R^2$ we need each co-ordinate in the
  vector to be $< \dfrac \epsilon {\sqrt[n] 2} = \dfrac \epsilon {\sqrt 2}$ so that
  $d_2$ becomes $\epsilon$
  - For $\frac 1 n$ we can choose $N = \dfrac {\sqrt 2} \epsilon $

  - For $\frac 1 {n^2}$ we can choose $N = \dfrac {\sqrt[4] 2} {\sqrt\epsilon} $
* So we choose $N = \text{max}\{ \dfrac {\sqrt 2} \epsilon, \dfrac {\sqrt[4] 2} {\sqrt\epsilon}\}$


---

##### Theorm: Couchy Schwarz inequality:
$\forall x, y \in \mathbb R^n, |\langle x, y\rangle | \le \|x\|\|y\| $

Proof not in syllabus:
* If $x$ or $y$ is $0$ becomes equivalent to
  $|\langle x, y\rangle| = |x \cdot y| = 0 \le \|x\|\|y\| = 0$
* Otherwise, Consider  XXX

##### Theorem: N13.1: $\frac 1 k d_1(x, y) \le d_\infty(x, y) \le d_2(x, y) \le d_1(x, y)$

1. s.t: $\frac 1 k d_1(x, y) \le d_\infty(x, y)$
   
   $$\begin{aligned}
   d_\infty(x, y) & = \text{max}\{ |x_i - y_i| : 1 \le i \le n \} \\
                  & = |x_j - y_j| \quad \text{for some } j        \\
                  & = \frac 1 k k*|x_j - y_j| \\
                  & \le \frac 1 k \sum_{i=1}^k |x_i - y_i|
                      \quad \text{Since} |x_j - y_j| = max\{ |x_i - y_i| \forall i \} \\
                  & \le \frac 1 k d_1(x, y)
   \end{aligned}$$

2.  s.t: $d_\infty(x, y) \le d_2(x, y)$

    $$\begin{aligned}
       d_\infty(x, y)^2 & = |x_j - y_j|^2 \\
                        & \le \sum |x_i - y_j| ^2 \quad \text{Since} |x_i - y_j| > 0\\
                        & \le d_2(x, y) ^2 \\
         d_\infty(x, y) &\le d_2(x, y)
    \end{aligned}$$

3.  s.t: $d_\infty(x, y) \le d_2(x, y)$

    $$\begin{aligned}
        d_2(x, y)^2 & = \sum |x_i - y_i |^2  \\
                    & \le (\sum |x_i - y_i|)^2 \\
                    & \le d_1(x, y)^2
    \end{aligned}$$

##### Theorem: N13.2 Convergence to $L$ under $d_1, d_2, d_\infty$ are equivalatn

1. $a_n \to^{d_2} L$ then $a_n \to^{d_\infty} L$

   $$\begin{aligned}
        \forall \epsilon \exists N  \text {such that} d_2(a_n, L) & < \epsilon \\
        \therefore d_\infty(a_n, L)      & < \epsilon \\
        \therefore a_n \to^{d_2} L
   \end{aligned}$$

2. $a_n \to^{d_\infty} L$ then $a_n \to^{d_1} L$

   $$\begin{aligned}
        \forall \epsilon \exists N s.t. d_\infty(a_n, L) & < k \cdot \epsilon \\
        \therefore \frac 1 k d_1(a_n, L) \le d_\infty(a_n, L) & < k \cdot \epsilon \\
        \therefore d_1(a_n, L) & <  k \cdot \epsilon \\
   \end{aligned}$$

2. $a_n \to^{d_\infty} L$ then $a_n \to^{d_1} L$

   XXX: More of the same


##### Definition: Completeness: A metric space is complete iff every couchy sequence converges.

##### Theorem: $(\mathbb R^2, d_2)$ is complete

Let $a_n$ be cauchy.  
Then 
$$\begin{aligned}
\exists N: |a_n - a_m| &  < \epsilon \forall m, n < N \\
|(a_n)_i - (a_m)_i | \le |a_n - a_m|  & < \epsilon,  \forall i \\
\therefore (a_n)_i \text{ is cauchy} \\

\mathbb R \text{ is complete, so} \exists L_i : (a_n)_i \to L_i \\
\therefore \forall \epsilon > 0, \exists N_i : |(a_n)_i - L_i| < \epsilon \\
\therefore \text{for} N = max\{N_i\}, max{|(a_n)_i - L_i|} < \epsilon \\
\therefore a_n \to^{d_\infty} L \Rightarrow a_n \to^{d_2} L
\end{aligned}$$

