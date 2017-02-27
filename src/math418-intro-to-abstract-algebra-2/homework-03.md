## 9.1 #7

Let $R$ be a commutative ring with $1$. Let $R[x, y]$ be a polynomial ring.

Suppose $(x, y)$ is a principal ideal. Then $(x, y) = (a)$ for $a \in R[x,
y]$

$a|x, a|y \Longrightarrow x = aq, y = ar$. But $x$ and $y$ both have degree
$1$. So $a$ or $q$ must be constant, and $a$ or $r$ must be constant.

If $a$ is constant, $q$ and $r$ must be of degree $1$. That is equal to $cx$
or $cy$ for some constant $c$. Assume without loss of generality, $a(cx) = x
\Longrightarrow ac = 1 \in \in (x, y)$ Since by proposition 9.1 on page 295,
$x$ and $y$ are not units of $R[x,y]$, $1 \notin (x, y)$. This is a
contradiction. So $a$ cannot be a constant.

## 9.2 #5 Ideals of $F[x]/(p(x))$ where $F$ is a field

By the lattice isomorphism theorem, the ideals of $F[x]/(p(x))$ correspond to
the ideals of $F[x]$ containing $(p(x))$. For an ideal $(q(x))$ of $F[x]$ to
contain $(p(x))$, $q(x)$ must divide $p(x)$ and so $q(x)$ must be a factor of
$p(x)$.

So if $p(x) = p_1(x)p_2(x) \cdots p_n(x)$ the ideals of $F[x]/(p(x))$ correspond
to $(p_1(x)), (p_2(x)), \cdots, (p_1(x)p_2(x)), \ldots$
$(p_1(x) p_n(x)), \ldots,$ $(p_1(x)p_2(x)\cdots p_n(x))$.

They are $(p_1(x))/(p(x)), (p_2(x))/(p(x)), \cdots, (p_1(x)p_2(x))/(p(x)), \ldots$
$(p_1(x) p_n(x))/(p(x)), \ldots,$ $(p_1(x)p_2(x)\cdots p_n(x))/(p(x))$.

## 9.2 #6a $\mathbb Z[x] / (2)$
$(2)$ is the set of polynomial with even coefficients. i.e $\mathbb 2Z [x]$
So $\mathbb Z[x]/(2) \cong \mathbb Z[x]/2 \mathbb Z[x] \cong (\mathbb Z / 2 \mathbb
Z)[x]$. $\mathbb Z / 2 \mathbb Z$ is a field since $2$ is prime, and so $\mathbb
Z[x]/(2)$ is a euclidean domain.


## 9.2 #6b $\mathbb Z[x]/(x)$
$(x)$ are polynomials with a constant term $= 0$

$$\begin{aligned}
0 &\mapsto \{0, x, x^2 \cdots \} &&= (x) \\
1 &\mapsto \{1, 1+x, \cdots \} \\
2 &\mapsto \{2, 2+x, \cdots \} \\
n &\mapsto \{n, n+x, \cdots \} \\
\\
x &\mapsto \{x, 2x, 3x, x^2\} &&= (x) \\
1 + x &\mapsto \{1 + x, 1+ 2x, 1+ 3x, \} &&= 1 + (x)\\
\end{aligned}$$

Each coset corresponds to the sets of polynomials containing a particular constant
term. Let $p(x)$ and $q(x)$ be two polynomials in $(x)$. 
Then $m + p(x) \in m + (x)$ and $n + q(x) \in n+(x)$. Since $(m+p(x))(n+q(x)) =
mn + mp(x) +nq(x) + pq(x) \in mn + (x)$, and $(m + p(x)) + (n
+q(x)) = (m+n) +(p(x) + q(x)) \in m+n + (x)$ we can see that
$\mathbb Z[x]/(x) \cong \mathbb Z$.

## 9.2 #6c $\mathbb Z[x]/(x^2)$
$(x)$ are polynomials with constant term and term of degree 1 $= 0$

So similar to the previous case, each coset has elements with the same degree 0
and 1 terms. Let $m_0 + m_1 x + m(x^2) \in m_0 + m_1 x + (x^2)$ and $n_0 + m_1 x + n(x^2) \in n_0 + n_1 x + (x^2)$
then their product is $m_0n_0 + m_0n_1x + m_1 n_0 x + \text{terms in } (x^2)$.

This is not a UFD, since $(1 + x)^2 = (1 + 2x)$ in $\mathbb Z[x]/(x^2)$

## 9.3 #3.

Subring: Let $a(x) = \sum_{i\ge 0, i\le n} a_i x^i , b(x) = \sum_{i\ge 0, i\le
m} b_i x^i , \in F[x]$. Then $p(x)q(x) = \sum_{i \le n} \sum_{j \le m} a_i b_j
x^{i+j}$. But $a_1 = b_1 = 0$ so $a_1 b_0 x = 0$ and $a_0 b_1 x = 0$. So
multiplication is closed. Similarily, $p(x) - q(x) = \sum_{i \le \text{max}\{m,
n\}} (a_i - b_i) x^i$ and $a_1 - b_1 = 0 \Longrightarrow$ subtraction is closed.
So by the subring test, $R$ is a subring.

$x^2, x^3$ are not units since all units of $R[x]$ are in $R$. Suppose $x^2 =
p(x)q(x)$ is reducible then $\text{deg}(x^2) = 2 = \text{deg}(p(x)) +
\text{deg}(q(x))$. So $p(x), q(x)$ must have degrees $0, 1, 2$. They cannot have
degree $1$ since that would imply that $p, q \notin R$. Suppose (WLOG) $p$ has
degree $0$. i.e $p$ is a constant. Then $q$ must have degree $2$. Then $x^2 =
c(a + bx^2) \Longrightarrow x^2(1 -cb) = ca$. Assume $a \ne 0$ (since we want $a + bx^2 \ne x^2$) But $ca$ has degree 0 and $x^2(1 -
cb)$ has degree 2. This is a contradiction.

Similarly for $x^3$, $p(x), q(x)$ must have degree 0, 1, 2 or 3. But if the
degree is 2, the degree of the other factors must be 1, and that is not in $R$.
So the degree must be 0 or 3.
Suppose (WLOG) $p$ has
degree $0$. i.e $p$ is a constant. Then $q$ must have degree $3$. Then $x^3 =
p(a + bx^2 + cx^3) \Longrightarrow x^3(1 - pc) = p(a + bx^2)$. Assume $a +bx^2  \ne 0$. But then the left hand side has degree 3
and the right hand side has degree 1 or 2. This is a contradiction.
So $x^2, x^3$ are irreducible and $x^6$ has two different factorizations.

