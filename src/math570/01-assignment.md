---
title: "Math 570: Homework 1"
---

\newcommand \forward  $\Longxxxarrow$
\newcommand \backward $\Longxxxarrow$
\newcommand \inverse     ^{-1}
\newcommand \iff      $\Longleftrightarrow$

## 1

### (a) There is atmost one substructure with universe $S$

**A** is a $\sigma$-structure, $B \subseteq A$. It follows from the definition of
substructure and the set $A$ what the constants, functions and relations of **A**
must be. i.e. Those are a function of the underlying set itself, and so atmost
one $\sigma$-substrucure of **A** can exist for the universe **B**.

### (b)

$\Longrightarrow$: The definition of substructure specifies that the constants of **A** must
coincide with those of **B**. To be a $\sigma$-structure **B** those constants must
be in the set $B$ as well. Similarily, the functions of **A** must be the
restrictions of the functions of **B** to $A$ (def of substructure), and they
must be from $A^n\to A$ (def of $\sigma$-structure). Thus the set $B$ must be
closed for the functions of **B** for it to be a substructure of **A**. 

### (c)

$\langle S \rangle_A$ is defined as the smallest $\sigma$-substructure of $A$
containing $S$.

**$S_\infty$ is a $\sigma$-substructure of $A$:** The constants of **A** are in
$S_\infty$. Suppose $S_\infty$ is not closed under functions of **A**. Then
there is some term $t = f(t')$, where $t' \in S_\infty$, but $f(t')$ is not. But
this is a contradiction.

**$S_\infty$ is the smallest such substructure:** Suppose $O$ is a smaller
$\sigma$ substructure containing $S$. Then there is some term $t$ such that
$t \in S_\infty$, but $t \notin O$. By definition, the terms of $S_\infty$
are either in $S$, a constant, or the result of composing a finite sequence of
functions in the structure. But then, either $O$ does not contain $S$, does
not interpret the constants of the structure, or is not closed.

### (d)


Clearly the $|\langle S\rangle|$ must be atleast the cardinality $|S|$, and
$|\sigma| = | \mathrm{Const}(\sigma) \cup f|$. If those are countable,
then $S_\infty$ is the countable union of countable sets, and so can have
cardinality atmost $\aleph_0$.

## 2

### (a) $h(A)$ is a universe of a substructure of **B**

Each $f^A$ is closed in $A$. Since $h$ is a homomorphism, $h(f^A(t)) = f^B(h(t)) \in f^A(A), t \in A$,
and each $f^B$ must be closed in $h(A)$. Similarly, the constants of **A** must be in $f^A(A)$.
By **1 (b)**, $f(A)$ must be the universe of a substructure of $B$.

### (b) If $\sigma$ doesnt have any relation symbols, then $h$ is one to one $\Longleftrightarrow$ $h$ is a $\sigma$-embedding

$\forward$: Consider $g: A \to h(A) ; a \mapsto h(a)$.
$g$ is bijective and $g^{-1}$ exists. $f(g(\vec a)) = g(f(\vec a)) \implies XXX$

$\backward$: $h$ is a $\sigma-$embedding.  $h: A \to B$, $h(A) \cong A$.
$h$ is one-to-one.


## 3 **N** $= (\mathbb N, 0, s, +, ,\cdot)$ rigid

Let $h$ be an automorphism on **N**.

Since $h$ is a homomorphism, $h(0) = 0 \in \mathbb N$.
Similarly $h(s(0)) = s(h(0)) = s(0) = 1\in \mathbb N$
By induction on the interpretation of terms containing $s$ and $0$ must be identical.
Since $+$, $\cdot$ can be defined in terms of $s$ and $0$, if follows that
the only automorphism is the identity.

## 3 **Q** $= (\mathbb Q, 0, 1, +, ,\cdot)$ rigid

Let $h$ be an automorphism on **Q**.

Since $h$ is a homomorphism, $h(0) = 0 \in \mathbb Q$, and $h(1) = 1 \in mathbb Q.
Similarly $h(1 + 1) = h(1) + h(1) = 2\in \mathbb Q$

Each number $q$ in $\mathbb Q$ can be resresented as a pair $(a, b)$, where $a$ and $b$ are coprime,
, and representable using $0, 1$ and $+$, and $a \cdot b = a$. Since $\cdot$ can defined in recursivly in terms of $+$
and since the interpretation of $+$, $0$ and $1$ fixes those elements,
the only automorphism is the identity.

## 4: **Q** $= (\mathbb Q, <)$ is ultra homogenous

Let $h: A \to B$ be a isomorphism between two finitely generated substructures
**Q**.

If $A$ has an upper bound $u$, then $B$ has a corresponding upperbound $h(u)$.
We can extend $h$ by $u + a \mapsto h(u) + a$ for all $a \ge u$. Since the
order relation is preserved and has an inverse, the extension is a isomorphism too.
Similarily for lowerbound. We can similarily extend $h$ if it is not defined
between two points $x, y$ in $A$: $a \mapsto (h(y) - h(x))(a - x)/(y - x)$.

## 5: (a)

Since **G** is a finite $\sigma_{gp}$ structure,
we can index it's elements with a finite subset of $\mathbb N$:
let $G = \{ g_1, g_2, \ldots, g_n\}$. 

We define the function $m: \mathbb N/n \times \mathbb N/n \to \mathbb N/n$ that
maps the multiplication table from the elements of $G$ to the indices
of those elements: $m(p, q) = r$ iff $g_p \cdot g_q = g_r$

We can now define a statement that encodes the mutliplication table of $G$ in a $\sigma_{gp}$.
statement: Let
$$\begin{aligned}\phi = 
(& \exists b_1, \exists b_2, \cdots \exists b_n,                       \\
                                                                       \\ 
 &         \land (\forall x, x = b_1 \lor x = b_2 \ldots \lor x = b_n) \\
                                                                       \\
 &         \land (b_1 \ne b_2 \land b_1 \ne b_3 \cdots b_1 \ne b_n)    \\
 &         \land \quad\vdots                                           \\
 &         \land (b_{n-1} \ne b_n)                                     \\
                                                                       \\ 
 &         \land b_1 \cdot b_2 = b_{m(1, 2)}                           \\
 &         \land b_2 \cdot b_3 = b_{m(2, 3)}                           \\
 &         \quad\quad\vdots                                            \\
 &         \land b_{n-1} \cdot b_n = b_{(n-1)\cdot n}                  \\
)
\end{aligned}$$

Claim: $B \vDash \phi \Longleftrightarrow A \cong B$

$\Longleftarrow$: Let $h: G \to B: g_i \mapsto b_i$ where $i$ is the index of the elements
in the set. Then:
 * $h$ is a homomorphism, since $h(g_i \cdot g_j) = h(g_i) \cdot h(g_j)$
 * $h$ is bijective: since $G$ and $B$ must have the same number of elements,
   and $\phi$ ensures that they are distinct.
 * $h^{-1}$ exists (it is: $b_i \mapsto g_i$) and it is also a homomorphism

So $h$ is an isomorphism

$\Longrightarrow$: Given that **G** and **B** are isomorphic, $\phi$ from
the definition.

### 5(b)

Similarly for a finite $\sigma$-structuire **A** with $n$ elements, we can
construct a sentence: the conjunction of this set of sentences

   * For each element
       * $\exists v_i$ where $i$ indexes the set of elements
   * All theses variables must be distinct:
     $\v_i \ne v_j$ for $i, j$ each indexing the set $A$.
   * All elements must be in this set:
     $\forall x, x = v_1 \lor x = v_2 \lor \cdots \lor x = v_n$
   * The constants conincide: For each constant $c \in sigma$, $c = v_i$ iff $c^A = a_i$
   * The functions conincide: For each function $f \in \sigma$, $f(t_1, \ldots, t_n) = t_{m_f(1, 2, \ldots n)}$
     where $m_f(i_1, i_2\ldots, i_n) = k \Longleftrightarrow f(a_{i_1}, a_{i_2} \ldots, a_{i_n}) = a_{k}$ 
   * The relations conincide: For each relation $r \in \sigma, r(t_1, \ldots, t_n) \Longleftrightarrow m_r(1, 2, \ldots n)$
     where $m_r(i_1, i_2\ldots, i_n) \Longleftrightarrow f(a_{i_1}, a_{i_2} \ldots, a_{i_n})$ 

Claim: $B \vDash \phi \Longleftrightarrow A \cong B$

$\Longleftarrow$: Let $h: A \to B: a_i \mapsto b_i$ where $i$ is the index of the elements.
We see that $A$ and $B$ must have the same cardinality, are one-to-one. $h$ must be a
homorphism, since the functions, constants and relations coincide. $h$ must be an isomorphism
since it is bijective (it's inverse is $b_i \mapsto a_i$).

Using structural induction over the construction of terms and then formulae, we can show that
the interpretation of each coincide.

### 6

$D^A(P)$ is $P$-constructively defined:

* $A^n$ is defined by the empty formula $\phi(a) = ()$
* $\emptyset \in S_n$: The formula for $\emptyset$ is the negation of that of $A^n$ $\phi(a) = \lnot ()$.
* Closed under complements: Since a $P$-definable formula can be negated to
  get another $P$-definable formula, it's closed under complement.
* Closed under finite union: The finite union of $P$-definable sets is
  the definiable as the disjunction of their formulae
* Closed under symmetry of rotation of coorinates: Given a $P$-definable set
  defined by a formula with more than one free variables,
  a new $P$-definable set can be defined by renaming it's variables.
* Closed underder projection: For a formula with $n$ free variables,
  we can construct a formula that $P$-defines it's projection by
  universally quantifying over that variable.
* Closed under lifts: Given a $P$-definable set, and it's formula
  we can construct it's lift, by adding a new free variable, without any
  constraints.
* p-fibres: Given a $P$ definable set, and it's formula $\phi(v_1, \ldots, v_i, \ldots, v_n)$
  we can calculate it's fibre by interpreting it with $a = (v_1, \ldots, p, \ldots, v_n)$.
  i.e. $\phi' = \phi(v_1, \ldots, p, \ldots, v_n)$
