---
title: Groups
author: Nishant Rodrigues
geometry: margin=2cm
---

\newcommand \N {\mathbb N}
\newcommand \Z {\mathbb Z}

\newcommand \normeq {\trianglelefteq}
\newcommand \aut {\text {Aut}}
\newcommand \stab {\text {Stab}}
\newcommand \orbit {\mathcal O}

Center of $G, Z(G)$
:   group of all elements in $G$ that commute.
    $Z(G) = \{ a: ag = ga \forall g \in G \}$

Quotient map: $\Pi:G\to G/N$
:   Surjective homomorphism, $\Pi(a) = aN$, multiplication:
    $(aN)(bN) = abN$

Product of gourp subsets
:   $AB = \{ ab: \forall a\in A \text{ and } b \in B \}$

Normal subgroup ($N \trianglelefteq G$)
:   $\forall g \in G \Longrightarrow gNg ^{-1} = N$

Index of a group $|G : H|$
:   The number of cosets of $H$ in $G$

Quotient groups and homomorphsims 
=================================

Proposition 13: $H, K \le G$
:   $|HK| = \dfrac { |H||K| } { |H\cap K| }$

Proposition 14: $H, K \le G$
:   $HK \le G \iff HK = KH$

Corollaries 15: $H, K \le G$
:   * $H \le N_G(K) \implies HK \le G$
    * $K \normeq G \implies HK \le G$, $\forall H \le G$

H characteristic subgroup of $G$, ($H$ char $G$):
:   $\forall h \in \aut(G), , h(H) = H$
:   $H$ is fixed by all automorphisms of $G$.
:   (Similar to the $\emptyset-$definable sets/substructures)



Isomorphism theorems
====================

These hold for:

1.  Groups (Normal subgroups)
2.  Rings (Ideals)
3.  $R-$modules
4.  ...

First Isomorpism Theorem (aka: an image is a quotient)
------------------------------------------------------

> Suppose, $\varphi: G \to H$ is a *surjective* homomorphism, and
> $N = Kern(\varphi)$
>
> Then, $\hat\varphi: G/N \to H,\quad \hat\varphi(gN) := \varphi(g)$ is
> an isomorphism and $G/N \cong H$

Alternately,

> If $\varphi: G \to H$ is a homomorphism,\
> then $N = \text{ker}(\varphi) \trianglelefteq G$ and
> $G/N \cong \varphi(G)$

Diamond Isomorphism Theorm
--------------------------

> $N$ is the (normal) kernel of a surjective homo $\varphi: G \to G'$,
> $A \le G$. $A$ is a subgroup. Then,
>
> -   $\varphi ^{-1} (\varphi (A)) = AN$
> -   $N \le AN \le G$
> -   $AN/_N \cong \varphi(A) \cong A/_{A\cap N}$

