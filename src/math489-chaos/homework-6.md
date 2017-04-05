## 5.1

$f: \mathbb R^m \to \mathbb R^m$ has $|Df(x)| = D$.

The axes of the ellipse formed by applying $f^n$ will be the square roots of the
eigenvalues ${s_i}^2$ of $J_nJ_n^T$ where $J_n = Df(x)$. Let $v_i$ be the
corresponding eigenvectors.
By diagonalizing, $J_nJ_n^T = S ^{-1} AS$. Taking determinant:

$$\begin{aligned}
               && |J_nJ_n^T| &= |S ^{-1} AS| \\
\Longrightarrow&& D^2        &= |A|          \\
               &&            &= (s_1\cdot s_2 \cdots s_m)^2\\
\Longrightarrow&& \lim |J_nJ_n^T| 
                             &= \lim(s_1\cdot s_2 \cdots s_m)^2\\
               &&            &= \lim({s_1})^2\lim({s_1})^2\cdots\lim({s_1})^2 \\
               &&        D^2 &= (L_{v_1}L_{v_2}\cdots L_{v_m})^2 \\
               &&          D &= (L_{v_1}L_{v_2}\cdots L_{v_m})
\end{aligned}$$

## 5.2

$$
f \begin{pmatrix} x_1 \\ x_2 \end{pmatrix}
= \begin{pmatrix}
1 & 1 \\
1 & 0
\end{pmatrix}
\begin{pmatrix}
x_1 \\
x_2
\end{pmatrix}
\text{(mod 1)}
$$

The Jacobian matrix $A = Df(v) = \begin{bmatrix}
1 & 1 \\
1 & 0
\end{bmatrix}$.
Since $A$ is symmetric, $A^T = A$, and $AA^T$ has the same eigenvalues as $A$.
These are $e_1  = \frac 1 2 ( 1 + \sqrt 5)$ and $e_2 \frac 1 2 ( 1 - \sqrt 5)$  

Since the eigenvalues are constant, the Lyapunov numbers are equal to these
values, and the Lyapunov exponents are $\ln |e_1| = 0.4812$ and $\ln |e_2| = -0.4812$.


Note that $\begin{bmatrix}
1 & 1 \\
1 & 0
\end{bmatrix}^2 =
\begin{bmatrix}
2 & 1 \\
1 & 1
\end{bmatrix}
$, and since $A^2 = S ^{-1} D^2 S$, the eigenvalues of the cat map are the
${e_1}^2$ and ${e_2}^2$ and also both functions have the eigenvectors and so the
corresponding Lyapunov numbers are exactly double.

## 5.3

Since the matrix used in the cat map is invertible, it is sufficient to show
that the intersection of the image of $[0, 1) \times [0, 1)$ in each $[m, m+1) \times [n,
n+1)$ are disjoint when taken $(\text{mod} 1)$.
The Cat map can be written as: $(x, y) \mapsto (2x + y, x + y)$.
So these regions are: 
$$\begin{aligned}
    &x + y < 1, &   &2x + y < 1                 \quad \text{(A)}\\
    &x + y < 1, & 1 <& 2x + y < 2               \quad \text{(B)}\\
1 < &x + y < 2, &1 <& 2x + y < 2                \quad \text{(C)}\\
1 < &x + y < 2, & 2 < &2x + y < 3               \quad \text{(D)}
\end{aligned}$$

These are the triangles bounded by the vertices, and whose images are bounded by:
$$\begin{aligned}
    (0, 0), (\frac 1 2, 0), (0, 1) &\mapsto (0, 0), (1, \frac 1 2), (1,1) &\quad \text{(A)}\\
    (1, 0), (\frac 1 2, 0), (0, 1) &\mapsto (2, 1), (1, \frac 1 2), (1,1) &\quad \text{(B)}\\
   (1, 0), (0, 1), (\frac 1 2, 1)  &\mapsto (2, 1), (1, 1), (2, \frac 3 2)&\quad \text{(B)}\\
   (1, 0), (1, 1), (\frac 1 2, 1)  &\mapsto (2, 1), (3, 2), (2, \frac 3 2)&\quad \text{(B)}\\
   \\
   \\
   \\
   \\
   \\
   \\
   \\
   \\
\end{aligned}$$

## 5.7 (a)

Let $z = r e^{i\theta} = r\cos\theta + r i \sin\theta$ then $f(z) = r^2 e^{i
2\theta} = r^2 (\cos 2\theta + i \sin 2 \theta)$. Thus $f(x) = z^2$ corresponds
to $p(r, \theta) = (r^2, 2\theta)$

## 5.7 (b)

All points on the unit circle are bounded and do not converge to the origin,
since by induction if $r_n = 1, r_{n+1} = {r_n}^2 = 1$, and only $\theta$ can
change and so stay on the unit circle.

## 5.7 (c)

Since all vector of a particular length will be another vector of the same
length, it doesn't matter which axis we calculate the Lyapunov number/exp along
and we can ignore $\theta$.

The distance from origin after $n$ iterations $r_n = r^n$. So $L = \lim
{r^n}^{\frac 1 n} = r$. So the Lyapunov exponent is $\ln r$ which is less than
$0$

## 5.7 (d)

All points outside of the unit circle have Lyapunov exponent greater than 0.
Since $r^2$ diverges to infinity for $r>1$, it's not possible to have an
asymptotically periodic orbit. So all points outsite of the unit circle are
chaotic.
