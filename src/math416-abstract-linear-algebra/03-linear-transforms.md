##### Definition: Linear transormations

Let $V, W$ be vector spaces (over $F$). Then $T: V \to W$ is a **linear
transformation* if, $\forall x, y \in V$ and $c \in F$ we have:

* $T(x +y) = T(x) + T(y)$
* $T(c \cdot x) = c \cdot T(x)$

Examples:

* $I_v: V \to V$: The Identity transform
* $T_o: V \to W: T(x) = 0$ The zero transform (or null transform)


##### Definition: Null space (or kernel)

Let $V$ and $W$ be vector spaces, and $T: V\toW$ be linear.
The *null space of $T$* is the set of all vectors $x \in V$ such that
$T(x) = 0$. i.e:

$$ N(T) = \{x \in V: T(x) = 0 \}$$


##### Definition: Range (or image)

The *range of $T$* is the subset of $W$ containing all the images of vectors in
$V$. i.e:

$$ R(T) = \{ T(x): x \in V \}$$

##### Definition: rank, nullity

... If $N(T)$ and $R(T)$ are finite-dimensional...:

* $\text{nullity}(T) = \text{dim}(N(T)) = \text{dim}(\text{null space}(T)) $
* $\text{rank}(T) = \text{dim}(R(T)) = \text{dim}(\text{rank}(T)) $

#### Theorem: 2.3: Dimension theorem: $\text{nullity}(T) + \text{rank}(T) = \text{dim}(V)$

> 1. Use *Replacement theorem* on basis of $N(T)$ to extend it to a basis of $V$
> 1. Prove that the $T($extension$)$ is the basis of $R(T)$ by applying $T$.  
>    The basis of $N(T)$ will map to $0$

XXX: More work needed here.
