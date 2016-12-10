* Buy an eraser
* ~~When working with at least 1 type problems, use complement N = 0~~
* Poisson
* Normal

## Discrete Random variables

Bournelli Random Variable

: Single trial of probability $p$

Binomial(n, p)

: \# of successes in $n$ independent trials

  $$\begin{aligned}
  P\{X = k\} &= \binom n k p^k (1-p)^{n-k} \\
  E[X]        &= np             \\ 
  Var[X]      &= np(1 - p) \\
  MGF &= (pe^t + 1 - p)^n
  \end{aligned}$$

  * Expectation derived as sum on indicators

Poisson

: Approximation of the Binomial

  $$\begin{aligned}
  P\{X = k\} &= e^{-\lambda}\frac{\lambda^x}{x!} \\
  E[X] &= \lambda \\
  Var(x) &= \lambda \\
  MGF &= \exp\{\lambda(e^t - 1\}
  \end{aligned}$$

Geometric(p)

: \# of trials until first success

  $$\begin{aligned}
  P\{X = n \} &= (1 - p)^{n-1}p \\
  E[X]        &= \frac 1 p      \\ 
  Var[X]      &= \frac{1 - p}{p^2}      &\text{derivation}
  \end{aligned}$$

Negative Binomial(r, p)

: \# of trials needed to accumulate $r$ successes.

  $$\begin{aligned}
  P\{X = n \} &= \binom{n-1}{r-1} p^r(1 -p)^{n-r}       \\
  E[X]        &= \frac r p                           &\text{derivation}\\ 
  Var[X]      &= \frac{r(1 - p)}{p^2}                &\text{derivation}
  \end{aligned}$$

  * Expectation derived as sum on Geometric

Hyper Geometric(m, N, n)

: $n$ samples picked without replacement from  a set of $N$  items, of which $m$
  are marked

  $$\begin{aligned}
  P\{X=i\} &= \frac{\dbinom m i \dbinom {N - m} {n - i }}{ \dbinom N n } \\
  E[X] &= \frac { nm } N  &\text{derivation}\\
  Var(X) &= \frac {N -n} {N -1} np(1-p) &\text{derivation}
  \end{aligned}$$
  For $N \to \infty$, $\frac m N$ is nearly constant, this approaches binomial.

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
  \text{Var}[X] &= \frac 1 {12} (b - a)^2  &\text{derivation}\\ 
  \end{aligned}$$

Standard Normal

: $$\begin{aligned}
   \text{PDF} = f(x) &= \frac 1 {\sqrt{2\pi}} e^{-\tfrac{x^2}{2}} \\
   \text{CDF} = F(x) &= \Phi(x) &\quad\ldots&\text{ check lookup table} \\
                E[X] &= 0 \\
              Var[X] &= 1
   \end{aligned}$$


Normal $(\mu, \sigma^2)$

:  eg. Physical quantities that are expected to be the sum of many independent
   processes (such as measurement errors) often have distributions that are
   nearly normal

   $$\begin{aligned}
    \text{PDF} = f(x) &= \frac 1 {\sqrt{2\pi}\sigma} e^{-(x-\mu)^2 / 2 \sigma^2} \\
    \text{CDF} = F(x) &= P\{X \le x\}
              = P\{\frac {X-\mu}{\sigma} \le \frac{a - \mu}{\sigma}\}
              = \Phi(\frac{a-\mu}{\sigma}) \\
        E[X] &= \mu \\
      Var[X] &= \sigma ^2
   \end{aligned}$$

Exponential($\lambda$)
: Waiting time until an event (e.g. earthquakes) occur

   $$\begin{aligned}
   \text{PDF} = f(x) &= \begin{cases}
                           \lambda e^{-\lambda x} & if x \ge 0\\
                           0                      & otherwise
                         \end{cases} \\
   \text{CDF} = F(x) &= 1 - e^{-\lambda a} & a\ge 0 \\
                E[X] &= \frac 1 \lambda \\ \\
              Var[X] &= \frac 1 {\lambda^2}
   \end{aligned}$$

---

Moment Generating Function
: $M(t) = E[e^{tX}]$  
  Discrete: $\sum_{\forall x} e^{tx}p(x)$  
  Continuous: $\int_{-\infty}^{\infty} e^{tx}p(x)$
  
  First moment: $M'(0)$  
  Second moment: $M''(0)$



## Sums of random variables

Expectation is linear: $E[aX + b] = aE[X] + b$

Prop: 9.2 $E[\sum X_i] = \sum E[X_i]$

Cor: 9.2: In general, if $X_1, X_2 \cdots X_n$ are random variables,
$$ E[a_1 X_1 + \cdots a_n X_n + c ] = \sum E[X_i] $$


Covariance
: $\text{Cov}(X, Y) = E[X - E[X]] E[Y - E[Y]]$
 
  Symmetric: $\text{Cov}(X, Y) = \text{Cov}(Y, X)$  
  Linear in each variable: $\text{Cov}(aX, Y) = a\text{Cov}(Y, X)$  
  $\text{Cov}(X, X) = Var(X)$  
  $\text{Cov}(\sum X_i, \sum Y_j) = \sum \sum (X_i, Y_j)$

Follows that $\text{Var}(\sum X) = \text{Cov}(\sum X_i, \sum X_i) = \sum
\text{Var}(X_i) + 2 \sum\sum_{i <j}\text{Cov}(X_i, X_j)$.

Correlation
: $\rho(X, Y) = \dfrac { \text{Cov}(X, Y) }{\sqrt{\text{Var}(X)\text{Var}(Y)}}$

Markov's Inequality
: If X is a non-negative RV: $P\{ X \ge a \} \le \dfrac {E[X]} a$

Chebyshev's Inequality
: $P\{ |X - \mu| \ge k \} \le \dfrac{\sigma^2}{k^2}$
