---
title: Homology
---

Chain Complex
:   is a sequence of abelian groups with a sequence of homomorphisms:

    $\cdots \longrightarrow{\delta_{n+1}} C_n \longrightarrow{\delta_n} C_{n-1} \longrightarrow \cdots$

    such that $\delta_n \delta_{n+1} = 0$. i.e. $\Im \delta_n \subset \ker \delta_{n-1}$

    $\ker \delta_{n-1} / \Im \delta_n$ is called the nth homology group.

Pair $(X, A)$
:   $A \subset X$

Chain map $f_{\#} : C_n(X) \to C_n(Y)$
:   commutes with the boundary map -- $\delta_{\cdot} f_{\#} =  f_{\#} \delta_{\cdot}$

* Continuous maps $\longrightarrow$ chain maps $\longrightarrow$ homomorphisms on the homolgy groups
* Homotopic maps $f, g : X \to Y$ $\implies$ same homomorphism
* Homotopic equivalance $f$ $\implies$ isomorphism for all $n$

