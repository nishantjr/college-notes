
4.2 Cor 5: $|G| = n$, $p | n$ $p$ smallest such prime. $[G : H ] = p$. s.t. $H\normeq G$
========================================================================================

Let $\pi_H$ be the permutation representation of $G$. Let $K = \ker \pi_H$,
and $k = [ H : K ]$. We have $[ G: K] = [G:H][H:K] = pk$.

1st isomorphism thm gives us $G/K \cong \pi_H(G) \le S_p$.
Lagrange gives us $|G/K| = pk | p! \implies k | (p - 1)! \implies k = 1$.

$[H : K] = k = 1 \implies H = K$, and $K \normeq G$.


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
