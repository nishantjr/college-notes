## 4.2 (a)

$f: [0, \frac 1 3] \cap K_\infty \to [0, 1] \cap K_\infty, f(x) = 3x$ is a one-to-one map.


## 4.2 (b)

Similarly $f: [\frac {19} {27}, \frac {20} {27}] \cap K_\infty \to [0, 1] \cap
K_\infty, f(x) = 27(x - \frac {19}{27})$ is a one-to-one map.

## 4.6 (a)

Suppose $x \in [0, 1]$ is a limit point and $x \notin K$. So $x$ must be in one
of the intervals that were removed. Let $(x-a, x+b), a, b \in [0, 1]$ be that
interval. Then $N_{\min(a, b)}(x)$ is a neighbourhood of $x$ that doesn't contain
any point in $K$. This is a contradiction (since $x$ is a limit point) and so
all limit points must be in $K$ and $K$ closed.

## 4.6 (b)

Let $x \in K$

Let $K_n$ be the $k$th iteration of removing the middle third of the interval $[0, 1]$.
Since $K = \lim_{n\to\infty}\cap K_n$, $x \in K_n, \forall n$. So $x$ must be in
one of the $n$ intervals of $K_n$. Let that interval be $[l_n, r_n]S$ be the left and right end point of that interval. 

Since each interval has length $\frac 1 3^n$, $l_n \ne r_n$ and $x - l_n < \frac 1 3 ^ n$.
So $l_n$ (and $r_n$) converge to $x$.

For all $\epsilon > 0, \exists n : \frac 1 3 ^n  < \frac \epsilon 2$, and so either
$l_n$  or $r_n$ must be in $N_\epsilon(x)$ and $K$ is perfect.

## 4.8

At each each iteration of removal, there are $2^n -1$ intervals removed. 
Each of these intervals covers all the endpoints. 

$$\text{boxdim}(K) = \lim_{n\to\infty} \frac {\ln N(\frac 1 n)} {\ln 1/\frac 1 3^n } = 
\lim_{n\to\infty} \frac { \ln (2^n - 1)} {\ln 3^n} = \frac {\ln 2} {\ln 3} 
$$

## 4.10

Let $N_A(n)$ blocks of size $\frac 1n$ cover $A$ and 
let $N_B(n)$ blocks of size $\frac 1n$ cover $B$. Obviously, at most $N_A(n)N_B(n)$
will be needed to cover $A\times B$

Suppose the less the $N_A(n)N_B(n)$ blocks are needed to cover 
$A\times B$ then for some restriction of $A \times B$ to some value of $B$, $A$
can be covered by less than $N_A(n)$ blocks. This is a contradiction. So exactly 
$N_A(n)N_B(n)$ blocks are needed.

$$\begin{aligned}
\text{boxdim}(A) + \text{boxdim}(B)
    &= \lim_{n\to\infty} \frac {\ln N_A(n)} {\ln s_n }
      +\lim_{n\to\infty} \frac {\ln N_B(n)} {\ln s_n }   \\
    &= \lim_{n\to\infty} \frac {\ln N_A(n)} {\ln s_n }  
      +\frac {\ln N_B(n)} {\ln s_n } \\
    &= \lim_{n\to\infty} \frac {\ln N_A(n)
      +\ln N_B(n)} {\ln s_n }  \\
    &= \lim_{n\to\infty} \frac {\ln N_A(n) N_B(n)} {\ln s_n }  \\
    &= \text{boxdim} (A\times B)
\end{aligned}$$


## 4.11

(a) True, since

$$\begin{aligned}
    \lim_{n\to\infty} \frac {\ln  N(A + B)} {\ln a_n}
&<  \lim_{n\to\infty} \frac {\ln  2 \max \{ N(A), N(B) \}} {\ln a_n} \\
&<  \lim_{n\to\infty} \frac {\ln  \max \{ N(A), N(B) \} + \ln 2} {\ln a_n}
=   \lim_{n\to\infty} \frac {\ln  \max \{ N(A), N(B) \}} {\ln a_n}
\end{aligned}$$

(b) True.

It's true for any $n$ by induction. So it must be true for the limit where $n \to \infty$.
The limit exists since the union is bounded.

## 4.13

a) (p = 1)

Consider a block size of $\frac 1 {n}$ for large $n$.
Terms $0$ through $\frac 1 n$ are covered by a single block.
The distance between the two closest remaining points is given by:

$$\begin{aligned}
   \frac 1 {n-2} - \frac 1 {n-1}
&= \frac { n-1 - n+2  } { (n-1)(n-2) } \\
&= \frac {1} { (n-1)(n-2) } \\
&= \frac {1} { n^2 -3n + 2} 
&< \frac {1} {n} \quad \text{ for large } n
\end{aligned}$$

So the minimum number of blocks needed to cover the set is $n$.

So $\text{boxdim} (S) = \lim_{n\to\infty} \frac {\ln(1 + n) } {\ln n }$
