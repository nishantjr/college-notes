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

Index of a group $|G : H|$
: The number of cosets of $H$ in $G$

## First Isomorpism Theorem (aka: an image is a quotient)

> Suppose, $\varphi: G \to H$ is a *surjective* homomorphism, and $N = Kern(\varphi)$  
> 
> Then, $\hat\varphi: G/N \to H,\quad \hat\varphi(gN) := \varphi(g)$ is an isomorphism  
> and $G/N \cong H$

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

## Third Isomorphism Theorem (aka: Cancel like it's division, yo)

> $\varphi: G \to \bar G$ is a surjective homomorphism with kernel $N$.  
> Let $\bar K \trianglelefteq \bar G$ and $K = \varphi ^{-1}(\bar K)$.
>
> Then: $\bar G / \bar K \cong G/K \cong (G/N)/_{(K/N)}$

## Lattice Isomorphism Theorem (Correspondence threorem)

The subgroups of $G$ that contain $N$ have the same lattice as $G/N$'s subgroup
lattice.

> $\varphi: G \to \bar G$ is a homomorphism, and $N$ is it's kernel.  
>
> * $\bar B \to \varphi ^{-1} (\bar B)$ is a  bijection between the
>   subgroups of $\bar G$ and subgroups of $G$ containing $N$
> * normal subgroups go to normal subgroups
