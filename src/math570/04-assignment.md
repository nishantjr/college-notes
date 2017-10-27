---
author: Nishant Rodrigues
title:  Math 500 - Homework 4
geometry: margin=1cm
---

\newcommand \Z {\mathbb Z}
\newcommand \union \cup
\newcommand \intersection \cap

\newcommand \sigring {\tau_{\text{ring}}}
\newcommand \proves \vdash
\newcommand \limplies \rightarrow
\newcommand \FIELDS {\text{FIELDS}}
\newcommand \ACF {\text{ACF}}

1.  Let $\phi$ be a statement provable in
    $\ACF_0 = \ACF \union \{ 1 + 1 + 1 \cdots + 1 \neq 0 : \forall q, prime \}$.
    Then it is provable using a finite number of axioms, $A$. Since $A$
    is finite,
    $I = A\intersection \{ 1 + 1 + 1 \cdots + 1 \neq 0 : \forall q, prime \}$
    has a sentence with some maximum $q$. Take $p$ to be the next lowest
    prime. Since $p$ is prime, each statement
    $\ACF_{>q} := \{ \phi := 1 + 1 \cdots +1 \neq 0 : \forall q < p \}$
    can be proved using the field axioms, and induction on $p$. The
    remaining axioms used in the proof must already be in $\ACF_p$, and
    the proof must hold in $\ACF_p$.

2.  d.  Contradiction-implies-everything: $(\phi \land \lnot \phi) \limplies \psi$

        $$\begin{aligned}
        \proves&  (\lnot\phi \limplies \lnot\phi)                                 & (self implication) \\
        \proves&  \lnot \psi \limplies (\lnot\phi \limplies \lnot\phi)            &(true then implied)\\
        \proves&  (\lnot \psi \limplies (\lnot\phi \limplies \lnot\phi))
                    \limplies [ ( \lnot \psi \limplies \lnot(\lnot\phi \limplies \lnot\phi)) \limplies \psi]
                        & (proof by contradiction)\\
        \proves& ( \lnot \psi \limplies \lnot(\lnot\phi \limplies \lnot\phi)) \limplies \psi & (modus ponus)\\
        \\
        \lnot(\lnot \phi \limplies \lnot \phi) \proves& \lnot \psi \limplies \lnot(\lnot \phi \limplies \lnot \phi) &(true then implied)\\
        \lnot(\lnot \phi \limplies \lnot \phi) \proves& \psi &(modus ponus)\\
        \phi \land \lnot \phi \proves& \psi &(sugar)\\
        \proves& \phi \land \lnot \phi \limplies \psi &(deduction thm)\\
        \end{aligned}$$
        
    e.  By (2.12.c), we have $\proves \top$.
        By true-then-implied: $\proves \lnot \psi \limplies \top$ and
        $\bot\proves \lnot \psi \limplies \bot$.
        By proof-by-contradiction, we have $\proves (\lnot\psi \limplies \top) \limplies [ (\lnot \psi \limplies \bot) \limplies \psi]$.
        By modus ponus, $\bot \proves \psi$.
        
    f.  By instantiation, $\proves \forall v. \lnot \phi \limplies \lnot \phi(t/v)$.
        By forward-contrapositive $\proves (\forall v. \lnot \phi \limplies \lnot \phi(t/v))
                \limplies ( \phi(t/v) \limplies\exists v. \phi)$.
        By modus-ponus $\proves \lnot \phi(t/v) \limplies\forall v. \lnot \phi$

