---
title: Homework 6
header-includes: |                                                              
    \usepackage{mathtools} 
---
\newcommand \lla {\longleftarrow}

1.  `(1)` By cutting up the $\Delta$-complex and reattaching it as
    shown, we get the CW-Complex for the Mobius Strip as shown.

    $$\begin{aligned} \\ \\ \\ \\ \end{aligned}$$

2.  `(4)` The triangular parachute can be constructed from one
    $2-$simplex - ($D$), three $1-$simplex (a, b, c) and one $0-$simplex (v). 
    
    So $\Delta_0(X)$ and $\Delta_2(X)$ are both $\Z$ and $\Delta_1(X) = \Z^3$.
    
    We have $\cdots 0 \longrightarrow \Z \xhookrightarrow {\delta_2} \Z^3 \xrightarrow{\delta_1 = 0} \Z \longrightarrow 0$
    and:

    * $\ker \delta_2 = 0$, so $H_2 = 0$
    * $\delta_2 D = a  - b + c$, since $\{ a, b, a - b + c \}$ is a basis for
        $\Delta_1(X)$ and so $H_1^\Delta = \Z^2$.
    * $\delta_1 a = \delta_1 b = \delta_1 c = v - v = 0$,
      and $H_0^\Delta =  \Z / 0 = \Z$
    * For any other $n$, $H_n^\Delta = 0$

3. `(5)` The Klien bottle can be constructed from two $2-$simplex (U, L), 3 $1-$simplex
    (a, b, c) and one $1-$simplex (v).
    So $\Delta_0(X) = \Z^2$ and $\Delta_1(X) = \Z^3$and $\Delta_2(X) = \Z$.
    
    $$\cdots 0 \longrightarrow \Z^2 \xrightarrow {\delta_2} \Z^3 \xrightarrow{\delta_1 = 0} \Z \longrightarrow 0$$
    
    $\delta_1 a = \delta_1 b = \delta_1 c  = v - v = 0$ so  $\ker \delta_1 = \Z^3$
    and $\image \delta_1 = 0$.  
    $\delta_2 U = c - b -a$ and $\delta_2 L = b -a -c  \implies$
    $\image\delta_2$ is the subgroup generated by $c - a - b$ and $b - c - a$.

    $$\begin{aligned}
       H_1^\Delta &= \text{FreeAb}(a, b, c) / \image \delta_2
               \\ &= \text{FreeAb}(a, b, c) / \angleb { c - a - b, b - c - a }
               \\ &= \text{FreeAb}(a, b, a + b) / \angleb { b - 2a - b }
               \\ &= \text{FreeAb}(a, b) / \angleb { b - 2a - b }
               \\ &= \text{FreeAb}(a, b) / \angleb { 2a }
               \\ &= \Z \times \Z/2\Z
     \end{aligned}$$

    Similary to `2.`, Since the kernel of $\delta_2 = 0$, $H_0^\Delta = \Z$ and $H_n^\Delta = 0$ for $n \ge 2$

4.  In this space, there are $n$ 3-simplices.
    Since the neighbouring $3-$simplices have been identified along horizontal and vertical faces,
    there are:
    * $n$ horizontal and $n$ vertical $2-$ simplices
    * there are one vertical,  one horizontal,  
       and $n$ diagonal $1-$simplices
    * two $1-$simplices


    $$\begin{array}{ *{11}{c} }
    \text{Dimension}        &                       &0                      &                       &1                      &                       &2                      &                       &3             &    & 4      \\
    \text{Number}           &                       &2                      &                       &n+2                    &                       &2n                     &                       &n             &    & 0      \\
    \text{Generators}       &                       &i,o                    &                       &v,h,d_n                &                       &V_n,H_n                &                       &T_n           &    & 0      \\
    \hline
    0                       &\lla                   &\Z^2                       &\lla               &\Z^{2+n}               &\lla                   &\Z^{2n}                &\lla                   &\Z^n          &\lla& 0      \\
    \ker                    &\angleb{i,o}           &                       &\angleb{v,h, b_i-b_j}  &                       &\langle V_n-V_{n-1}    &                       &\angleb{\Sigma T_i}                   &    & 0      \\
                            &                       &                       &                       &                       &+H_n-H_{n-1}\rangle                                                                   &    &        \\
    \image                  &0                      &                       &\angleb{i-o}           &                       &\langle v+b_{n+1}-b_n,  &                       &\langle V_n-V_{n-1}                  &    & 0      \\
                            &                       &                       &                       &                       &+h-b_{n+1}+b_n\rangle  &                       &+H_n-H_{n-1}\rangle
    \end{array}$$
    
    $$
    \begin{aligned}
    \delta_1 v   &= i - i = 0  \\
    \delta_1 h   &= o - o = 0  \\
    \delta_1 b_n &= i - o      \\
    \ker \delta_1 &= \angleb{v, h, b_i - b_j} \quad\forall i, j \le n \\
    \image\delta_1&= \angleb{ i - o }
    \end{aligned} \quad \quad\quad \quad
    \begin{aligned}
    \delta_2 V_n &= v + b_{n+1} - b_{n}  \\
    \delta_2 H_n &= -h + b_{n+1} - b_{n}  \\
    \ker \delta_2 &= \big\{ \sum_{i\in\Z} a_i V_{i} - a_i H_i : \sum a_i = 0 \big\} \\
                  &= \angleb{V_n-V_{n-1} + H_n-H_{n-1}} \\  
    \image\delta_2&= \angleb{v + b_{n+1} - b_{n}, -h + b_{n+1} - b_{n}}
    \end{aligned}
    $$
    
    $$
    \begin{aligned}
    \delta_3 T_n    &= V_n - V_{n-1} + H_n - H_{n-1} \\
    \image \delta_3 &= \angleb{V_n - V_{n-1} + H_n - H_{n-1}} \\
    \ker \delta_3   &= \angleb { \sum_{i\le n}T_i }
    \end{aligned}
    $$
    
    Thus, we have 
    $$\begin{aligned}
        H_0  &= \ker \delta_0 / \image \delta 1 = \angleb{i, o} / \angleb{i - o}
                       = \angleb{i - o, o} / \angleb{i -o } &\iso \Z \\
        H_1  &= \ker \delta_1 / \image \delta_2     \\
             &= \angleb{v, h, b_i - b_{i + 1}} / \angleb{v+b_{n+1} -b_n, h -b_{n+1} +b_n}     \\
             &= \angleb{v, v - h, b_i - b_{i + 1}} / \angleb{v - h, h -b_{n+1} +b_n}     \\
             &= \angleb{h, b_i - b_{i + 1}} / \angleb{h -b_{i+1} +b_i}     \\
             &\iso \Z_n  \\
        H_2  &= \ker \delta_2 / \image \delta_3     \\
             &= \angleb{V_n - V_{n-1} + H_n - H_{n-1}}/ \angleb{V_n - V_{n-1} + H_n - H_{n-1}} \\
             &= 0 \\
        H_3  &= \ker \delta_3 / \image \delta_4     \\
             &= \angleb{\sum T_i}/ 0 \\
             &= \Z
    \end{aligned}$$
    
    
