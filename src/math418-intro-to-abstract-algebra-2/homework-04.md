## 9.3 #2

Let $f(x), g(x) \in \mathbb Q[x]$. $f(x)g(x) \in  \mathbb Z[x]$.  

Show that $\forall i, j: f_i g_i \in Z$

let $f(x)g(x) = p(x)$

We know that $\mathbb Z$ is a UFD and that $\mathbb Q$ is it's field of
fractions. We also know that $p(x) = f(x)g(x)$. That is, $p(x)$ is reducable in
$\mathbb Q[x]$. By Gauss' lemma, we know that there exists $F, G \in \mathbb Q$
such that $Ff(x), Gg(x) \in \mathbb Z[x]$ and $p(x) = (Ff(x)(Gg(x))$

Let $f_i, g_j$ be coeffients of two terms in $f(x)$ and $g(x)$. Then

XXX

## 9.4 #2

Since $\mathbb Z$ is an ID, we can use Eisenstien's Criterion.

$x^4 - 4x^3$: Eisenstien's Criterion for $p = 2$

$x^6 + 30 x^5 - 15x^3 + 6x - 120$: Eisenstien's Criterion for $p = 3$

$x^4 + 4x^3 + 6x^2 + 2x + 1$. Substituting $x \mapsto x - 1$, we get
$x^4 + 0 +  0 -2x +2$. By Eisenstien's Criterion ($p = 2$) this is irreducible.

$\frac { (x + 2)^p - 2^p}{x}$, $p$ odd.
By binomial expansion, the coefficient for the $k$th term is $\binom {p} {k+1} = \frac {p!}{(k+1)!(p -k -1)!}$.
This is a monomial since $\binom p {p+1} = 0$, and $\binom {p} {p} = 1$. 
For $p - 1 > k > 0$, $k < p$ and $p - k - 1 < p$ and since $p$ is prime, each of
these coefficients are multiples of $p$. The constant term is $\binom p 1 = p$
which is not a multiple of $p^2$. By Eisenstien's Criterion, $p$ is irreducible.

## 9.4 #4

Suppose it is reducible: $p(x) = f(x)g(x)$.

Now when evaluated at $x \le n$, $p(x) = f(x)g(x) = 1$ so $f(x)$ and $g(x)$ must
evaluate to units in $\mathbb Z$. That is, they must both be either $1$ or $-1$.
So $f(x) - g(x)$ has solutions $1, \cdots n$. So $f(x) - g(x)$ must either be
the zero polynomial or have $n$ different roots. But the degree of $f(x) - g(x)$
is less than $n$ since $f(x)$ and $g(x)$ both have degree less than $n$. So
$f(x) = g(x)$. So the degree of $p(x) = f(x)^2$ must be even.

If $n = 2$, $p(x) = x^2 -3x +3$ and by Eisenstien's Criterion is not reducible.

Let the degree of $f(x)$ be $k$. Now $p(x) - 1 = f(x)^2 - 1 = (f(x) - 1)(f(x) +
1)$ has $n = 2k$ roots ($\{1\cdots n\}$). For $k$ of these roots $f(x) - 1 = 0$
and $f(x) = 1$. Each of these must be of degree $1$ and so of the form $

## 9.4 #9

Show that $x^2 - \sqrt 2$ is irreducible in $b$
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

