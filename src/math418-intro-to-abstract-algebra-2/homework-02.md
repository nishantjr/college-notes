## Lemma: $u \in R$ is a unit $\Longleftrightarrow$ $N(a) = 1$

Assume $u$ has an inverse, then $u u ^{-1} = 1 \Longrightarrow N(u)N(u ^{-1}) = 1
\Longrightarrow N(u) = N(u ^{-1}) = 1$ since norms are positive numbers.

Assume $N(u) = N(a + b \sqrt{-n}) = a^2 + nb^2 = 1$ then $(a - b \sqrt{-n})(a+b \sqrt{-n}) = a + nb^2 = 1$. So $u$ is a unit.

## 8.2 #5

Let $R = \mathbb Z[\sqrt{-5}]$ with norm $N(a + b \sqrt {-5}) = a^2+5b^2$.

Suppose $I_2 = (2, 1 + \sqrt{-5})$ is principle. Then for some $a, b \in \mathbb
Z, I_2 = (a + b\sqrt{-5})$ and for some $\alpha, \beta \in \mathbb Z[\sqrt{-5}],
2 = \alpha(a +b \sqrt{-5})$ and $1 + \sqrt{-5} = \beta(a + b \sqrt{-5})$.
$N(2) = 4 = N(\alpha)(a^2 + 5b^2)$. Since $(a^2 + 5b^2)$ is a positive integer,
it's value must be either $1, 2$ or $4$. If $1$ then $\alpha = \pm 1$. Then $I_2
= R$ and $1 \in R$. So $1 = 2 \gamma + (1+\sqrt{-5}) \delta \Longrightarrow 1 -
\sqrt{-5} = 2(1 - \sqrt{-5})\gamma + 6$ which implies that $1 + \sqrt{-5}$ is a
multiple of 2. Contradiction.  The norm can't be $2$ -- $a^2 + 5b^2 = 2$ has no
solutions in $\mathbb N \cup \{0\}$.  If the norm is $4$ then $a + b \sqrt{-5}=
\pm 2$. But since $\pm 2$ are not units and $1 + \sqrt{-5}$ is not divisible by
$2$, this is not possible.

Suppose $I_3 = (3, 2 + \sqrt{-5})$ is principal. Then for some $a, b \in \mathbb
Z, I_3 = (a + b \sqrt{-5})$ and for some $\alpha, \beta, 3 = \alpha (a + b
\sqrt{-5})$ and $2 + \sqrt{-5} = \beta (a+b\sqrt{-5})$.  

$N(3) = N(\alpha(a + b\sqrt{-5})) \Longrightarrow 9 = N(\alpha)(a^2 + 5b^2)$.
Since $(a^2 + 5b^2)$ is a positive integer, it must be either $1, 3 \text{ or }
9$. If the value is $9$ then $N(\alpha) = 1$, $\alpha = \pm 1$ and $a + b
\sqrt{-5} = \pm 3$. But that's not possible since $2 + \sqrt{-5}$ is not
divisible by $3$. The norm can't be $3$ since $a^2 + 5b^2 = 3$ has no solutions.
If the norm is $1$ then $a + 5 \sqrt{-5} = \pm 1$ and by prop 1 in FUP, $I_3 =
R$ But $1 \in R$, so $1 = 3 \gamma + (2 + \sqrt{-5})\delta \Longrightarrow (2 -
\sqrt{-5}) = 3(2-\sqrt{-5})\gamma + 9 \delta$. i.e $(2 - \sqrt{-5})$ is a
multiple of $3$ which is a contradiction. So $I_3$ is not principal.

Suppose $I'_3 = (3, 2 -\sqrt{-5})$ is principal. Then for some $a, b \in \mathbb
Z, I_3 = (a +b \sqrt{-5})$ and for some $\alpha, \beta \in \mathbb Z, 3 =
\alpha(a + b \sqrt{-5})$ and $2 - \sqrt{-5} = \beta(a + b \sqrt{-5})$.
$N(3) = 9 = N(\alpha)(a^2 + 5b^2)$, then by the same arguments for $I_3$, $I'_3$
is not principal.

---

$I_2^2 = (2, 1 + \sqrt{-5})(2, 1 + \sqrt{-5}) = \{ a b | a, b \in I_2 \}$. Since
$a, b \in I_2, a = a_1 2 + a_2 (1 + \sqrt{-5}), b = b_1 2 + b_2 (1 +
\sqrt{-5})$. Then $ab = 4 a_1 b_1 +2 a_1 b_2(1 + \sqrt{-5}) + 2 a_2 b_1(1 +
\sqrt{-5}) + a_2 b_2(-4 + 2 \sqrt{-5})$ which is a multiple of $2$ so $I_2^2
\subset (2)$.

