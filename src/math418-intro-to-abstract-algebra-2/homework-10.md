## 10.1 # 21

Field $F$. $R$, ring of $n\times n$  matrices with enteries in $F$
$M$ $n\times n$ matrices with only nonzero values in the first column.

$M$ is closed under addition, since the only way for addition to return non-zero
entries outside the first column is for one of the matrices to have non-zero
elements. Associativity, commutativity and inverses follow from those properties
on the elements of the entries.

Given a matrix $x$, let $x_{ij}$ represent the value in the $i$th row, $j$th
column.

Consider $M$ as a left-$R$-submodule.

$(rb)_{ij} = \prod r_{ik} b_{kj}$

Suppose $j \ne 1$, then $b_{kj} = 0$ and $(rb)_{ij} = \prod r_{ik} 0 = 0$, so 
$M$ is closed under multiplication with an element in $R$.

So $\forall a, b \in M, r \in R, a + rb \in M$ and by the submodule test $M$ is
a left-$R$-submodule of $R$.

---

Let $a \in M$ be a matrix such that $a_{21} = 1$ and all other values are $0$,  
Let $r \in R$ be a matrix such that $a_{12} = 1$ and all other values are $0$.

Then $(ar)_{22} = \prod a_{2k}r_{k2}  = a_{21}r_{12} = 1$. Since this is
not in $M$, scalar multiplication is not closed and $M$ is not a
right-submodule.


## 10.2 #8

Let $m \in M$ be torsion. i.e. $\exists r \in R \setminus \{0\}$ such that $r m
= 0_M$. Now, $0_N = \phi(0_M) = \phi(r m) = r \phi(m)$

So $\phi$ maps all torsion element of $M$ to torsion elements of $N$, and
$\phi(\mathrm{Tor}(M)) \subseteq \mathrm{Tor}(N)$

## 10.2 #9

Let $\phi \in \mathrm{Hom}_R(R, M)$ and suppose $\phi(1_R) = a \in M$
then for any $r \in R$, $\phi(r) = r\phi(1_R) = ra \in M$. So, $\phi$ is
determined by it's image of $1_R$.

$\mathrm{Hom}_R(R, M)$ is a $R$-module, with group operation $+$:
$(\alpha + \beta)(r) = \alpha(r) + \beta(r) = r(\alpha(1_R) + \beta(1_R))$.
This is the homomorphism determined by $1_R \mapsto \alpha(1_R) + \beta(1_R)$
and so addition is closed. Since $M$ is a module and $+$ in $M$ is associative,
closed under inverses, commutative and closed under multiplication with
elements of $R$, these properties follow for $\mathrm{Hom}_R(R, M)$ too
since they determine what $1_R$ maps to.

Let $\Phi: \mathrm{Hom}_R(R, M) \to M$, $\Phi: \alpha \mapsto \alpha(1_R)$.

Homomorphism: Let $\alpha, \beta \in \mathrm{Hom}_R(R, M), r \in R$.
$\Phi(\alpha + \beta) = (\alpha + \beta)(1_R) = \alpha(1_R) + \beta(1_R) =
\Phi(\alpha) + \Phi(\beta)$, and $\Phi(r \alpha) = (r\alpha)(1_R) =
r\Phi(\alpha)$ and so is a homomorphism.

Surjective: For every $m \in M$ there is a homomorphism $\alpha: 1_R \mapsto m$.
This means that for any $r \in R, \alpha(r) = r\alpha(1_R)$, and allows
$\alpha(r + s) = \alpha(r) + \alpha(s) = (r + s)\alpha(1_R)$.

Injective: Since $\phi$ is determined by it's image of $1_R$, it must be
injective.

So $\Phi$ is an isomorphism.

## 10.3 #13. 

$F$ is a free module of finite rank so it has a finite basis $\{ f_1, \cdots f_n
\}$.

Let $\phi \in \mathrm{Hom}_R(F, R)$ and $F \ni f = r_1 f_1 + r_2 f_2 \cdots + f_n f_n$, then:
$$\begin{aligned}
\phi(f) &= \phi(r_1 f_1 + r_2 f_2 \cdots + f_n f_n) \\
        &= \phi(r_1 f_1) + \phi(r_2 f_2) \cdots + \phi(r_n f_n) \\
        &= r_1 \phi(f_1) + r_2 \phi(f_2) \cdots + r_n \phi(f_n)
\end{aligned}$$

So $\phi$ is uniquely determined by where it takes the basis of $F$. Let $\Phi:
\mathrm{Hom}_R(F, R) \to F$, $\Phi: \alpha \mapsto \alpha(f_1) f_1 + \cdots +
\alpha(f_n)f_n$. Since $F$ is free this mapping is injective, and since $\alpha$
is uniquely determined by where it takes the basis, it is surjective. and so
$\mathrm{Hom}_R(F, R) \cong F$.