Third Isomorphism Theorem (aka: Cancel like it's division, yo)
--------------------------------------------------------------

> $\varphi: G \to \bar G$ is a surjective homomorphism with kernel $N$.\
> Let $\bar K \trianglelefteq \bar G$ and $K = \varphi ^{-1}(\bar K)$.
>
> Then: $\bar G / \bar K \cong G/K \cong (G/N)/_{(K/N)}$

Lattice Isomorphism Theorem (Correspondence threorem)
-----------------------------------------------------

The subgroups of $G$ that contain $N$ have the same lattice as $G/N$'s
subgroup lattice.

> $\varphi: G \to \bar G$ is a homomorphism, and $N$ is it's kernel.
>
> -   $\bar B \to \varphi ^{-1} (\bar B)$ is a bijection between the
>     subgroups of $\bar G$ and subgroups of $G$ containing $N$
> -   normal subgroups go to normal subgroups


Group Actions
=============

Kernel of an action $\cdot$:
:   $\ker(\cdot)  = \{ g \in G : g \cdot x = x, \forall x \in X \}$
:   The set of elements of $G$ that keep all $x$ fixed.

Stabilizer of $x \in X$
:   $G_a = \stab_G(x) =  \{ g \in G : g \cot x = x \}$
:   The set of elements in $G$ that keep $x$ fixed.

    $\ker(\cdot) \subseteq \stab_G(x), \forall x \in X$

Faithful:
:   $\ker(\cdot) = 1$

*  $|\orbit_a| =  [G : \stab_G(a)]$

*  $S_n$ on $\{1, 2, \ldots n \}$:
 
    * Identity permutation representation.
    * Faithful.
    * For each $i$, $\stab_{S_n}(i) \cong S_{n-1}$.

*  $D_8$ on vertices of square:
 
    -   Permutation representation:
        -   $r \mapsto (1 2 3 4)$
        -   $s \mapsto (2 4)$

Action by conjugation
--------------------------

Important results for conjugation:

*   $\stab_G(S) = N_G(S)$
*   $| \text{Conj}_G(S) | = \{ g S g^{-1} : \forall g \in G \}| = | G : N_G(S) |$
*   $\stab_G(\{s\}) = C_G(s)$

Class equation
:   $|G| = |Z(G)| + \sum_{g\in G}  [G: C_G(g_i)]$, where $\{ g_i \}$ are the
    representitives of the conjugacy classes of elements not in the center.
    
$p-$groups
:   * The center of a $p-$groups is non-trivial.-
    * $H$ is a non-trivial subgroup, then $H$ intersects the center non-trivially
        - Every normal subgroups of order $p$ is in the center
    * Every maximal subgroup of $P$ is of index $p$ and is normal in $P$


Sylow's theorem
===============

$p-$group:
:   Group of order $p^a$

$p-$sylow subgroup of group $G$, $|G| = p^am, p \not| m$:
:   subgroups of order $p^a$ are $p-$sylow subgroups.

\newcommand \sylow {\text{Syl}}

$\sylow_p(G)$:
:   The set of $p$-sylow subgroups of $G$.

$n_p(G)$:
:   $|sylow_p(G)|$

Sylow's Theorem
:   Let $G$ be a group of order $p^am, p \not | m, p$ prime. Then

    1.  $\sylow_p(G) \ne \emptyset$ 
    2.  $P \in \sylow_p(G)$, then $p-$subgroups of $G$ are subgroups of conjugates $P$.
    3.  * $n_p \equiv 1 \mod p$
        * $n_p = [ N_G(P) : G ]$
        * $n_p | m$

Corollary 20: If $P$ is a $p-$syplow subgroup of $G$
:   {TFAE}

    * $P$ is the unique $p$-subgroup of $G$
    * $P$ is normal in $G$
    * $P$ is characteristic in $G$ ?XXX? What is characteristic 
    * All subgroups of order $p^b$ are $p-$subgroups.

Nilpotent and solvable groups
=============================

Upper Centeral series
:   Inductively:

    * $Z_0(G) = 1$
    * $\dfrac{Z_{n+1}(G)}{Z_i(G)} = Z\Big(\dfrac {G }{ Z_i(G)}\Big)$

Nilpotent groups
:   Groups who's upper central series has $Z_c(G) = G$ for some $c \in \N\cup \{0\}$.

    Class:
    :   The smallest such $c$
    
    TFAE
    
    * $G$ is nilpotent
    * $G \cong P_1 \times P_2 \times \cdots P_s$ ($P_i$ are distinct (upto $\cong$) sylow-subgroups
    * All sylow groups are normal in $G$.
    * $H < G \implies H < N_G(H)$ (Every proper subgroup of $H$ is a proper subgroup of it's normalizer)

> cyclic ($\Z_p$) $\subset$ abelian $\subset p-$groups ($D_8, D_{2^n}$) $\subset$ nilpotent $\subset$ solvable ($D_10, S_3, S_4$) $\subset$ groups ($S_5, A_5$)

