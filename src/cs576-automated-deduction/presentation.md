# Satisfiability for Linear Arithmetic

## What is linear Arithmetic?

\begin{aligned}
\mathrm{formula} &: \mathrm{formula} \land \mathrm{formula}
                  \;|\; (\mathrm{formula}) \;|\; \mathrm{atom}         \\
   \mathrm{atom} &: \mathrm{sum} \, \mathrm{op} \,\mathrm{sum}          \\
     \mathrm{op} &: {=}\;|\; {\le} \;|\; {<}                            \\
    \mathrm{sum} &: \mathrm{term} \;|\; \mathrm{sum} + \mathrm{term}    \\
   \mathrm{term} &: \mathrm{variable} \;|\; \mathrm{constant}
                        \;|\; \mathrm{constant} \, \mathrm{variable}
\end{aligned}

For example: $3 x_1 + 2 x_2 \le 5 x_3 \land 2 x_1 - 2 x_2 = 0$

---

## The Simplex Algorithm

The Simplex Algorithm is a algorithm for solving a class of problems
called linear optimization or linear programming, where subject to a set of
linear constraints i.e. a set of linear equalities / inequalities.

Since we're only interested in satisfiability and not optimization, we talk
about a variant of the simplex problem called the **general simplex** that does
not take an objective function and simply decides if the constraints are
satisfiable.

---

Input:

* A set of equations: $a_1 x_1 + \cdots + a_n x_n = 0$ 
* Bounds on these variables: $l_i \le x_i \le u_i$  
  (though all variables may not have bounds) 

Restricting input to this form does not actually stop us from using arbitrary
o
equations.

---

For example, given equations like:

\begin{matrix} 
      &x  &+y &\ge 2\\
\land &2x &-y &\ge 0\\
\land &-x &+2x&\ge 1
\end{matrix}

we can transform it into a set of inputs:

\begin{matrix} 
      &x  &+y  &- s_1 &         &       &= 0   &\quad \quad \quad  &s_1 &\ge 2\\
\land &2x &-y  &      & -s_2    &       &= 0   &                   &s_2 &\ge 0\\
\land &-x &+2x &      &         & -s_3  &= 0   &                   &s_3 &\ge 1
\end{matrix}

We call $s_1, s_2$ and $s_3$ "additional" or "slack" variables. i.e. they pick
up the slack from the inequalities.

---

We can represent this as a matrix

$$
\begin{bmatrix} 
1 & 1 & -1 & 0 & 0 \\
2 &-1 & 0  & -1& 0 \\
-1&+2 & 0  & 0 & -1
\end{bmatrix}
\begin{bmatrix} 
x \\ y \\ s_1 \\ s_2 \\ s_3
\end{bmatrix} = 0
$$

\begin{matrix}
s_1 &\ge 2\\
s_2 &\ge 0\\
s_3 &\ge 1
\end{matrix}

Notice how the right hand side of the matrix is the additive inverse of the
identity -- the simplex method maintains a set of variables that are in that
form. We call those variables "dependent" or "basic" variables, because
their values depend on the other "non-basic" variables.

---

We can use a "tableau" to simplify the representation to:

\begin{matrix}
 & x & y \\
--- & --- & --- \\
s_1 & 1 & 1 \\
s_2 & 2 & -1 \\
s_3 & -1 & 2
\end{matrix}

We also initialize $\alpha$ a substitution, sending all variables to $0$.

---

So this is what the state starts as:

$$
\begin{matrix}
    & x   & y \\
--- & --- & --- \\
s_1 & 1 & 1 \\
s_2 & 2 & -1 \\
s_3 & -1 & 2
\end{matrix}\quad\quad
\begin{matrix}
s_1 &\ge 2\\
s_2 &\ge 0\\
s_3 &\ge 1
\end{matrix}\quad\quad
\begin{matrix}
x   &\mapsto 0   \\
y   &\mapsto 0   \\
s_1 &\mapsto 0 \\
s_2 &\mapsto 0 \\
s_3 &\mapsto 0
\end{matrix}
$$

---

## Invariants