Since $(1 + \sqrt{-5}) ^ 2 + 2.2 = \sqrt{-5} \in I_2$. So $1 - \sqrt{-5} \in
I_2$. So $2 = (1 + \sqrt{-5})(1 - \sqrt{-5}) - 2\cdot 2 \in I_2^2$ So $(2)
\subset I_2^2$

$I_2 I_3 = (2,1 +\sqrt{-5})(3, 2 + \sqrt{-5}) = (1 - \sqrt{-5})$

$I_2 I'_3 = (2,1 +\sqrt{-5})(3, 2 - \sqrt{-5}) = (1 + \sqrt{-5})$

## 8.3 #5a,b

---

Let $N(a + b \sqrt{-n}) = a^2 + nb^2$

$n$ is square free $> 3$. $R= \mathbb Z[\sqrt{-n}]$

Suppose $2 = ab$. $4 = N(2) = N(a)N(b)$. Since $2$ is prime in $\mathbb Z$,
$N(a)$ and $N(b)$ must be $1, 2$ or $4$. But $2 = x^2 + ny^2$ has no solutions
in $\mathbb N\cup \{0\}$. So $N(a), N(b)$ must be either $1$ or $4$. Since
$N(a)N(b) = 4$ at least one must be $1$ and so either $a$ or $b$ is a unit and
$2$ is irreducible.

**Note: We can similarly prove that $3$ is irreducible for $n > 3$**

Suppose $\sqrt{-n} = xy$. $N{\sqrt{-n}} = n = N(x)N(y)$. $N(x)$ must be $1$, $n$
or some other factor of $n$. Suppose norm is not $1$ or $n$. Now, $a^2 + n b^2 =
N(x)$. But since $N(x)$ is a factor of n it must be less than $n$. So $b = 0$.
So $a^2 = N(x)$. Since $n$ is squarefree, this has no solutions. So $N(a)$ must
be either $1$ or $n$ and $N(b)$ must be the other. Then by the lemma, either $a$
or $b$ are units and $\sqrt{-n}$ is irreducible.

Suppose $1 + \sqrt{-n} = (a_1 + a_2 \sqrt{-n})(b_1 + b_2 \sqrt{-n})$. Taking
norm we get, $1 + n = (a_1^2 + n a_2^2 )N(b)$ where $N(b) > 0$. $a_1$ cannot be
zero (since then $N(a)$ would be a multiple on $n$). If $a_2 =0,$ then $1 +
\sqrt{-n} = a_1 b_1 + a_1 b_2 \sqrt{-n} \Longrightarrow a_1 b_1 = 1
\Longrightarrow a_1 = 1 \Longrightarrow N(a_1 + a_2 \sqrt{-n}) = 1$ and so $a_1
+a_2 \sqrt{-n}$ is a unit, and $1 +\sqrt{-n}$ irreducable. If $a_1, b_1 \ne 0$,
then $N(b)a_1^2  - 1 =  n(1 - N(b)a_2^2)$. But since $N(b), a_1^2, a_2^2 \ge 1$,
$N(b) = 1$. So $b$ is a unit, and $1 + \sqrt{-n}$ is irreducible.

**Note: We can similarly prove that $1 - \sqrt{-n}$ is irreducible.**

---

If $n$ is even, $(\sqrt{-n})(-\sqrt{-n}) = n = 2.m$ from some $m$.  If $n$ is
odd, $(1 + \sqrt{-n})(1 - \sqrt{-n}) = (1 + n) = 2.m$ for some $m$. If we assume
that all irreducibles are prime, then the factorization of $n$ or $1 +  n$ is
not unique, and so $R$ is not a UDF. If all irreducibles are not prime then by
proposition 8.12 $R$ is not a UFD.

For $D \equiv 2, 3 \text{ mod } 4, D < -3$, $\mathcal O = \mathbb Z[\sqrt{D}]$
so none of these are UFDs.

## 8.3 8 (a)

Since $5$ is a squarefree number, we showed that $2, 3, 1 + \sqrt{-5}, 1 - \sqrt{-5}$
are irreducible in 8.5 and notes. They are not associate, since they have different norms $N(2) = 4, N(3) =
9 , N(1 + \sqrt{-5}) = 6$ and for associates $a = ub \Longrightarrow N(a) = 1
N(b)$

Suppose $(1 + \sqrt{-5}) = u (1 - \sqrt{-5})$ for unit $u$. Then multiplying by
$1 + \sqrt{-5}$, $1 + 2 \sqrt{-5} - 5 = u(1 + 5) \Longrightarrow -2 + \sqrt{-5}
= 3 u$. But $3$ does not divide $9$ so this is a contradiction and they are not
associate.

## 8.3 8 (b)
## 8.3 8 (c)
