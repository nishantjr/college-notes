## 12.1 #5

$R = \mathbb Z[x], M = (2, x)$.

### Show that  $\{ 2, x \}$ is not a basis.

The element $2x$ can be written in two ways in terms of $\{2, x \}$:
$$\begin{aligned}
x &= 0\cdot 2 + 2 \cdot x  \\
  &= x \cdot2 + 0 \cdot x
\end{aligned}$$

This means that there is a linear dependence between the basis elements: $2\cdot x - x \cdot 2 = 0$

### Show that the ran k of $M$ is $1$, but it is not free

We know that $\{2, x\}$ generates $M$, but is not a basis. So basis must have
size $1$. Suppose $M$ has a basis of size 1. Then $M = (2, x) = (a)$ where
$\{a\}$ is the basis. But we know that $2, x$ are relatively prime and $(2, x)
\ne (1)$ so $M$ cannot have a basis of size 1 and so cannot be free.

## 12.2 #14 Determine all possible rational canonical forms of $p(x) = x^2(x^2 + 1)^2$

$x$ and $x^2 + 1$ are irreducible in $\mathbb R[x]$. So,
$$\begin{aligned}R[x]/p(x)
&\cong \mathbb R[x] / x         &\times \quad& \mathbb R[x] / x(x^2 + 1) ^2 \\
&\cong \mathbb R[x] / (x^2 + 1) &\times \quad& \mathbb R[x] / x^2(x^2 + 1) 
\end{aligned}$$

---

A basis for $\mathbb R[x] / (x)$ over $\mathbb R$ is $\{ 1 \}$.
So it's companion matrix, $C_1 = \begin{bmatrix} 0 \end{bmatrix}$.

A basis for $\mathbb R[x] / (x(x^2 + 1)^2) =\mathbb R[x] / (x^5 +2x^2 +  x)$
over $\mathbb R$ is $\{ 1, x, x^2, x^3, x^4 \}$.

$x^4 \mapsto -2x^2 - x$, so it's companion matrix, $C_2 = \begin{bmatrix}
0  & 0 & 0 & 0 & 0      \\
1  & 0 & 0 & 0 & -1     \\
0  & 1 & 0 & 0 & -2     \\
0  & 0 & 1 & 0 & 0      \\
0  & 0 & 0 & 1 & 0
\end{bmatrix}$

---

A basis for $\mathbb R[x] / (x^2 + 1)$ over $\mathbb R$ is $\{ 1, x \}$.
$$\begin{aligned}
1 &\mapsto x \\
x &\mapsto -1
\end{aligned}$$
So it's companion matrix, $C_3 = \begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix}$

A basis for $\mathbb R[x] / (x^2(x^2 + 1)) =\mathbb R[x] / (x^4 + x^2)$ is $\{
1, x, x^2, x^3 \}$, 

$$\begin{aligned}
1 &\mapsto x \\
x &\mapsto x^2 \\
x^2 &\mapsto x^3 \\
x^3 &\mapsto -x^2
\end{aligned}$$

So it's companion matrix, $C_4 = \begin{bmatrix}
0 & 0 & 0 & 0 \\
1 & 0 & 0 & 0 \\
0 & 1 & 0 &-1 \\
0 & 0 & 1 & 0
\end{bmatrix}$


---

Rational canonical form of are $6\times 6$ matrices $\left\{
\begin{bmatrix}
C_1 & 0 \\
0  & C_2
\end{bmatrix},
\begin{bmatrix}
C_2 & 0 \\
0  & C_1
\end{bmatrix},
\begin{bmatrix}
C_3 & 0 \\
0  & C_4
\end{bmatrix},
\begin{bmatrix}
C_4 & 0 \\
0  & C_3
\end{bmatrix},
\right\}$

## 12.3 #10 Find the jordan canonical forms ...

Since all polynomial split in $\mathbb C$, the characteristic polynomial
of any matrix is the product of linear term, and an $n\times n$ matrix has
$n$ roots (possibly duplicate). Let $\{ \lambda_1 ,\lambda_2 , \lambda_3 \cdots
\lambda_n \}$ be the roots of this polynomial. 

Since each term is linear, we get a diagonal matrix of the form $\begin{bmatrix}
\lambda_1 & 0 & \cdots & 0\\
0 & \lambda_1 & \cdots & 0\\
 &  & \vdots & 0\\
0 & 0 & \cdots & \lambda_n
\end{bmatrix}$

For a $2\times 2$ matrix, $\begin{bmatrix} a & b\\ c & d\end{bmatrix}$, it's
characteristic polynomialsi $(a - x)(d - x) - bc  =  ad - ax - dx - x^2 - bc$ $= 
(-1)x^2 + (-a  -d) + (ad - bc)$

This has roots $\frac {a + d \pm \sqrt{(a + d)^2  + 4 (ad -bc) }} {-2}$

For $2\times 2$ matrices, Jordan normal form is: $\begin{bmatrix}
\frac {a + d + \sqrt{(a + d)^2  + 4 (ad -bc) }} {-2} & 0 \\
0 & \frac {a + d - \sqrt{(a + d)^2  + 4 (ad -bc) }} {-2}
\end{bmatrix}$
