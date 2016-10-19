## Random variables

> "In this sense, it is a procedure for assigning a number to an outcome, and
paradoxically this procedure itself is neither random nor variable."

Bournelli Random Variable

: XXX

Binomial(n, p)

: $k$ successes in $n$ independent trials

  $P(X = k) \binom n k p^k (1-p)^{k-1}$

Poisson

: XXX

Geometric(p)

: number of trials until first success

  ? (special case of Negative Binomial)
  
  $$\begin{aligned}
  P\{X = n \} &= (1 - p)^{n-1}p \\
  E[X]        &= \frac 1 p      \\ 
  Var[X]      &= \frac{1 - p}{p^2}
  \end{aligned}$$

Negative Binomial(r, p)

: Total of $r$ successes accumulated

  $$\begin{aligned}
  P\{X = n \} &= \binom{n-1}{r-1} p^r(1 -p)^{n-r}       \\
  E[X]        &= \frac r p                              \\ 
  Var[X]      &= \frac{r(1 - p)}{p^2}
  \end{aligned}$$

Hyper Geometric(m, N, n)

: $n$ samples picked without replacement from  a set of $N$  items, of which $m$
  are 

  $$\begin{aligned}
  P\{X=i\} &= \frac{\dbinom m i \dbinom {n - m} { n -i }}{ \dbinom N n } \\
  E[X] &= \frac { nm } N  \\
  \end{aligned}$$
  For $N \to \infty$, $\frac m N$ is nearly constant, this approaches binomial.

Read derivation of $E[X]$ and $\text{Var}[X]$ for each.

## Sums of random variables

Expectation is linear: $E[aX + b] = aE[X] + b$

Prop: 9.2 $E[sum X_i] = \sum E[X_i]$

Cor: 9.2: In general, if $X_1, X_2 \cdots X_n$ are random variables,
$$ E[a_1 X_1 + \cdots a_n X_n + c ] = \sum E[X_i] $$



