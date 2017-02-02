## Conditional probability

Definition: If $P(F) > 0$, then

$$P(E|F) = \frac {P(EF)} { P(F) }$$

Also,
* $P(F|E) = \dfrac {P(E|F) \cdot P(F) } {P(E)}$ (Bayes's Forumla)
* $P(F^c | E) + P(F | E) = 1$
* $P(A) = P(A|X)P(X) + P(A|X^c)P(X^c)$


**Multiplication rule:**

$$ P(E_1 E_2 \cdots E_n) = P(E_1)P(E_2|E_1) P(E_3 | E_1 E_2) P(E_4 | E_1 E_2
E_3) \cdots P(E_n | E_1 E_2 \cdots E_{n-1})
$$

## Random variables

Discrete Random variable is a function that takes ...

* Probability mass function $p(a) = P { X = a }$
* Cumulative distribution function $f(n) = P { X \le n }$


  $F(n) = \sum_{m\le n} P(m)$

eg: 2 fair couns: X = # of heads

| n | Outcomes    | $P(n) = P{X=n}$       | $F(n) = P(X \le m)$                |
|---|-------------|:---------------------:|:----------------------------------:|
| 1 | TT          | $\frac 1 4$           | $\frac 1 4$                        |
| 2 | TH, HT      | $\frac 1 2$           | $\frac 3 4$                        |
| 3 | HH          | $\frac 1 4$           | 1                                  |


If X is a discrete random variable, having a probability mass function.
Expected value at x: $E[x] = \sum_x x p(x)$

ex: Flip a bised co9in: $P(H) = h \in (0, 1)$

$p(0) = P(x=0) = 1 - h$  
$p(0) = P(x=0) = 1 - h$  

