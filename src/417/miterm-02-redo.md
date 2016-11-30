# 5

All elements of $\mathbb Z_2\times \mathbb Z_2 \times \mathbb Z_2$ are either
the identity, or have order 2. Since, if $(a, b, c) \in  \mathbb Z_2\times \mathbb Z_2 \times \mathbb Z_2 \ne e,$ atleast one of $a, b, c$ must equal $1$ and the others must be $0$.

That is, $\forall g \in \mathbb Z_2\times \mathbb Z_2 \times \mathbb Z_2, g + g = e$

So, for any homomorphism $\varphi$, $\varphi(2) = \varphi(1+1) =  \varphi(1) + \varphi(1) = 0$

Since $\varphi(0) = \varphi(2)$ for any homomorphism, there can be no bijections
between $\mathbb Z_2\times \mathbb Z_2 \times \mathbb Z_2$ and $\mathbb Z_8$

# 6

We need to show that $A/N$ is normal in $G/N$  
i.e $\forall g \in G, (gN)(A/N)(gN)^{-1} = A/N$ 

#### show: $(gN)(A/N)(gN)^{-1} \subseteq A/N$ 
$\forall gN \in G/N, aN \in A/N$, 
$$\begin{aligned}
(gN)(aN)(gN)^{-1} &= (gN)(aN)(g ^{-1} N) \\
                  &= (gag ^{-1} N) \\
                  &\in A/N &\quad\ldots&\text{since }A \text{ is normal, } g a g ^{-1} \in A
\end{aligned}$$
$(gN)(A/N)(gN)^{-1} \subseteq A/N$ 

#### show: $A/N\subseteq (gN)(A/N)(gN)^{-1}$ 
Since $A$ is normal, $\forall a_1 \in A \exists g \in G, a_2 \in A$ such that $g a_2 g ^{-1} = a_1$  

So, for all $a_1N \in A/N$,

$$\begin{aligned}
a_1 N &= g a_2 g ^{-1} N \\
&= (g N) (a_2 N) ({g}^{-1}N) \\
&= (g N) (a_2 N) ({g}N)^{-1} \\
&\in  (gN)(A/N)(gN)^{-1} \\
\end{aligned}$$
 
$A/N\subseteq (gN)(A/N)(gN)^{-1}$ 


So, $(gN)(A/N)(gN)^{-1} = A/N$ 
