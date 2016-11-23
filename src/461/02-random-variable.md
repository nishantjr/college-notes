## Discrete Random variables

> "In this sense, it is a procedure for assigning a number to an outcome, and
paradoxically this procedure itself is neither random nor variable."

Bournelli Random Variable

: Single trial of probability $p$

Binomial(n, p)

: $k$ successes in $n$ independent trials

  $P(X = k) = \binom n k p^k (1-p)^{k-1}$

Poisson

: Approximation of the Binomial

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

## Continuous Random Variables

Uniform Random Variable$(\alpha, \beta)$

: All events between $\alpha$ and $\beta$ are equally likely

  $$\begin{aligned}

  \text{pdf} = f(x) &= \begin{cases}
   \frac 1 { \beta - \alpha  }   &a < x < b \\
   0                             &\text{otherwise}
  \end{cases} \\ \\
  \text{cdf} = F(x) &= \begin{cases}
   0                     & x < a\\
   \frac{x-a}{b-a}       & a \le x <b \\
   1                     & b \le x
  \end{cases} \\\\

  E[X] &= \frac 1 2 (a + b) \\\\
  \text{Var}[X] &= \frac 1 {12} (b - a)^2 \\
  \end{aligned}$$

Standard Normal

: XXX

   $$\begin{aligned}
   \text{PDF} = f(x) &= \frac 1 {\sqrt{2\pi}} e^{-\tfrac{x^2}{\sqrt 2}} \\
   \text{CDF} = F(x) &= \Phi(x) &\quad\ldots&\text{ check lookup table} \\
                E[X] &= 0 \\
              Var[X] &= 1
   \end{aligned}$$


Normal $(\mu, \sigma^2)$

:  eg. Physical quantities that are expected to be the sum of many independent
   processes (such as measurement errors) often have distributions that are
   nearly normal

   $$\begin{aligned}
        F(x) &= P\{X \le x\}
              = P\{\frac {X-\mu}{\sigma} \le \frac{a - \mu}{\sigma}\}
              = \Phi(\frac{a-\mu}{\sigma}) \\
        E[X] &= \mu \\
      Var[X] &= \sigma ^2


   \end{aligned}$$

Exponential($\lambda$)
: $$\begin{aligned}
   \text{PDF} = f(x) &= \begin{cases}
                           \lambda e^{-\lambda x} & if x \ge -\\
                           0                      & otherwise
                         \end{cases} \\
   \text{CDF} = F(x) &= 1 - e^{-\lambda a} & a\ge 0 \\
                E[X] &= \frac 1 \lambda \\ \\
              Var[X] &= \frac 1 {\lambda^2}
   \end{aligned}$$

## Sums of random variables

Expectation is linear: $E[aX + b] = aE[X] + b$

Prop: 9.2 $E[sum X_i] = \sum E[X_i]$

Cor: 9.2: In general, if $X_1, X_2 \cdots X_n$ are random variables,
$$ E[a_1 X_1 + \cdots a_n X_n + c ] = \sum E[X_i] $$
