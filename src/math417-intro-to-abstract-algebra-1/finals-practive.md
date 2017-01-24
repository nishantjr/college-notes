Necklaces made from 4 Red, 3 White 2 Yellow

Let $X =$ arrangements of beads at vertices of a 9-gon. Then $|X| = $\frac {9!}
{4!3!2!}$

Let $D_9 = \langle a, r | a^2 = e, r^9 = e \rangle$  
Let $D_9$ act on $X$, such that $a$ flips the 9-gon along the horizontal axis
though one vertex. $r$ rotates the 9-gon by $\frac {360} 9$ degrees
anti-clockwise.

$$\begin{aligned}

|\text{Fix}(e)| = |X| = \frac {9!} {4! 3!2!} \\
|\text{Fix}(r)| = |\text{Fix}(r^8)| = 0   \\

|\text{Fix}(r^3)| =
|\text{Fix}(r^6)| =
                 0  \\

|\text{Fix}(r^2)| =
|\text{Fix}(r^7)| =
                 0  \\

|\text{Fix}(r^4)| =
|\text{Fix}(r^5)| =
                 0  \\

|\text{Fix}(ar^n)| = \frac {4!} {2!} \\
\end{aligned}$$

By Burnside's lemma, 
$$\begin{aligned}
$|O| = \frac 1 {|G|} \sum_g |\text{Fix}(g)|  \\
     &= \frac 1 {18} (|X| + 9 * 4 * 3) \\
\end{aligned}$$

---

$\text{Aut}(\mathbb Z) \cong \{1, -1\}$

Let $a, b \in \text{Aut}(\mathbb Z)$. Let $a(1) = r, b(1) = s$.

$a(n) = a(n.1) = a(1+\cdots+1) =  na(n)$, so $\phi(a) = a(1)$ is a bijection from
$\text{Aut}(\mathbb Z) \to \mathbb Z$ 

$ab(1) = a(b(1)) = rs$, so for $a$ to be invertable, we need $b$ such that $rs =
1$, that is: $a(1)$ is a unit.


---

Show  $|G| = |Z(G)| + \sum_{g \notin Z(G)} \frac {|G|} {Cent(g)}$

Since group action on self by conjucation is 

since orbits are equv rel
$$\begin{aligned}

|G|
&= \sum_{\forall g \in G} |O(g)| \\
&= |Z(G)| + \sum_{\forall g \notin Z(G)} |O(g)| &\quad\ldots&\text{ elements
in}Z(G) \text{ are alone in their orbit (planets :P)}\\
&= |Z(G)| +  \sum \frac {|G|} {\text{Stab}(g)} \\
&= |Z(G)| \sum \frac {|G|} {\text{Stab}(g)} \\
\end{aligned}$$

---

Consider $|G| = p^n$

$|G| = |Z(g)| + \sum_{g \notin Z(G)} \frac {|G|}{Cent(G)}$

Since orbits of elements are the only elements with orbits of size 1,
all other elements must have larger orbits. 
$|G|, |Cent(G)|$ are subgroups of $G$ so must be powers of $p$, and $\frac {|G|}{Cent(G)} > 1$, must be multple of $p$. So $Z(G)$ must be multiple of $p$

----

## Group of size $p^2$ is $Z_{p^2}$ or $Z_p \cross Z_p$

Suppose not cyclic.

Then all non-identity elements have order $= |<g>| = p$ (order = 1
$\Longrightarrow$ identity; order = $p^2 \Longrightarrow G$ is cyclic.

Take any $a \in Z(G), a \ne e$. and $b \in G - <a>$. Then $a\cap b$ has order $1,
p$ or $p^2$. If order is $p$, then $a \cap b = <a> = <b>$ -
contradiction. Cannot be $p^2$ since implies G abelian. Must be $\{e\}$.

So $<a>\cross<b>$ must have $p^2$ elements and $G = <a>\cross<b> = Z_p \cross
Z_p$

---

Prime factorization is unique

Consider the number 1: 1 cannot be written as a non-empty product of primes.
So 1 has a unique (zero-product) of primes.

Assume all numbers less than $n$, have a unique factorization.
 
SUppose $n$ has 2 factorizations:

   n = p_1 ... p_n
   n = q_1 ... q_n

Assume without loss of generality, p_1 <= ... <= p_n, q_1 <= ... <= q_n, p_1 <= q_1.

Now, p_1 divides n = q_1 ...q_n. So by proposition, p_1 divides one of q_1...
q_n. Since p_1, q_1...q_n are prime, p_1 = q_i for some i.

So n / p_1 = p_2 ... p_n
           = q_1... q_i-1 ... q_i+1... p_n

By induction...

---

$G$ has order $p^n$, show that $\exists \{e\} \subsetneq N \subsetneq G$

If $G$ is not abelian, then $Z(G)$ is desired normal subgroup. 

If $G$ is abelian, then every subgroup is normal. Let $g$ be a non-identity
element. Then $<g>$ has order $p^s$ $s>0; s \le n$. If $s \le n$ then you've got
what you want. Otherwise $g^p$ has order $s-1$.

---

$G$ has order $p^n$, show that $\{e\} = G_0 \subsetneq G_1 ... G_n = G$

If $n= 1$ then party yo.

Otherwise, assume, that it's true for all orders less than $n$.

Now, the group $G$ has a proper normal subgroup $N$ of order $p^s; 1 \le s \le n$

By inductive hyp, $....$

Also apply indcutive hyp to $\bar G = G/N$.

Take $G_{s+k} = \pi ^{-1}(\bar G_k)$

---

Suppose $p$ divides $|G|$ then $G$ has an element of order $p$

Let $X = (a_1...., a_p), a_i \in G, $a_1.a_2....a_p = e$
Then for the first p-1 elements, we can select them arbitarily, and the last
element must be the inbverse of the previous elements.
So $|X| = p^{n-1}|$.

All the elemetns of $X$ must either be in an orbit alone, or in an orbit of
size $p$

$|X| = p^{n-1} = n + kp$. $n$ is greateer than one since $(e, e, e, e, e...e)$
is fixed. But $n$ must be a multple of $p$. So $(a, a, a,a ,a ,a a) \in X$.
So $a^p = e$

---


