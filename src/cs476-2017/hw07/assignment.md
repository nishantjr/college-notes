---
author: Nishant Rodrigues
title: CS 476 - Homework 7
geometry: margin=2cm
fontsize: 10pt
---

\newcommand \inv {^{-1}}
\newcommand \equalg {\leftrightarrow_G}

$$
\begin{aligned}
       \,& x \inv x                                                 \\
\equalg\,& (x \inv \cdot x) \cdot 1                                 \\
\equalg\,&  x \inv \cdot ( x  \cdot 1 )                             \\
\equalg\,&  x \inv \cdot (x \cdot (x\inv \cdot (x\inv)\inv))        \\
\equalg\,&  x \inv \cdot ((x \cdot x\inv) \cdot (x\inv)\inv)        \\
\equalg\,&  x \inv \cdot (1 \cdot (x\inv)\inv)                      \\
\equalg\,& (x \inv \cdot 1) \cdot (x\inv)\inv                       \\
\equalg\,&  x \inv \cdot (x\inv)\inv                                \\
\equalg\,&  1                                                       \\
\end{aligned}\quad\quad\quad\quad
\begin{aligned}
       \,&  1 \cdot x                                             \\
\equalg\,& (x \cdot x \inv ) \cdot x                              \\
\equalg\,& x \cdot (x \inv \cdot x)                               \\
\equalg\,& x \cdot 1                                              \\
\equalg\,& x                                                      \\
\end{aligned}\quad\quad\quad\quad
\begin{aligned}
       \,& (x \cdot y)\inv                                                \\
\equalg\,& (x \cdot y)\inv \cdot 1                                        \\
\equalg\,& (x \cdot y)\inv \cdot ( x                        \cdot x\inv)  \\
\equalg\,& (x \cdot y)\inv \cdot ((x \cdot  1)              \cdot x\inv)  \\
\equalg\,& (x \cdot y)\inv \cdot ((x \cdot (y \cdot y\inv)) \cdot x\inv)  \\
\equalg\,& (x \cdot y)\inv \cdot (((x \cdot y)\cdot y\inv)  \cdot x\inv)  \\
\equalg\,& (x \cdot y)\inv \cdot ((x \cdot y) \cdot(y\inv   \cdot x\inv)) \\
\equalg\,& ((x \cdot y)\inv \cdot (x \cdot y)) \cdot (y\inv \cdot x\inv)  \\
\equalg\,& (1)                                 \cdot (y\inv \cdot x\inv)  \\
\equalg\,&                                           (y\inv \cdot x\inv)  \\
\end{aligned}$$

---

```maude
fmod SET-ALGEBRA is
    protecting NAT .
    sort Set .
    subsort Nat < Set .
    op mt   :         -> Set  [ctor] .
    op _,_  : Set Set -> Set  [ctor assoc comm id: mt] .
    op _~_  : Nat Nat -> Bool [comm] .
    op _~_  : Set Set -> Bool [comm] .
    op _C=_ : Set Set -> Bool .
    op _in_ : Nat Set -> Bool .
    op _\ _ : Set Set -> Set .
    op _/\_ : Set Set -> Set .
    op |_|  : Set     -> Nat .

---
    vars N M : Nat .
    vars S T : Set .

--- Equality of Nats
    eq s(N) ~ s(M) = N ~ M .
    eq 0    ~ s(M) = false . 
    eq 0    ~ 0    = true  .
--- idemopotency
    eq N , N = N . 
--- set membership
    eq N in M,S   = N ~ M or N in S .
    eq N in mt    = false .
--- set containment 
    eq mt  C= S = true     .
    eq N,S C= T = N in T and S C= T .
--- set equality
    eq S ~ T = S C= T and T C= S .
--- set difference
    eq (N,S)  \ T = if N in T then S \ T      else N , (S  \ T) fi .
    eq mt     \ S = mt .
--- set intersection
    eq (N,S) /\ T = if N in T then N,(S /\ T) else     (S /\ T) fi .
    eq mt    /\ S = mt .
--- set cardinality
    eq | N,S | = 1 + | S \ N | .
    eq | mt | = 0 .
endfm

reduce (3,3,3,4) == (3,4) .

reduce 3 ~ 4         == false .
reduce 4 ~ 3         == false .
reduce 4 ~ 4         == true  .

reduce (3,3,4,4,4,4,4) ~ (3, 4) == true .
reduce (3) ~ (3, 4)             == false .

reduce 3 in 1,2,3    == true  .
reduce 3 in 0,0,0,3  == true  .
reduce 3 in 0        == false .
reduce 3 in 0,5      == false .
reduce 3 in mt       == false .
reduce 3 in mt       == false .

reduce 1,2,3 C= 2,3    == false .
reduce 2,3   C= 1,2,3  == true  .
reduce 1,2,3 C= mt     == false .
reduce mt    C= 1,2,3  == true  .

reduce 3  \ 4  == 3 .
reduce 3 /\ 4  == mt .
reduce (3,3,4) /\ 4  == 4 .

reduce | 1,2,3,544,4,4,4,1 | == 5 .

--- Original test suite
red 5 ~ 12 == false .
red 15 ~ 15 == true .
red (3,3,4,4,4,2,2,9) \ (3,3,3,4,2,7) == 9 .
red (3,3,4,4,4,2,2,9) C= (3,3,3,4,2,7) == false .
red (3,3,4,4,2,2,9) C= (3,4,2,7,9) == true .
red 3 in (3,3,4,4,7) == true .
red 9 in (3,3,4,4,7) == false .
red (3,3,4,4,4,2,2,7) ~ (3,3,3,4,2,7) == true .
red (3,3,3,4,4,4,2,2,7,9) /\ (3,3,3,3,4,4,2,7,7,10) == 2,3,4,7 .
red | 3,3,4,4,4,2,2,9 | == 4 .

quit
``` 
