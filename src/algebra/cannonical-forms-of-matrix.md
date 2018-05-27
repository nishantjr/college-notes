Field $F$, defining the $F[x]-$module $V$ by the action of $x$ defined
by the linear transform $T$.

Characteristic polynomial
:   $\det(\lambda I - T) = 0$

Minimal polynomial $m_T(x)$
:   The unique monic polynomial that generates the ideal $\ann(V)$

Companion Matrix $\mathcal C_{a(x)}$
:   Given the polynomial $p(x) = x^k + b_{k-1}x^{k-1} + b_{k-2} x^{k-2} + \cdots b_0$

    $$\begin{bmatrix}
    0   &0  &\ldots &\ldots &\ldots &-b_0       \\
    1   &0  &\ldots &\ldots &\ldots &-b_1       \\
    0   &1  &\ldots &\ldots &\ldots &-b_2       \\
    0   &0  &\ddots &       &       &\vdots     \\
    0   &0  &       & \ddots&       &\vdots     \\
    0   &0  &\ldots &\ldots &1      &-b_{k-1}   \\
    \end{bmatrix}$$

Characteristic Poly: $V \to F[x]$

Minimal polnomial $p(x)$
*   $p(T) = 0$
*   $p(x)$ divides all invariant factors and has the same roots as the characteristic polynomial
*   THe products of the invariants is the characteristic polynomial

Companion k


Caculating Rational Normal Form:

1.  Diagonalize the $(xI - A)$ using
    a.  Exchange rows, columns
    b.  multiply rows, columns by units
    c.  Add multiples of other rows to rows, other cols to cols $R_1 \mapsto R_1 + p(x) R_2$
2.  To the Identity matrix apply: 
    a.  Exchange column, row
    b.  Divide Column, row by unit
    c.  subtract multiples of other cols from cols, other rows from rows $C_1 \mapsto C_1 + p(x) C_2$
3.  a. Rational Canonical: For each column in the matrix from `2.` mulitply by $A$.
    b. Jordan: Factor the matrix 


(x + 1)^2(x -1 )^2(x + i)(x -i)

(x + 1)     (x + 1)^1(x -1 )^2(x + i)(x -i)
(x - 1)     (x + 1)^2(x -1 )^1(x + i)(x -i)
    
(x^2 - 1)   (x + 1)^1(x -1 )^1(x + i)(x -i)

g | a , g | b
g x = a, g y = b

$ra + sb = g = rgx + rgy = g(rx + sy) \implies g | rx + sy$

