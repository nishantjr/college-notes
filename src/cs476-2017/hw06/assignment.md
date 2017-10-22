---
author: Nishant Rodrigues
title: CS 476 - Homework 6
geometry: margin=2cm
fontsize: 10pt
---

How many algebras?
==================

\newcommand \alg[1] {\mathcal{#1}}
\newcommand \N {\mathbb N}

Since there are no equational constraints on the algebra, it's
function-symbols (and thus constant-symbols as 0-arity function-symbols)
may have any interpretation. For $\Sigma_{\text{DL}}$, an algebra on the
underlieing set $A$ can interpret the symbol $0$ as any function in
$[1 \to A] = [A^0 \to A]$ -- it is interpreted as a constant function
returning either $a, b$ or $c$. Similarly the symbol $s(\_)$ is of arity
1, and can be interpreted as any function in $[A \to A]$ of which there
are $3 \times 3 = 9$. This gives us a possible $3 \times 9 = 27$
possible $\Sigma_{\text{DL}}$ algrebras.

We can generalize this to arbitary signatures $\Sigma_B$, over a finite a set $B$ as:

$$\begin{aligned}
| \text{Alg}(\Sigma_B, B) | = \prod_{n\in\N} \prod_{F_n}  |B|^{n+1}
\end{aligned}$$

Thus adding the $\_+\_$ and $\_\times\_$ to $\Sigma_{\text{DL}}$
giving us (say) $\Sigma_{\text{PA}}$ over the set $A = \{a, b, c\}$ has
$3^1 \times 3^2 \times 3^3 \times 3^3$ possible algebras.

\newpage

Permute lists of `Qid`s
========================

```maude
fmod LIST-QID is protecting QID .
    sort ListQid .
    subsort Qid < ListQid .
    op nil :                 -> ListQid [ctor] .
    op _:_ : ListQid ListQid -> ListQid [ctor assoc id: nil] .
endfm

fmod SET-LIST-QID is protecting LIST-QID .
    sort Set-ListQid .
    subsort ListQid <  Set-ListQid .

    vars E1 E2 : Qid .
    vars L1 L2 L3 : ListQid .
    vars S1   : Set-ListQid .

    op mt  :                         -> Set-ListQid  [ctor] .
    op _ _ : Set-ListQid Set-ListQid -> Set-ListQid  [ctor assoc comm id: mt] . 
    eq L1 L1 = L1 .

```

We generalize list concatenation to generate left cosets of a `Set-ListQid`:

```maude
    op _:_ : ListQid Set-ListQid -> Set-ListQid [assoc id: nil] .
    eq E1 : (L1 L2 S1) = (E1 : L1) (E1 : (L2 S1)) .
    eq E1 : mt        = mt .
```

`p(with, of)`: With each element, `e` in the list `with`, generate
permutations of the list `of` with `e` as the first element and return
their union. Behaviour is undefined if any element is in `with` but not
in `of`.

```maude
    op p : ListQid ListQid -> Set-ListQid .
    eq p( E1 : L1, L2 : E1 : L3 ) = (E1 : perm( L2 : L3))
                                    p( L1,  L2 : E1 : L3) .
    eq p( nil, L1 ) = mt .
```

```maude
    op perm : ListQid -> Set-ListQid .
    eq perm(E1 : L1)  = p (E1 : L1, E1 : L1) .
    eq perm(nil) = nil .
endfm
```

Finally, we test things out:

```maude
reduce ('a : 'b) : 'c : ('d : 'e) .    --- Are our lists associative?
reduce ('x) ('a : 'b) ('a : 'b) 'a .   --- Cosets and Set union need to have
                                       --- their precedence sorted out

reduce 'a : ( 'b 'c )                  --- Cosets work as expected?
    == ('a : 'b) ('a : 'c) .                
reduce 'a : mt == mt .                 --- and hopefully, not losing our identities
reduce 'a : nil == 'a .                ---

reduce ('a : ('a : nil)) ('a : 'a : nil) .

reduce perm('a) == 'a .
reduce perm('a : 'a) == 'a : 'a .
reduce perm('a : 'b) == ( 'a : 'b ) ( 'b : 'a ) .
reduce perm('a : 'b : 'c : 'a : 'b : 'c ) .

quit
```
