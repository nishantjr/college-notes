## 8.1.3

Given euclidean domain $R$ and its norm $N$, with minimum norm for non-zero
elements $m$.  
Show that if $N(a) = m$, $a$ is a unit 

Let $u \in R$ have norm $m$. Then
$\exists 1 \in R$ since $R$ is an integral domain, $\exists q, x \in R, N(x) < N(u), 1 = q u + x$, since $R$ is a euclidian domain.
$x = 0$ since $N(x) < N(u)$ and $u$ has the minimum norm for non-zero
elements. Since ED are commutative, $1 = q u$ and $1 = u q$, so $q$ is the
inverse of $u$ and $u$ is a unit.

Since by definition, the norm of an element is always a non-negative integer, an element with
norm zero must have the minimum norm, and so must be a unit.

## 8.1.7

$$\begin{aligned}
\frac {85} {1 + 13 i } &= 0.5 - 6.5i & 85 &= (0 - 6i)(1 + 13i) &&- (7 + 6i) \\ \\
\frac {1 + 13i}{7 + 6i} &= 1 + i     & 1 + 13i &= (1 + i)(7 + 6i) &&+ 0
\end{aligned}$$
$\therefore (85, 1 + 13i) = (7 + 6i)$

---

$$\begin{aligned}
\frac {53 + 56i} {47 -13i} &\approx 0.74 + 1.39 i & 53 + 56 i &= (1 + 1i)(47 - 13i) &&- 7 + 22 i \\ \\
\frac {47 - 13i}{-7 + 22i} &\approx -1.15 - 1.76i & 47 - 13 i &= (-1 -2i)(-7 + 22i) &&- 4 - 5 i \\ \\
\frac {-7 + 22i}{-4 - 5i}  &= -2 -3i              & -7 + 22 i &= (-4 - 5i)(-2 -3i)  && + 0
\end{aligned}$$
$\therefore (53 + 56i, 47 -13i) = (-4 - 5i)$

## 8.1.8(a).1  Show that $\mathbb Z[\sqrt{-2}]$ is an ED
Using the same norm as for complex numbers, $N(a + b \sqrt{-2}) = a^2 + 2b^2$

Let $\alpha = a + b \sqrt{-2}, \beta = c + d \sqrt{-2}$ be elements of $\mathbb
Z [\sqrt{-2}], \beta \ne 0$.

Then $\dfrac \alpha \beta = r + s \sqrt{-2}$ where $r = \dfrac{ ac + 2bd}{c^2 + 2d^2}, s = \dfrac{bc - ad}{c^2 + 2d^2}$

Let $p$ be an integer closest to $r$ and $q$ to $s$. So $|p - r|$ and $|s - q|$
are at most $\frac 1 2$. Take $\theta = \frac \alpha \beta - (p + q \sqrt{-2}) =
(r - p) + (s - q) \sqrt{-2}$
and $\gamma = \beta\theta = \alpha - (p + qi) \beta \in \mathbb Z[\sqrt{-2}]$
(Since $\alpha, \beta, p, q \in \mathbb Z[\sqrt{-2}]$).

Then $N(\theta) = (r - p)^2 + 2(s - q)^2 < \frac 1 4 + \frac 1 2 = \frac 3 4$

and $N(\gamma) = N(\theta\beta) = N(\theta)N(\beta) < \frac 3 4 N(\beta) < N(\beta)$.

This can be used for a division algorithm, and so $\mathbb Z[\sqrt{-2}]$ is an
euclidean domain.

## 8.1.8(a).2 Show that $\mathbb Z[\sqrt{-3}]$ is an ED

This is similar to previous proof, except we get,
$N(\theta) = (r - p)^2 + 3(s - q)^2 < \frac 1 4 + \frac 3 4 = 1$
and $N(\gamma) = N(\theta\beta) = N(\theta)N(\beta) < N(\beta)$

## 8.2.1: s.t. in a PID, two ideals $(a), (b)$ are comaximal iff $\gcd(a, b) = 1$

If $(a), (b)$ are comaximal, then $R = (a) + (b) = (a, b) = (c)$, since $R$ is a
PID, where $c = \gcd(a, b)$ by proposition 2 on page 274. $1 \in R = (c)$ and $1.c = c$. i.e $1$
divides $c$. By definition of gcd, $1 = c$

If $\gcd(a, b) = 1$ then by definition of PID, $(a, b) = (c)$. Since $c$
is the gcd and $1|c$, $c = 1$ by definition of gcd. Since $1$ is a unit, by
Proposition 7.9 on page 253, $(1) = R$. Since $a, b \in (a)+(b), (a, b)
\subseteq (a)+(b)$ and $(a) + (b) = R$
