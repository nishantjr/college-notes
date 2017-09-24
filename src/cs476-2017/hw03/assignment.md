---
title: "CS476: Homework 3"
---

## Prove that $\_[\_]$ is bijective

For typographic convenience, let $\text{AsNDFunc} = \_[\_]$.

$$\begin{aligned}
\text{AsNDFunc} :&& \mathcal P (A \times B) &&\to\quad     & [A \to \mathcal P (B) ] \\
\text{AsNDFunc} :&& R                       &&\mapsto\quad & \_R
\end{aligned}$$
where
$$\begin{aligned}
\_ R :&& A &&\to\quad     & \mathcal P (B) \\
\_ R :&& a &&\mapsto\quad & \{ b \in B | (a, b ) \in R \}
\end{aligned}$$

---

We claim that it's inverse is:

$$\begin{aligned}
\text{AsPairs}:&& \mathcal P(A \times B) && \to    \quad & [A \to \mathcal P(B) ] \\
\text{AsPairs}:&& f                      && \mapsto\quad & \{ \{ a \} \times bs : (a, bs) \in f \}
\end{aligned}$$

* Claim: $\text{AsNDFunc} ; \text{AsPairs} = id_{\mathcal(A\times B)}$ 

  $$\begin{aligned}
                      &         (a, b) \in R \\
  \Longleftrightarrow & \exists (a, bs) \in \text{AsNDFunc}(R) = \_R \text{   where } b \in bs\\
  \Longleftrightarrow &         (a, b) \in \text{AsPairs}(\text{AsNDFunc}(R))
  \end{aligned}$$

  The forward direction shows $R \subseteq (\text{AsNDFunc} ; \text{AsPairs}) (R)$ 
  while the reverse that $(\text{AsNDFunc} ; \text{AsPairs}) (R) \supseteq R$.
  So $(\text{AsNDFunc} ; \text{AsPairs})(R) = R$, and
  $\text{AsNDFunc} ; \text{AsPairs} = id_{\mathcal(A\times B)}$

* Claim: $\text{AsPairs} ; \text{AsNDFunc} = id_{[A \to \mathcal P(B)]}$

  $$\begin{aligned}
                      & (a, bs) \in f       \\
  \Longleftrightarrow & (a, b) \in \text{AsPairs}(f)    \forall b \in bs \\
            \land     & \lnot \exists (a, b') \in AsPairs(f), b \notin bs \\
  \Longleftrightarrow & (a, bs) \in \text{AsNDFunc}(\text{AsPairs}(f))   
  \end{aligned}$$

  Again, using both directions of the implications, we see $f = (\text{AsPairs};\text{AsNDFunc})(f)$
  for all $f$, and $\text{AsPairs};\text{AsNDFunc} = id_{[A \to \mathcal P(B)]}$

Since $\_[\_] = \text{AsNDFunc}$ has an inverse, it must be bijecctive.
