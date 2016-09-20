## Conditional probability

Definition: If $P(F) > 0$, then

$$P(E|F) = \frac {P(EF)} { P(F) }$$

Also,
* $P(F|E) = \frac {P(E|F) \cdot P(F) } {P(E)}$
* $P(F^c | E) + P(F | E) = 1$
* $P(A) = P(A|X)P(X) + P(A|X^c)P(X^c)$


**Multiplication rule:**

$$ P(E_1 E_2 \cdots E_n) = P(E_1)P(E_2|E_1) P(E_3 | E_1 E_2) P(E_4 | E_1 E_2
E_3) \cdots P(E_n | E_1 E_2 \cdots E_{n-1})
$$

---

### Example 2a

> A student is taking a one-hour-time-limit makeup examination. Suppose the
> probability that the student will finish the exam in less than x hours is x/2,
> for all $0 \le x \le 1$. Then, given that the student is still working
> after .75 hour, what is the conditional probability that the full hour is used?

Given:   
$P(F_x) = \frac x 2$

$P(F_1^c | F_{0.75}^c) = ?$

$P(F_x^c) = 1 - \frac x 2$  
$P(F_1^c) = \frac 1 2$  
$P(F_{.75}^c) = 1 - \frac {3/4} 2 = \frac 3 8 = \frac 5 8$

$P(F_1^c \cup F_{0.75}^c) = P(F_1^c)$
$P(F_1^c | F_{0.75}^c) = P(F_1^c \cup F_{0.75}^c) / P(F_{.75}^c) $
$ \quad \quad = \frac {P(F_1^c)} {P(F_{.75}^c} = \frac { 1/2} { 5/8 } = \frac 8
{ 10 }$

{{{{
