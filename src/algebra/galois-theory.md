---
title: Galois Theory
---

$\aut(K /F)$
:   The set of automoorphisms of $K$ that fix $F$.

Character of a group $G$ in a field $F$
:   is a homomorphism $h: G \to F^\times$ it's multiplicative group.


Let $E$ be the splitting field over $F$ of $f(x)$:

-   Then, $|\aut(E/F)| \le [E : F]$
-   If $f(x)$ is separable, $|\aut(E/F)| = [E : F]$
    -   We say that the extension is Galois.

$K$ not Galois if :

- Does not contain all the roots of a polynomial with one root in $K$

To check separable: Do the derivative and the polynomial share a root

Fundamental Theorem of Galois Theory

: Let $K/F$ be a Galois extension. Let $G = \gal(K/F)$.
  Let $E$ be a subfield of $K$ containing $F$
  Then:

    1. there is a bijection between subfields of $E$ containing $F$
       and subgroups of $G$.
       $$\begin{matrix}
        E                         & \mapsto    &\{ \text{elements of $G$ fixing $E$ } \} \\
        \text{fixed field of $H$} & \mapsfrom  &H
       \end{matrix}$$

    2. $K / E$ is Galois
    
    3. $[K : E][E : F] = [K : F]$
    
    4. $H$ is normal $\iff \aut(E/F) \iso G/H$

---

Let X_1 ... X_n be the characters of a group $G$ in $F$.
That is they are the homos from $G \to F^*$

Assume they have a linear dependency. Chose a dependency with 
minimum number of non-zero terms. 

    a_1 x_1 .... + a_m X_m = 0

Let $g_0$ be an element in $g$, sucht that $x_1(g0) \ne x_2(g0)$ (this exists, coz distinct.)

For any $g \in G$, 

    a_1 x_1 (g) .... + a_m X_m(g) = 0
    
Multiplying by x_m(g_0 )

    a_1 x_m(g0) x_1 (g) .... + a_m X_m(g0) X_m(g) = 0           1
 
    a_1 x_1 (g g0) .... + a_m X_m(g g0) = 0
->  a_1 x_1 (g)x_1(g0) .... + a_m X_m(g)x_m(g0) = 0             2

subtracting:
    a_1 x_m(g0) x_1 (g) .... + a_m X_m(g0) X_m(g)
-   a_1 x_1 (g)x_1(g0)  .... + a_m X_m(g)x_m(g0) = 0
=   a_1 x_m(g0) x_1 (g) .... + a_{m-1} X_m(g0) X_m(g) -
    a_1 x_1 (g)x_1(g0)  .... + a_{m-1} X_{m-1}(g)x_m(g0) = 0
    
But this is shorter! contradicting minimalism.

Let $F$ and $G$ be fields. Then injective homomorphisms may be thought
of as $h: F^* \to G^*$   

---

Alt: Suppose there is some relation, then choose minimal

a1 h1 + .. + an hn = 0

Since h1 and h2 are distinct, chose g0 so that h1(g0) != h2(g0)

--- 9

Let G = { h1 = 1 , h2 ... hn } be a subgoup aof aut(K) and fixed field $F$

Let [ K : F ] = m
    | G |     = n
    
    w1... w_m be a basis of K / F
    
Consider the matrix $\Sigma$ = 


\begin{matrix}
    h1(w_1) & h2(w_1) .. & h_n(w_1) \\
    ...
    h1(w_n) & h2(w_n) .. & h_n(w_n) \\
\end{matrix}
    
Assume n > m

Then Sigma is a  underspecified system of equations, (more indeterminats
than eqs) so has a non-trivial soln (B_1 ... B_n).

et a_1 ... a_n be elements in F. Multiply each equationi by these element

    h1(a_1  w_1)B_1 + h2(a_1 w_1)B_2 .. + h_n(a_1 w_1)B_n = o
    ...
    h1(a_n w_n)B_1 + h2(a_n w_n)B_2 .. + h_n(a_n w_n)B_n = o

Add together

    h1(a_1  w_1 + ... + an wn)B_1
    ... + 
    hn(a_1  w_1 + ... + an wn)B_n

But since a_1..a_n are arb, w_1... wn basis, this is a linuear dep: so contradiction

---

Suppose n < m

Then SInga T is a systenm of equations (underspecified) so has a non-trivial soln.
Let B_1... B_r 0...0 be a soln with the least number of non-0s rS

If all of these are in $F$ then the linear dependence basis is violated. BOoo
So atlaet one must be not in F. Rename so $B_1$ not in F.

Since B1 not in F , there is an autmorshims that moves i.

- Divide by B_r
- Since group, for one of the rows, we get starting with h1 b1

