---
title: Math 570 - Homework 8
---

1.  * cases: Let $g(\vec a) := g_1(\vec a) 1_{R_1}(\vec a)  + \cdots + g_k(\vec a) 1_{R_k}(\vec a)$ 
    * $\dot -(m, n) = 1_{\ge}(m-n, 0) \times(m -n)$ 
    * $\text{Rem}(a, b) := \mu_x(\exists q, a = bq + r)$ 
    * $\text{divBy2}(n) := \mu_x(n = x + x)$
      $\text{Pair}(x, y) := divBy2((x + y)(x + y + 1)) + x$

2.  First, we show that $\bar f$ is primitive recursive:

    $\bar f(\vec a, 0) := \langle \rangle$
    
    $\bar f(\vec a, n+1) := \bar f(\vec a n) * \langle f(\vec a, n + 1) \rangle
                         = \bar f(\vec a n) * \langle h(\vec a, \bar f(\vec a, n + 1)) \rangle$ 
                         
    then, we define $f$ in terms of $\bar f$ and $h$:
    
    $f(\vec a, n) := h(\vec a, \bar f(\vec a, n))$
    
3.

4.  
5.

6.  a.   Base: assume $n = 0$, then $A(0, x + y) = x + y + 1 \ge A(0, x) + y = x + y + 1$

         For $n > 0$ and holds for all $m < n$:
         
         Induct on $x + y$:
         
         *   If $x + y = 0$, then $A(n, 0) \ge A(n, 0) +0$
         *   Assume holds for all $x' + y' < x + y$:
             $A(n, x + y) = A(n -1, A(n, x+y - 1)) = A(n - 1 , z')$ where $z' \ge A(n, x)  + y + 1$
             and $A(n, x + y) = A(n - 1 , z')  \ge A(n - 1, 0) + z'$
             and $A(n, x + y) \ge A(n, x) + A(n - 1, 0)  + x + y + 1 \ge A(n, x) + y$
               
              
    c.  Base case:  Take $n = 0$, $A(1, y) = A(0, y + 1)$
    
        Assume $n > 0$ hypothesis holds for all $m < n$:
        
        * If $y = 0$: $A(n + 1, 0) = A(n, 1)$
        * Assume holds for all $y' < y$,
          $A(n + 1, y) = A(n, A(n + 1, y - 1))
                       = A(n, z)$ where $z = A(n + 1, y -1)$,
                       $\ge A(n, 0) + z  = A(n, 0) + A(n + 1, y - 1)$ by `a)`.
                       
          so $A(n + 1, y) \ge A(n + 1, y + 1)$