Through out the algorithm, we maintain some invariants:

1. All the equalities hold: $A \overline x = 0$

2. The *non-basic* variables are within their bounds

---

Next, we select a variable that isn't within it's bounds.
(if we can't find such a variable, we're done.)

$$
\begin{matrix}
    & x   & y \\
--- & --- & --- \\
s_1 & 1 & 1 \\
s_2 & 2 & -1 \\
s_3 & -1 & 2
\end{matrix}\quad\quad
\begin{matrix}
\color{red}{s_1} & \color{red}{\ge 2}\\
s_2  & \ge 0\\
s_3 &\ge 1
\end{matrix}\quad\quad
\begin{matrix}
x   &\mapsto 0   \\
y   &\mapsto 0   \\
\color{red}{s_1} &\color{red}{\mapsto 0} \\
s_2 &\mapsto 0 \\
s_3 &\mapsto 0
\end{matrix}
$$


---

## Pivoting

We need to increase $s_2$, while still satisfying the other invariants. Since
$x$ does not have bounds, we can increase $x$ to keep the first equation
satisfied.

(If there was no *suitable* variable to adjust, the algorithm would fail,
returning "unsatisfiable".)

Since it's possible that the variable might have had bounds that would no longer
be met, we must move $x$ out of the $non-basic$ variables and $s_1$ into it.

We adjust the equations like so:

\begin{aligned}
s_1 &= x+y               &\Longrightarrow x &= s_1 -y \\
s_2 &= 2(s_1 - y) -y     &\Longrightarrow s_2 &= 2s_1 -3y \\
s_3 &= -(s_1 - y)        &\Longrightarrow s_3 &= -s_1 + 3y \\
\end{aligned}

---

That gives us:

$$
\begin{matrix}
    & s_1 & y \\
--- & --- & --- \\
  x & 1 & -1 \\
s_2 & 2 & -3 \\
s_3 & -1 & 3
\end{matrix}\quad\quad
\begin{matrix}
s_1 &\ge 2\\
s_2 &\ge 0\\
\color{red}{s_3} &\color{red}{\ge 1}
\end{matrix}\quad\quad
\begin{matrix}
x   &\mapsto 2   \\
y   &\mapsto 0   \\
s_1 &\mapsto 2 \\
s_2 &\mapsto 4 \\
\color{red}{s_3} &\color{red}{\mapsto -2}
\end{matrix}
$$

Now, only $s_3$ isn't within it's bounds -- we need to increase it's value by
$3$, and increase $y$  by $1$ to balance out the equation.

---

\begin{aligned}
s_3 &= -s_1 + 3y         &\Longrightarrow y &= \frac 1 3 s_1 + \frac 1 3 s_3 \\ \\
x   &= s_1  - (\frac 1 3 s_1 + \frac 1 3 s_3)
                        &\Longrightarrow x &= \frac 2 3 s_1 - \frac 1 3 s_3 \\
s_2 &= 2s_1 - 3y =  2s_1 - 3(\frac 1 3 s_1 + \frac 1 3 s_3)
                        &\Longrightarrow s_2 &= s_1 - s_3 
\end{aligned}


---

$$
\begin{matrix}
    & s_1 & s_3 \\
--- & --- & --- \\
  x & \frac 2 3 & - \frac 1 3 \\
s_2 & 1 & -1 \\
  y & \frac 1 3 & \frac 1 3
\end{matrix}\quad\quad
\begin{matrix}
s_1 &\ge 2\\
s_2 &\ge 0\\
{s_3} &{\ge 1}
\end{matrix}\quad\quad
\begin{matrix}
x   &\mapsto 1   \\
y   &\mapsto 1   \\
s_1 &\mapsto 2 \\
s_2 &\mapsto 1 \\
s_3 &\mapsto 1
\end{matrix}
$$

All constraints are satisfied!

---

\begin{matrix} 
      &x  &+y &\ge 2\\
\land &2x &-y &\ge 0\\
\land &-x &+2x&\ge 1
\end{matrix}

$$\alpha = \{ x   \mapsto 1, y   \mapsto 1\}$$
