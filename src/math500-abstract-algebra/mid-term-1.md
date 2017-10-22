---
title: Midterm notes
author: Nishant Rodrigues
geometry: margin=2cm
---
\newcommand \N {\mathbb N}
\newcommand \Z {\mathbb Z}

\newcommand \normeq {\trianglelefteq}
\newcommand \aut {\text {Aut}}
\newcommand \stab {\text {Stab}}
\newcommand \orbit {\mathcal O}
$D_8$
:   Dihederal group with $r^4 = e$ 


3.2 Quotient groups and homomorphsims 
=====================================

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

3.3 Isomorphism Theorems
========================

1st isomorphism thm:
:   homomorphism $h: G\to H$, then $h(G) \cong  G/\ker(h)$
    and $\ker(G) \normeq G$

2nd isomorphism thm:
:   Diamond isomorphism thm

3rd Isomorphism thm
:   Cancellation

4th Isomorphism thm
:   lattice isomorphism
:   bijection between subgroups containing $N$ and subgroups of $G/N$

4.1 Group Actions
=================

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

4.2 Cor 5: $|G| = n$, $p | n$ $p$ smallest such prime. $[G : H ] = p$. s.t. $H\normeq G$
========================================================================================

Let $\pi_H$ be the permutation representation of $G$. Let $K = \ker \pi_H$,
and $k = [ H : K ]$. We have $[ G: K] = [G:H][H:K] = pk$.

1st isomorphism thm gives us $G/K \cong \pi_H(G) \le S_p$.
Lagrange gives us $|G/K| = pk | p! \implies k | (p - 1)! \implies k = 1$.

$[H : K] = k = 1 \implies H = K$, and $K \normeq G$.

4.3: Action by conjugation
==========================

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


Classification of groups and the Jordan-Holder program
======================================================
Normal series:
:   $1 = N_0 \normeq N_2 \normeq N_3 \ldots \normeq N_k = G$
    
    ($N_{i+1}/N_i$ NOT necessarily simple)

Composition series:
:   $1 = N_0 \normeq N_2 \normeq N_3 \ldots \normeq N_k = G$
    and $N_{i+1}/N_i$ is simple.

    Composition factor:
    :   $N_{i+1}/N_i$

Jordan-Holder theorem: For all $G$, finite, then composition series 
:   * exists
    * is unique up to reordering of composition factors

Solveable groups:
:   Groups that can be written as a normal chain with abelian factors.
:   $1 = G_0 \normeq G_1 \normeq G_2 \normeq \cdots \normeq G_n = G$

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


---

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

Applications
------------

Counting:  Subgroups of order $p$ intersect at the identity. (e.g. 30) 

    * 30: = 1, 2, 3, 5, 6, 10, 15, 30

         n_2: 1, 3, 5, 15
         n_3: 1, 10 
         n_5: 1, 6

      XXX Index vs normality: "Any subgroup of order 15 is necessarily normal"

12:

    3       : 1 4
    2^2     : 1 3
   
   
---


$S_n$
:   * Not nilpotent ($Z(S_n) = 1$)
    * Subgroups: $A_n$, $S_{n-1}$, ?$D_n$
    * $A_n$ is normal

$A_n$
:   * Not nilpotent (trivial center $Z(A_n) = 1$)


$D_{2n} = \langle r, a : r^{2n} = e$
:   * nilpotent if $n=2^{x}$ of class $x$
    * $\langle r \rangle$ normal, $\langle a \rangle$ normal for $ n  = 2$ 
    * $n = 2$ both subgroups normal

 https://en.wikipedia.org/wiki/GAP_(computer_algebra_system)
