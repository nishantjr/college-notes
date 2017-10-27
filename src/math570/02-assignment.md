## 1.

**A, B** are $\tau$-structures, with $A \subset B$

* (a.i) Since $\phi$ is quantifier free, then it is contructed from
     - Equalities: $t_1 = t_2$: Since **A** is closed under the
       functions of $\sigma$, and the interpretation of constants and
       functions in **A** and **B** must coincide for substructures, the interpretation
       of each term $t(\vec a), a \in A^n$ must be the same and
       $A \vDash t_1 = t_2 \Leftrightarrow B \vDash t_1 = t_2$
     - Relations: $R(t_1, t_2, \ldots, t_n)$: Since **A** and **B** are
       $\tau$-substructures, $R^A = R^B \cap A^n$, where $n = \text{ar}(R)$.
       So, $A \vDash R(t_1, t_2, \ldots, t_n) \Leftrightarrow B \vDash R(t_1, t_2, \ldots, t_n)$ 
     - Combinations through negations, conjunction and disjunction:
       By induction on the structure of the sub-terms we can show that
       these formulae must be the same in **A** and **B** too.
     So $A \vDash \phi \Leftrightarrow B \vDash \phi$ for quantifier free
     formulae.
* (a.ii)  Let $\phi(\vec a, u)$ be a formula with one universally quantified variable.
     $\phi(\vec a) = \forall u \psi (\vec a, u)$ holds in **B** if 
     for all $b \in B, \psi(\vec a, b)$ holds. Since $a \in A \Rightarrow
     a \in B$, and $A \vDash \psi(\vec a, b) \Rightarrow B \vDash \psi(\vec a, b)$,
     $A \vDash \phi(\vec a) \Rightarrow B \vDash \phi(\vec a)$. Using
     induction, we can show that it holds for any number of universally quantified
     variables.

* (a.iii) Let $\phi$ be a formula with one existentially quantified variable.
  Then, if $\phi(\vec a) = \exists \psi (\vec a, u)$ holds in **A**, there exits
  some $v \in A$, such that $\psi(\vec a, v)$ holds. But $v \in B$, so $\psi(\vec a, u)$
  holds in **B**, and $A\vDash \phi(\vec a) \Rightarrow B \vDash \phi(\vec a)$ 
 
* (b) $\forall n, \lnot n < 0$. True in $n$ since there are no negative numbers.

## 2.

A set of vectors in $\mathbb R, \{\vec v_1, \vec v_2, \ldots v_n \} \subset R^n$, is
linear independant vectors if they form a matrix that has a non-zero determinant:

$\phi(\vec v_1, \vec v_2, \ldots v_n) = 0 \ne \text{det}(\vec v_1, \ldots \vec v_n)$ 
where
$$\begin{aligned}\text{det}(\vec a_1, \ldots, \vec a_n)  =
           &a_{1,1} (\text{det}(a_{2\setminus 1}, \ldots, a_{n\setminus 1})) \\
          +&a_{1,2} (\text{det}(a_{1\setminus 2}, a_{3\setminus 2},\ldots, a_{n\setminus 2}))\\
          +&\, \vdots \\
           &\, \vdots \\
          +&a_{1,n} (\text{det}(a_{1\setminus n}, \ldots, a_{n-1\setminus n}))
\end{aligned}$$
and   $\text{det}(\vec a_{1=n}) = a_{1,1}$  
and $a_{n\setminus m}$ represents the vector $a_n$, without the $m$th coordinate.

Since this is a quantifier free statement, it follows from (a.i) that
vectors are linearly independent over $\mathbb Q$ iff they are linearly independent
over $\mathbb R$

## 3.
* a: $\{ n : \exists a, b, c, d, a\cdot a + b \cdot b + c \cdot c + d \cdot d \}$
  by Lagrange's four square theorem
 
* b: Non negative numbers in $(\mathbb Q, +, \cdot)$
  $$ \phi =
    \begin{aligned} 
         \{ x : &\exists p, q \land x \cdot q = p,  \\
                 &\land \text{sumOfFourSquares}(p), \\ 
                 &\land \text{sumOfFourSquares}(q) \}
    \end{aligned}
  $$
  where $\quad\text{sumOfFourSquares}(x) = \exists a, b, c, d \land x = a\cdot a + b \cdot b + c \cdot c + d \cdot d$
  (since rationals that can be written as the sum of four squares must be
  positive, and includes all $\mathbb N$).
                 
* c: Non negative numbers in $(\mathbb Q, +)$:
  $x \mapsto x + 1$ is an automorphism that does not fix the non-negative
  numbers.
 
* d: Function $\text{max}(x, y) \in (\mathbb R, <)$
        $\text{max}(x, y)(a) =     \lnot (x < a)
                                   \land \lnot (y < a)
                                   \land (x = a \lor y = a)$

* e: $\text{mean}(x, y) \in (\mathbb R, <)$: An automorphism that doesn't
  fix the mean is $x \mapsto 2x$ if $x > 0$ and $x \mapsto x$ otherwise.

* f: 2 in $(\mathbb R, +, \cdot)$: $\phi(n) := n = x + x \land x \cdot x = x \land x + x \ne x$ 
* g: 
  The non-identity elements of the group $\mathbb F_2$ don't commute and are all non-torsion, while 
  $\mathbb Z / n \mathbb Z$ are abelian and torsion. Since the direct sum
  of abelian cyclic groups is abelian and cyclic (infinite tupples of non-identity
  elements is explicitly disallowed, like $(e, 2, 2, 2,\ldots)$

  So set of torsion elements is defined as the set of elements that commute, i.e.
  the center:
  $\phi(x) := \forall y, x \cdot y = y \cdot x$
 
* h: No.
* i: $\phi(n) = x = n\cdot n\cdot n \cdot n\cdot n\cdot n \cdot n$
* j: Yes.

## 4. 
* $(\exists 0 \forall y, f(y) \ne 0) \land (\forall x, \forall y, f(x) = f(y) \Rightarrow x = y)$
  where, $x \Rightarrow y$ is shorthand for $(x\land y) \lor \lnot x$
* (b)
  $$\begin{aligned}
       \exists 0, (& \land (\forall x, x\cdot 0 = x)                & \quad\text{Identity} \\ 
                   & \land (\forall x, \forall y, \forall z, 
                       (x \cdot (y \cdot z)) = ((x \cdot y) \cdot z)) 
                                                              & \quad\text{Assoc}    \\ 
                   & \land (\forall x, \exists y, x \cdot y = 0)    & \quad\text{Inverse}  \\ 
                                                                                     \\   
                   & \land \forall x, x = 0 \lor \text{double}(x) \ne 0                    \\
                   & \land \text{double}(a) = \text{double}(b)
                     \Rightarrow a = b
                  )
  \end{aligned}$$
  where $\text{double}(x) = x \cdot x$.