5.  Here, the space's $\Delta-$complex can be constructed from three $2-$simplices (U, L, R),
    4 $1-$simplices (a, b, c, d) and 1 $0-$simplex, as shown.

    $\cdots 
    \longrightarrow 0 
    \longrightarrow \Z^3 
    \longrightarrow \Z^4 
    \longrightarrow \Z 
    \longrightarrow 0$

    $$\begin{aligned}[t]
    \delta_2 L &= a - c - b \\
    \delta_2 R &= a + b - d \\
    \delta_2 U &= d - a + c
    \end{aligned}\quad\quad\quad\quad
    \begin{aligned}[t]
    \delta_1 a &= \delta_1 b = \delta_1 c = \delta_1 d \\ &= v - v = 0
    \end{aligned}\quad\quad\quad\quad\quad\quad\quad\quad\quad\quad\quad\quad\quad\quad\quad\quad
    $$
    
    Giving us homology groups:

    $$
    \begin{aligned}[t]
    H_0&= \ker\delta_0 / \image\delta_1
    \\ &= \angleb{v} / \angleb{0}
    \\ &\iso \Z
    \end{aligned}\quad\quad\quad
    \begin{aligned}[t]
    H_1&= \ker\delta_1 / \image\delta_2
    \\ &= \angleb{a, b, c, d} / \angleb { a - c - b, a + b - d, d - a + c}
    \\ &= \angleb{b - c, b, c, d} / \angleb {b + c + b - d, d - b - c + c}
    \\ &= \angleb{b, c, d} / \angleb {2b + c - d, d - b}
    \\ &= \angleb{b, c } /   \angleb {2b + c - b}
    \\ &= \angleb{b, c} / \angleb {b = c}
    \\ &\iso \Z
    \end{aligned}
    $$

\newpage
6.  Here, $M_2$ $\Delta$-complex is constructed from 8 two-simplices, 8
    ($r_n$) + 4 ($a, b, c, d$) one-simplices and 1 zero-simplex.
    $\cdots \longrightarrow 0
            \longrightarrow \Z^8
            \longrightarrow \Z^{12}
            \longrightarrow \Z
            \longrightarrow 0$
    
    $$\begin{aligned}[t]
    \delta_2 T_0 &= a      - r_1 + r_0 \\
    \delta_2 T_1 &= b      - r_2 + r_1 \\
    \delta_2 T_2 &= -a     - r_3 + r_2 \\
    \delta_2 T_3 &= -b     - r_4 + r_3 \\
    \delta_2 T_4 &= -c     - r_5 + r_4 \\
    \delta_2 T_5 &= -d     - r_6 + r_5 \\
    \delta_2 T_6 &= c      - r_7 + r_6 \\
    \delta_2 T_7 &= d      - r_0 + r_7 \\
    \ker   \delta_2 &= \angleb{\sum_{i<8}T_i} \\
    \end{aligned}\quad\quad\quad\quad
    \begin{aligned}[t]
    \delta_1 a &= v - v = 0\\
    \delta_1 b &= v - v = 0\\
    \delta_1 c &= v - v = 0\\
    \delta_1 d &= v - v = 0\\
    \delta_1 r_n &= o - v \\\\
    \image \delta_1 &= \angleb{o - v} \\
    \ker   \delta_1 &= \angleb{a, b, c, d, r_i - r_{i+1}}
    \end{aligned}
    \begin{aligned}[t]
    \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad
    \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad
    \end{aligned}
    $$

    Giving us:

    $$\begin{aligned}[t]
    H_2 &=  \ker \delta_2 / \image {\delta_3} \\
        &= \angleb{\sum_{i<8}T_i} / 0 \\
        &\iso \Z \\
    \end{aligned}\quad\quad\quad
    \begin{aligned}[t]
    H_1 &= \ker \delta_1 / \image \delta_2 \\
        &= \angleb{a, b, c, d, r_i - r_{i+1}} / \angleb{\delta T_i} \\
        &= \angleb { r_1 - r_0, r_3 - r_2 , r_5 - r_4, r_3 - r_2 } \\
        &\iso \Z^4 \\
    \end{aligned}\quad\quad\quad
    \begin{aligned}[t]
    H_0 &= \angleb{o - v} \\
        &\iso \Z
    \end{aligned}$$
