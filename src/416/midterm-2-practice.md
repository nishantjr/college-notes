## Definitions

Linear transformation

: Given vector spaces $V$ and $W$, a function $T: V \to W$ is a linear
  transformation iff $\forall a, b \in V, k \in F$
    
  * $T(a + b) = T(a) + T(b)$
  * $T(ka) = kT(a)$

Null Space / Kernel; Nullity

: Given vector spaces $V, W$, and a linear transform $T: V \to W$,  
  the Null Space of $T$, $N(T) = \{ x : \forall x \in V, T(x) = 0 \}$

  $\text{nullity}(T) = \text{dim}(N(T))$

Range / Image; Rank

: Given vector spaces $V, W$, and a linear transform $T: V \to W$,  
  the Range of $T$, $R(T) = \{ T(x) : \forall x \in V \}$

  $\text{rank}(T) = \text{dim}(R(T))$

Ordered basis of a vector space

: An ordered basis for $V$ is a finite **sequence** of linearly independent
  vectors that generate $V$

Coordinate vector $[v]_\beta$ of $v$ relative to ordered basis of $\beta$

: Let $\beta = \{u_1, \cdots u_n \}$ be an ordered basis for a finite
  dimensional vector space $V$. For $x\in V$ let $a_1, \cdots a_n$ be the
  unique scalars such that $x = \sum a_i u_i$

  The coordinate vector $[v]_\beta$ of $v$ relative to ordered basis of $\beta$
  is defined by:

  $$[x]_\beta = \begin{pmatrix} a_1 \\ \vdots \\a_n \end{pmatrix}$$
  
The matrix representation $[T]^\gamma_\beta$ of a linear transformation $T$

: Let $V$ and $W$ be finite dimensional vector spaces with odered bases
  $\beta = \{ v_1, v_2, cdots v_n \}$ and $\gamma = \{ w_1 \cdots w_m \}$ resp.  
  Let $T: V \to W$ be a linear transform.   
  Then $\forall j, 1 \le j \le n$ there are unique scalars $a_{ij}$ such that:
  $T(v_j) = \sum_i a_{ij} w_i$

  The matrix $A$ defined as $A_{ij} = a_{ij}$ is called the matrix
  representation of the linear trasform $T$


$\mathscr{L}(V, W)$

: Let $V$ and $W$ be vector spaces. Then we denote the set of linear traformations from $V$ to $W$ as $\mathscr{L}(V,W)$. If $V = W$ then we can use $\mathscr L(V)$

inverse; invertible (Linear trasformations)

: Let $V$ and $W$ be vector spaces and $T: V \to W$ be linear.  
  Then $U$ is the inverse of $T$ iff $U\circ T = I_V$ and $T\circ U = I_W$

  If $T$ has an inverse, $T$ is invertable

Isomorphism; isomorphic (Linear trasforms)

: Let $V$ and $W$ be vector spaces if there exists $T: V \to W$ that is an
  invertable linear transform, then $V$ and $W$ are isomorphic and $T$ is
  an isomorphism.

Change of coordinate matrix

: XXX

Similar matrices

: XXX

Determinant of a matrix

: XXX

Matrix multiplication

: XXX

Matrix inverse; invertable matrix
 
: XXX Let $T$ be an $m\times n$ matrix. Then $U$ is the inverse of $T$ iff
  $UT = I_n$ and $TU = I_m$

  If $T$ has an inverse, then $T$ is invertable.

---

## "Easy" Proofs

### Composition of linear trasnformations is a linear trasnformation.

Let $V, W, X$ be vector spaces over $F$ and $T: V \to W$, and $U: W \to X$ be linear
transforms. Then $\forall x, y \in V, k \in F$,

$$\begin{aligned}
U\circ T(x + y) & = U(T(x+y)) = U(T(x) + T(y)) \\
                &= U(T(x)) + U(T(y)) \\
                &= U\circ T(x) + U \circ T(y)
\end{aligned}$$

and,

$$\begin{aligned}
U\circ T(k y) & = U(T(ky)) = U(k T(y)) \\
                &= k U(T(x)) \\
                &= k (U\circ T)(x)
\end{aligned}$$

So $U\circ T$ is a linear transformation.


## "Hard" proofs

### Isomorphic vector spaces have the same dimensions

> Let $V$ and $W$ be finite dimensional vector spaces and suppose $T: V \to W$
is a homomorphism.  
Show that $\text{dim } V = \text{dim } W$

### Special case of "Linear transform of basis is a basis" for $V=\mathbb R^2$ and $W=\mathbb R^2$

> Let $T:\mathbb R^2 \to \mathbb R^2$ be an isomorphism and $\{v_1, v_2\}$ be a basis of $\mathbb R^2$  
> s.t. $\{T(v_1), T(v_2) \}$ is a basis of $\mathbb R^2$

Let $\gamma = \{T(v_1), T(v_2) \}$
To show that $\{T(v_1), T(v_2) \}$ is a basis we must show that"

1. $\gamma$ spans $\mathbb R^2$
2. $T(v_1)$ and $T(v_2)$ are linearly indep

---

1. Suppose $\gamma$ doesn't span $\mathbb R^2$, then for some $a$ in $\mathbb R^2$, $a$ cannot be written as a linear combination of $Tv_1$ and $Tv_2$

   But, since $T$ is a isomorphism, it has an inverse.  
   Let, $T^{-1}(a) = b$  so,
   $$\begin{aligned} 
       T(b) &= T(b_1 v_1 + b_2 v_2) \\
       a  &= b_1 T(v_1) + b_2 T(v_2) \\
   \end{aligned}$$

   This is a contradiction. So $\gamma$ must span $\mathbb R^2$

1. Suppose $T(v_1)$ and $T(v_2)$ are not linearly indep.

   Then for some $a, b \ne 0, aT(v_1) + bT(v_2) = 0$  
   But, since $v_1$ and $v_2$ form a basis, they are lin. ind.  
   $$\begin{aligned}
   \forall a, b \ne 0, \quad & a v_1 + b v_2 \ne 0 \\
                             & T(a v_1 + b v_2) \ne T(0) \\
                             & aT(v_1) + bT(v_2) \ne 0 \\
   \end{aligned}$$
   Contradiction! So $T(v_1)$ and $T(v_2)$ are linearly independent.


### If $A$ is invertable, show that $A^n$ is invertable $\forall n \in \mathbb N$

$A$ is invertable, so $A^1 = A$ is invertable.

Suppose for some $n$ that $A^n$ is invertable. Then,
$$\begin{aligned}
           (A^n)(A^n)^{-1}             &= I        \\
\therefore A(A^n)(A^n)^{-1}            &= A        \\
\therefore (A^{n+1})(A^n)^{-1}         &= A        \\
\therefore (A^{n+1})(A^n)^{-1}A^{-1}   & = AA^{-1} \\
\therefore (A^{n+1})[(A^n)^{-1}A^{-1}] &= I        \\
\end{aligned}$$

Similarily $[(A^n)^{-1}A^{-1}](A^{n+1}) = I$.

So, $(A^n)^{-1}A^{-1}$ is the inverse of $A^{n+1}$ and $A^{n+1}$ is invertable.

### "one-to-one" and "onto" linear transforms are isomorphisms
