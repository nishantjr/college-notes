## 13.1 #2

We know that since $p(x) = x^3 - 2x - 2$ has integer co-efficients and degree 3 is
irreducible in $\mathbb Q$ since the only possible roots in $\mathbb Q$ are the
factors of $6 = \{1, -1, 2, -2\}$, none of which are roots.

Since $p(x)$ is irreducible, and $\theta$ is a root in some extension, and
$F(\theta) \cong F[x]/(p(x))$

$$\begin{aligned}
      &(1 + x)(1 + x + x^2) \\
=     & 1 + 2x + 2 x^2 + x^3 \\
\equiv& 3 + 4x + 2x^2 \text { mod } p(x) \\ 
\mapsto& 3+ 4\theta + 2\theta^2
\end{aligned}$$

Applying Euclidean algorithm to $1 + x + x^2, x^3 -2x - 2$:

$$\begin{aligned}
x^3 -2x - 2     &= (x^2 + x + 1) (x -1)+ (-2x -1) \\
x^2 + x + 1     &= (-2x -1) (-\frac 1 2 x - \frac 1 4) + (\frac 3 4)
\end{aligned}$$

$\Longrightarrow x^2 + x + 1 = [(x^3 -2x -2) - (1 + x + x^2)(x - 1)](-\frac 1 2 x - \frac 1
4) + \frac 3 4$  
$\Longrightarrow \frac 4 3 (x^2 + x +1) + \frac 4 3(\frac 1 2 x - \frac 1 4)[(x^3
-2x -2) - (x-1)(x^2 + x +1)] = 1$  
$\Longrightarrow \frac 4 3 (x^2 + x +1) + \frac 4 3(\frac 1 2 x - \frac 1 4)[- (x-1)(x^2 + x +1)] \equiv 1 \text{ mod }p(x)$  
$\Longrightarrow \frac 4 3 (x^2 + x +1)[ 1 + (\frac 1 2 x - \frac 1 4)(-x+1)] \equiv 1 \text{ mod }p(x)$  

$\Longrightarrow \dfrac 1 {x^2 + x +1} \equiv \frac 4 3 [ 1 + (\frac 1 2 x - \frac 1
4)(-x+1)]$  
$\Longrightarrow \dfrac {1 + x} {x^2 + x +1} \equiv \frac 4 3 (1 + x) [ 1 + (\frac 1 2 x - \frac 1
4)(-x+1)]$  
$\Longrightarrow \dfrac {1 + x} {x^2 + x +1} \equiv \frac 1 4 ( - 2x^3 + x^2 + 3x + 3
)$  
$\Longrightarrow \dfrac {1 + x} {x^2 + x +1} \equiv \frac 1 4 ( x^2 - x -1)$  

## 13.1 #3

$p(x) = x^3 + x + 1$ is a degree 3 polynomial, so must factor into a degree 1
and degree 2 polynomial. But the only possible roots in $\mathbb F_2$ are $-1,
1$. But these aren't roots, so $p(x)$ is irreducible.

In $\mathbb F_2[x]/(p(x)) \cong \mathbb F_2(\theta)$,
$$\begin{aligned}
x^3 &\equiv x^3 - x^3 -x -1 &&\equiv x +1 \\
x^4 &&&\equiv x^2 + x \\
x^5 &\equiv x^3 + x^2 &&\equiv x^2 + x + 1 \\
x^6 &\equiv x ^3 + x^2 + x &&\equiv x^2 + 1 \\
x^7 &\equiv x^3 + x &&\equiv 1 \\
\end{aligned}$$

So the powers of $\theta$ are $\{\theta, \theta^2, \theta + 1, \theta^2 +
\theta, \theta^2 + \theta + 1, \theta^2 + 1, 1\}$

## 13.2 #4

Determine the degree over $\mathbb Q$ of $2 - \sqrt 3$ and $1 + \sqrt[3] 2 +
\sqrt[3]4$

Since $2 \in \mathbb Q, \mathbb Q( 1 + \sqrt 3) = \mathbb(\sqrt 3)$, $\sqrt 3$
has a minimal polynomial $x^2 - 3$ so degree of $2 + \sqrt 3$ is 2.

Similarly, $\mathbb Q(1 + \sqrt[3] 2 + \sqrt[3] 4) = \mathbb Q(\sqrt[3] 2)$
who's minimal polynomial is $x^3 - 2$ irreducible since roots must divide 2.

## 13.2 #7

$\mathbb Q(\sqrt 2 +\sqrt 3) \subseteq Q(\sqrt 2, \sqrt 3)$ is obvious.

Let $R = Q(\sqrt 2 +\sqrt 3)$
$$\begin{aligned}
\sqrt 2 + \sqrt 3 \in R &\Longrightarrow (\sqrt 2 + \sqrt 3)^2 = 5 + 2 \sqrt 6
\in R \\
&\Longrightarrow \sqrt 6 \in R \\
&\Longrightarrow (\sqrt 2 + \sqrt 3)(\sqrt 6) = 2 \sqrt 3 + 3 \sqrt 2 \in R \\
&\Longrightarrow \sqrt 2, \sqrt 3 \in R
\end{aligned}$$

$Q(\sqrt 2, \sqrt 3) = \mathbb Q(\sqrt 2 +\sqrt 3)$

We know that the degree of $\mathbb Q(\sqrt 2) = 2$ and $\mathbb Q(\sqrt 2) = 2$
since their minimal polynomials are $x^2 - 2$ and $x^2 - 3$ respectively.
By example 2 on page 526, we know that $[\mathbb Q(\sqrt 2, \sqrt 3)] = 4$

$x^4 - 10x^2 + 1$ is a 4th degree polynomial with roots $\sqrt 2 + \sqrt 3, -
\sqrt 2 - \sqrt 3, \sqrt 2 - \sqrt 3, - \sqrt 2 + \sqrt 3$ and so is
irreducible.


