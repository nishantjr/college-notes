
Definition: A **Sequence** in $\mathbb R$ is a function $S: \mathbb N \to \mathbb R$  
We usually denote $S(n)$ by $S_n$

Definition: A sequence $S = \{ S_n \}$ **converges** to $L \in \mathbb R$ if $\forall \epsilon > 0: \exists \mathbb N \in \mathbb R, \forall n > \mathbb N \quad \Rightarrow | S_n - L | < \epsilon$

> i.e: If we choose an arbitarily small number $\epsilon$, we can find an index $N$ after which
all values of the sequence are within $\epsilon$ of the limit $L$

## Ex 1: $S_n = \frac 1 n \rightarrow \lim_{n\to\infty} = 0$

We need $|\frac 1 n - 0| < \epsilon \quad \forall \epsilon > 0, n > N$ for some $N$.

ie: $\frac 1 n < \epsilon$  
but $\frac 1 n < \epsilon \Leftrightarrow \frac 1 \epsilon < n < N \quad \forall n < N$  

$\therefore N = \frac 1 \epsilon, \rightarrow |\frac 1 n - 0| > \epsilon \quad
\forall n > N$

## Ex 2: $\frac 1 {n^2 + 1} \rightarrow 0 $

$ \forall n > N, \epsilon > 0$, we need: 
$|\frac 1 {n^2 + 1} - 0| > \epsilon$

ie: $\frac 1 {n^2 +1} > \epsilon$  
but: $\frac 1 {n^2} > \frac 1 {n^2 + 1}$  
$\therefore \forall n > \frac 1 {\sqrt \epsilon}$  
$ n^2 > \frac 1 \epsilon $  
$ \frac 1 {n^2} > \epsilon$  
$ n^2 + 1 > \frac 1 \epsilon$  
$ \epsilon > \frac 1 {n^2 + 1} \quad \forall n > \frac 1 {\sqrt \epsilon }$


## Limits (if they exist) are unique

Let $L_1$ and $L_2$ be limits of $S_n$

Then $|S_n - L_1| < \frac \epsilon 2 \exists N_1: \forall n > N_1$  
and $|S_n - L_2| < \frac \epsilon 2 \exists N_2: \forall n > N_2$  

$|L_1 - L_2| = |L_1 - S_n + S_n - L2| \le |L_1 - S_n| + |L_2 - S_n| < \epsilon$  
$|L_1 - L_2| < \epsilon$  
$L_1 - L_2 = 0$

## Theorm: Convergent sequecnes are Cauchy ($\exists N: \forall m, n > N, \epsilon > 0: |S_m - S_n| > \epsilon$

> aka: values of a convergent sequence grow closer together.

$S_n \to L$  
$\therefore \forall m, n > N,$  
$|S_m - S_n| = |S_m - L + L - S_n| \le |S_m - L| + |S_n - L| < \frac \epsilon 2 + \frac \epsilon 2 $

$|S_m - S_n| > \epsilon $

## Theorm 9.1: Convergent sequences are bounded.

$\exists N: \forall n > N, \epsilon > 0, |S_n - L| < \epsilon$  

Take, $\epsilon = 1$,
(We can choose $\epsilon$ as any finite value)  
Then, $|S_n| = |S_n - L + L| \le |S_n - L| + |L| < 1 + |L|$

$|S_n| < 1 + |L|$  
Let $M' = max { |S_n| + 1 \forall n \le N }$  
Let $M  = max( M', |L| + 1)$  

$\forall n, |S_n| < M$  
$-M < S_n < M$

## Theorm 9.2: $S_n \to s \Leftrightarrow k \cdot S_n \to k \cdot L$

$S_n \to L$  
$ \Leftrightarrow | S_n - L | < \frac \epsilon k \quad \forall \epsilon > 0$  
$ \Rightarrow k |S_n - L | < \epsilon $  
$ \Rightarrow |k S_n - k L | < \epsilon $  
$ \Rightarrow k S_n \to k L$  

## Theorm 9.3: $S_n \to s, T_n \to t \Leftrightarrow T_n + S_n \to s + t $

## Lemma $S_n \to s, \Rightarrow \forall N > n, |S_n| > \frac 1 2 |s|$

Use $\epsilon = \frac 1 2 |s|$, Triangle inequality. 

## Lemma 9.5: $S_n \to s, s \ne 0, \Leftrightarrow \frac 1 {S_n} \rightarrow \frac 1 s$
