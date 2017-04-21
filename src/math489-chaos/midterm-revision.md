Lyapunov Number ($S = \mathbb R$)
: Let $f: S \to S$ be a discreet dynamical system, $f$ continuous. Consider an
  orbit starting at $x_0 \in S$, $\{x_0, x_1, x_2, \cdots, x_n,  \cdots \}$.

  The Lyapunov number of that orbit is:

  $$L(x_0) = \lim_{n\to\infty} | f'(x_0)f'(x_1)f'(x_2) \cdots f'(x_n) |^{\frac
  1n}$$


Lyapunov Number ($S \ne \mathbb R$) 
: Let $f: \mathbb R^m  \to \mathbb R^m$ be smooth, $v_0 \in \mathbb R^m$.
  Let $J_n = Df^n(v_0)$. Let $r^n_k$ be the $k$th longest axis of the ellipsoid
  $J_nN$, where $N$ is the unit $m$-sphere.

  Then the $n$th Lyapunov number is given by

  $$ L_n(v_0) = \lim_{n\to\infty} |r^n_k|^{\frac 1 n}$$

  NOTE: $n$th derivative is same as $f'(x_0)f'(x_1) \cdots f'(x_n)$ by chain
  rule.

Lyapunov Exponent
: $h_n = \ln L_k$


Chaotic Orbit
: An orbit is said to be chaotic if:
  1. It is not asymptotically periodic.
  2. No Lyapunov number is exactly 1.
  3. $L_1(x_0) > 1$


Middle Third Cantor Set
: Consider the interval $K_0 = [0, 1]$.  
  $K_1$ is formed be removing the middle third of this interval.  
  $K_2$ is formed be removing the middle third of each segment of $K_1$  
  $\vdots$  
  $K_n$ is formed be removing the middle third of each segment of $K_{n-1}$  

  The Cantor set, $K_\infty = \lim_{n\to\infty} K_n$.

Box Dimension
: Let $S \subset \mathbb R^m$, and $N(\epsilon)$ be the number of boxes needed
  to cover $S$. Then the box dimension of $S$ is given by:

  $$\mathrm{boxdim}(S) = \frac { \ln N(\epsilon) } { \ln 1 / \epsilon }$$

Conjugacy
: The maps $f$ and $g$ are conjugate if they are related by a one-to-one change
  of coordinates: $C \circ f = g \circ C$ (Their "matrices" are "similar")

Skinny Baker Map
: Top-half → Right third.  
  Bottom-half → Left third.

  $B: [0, 1]^2 \to [0, 1]^2$
  $$
  B(x, y) = \begin{cases}
   (2/3 + x/3, 2y - 1) & \text{if } y > 1 /2 \\
   (x/3, 2y)           & \text{if } y < 1/2
  \end{cases}
  $$

---

Continuous-time dynamical system
: the limit of a discrete-time dynamical system.
  Its governing rule is a set of differential equations.

Orbits / Solutions of systems of differential equations
:  XXX

Equilibrium Solution
: A constant solution to the autonomous differential equation $\dot x = f(x)$ is
  called an equilibrium of the equation.

Stable Equilibrium
: An equilibrium point $v$ is called stable, if for any neighbourhood $N$ of
  $v$, there exists a neighbourhood $N_1 \subset N$ such that, $\forall v_0 \in
  N_1$, the solution $\forall t,F(t, v_0) \subset N$.

Unstable
: Not stable

Asymptotically stable
: Stable, attracting ($\lim_{t\to\infty} F(t, v_0) = v$
