Lectures 16 to midterm 2
Example problems

Midterm 2 onwward
Example problems

Upto midterm 1
Example problems

TODO:
* Lecture 16
  - all sequences converge in $C$ implies $C$ is bounded (1) => (3) partly in 17
  - Theorem 13.10
* Theorem N20.1: Achieves max and min
* Theorem 19.5 => pg 3 lec 21            
o
                                                                                But $\{a_n\} \subset F$, implies for epsilon, there is no n such that |L_n - L |
< e                                                                                                                               
Closure                                
: Intersection of all closed sets containing E
                                                                           
                                                                        
---                                                                             
$$\begin{aligned}
\sum_0^{n-1} ar^k = a \frac { 1 - ar^{n} } {1 -a}
\end{aligned}$$                               
                                                                     
COmparism: a_n > |b_n| \forall n, and \sum a_n converges, implies \sum b_n      
converges                                                                       
                                                                                
Ratio: limsup a_n+1 / a_n < 1, implies \sum a_n converges absolutlely           
liminf a_n+1 / a_n > 1, implies \sum a_n diverges and diverges absolulty        
                                                                                
Root: limsup of abs val of nth root = alpha                                     
alpha less than 1 implies absolute convergence                                  
alpha > 1 impliease diverges                                                    
alpha = 1 implies dunno mate.                                                   
                                               

---

Open cover of set C
: collection of open sets, such that C is a subset of union

Sub set of open cover


---
Suppose L converges outside the closed set C. C \ S is open. 
So $\exists B_\epsilon(L), \in C \ S$

But $\{a_n\} \subset F$, implies for epsilon, there is no n such that |L_n - L |
< e

Closure
: Intersection of all closed sets containing E


---

$$\begin{aligned}
\sum_0^{n-1} ar^k = a \frac { 1 - ar^{n} } {1 -a}
\end{aligned}$$

COmparism: a_n > |b_n| \forall n, and \sum a_n converges, implies \sum b_n
converges

Ratio: limsup a_n+1 / a_n < 1, implies \sum a_n converges absolutlely
liminf a_n+1 / a_n > 1, implies \sum a_n diverges and diverges absolulty

Root: limsup of abs val of nth root = alpha
alpha less than 1 implies absolute convergence
alpha > 1 impliease diverges
alpha = 1 implies dunno mate.

---

If (S, d_1) (T, D_2) are MS,

f: S -> T is continuous, then x -> y, implies f(x) -> f(y)

if \forall e > 0 \exists \delta > 0, d(x, x_0) < \delta \Longrightarrow d'(f(x),
f(x_0)) < \epsilon

---

Let S = { x \in [a, b], f(x) < y }

S is bounded. Let x_0 = sup S

Then there is a sequence in S_n -> x_0.

Since s_n \in S f(s_n) < y => lim f(s_n) <= y
SInce f is continuous, lim(f(s_n)) -> f(x_o)

---

\forall \epsilon \exists \delta : \forall x d(x, x_0) < \delta -> d(f(x),
f(x_0)) < \epsilon

\forall \epsilon > 0 \exists \delta : \forall x, y : d(x, y) < \delta -> d(f(x),
f(y)) < \epsilon.
