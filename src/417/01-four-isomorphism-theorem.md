Surjective
: All elements in the image are mapped to.

Center of $G, Z(G)$
: group of all elements in $G$ that commute.  
  $Z(G) = \{ a: ag = ga \forall g \in G \}$

Quotient map: $\Pi:G\to G/N$
: Surjective homomorphism, $\Pi(a) = aN$, multiplication: $(aN)(bN) = abN$

Product of gourp subsets
: $AB = \{ ab: \forall a\in A \text{ and } b \in B \}$

Normal subgroup ($N \trianglelefteq G$)
: $\forall g \in G \Longrightarrow gNg ^{-1} = N$

Index of a group $|G : H|
: The number of cosets of $H$ in $G$

## First Isomorpism Theorem (aka: an image is a quotient)

> Suppose, $\varphi: G \to H$ is a *surjective* homomorphism, and $N = Kern(\varphi)$  
> 
> Then, $\hat\varphi: G/N \to H,\quad \hat\varphi(gN) := \varphi(g)$ is an isomorphism  
> and $G/N \cong H$

### Show tha t $\hat\varphi$ is well defined.
If $gN = hN$, show,  

$$\begin{aligned} 
Show && \hat\varphi(gN) &= \hat\varphi(hN)      &\ldots&\text{ given}\\ 
 i.e && \varphi(g) &= \varphi(h)                &\ldots&\text{ by definition of } \hat\varphi \\   
 i.e && h ^{-1} g  &\in N
\end{aligned}$$

--- 
Alternately,

> If $\varphi: G \to H$ is a homomorphism,  
> then $N = \text{ker}(\varphi) \trianglelefteq G$ and $G/N \cong \varphi(G)$

## Diamond Isomorphism Theorm

> $N$ is the (normal) kernel of a surjective homo $\varphi: G \to G'$, $A \le G$.
> $A$ is a subgroup. Then,
> 
> * $\varphi ^{-1} (\varphi (A)) = AN$
> * $N \le AN \le G$
> * $AN/_N \cong \varphi(A) \cong A/_{A\cap N}$


