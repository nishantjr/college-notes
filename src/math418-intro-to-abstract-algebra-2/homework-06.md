## 13.4 #1 $x^4 - 2$

The roots of $x^4 - 2$ are $\sqrt[4] 2, -\sqrt[4]2, i \sqrt[4]2, -i \sqrt[4]2$.
Since $- \sqrt [4] 2 \in \mathbb Q(\sqrt [4] 2)$ $- i\sqrt [4] 2 \in \mathbb Q(i\sqrt [4] 2)$
We only need to consider $\sqrt[4] 2, i \sqrt[4]2$.

Since $\sqrt[4] 2$ is real, all members of $\mathbb Q(\sqrt[4] 2)$ are real. So
$i \sqrt[4]2 \notin \mathbb Q(\sqrt[4]2)$ All elements of $\mathbb Q(i
\sqrt[4]2)$ are of the form $a i \sqrt[4]2 + b \sqrt 2 + c i \sqrt[4]8 + 2d$ for
$a, b, c, d \in \mathbb Q$. $\sqrt[4]2$ is not in that form so $\sqrt[4]2 \notin
\mathbb Q(i\sqrt[4]2)$.

So the splitting field of $x^4 -2$ is $\mathbb Q(i \sqrt[4]2, \sqrt[4]2)$
Each of $\mathbb Q(i \sqrt[4]2), \mathbb Q(\sqrt[4]2)$ have degree 4 over $\mathbb Q$.
Each of them are also extensions of $\mathbb Q(\sqrt 2)$ a degree 2 extension
over $\mathbb Q$. So they must be degree 2 extensions over $\mathbb Q(\sqrt 2)$

Since neither of them are splitting fields, $\mathbb Q(i \sqrt[4]2, \sqrt[4]2)$
must be a degree 2 extension of these and the degree of the splitting field must
be 8.

## 13.4 #2 $x^4 + 2$

Let $a + bi$ be a root of $x^4 + 2$, $a, b \in \mathbb R$. Then $p(a+b i) = 0 =
(a+ b i)^4 + 2$ so, $(a^4 - 6a^2b^2 + b^4) + 4ab(a^2- b^2) = -2$. So $a, b, a^2
-b^2$ must be 0. But $a = 0 \Longrightarrow b^4 = -2$ which can't be true in
$\mathbb R$. So $a^2 = b^2$. $2a^4 - 6a^4 = -4 a^4 = -2 \Longrightarrow a =b =
\pm  1/ \sqrt[4]2$ So the splitting field is $\mathbb Q(\pm,  \frac 1
{\sqrt[4]2} \pm \frac i {\sqrt[4]2}) = \mathbb Q(i, \frac 1 {\sqrt[4]2})$.
Degree of $\mathbb Q(i)$ is 2 and $\mathbb Q(\frac 1 {\sqrt[4]2})$ is 4 and
neither is a splitting field, $\mathbb Q(i, \frac 1 {\sqrt[4]2})$ has degree 8.

## 13.5 #5

Let $\alpha$ be a root of $p(x) \in \mathbb F_p[x] = x^p -x + a$
$p(\alpha + 1) = (\alpha+1 )^p - \alpha-1 + a = \alpha^p + 1 - \alpha - 1 + a =
\alpha^p - \alpha + a = 0$
So if $p(x)$ has a root in $\mathbb F_p$, all elements are roots (since p is
prime $F_p$ is cyclic with $p$ prime). By then $0$ would be a root, so $a$ must
be 0. This is a contradiction. So $p(x)$ has no roots in $\mathbb F_p$.

Let $\alpha$ be a root in an extension. $\alpha + n$ must be a root for all $n
\in \mathbb F_p$. $p(x)$ is of degree $p$ so, these must be all the roots of
$p(x)$.



---

#### 6. Let $D$ be a square free integer. Prove that $\mathbb Q(\sqrt D) \cong \mathbb Q[x]/X^2 - D$

Let $\phi: Q[x] \to Q(\sqrt D)$ where $\phi(x) = \sqrt D$ and extending it to be
a ring homomorphism.

Let $p(x) = x^2 - D$. Since $p(\sqrt D) = 0$, $(p(x))$ must be contained in it's kernel (since all
elements of the ideal are multiples of $p(x)$). Also, $f(x) \mapsto 0
\Longrightarrow f(\sqrt D) = 0 \Longrightarrow \sqrt D$ is it's root. But by
Eisenstein's Criterion, $x^2 - D$ is irreducible ($p =$ some prime factor of
$D$). For any polynomial in $\text{Ker}(Q[x])$, $f(x) = p(x)q(x) + r(x) \mapsto 0$. 
Since $p(\sqrt D) = 0$, $r(\sqrt D) = 0$ but since $p(x)$ is the minimal
polynomial of $\sqrt D$, and by definition of euclidian algorithm, $r(x)$ must
be 0. So $(p(x)) = \text{Ker}(\phi)$

By the first isomorphism theorem, $\phi: Q[x] / (x^2 - D) \cong F(\sqrt D)$
