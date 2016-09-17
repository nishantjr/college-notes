## Peano axioms for $\mathbb N$

1. $1 \in \mathbb N  $
2. if $n \in \mathbb N$ it's successor $n_1 \in \mathbb N$
3. $1$ is not a successor of any $\mathbb N$
   $\nexists n \in \mathbb n: n + 1 = 1$
4. If $n+1 = m+ 1$ them $n  = m$
5. If $S \subset \mathbb N, 1 \in S, and n \in S \Rightarrow n + 1 \in S$ then  
   $S = \mathbb N$

   This axiom 5 **is** mathematical induction.

   ### Why does $n \equiv $ induction?

   Let $S  := \{ n \in \mathbb N | P_n $is true$ \}$  
   $P_n \Rightarrow P_{n+1} \quad \Longleftrightarrow \quad n \in S \Rightarrow n+1 \in S$  
   By axiom, $S = \mathbb N \quad \Rightarrow P_n $ is true $ \forall n \in \mathbb N$


We can define $+$ over $\mathbb N$ using these axioms (not done here).

##  Properties of $+ : \mathbb Z \times \mathbb Z \to \mathbb Z$

* associative
* commutative
* identity
* inverse

##  Properties of $\cdot : \mathbb Z \times \mathbb Z \to \mathbb Z$

## The equation $x^2$ has no solutions in $\mathbb Q$

Suppose $\frac p q \in \mathbb Q$ solves $x_2 = 2$ where $p, q \in \mathbb Z$
assuming, $p, q$ are co-prime.

Then, $(\frac p q)^2 = 2 \quad \Rightarrow \quad p^2 = 2q^2$  
$ \therefore 2 | p^2 = p \cdot p \quad \Rightarrow \quad 2|p $or$ 2|p$  
Let $ p = 2n$ for some $n \in \mathbb Z$  
$ \therefore (2n)^2 =  2q^2 $  
$ \therefore 2n^2 = q ^ 2$  
$ \therefore 2 | q ^ 2 \Rightarrow 2|q$  

But, this is a contradiction: $p, q$ are co-prime!

## Def: *Ordered Field*

A field $(\mathbb F, \le)$ is ordered iff $\le$ is a total order, and $\le$ is
compatable with the field ops:

* $a \le b \quad\Longrightarrow\quad a + c \le b + c \quad\forall a, b, c \in \mathbb F$
* $a \le b$ and $ 0 \le v \quad \Longrightarrow \quad  a \cdot c \le b \cdot c$

$ \mathbb Q, \mathbb R$ are ordered fields (with $\le$), but $\mathbb C$ is not:  
We cannot define $\le$ to be compatable with $\mathbb C$. How can you compare $i$ with $1$?

## Defn: Absolute value

For ordered field, $(\mathbb F, \le)$, $\forall a \in \mathbb F$,

$ | A | = \{ a \quad if 0 \le a $  
$ \quad \quad \{ -a \quad if a \le 0 $

## Theorm 3.5: Properties of $|x|$

1. $ 0 \le |a| \quad\forall a \in \mathbb F$
1. $ |a \cdot b | = |a| \cdot |b| \quad\forall a, b$
1. $ |a + b | \le |a| + |b| $

**XXX: Look at proofs from text.**

## def: $dist(a, b) =  |a - b|$

## Cor: 3.6: Triangle inequality:

$dist(a, c) \le dist(a, b) + dist(b, c)
i.e.: $|a-c| \le |a - b| + |b- c|
(proove using Thm 3.5.1)


## Definition: Upperbound, least upper bound

Let $(E, \le)$ be a linearly ordered set. $S \subseteq E$.

* $\beta \in E$ is an **upper bound** of $S$ if:
  $ \quad\forall x \in S, \quad x \le \beta $
* $\beta_0$ is a **least upper bound** of $S$ if:  
  - $\beta_0$ is an upperbound$
  - $\forall \beta $of$ S, \beta_0 \le \beta$

  Notation: $\sup S \equiv$ Least Upper Bound of $S$

## Completeness axiom for $\mathbb R$

> Any non-empty subset $S$ of $\mathbb R$ which is bounded above
has $\sup S \in \mathbb R $

**This is the only thing that distinguishes $\mathbb R$ from $\mathbb Q$ (rationals)**

## Lemma: $\mathbb N$ is not bounded above (in $\mathbb R$)

> XXX: Is there a name for $\mathbb R \cap \{ -\infty, \infty \}$

Suppose, $\mathbb N$ is bounded above.

Then, by completeness axiom, $\exists \beta = \sup \mathbb N$

Since $\beta$ is the least upper bound, $\beta -1$ is not an upper bound of
$\mathbb N$.  
$\therefore \exists n \in \mathbb N: \beta - 1 < n$  
$\therefore \beta < n + 1$
But, by definition of $+$ over $\mathbb N$, $n+1 \in \mathbb N$.
So, this is a contradiction.

## Corollary 4.5: Any non-empty subset of $\mathbb R$ which is bounded below, has an $\inf$ in $\mathbb R$


Let $S \subseteq \mathbb R$ have a lower bound $S$  
$ \therefore B \le x \quad\forall x \in S$  
$ \therefore -x \le -B $  
$ \therefore B$ is an upper bound for the set $ -S = \{ x: -x \in S }$  


Now, let $r = \sup -S$, by the previous argument, $-r$ is a lowerbound of $S$.
Also, $\forall \beta = \inf S \quad\Longrightarrow\quad -\beta = \sup -S$  
$ \therefore r < -\beta \quad\Longrightarrow\quad -r > \beta$  
$ \therefore -r$ is the greatest lower bound of $S$,... QED


## Archimedian property of $\mathbb R$

> aka: There are no "infinitesimals" or "infinities" in $\mathbb R$

$ \forall a, b \in \mathbb R, a, b > 0$  
$ \exists n \in \mathbb N : na > b$

**Proof:**

Consider $ c = \frac b a$, 
Since $\mathbb N$ is not bounded above, $c$ is not
an upper bound.

$ \therefore \exists n :\frac b a < n $  
$ \therefore \quad b = (\frac b a) \cdot a < n \cdot a$  
$ \therefore n \cdot a > b $


## Lemma: Suppose, $x, r \in \mathbb R$ and $1 < x - y$. Then $\exists m \in \mathbb Z$ s.t: $y < m < x$

**Proof**

Consider $ S = \{ k \in \mathbb Z | k \le y \}$.  
$S \ne \phi$, since $\mathbb N$ and $\mathbb Z$ are not bounded below in $\mathbb R$

$S$ is bounded above, so let, $\beta = \sup S$  
$\beta - 1$ is not an upper bound of $S$  
$ \therefore \exists l > \beta - 1: l \in S$  
$ \therefore l + 1 > \beta$  
$ \therefore l + 1 > y$ $\quad ($since$ l + 1$ is bigger than the upper bound of $S, l+1 \notin S, n+1 \nleq y)$

Now, $x - y > 1$
$ \therefore x = x - y + y > 1 + y \ge 1 + l$


$ x > 1 + l > y$

## Theorm: $\mathbb Q$ is dense in $\mathbb R$: $\forall x, y \in \mathbb R: x < y: \exists r \in Q : x < r < y$ 

> This implies, there are no two "neighbouring" irrational numbers.

$Let, x > y \in \mathbb R$.

$\therefore  x - y  > 0 $  

By archemidean principle,  $\exists n \in N:$  
$1 < n(b - a)$  

By Previous lemma: $\exists m \in \mathbb Q: \quad na < m < nb$  
$ \therefore a < \frac m n < b$, and obviously, $\frac m n \in \mathbb Q$