\newcommand \tpoints { \mathcal T_{\sigma}^{\text{Con}}}
\newcommand \tsets   { \mathcal D_{\sigma}             }
\newcommand \gen[1]  { \langle #1 \rangle }

4.  a.  The $\emptyset$ and $\tpoints$ are in $\tsets$, since $\emptyset = \gen{\text{falsity}}$
        and   $\tpoints = \gen \top$.
    b.  Let $\gen\phi, \gen\psi$ be sets of theories in $\tsets$. Then $\gen\phi \union
        \gen\psi$ is the set of all theories that satisfy either $\phi$ or $\psi$.
        i.e. they satisfy $\phi \lor \psi$. So $\gen\phi \union \gen\psi = \gen {\psi\lor\phi} \in \tsets$
        This can be expanded to any finite union. For an infinite union,
        we can define a partial order by containment. We can define an infinite
        chain, and apply Zorn's lemma.

    c.  Let $\gen\phi, \gen\psi$ be sets of theories in $\tsets$. Then $\gen\phi \intersection
        \gen\psi$ is the set of all theories that satisy both $\phi$ and $\psi$.
        If these statements are inconsitent, then it is the empty set.
        Otherwise it is the set $\gen{\phi \land \psi}$. Both of these
        are in $\tsets$, and by induction we can show that finite intersections
        are in open.
    
    d.  Let $T_1 \ne T_2$ be $\tpoints$. Then there is a statement $\psi$ in
        on of the theories and not in the other. The neighbourhoods
        $\gen \psi$ and $\gen {\lnot \psi}$ are two neighbourhoods that
        seperate the points.

    e.  Compact:


4.  $\Longleftarrow$: $T \proves \phi \implies T \proves \forall v \phi(v) \implies T \proves \phi(c/v)$ 
    $\Longrightarrow$: 
    
    $\phi(c/v)$ cannot be in the axioms of $T$ since it is a $\sigma$-theory.
    There are no statements in $T$ explicitly mentioning $c$. So for any step
    in the proof that says something about $c$, it must be instantiated for a
    universally quantified statement. That is, there is a proof for $\forall v.\phi(u/v)$
    By the instantiation axiom we have $\phi(u/v) = \phi$. 
    
5.  a.  $$\begin{aligned}   
          \text{PA} &\proves 0 + S(0) = S(0 + 0)             && \text{PA4, instantiation, reflexivity of equality, MP }\\
          \text{PA} &\proves 0 + S(0) = S(0)                 && \text{PA3, instantiation, transitivity of equality, functions-respect-equality, MP}\\
          \text{PA}, 0 + x = x &\proves 0 + s(x) = s(0 + x)  && \text{PA4, instantiation, reflexivity of equality, MP }\\
          \text{PA}, 0 + x = x &\proves 0 + s(x) = s(x)      && \text{functions-respect-equality, transitivity of equality, MP }\\
          \text{PA} &\proves 0 + x = x \limplies 0 + s(x) = s(x)       && \text{deduction theorem }\\
          \text{PA} &\proves \forall x, 0 + x = x           &&\text{PA7 (induction) }\\
        \end{aligned}$$
     
    c.  (Commutativity of +):

        $$\begin{aligned}   
            \text{PA} & \proves (x + y) + 0 = x + (y)\\
            \text{PA} & \proves (x + y) + 0 = x + (y + 0)\\\\
            \text{PA} \forall x, y,(x + y) + n = x + (y + n) & \proves \forall x, y,(x + y) + s(n) = s((x + y) + n) \\
            \text{PA} \forall x, y,(x + y) + n = x + (y + n) & \proves \forall x, y,(x + y) + s(n) = s(x + (y + n)) \\
            \text{PA} \forall x, y,(x + y) + n = x + (y + n) & \proves \forall x, y,(x + y) + s(n) = x + s(y + n)   \\
           \\ 
            \text{PA} &\proves \forall x, y, z, \forall x, y, z, (x + y) + y = x + (y + z)&&\text{PA7 (induction) }\\
        \end{aligned}$$

6.  We build a model where induction can't hold. i.e. we add elements that are
    not "reachable" from 0 via repeated applications of the successor function,
    such that they 'break' associativitiy...
    We add new element to the model, $a, b$. Let $s(a) = a, s(b) = b$.
    
        a + 0 = a
        a + s(0) = s(a + 0) = s(a) = a                  (Q4 holds)
        a + s(n) = s(a + n) = s(a) = a                  (Q4 holds)
       
    We define addition to break associativitiy:
    
        a + a = b
        b + b = a
        a + b = a
        b + a = b
    
    For each case Q4 holds.
    
        s(a + a) = a + s(a) = a + a = b = s(b) 
        s(b + b) = b + s(b) = b + b = a = s(a) 
        s(a + b) = a + s(b) = a + b = a = s(a) 
        s(b + a) = b + s(a) = b + a = b = s(b) 
    
    But clearly, $0 + a = a$ cannot hold without contradicting $Q4$.
   

    We define mulitplation: 
    
        a * s(0)  = a*0 + a     = a                        (Q5 holds)                        
        a * ss(0) = a*s(0) + a  = a + a = b                (Q6)
        a * sss(0)= a*ss(0) + a = a + a + a = b + a = b    (Q6)
        
        b * s(0)  = b*0 + b     = b                        (Q5 holds)                        
        b * ss(0) = b*s(0) + b  = b + b = a                (Q6)
        b * sss(0)= b*ss(0) + b = b + b + b = a + b = a    (Q6)
    
    Since there is a model where the statements dont hold, $Q$ cannot prove these statements.
