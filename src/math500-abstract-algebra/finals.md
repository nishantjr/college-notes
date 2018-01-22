Syllabus:

Ch.13 (Pretty much most of Sections 1-2-4-5)
13.1
* Defn: characteristic, prime subfield, field extension K/F, degree [K:F]
* Defn: finitely generated extension K/F, simple extension, primitive element
* Thm 3!, Thm 4
* Thm 6!, Cor 7, Thm 8!
13.2
Defn: algebraic element, algebraic extension, transcendental element
* Prop 9
* Defn: minimal polynomial
* Prop 11, Prop 12, Cor 13, Thm 14
* Basis { a^i b^j } for F(a,b)/F
* Thm 17, Cor 18, Cor 19!, Thm 20!
* Defn: composite field

Prop 21, Cor 22
13.3 -
13.4 Defn: normal extension
Prop 26, Thm 27!, Cor 28!
Defn: algebraic closure, algebraically closed
Prop 29, Prop 30, Prop 31
Fundamental Thm of Algebra, Cor 32
13.5 Defn: separable polynomial, inseparable polynomial
Prop 33, Cor 34, Prop 35
Defn: Frobenius endomorphism
Cor 36
Existence and uniqueness of finite fields
of size p^n as splitting field of x^(p^n)-x
Defn: separable, inseparable, purely inseparable extensions
13.6 -

Ch.14
14.1 Defn: Aut(K) - K-automorphisms, Aut(K/F) - K-automorphisms fixing F
Prop 1, Prop 2, Prop 3
Defn: Fixed field K_H of the subgroup H
Prop 4, Prop 5!
Defn: Galois extension!
Cor 6!
Defn: Galois group of a separable polynomial
14.2! Cor 8! (the part: distinct automorphisms of K are linearly
              independent over K, know how to prove this directly using
              the argument in the proof of Thm 27)
Thm 9! (proof: set up a matrix Sigma and prove that it is square
        of full rank n=m)
Cor 10, Cor 11
Cor 12 (which seems almost redundant with Aut(K/F)=G in Cor 11)
Thm 13! Fundamental Theorem of Galois Theory
Thm 14!
14.3 Prop 15!, Prop 17, Prop 18

14.4 Cor 23, Defn: Galois closure (also called normal closure)
Prop 24!, Primitive Element Theorem Thm 25!
14.5 -
14.6 Galois group of a quartic polynomial.

Cubic resolvent x^3-2q*x^2+(q^2-4s)*x+r^2 of a quartic polynomial x^4+q*x^2+r*x+s
Know the roots of the cubic resolvent ((a1+a2)*(a3+a4),...) in terms of the roots of the quartic.
Able to decide, for a given irreducible quartic polynomial, its Galois group: S4, A4, D8, V4 or C4.

Useful: 

x^4+a*x^2+b has group K4 if b is a square,
                      Z4 if b is not a square but b*(a^2-4b) is a square,
                      D8 otherwise.
14.7
Insolvability of the general quintic
Thm 39, Cor 40 (in class Monday 12/11)

suppose $\alpha$ is a root of this equation.
Then $i\alpha, -\alpha, and -i\alpha$ are also roots.
where $i$ is a 4th primitive root of unity.
Since this is afourth diegree poly, it can have atmost 4 root, 
So the splitting field is continatied in $(i, frt 2)$
$i$ is a solution to the 2nd de3gree polynomial $x^2 + 1$ and is not in
$\Q$, so this is a degree 2 extension.
Irreducible, but has a solution in $R$ (since crosses the real line between
1 and 2. so has a real root. But i is in \C \setminus \R, so i \notin Q(frt 2)
4 * 2 = 8

Notice that $x^8 - 4 = (x^4 + 2)(x^4 - 2)$
Let a be a real root of it, and z be a primitive 8th root of unity.
Notice that $z a, z^2 a, ...z^7 a$ are also roots of $f(x)$.
Thus $K < Q(z, a)$.

Iwan Problems:

-   13.1: 4, 7
-   13.2: 1, 3, 10, 12, 16
-   !13.4: 1, 2, 3, 4, 5, 6
-   13.5: 5, 8

5. Let $r$ be a rot, then $r^p - r + a = 0$
   $p(r+1) = r^p + 1 -r -1 +a = r^p -r + a = 0$ is also a root.
   If it was reducible, all elements of $F_p$ are it's roots.
   and $a^p -a + a = a^p = 0 \forall b \in F_p$.S
   But then $\F^p = 0$, and that is not possible in a field of characteristic $p$
   so Must be irreducible. Since thsi is a finite fields, and so purrrfect,
   it is separable

8. Let $p(x) = a_n x^n + ... a_0$
   $p(x^p) = a_n   {x^pn} + ... a_0
           = b_n^p {x^pn} + ... b_0^p
           = (b_n x^n + ... b_0)^p
   $

   $(a_n x^n + ... a_0)^p
   = (a_n x^n ... a_1 x)^p + a_0^p
   = a_n^p x^{n*p} ... a_1 x^p + a_0^p$
   = a_n^p x^{np} ... a_1 x^p + a_0^p$
   = b_n^p x^{np} ... a_1 x^p + a_0^p$

-   14.2: 3, 9, 12, 13, 14, 16
-   14.3: 2 (for F4), 8
-   14.4: 2
-   14.6: 7, 8, 9, 17, 42

-----

Nilpotent iff

-   All Sylow subgroups are normal / Unique
-   Product of its sylow subgroups
-   Every subgroup is a proper subgroup of its normalizer
-   Every maximal subgroup is normal
-   Upper Centeral Series converges to G
-   Lower Centeral Series converges to 1


NOW

- Solvable
- Nilpotent
- Derived series
- Simple groups
- Sylow theorem

- Jordan and rational

MORNING TODO:

- Cubic resolvant
- Counter examples

Galois group of a Cubic
----------------------

- If reducible, splits into
    -  3 linear -> trivial
    -  Linear and irreducible quadratic: $\Z_2$
-  Irreducible, then root generates a degree three extension -> splitting field divisible by 3
    -  If discriminant is a square, then $A_3$
    -  Otherwise: $S_3$

Galois group of a Quadriatic
----------------------------

- If reducible
    - Linear + cubic: Follow rules for cubic
    - Quad + Quad, with discriminant D1 D2
        - D1 / D2 is a square (or inverse) then quadatic -> Z2   
        - Otherwise biquadratic -> $Z2 \times Z2$
- Irreducible: Can be $S_4, A_4, Z_4, Klien, D8$ (and conjugates)
    - If cubic irr, D not a square, then G = S_4
    - If cubic irr, D     a square, then G = A_4
    - Cubic splits in $F$ -> K4
    - x^4+a*x^2+b has group K4 if b is a square,
                            Z4 if b is not a square but b*(a^2-4b) is a square,
                            D8 otherwise.

Cubic resolvant roots:
1. $\theta_1 = (a1 + a2)(a3 + a4)$
1. $\theta_2 = (a1 + a3)(a2 + a4)$
1. $\theta_3 = (a1 + a4)(a2 + a3)$


