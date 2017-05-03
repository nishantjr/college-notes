## Satisfiability for Linear Arithmetic
Samuel and I are going to talk about an algortihm for finding solutions to problems in linear arithmatic.
I'm going to talk about the problem w.r.t the rationals and using the simplex method to solve them.
Samuel is going to talk about how we can use this as a part of the algorithm to solve linear equations constrained
to integer solutions. i.e. Presburger arithmetic.

### What is linear Arithmetic?

### Syntax of linear system

The syntax for a formula  in linear arithmetic can be defined:

\begin{aligned}
\mathrm{formula} &: \mathrm{formula} \land \mathrm{formula}
                  \;|\; (\mathrm{formula}) \;|\; \mathrm{atom}  \\
   \mathrm{atom} &: \mathrm{sum} \, \mathrm{op} \,\mathrm{sum}                                           \\
     \mathrm{op} &: {=}\;|\; {\le} \;|\; {<}                                          \\
    \mathrm{sum} &: \mathrm{term} \;|\; \mathrm{sum} + \mathrm{term}                                    \\
   \mathrm{term} &: \mathrm{identifier} \;|\; \mathrm{constant} \;|\; \mathrm{constant} \, \mathrm{identifier}
\end{aligned}

### Removing negative constants and strict inequality

We can remove constraints that use negative coefficients by moving that term to the other side of the (in)equality.
For example $a - b > -5 \longarrow  a + 5 > b$.

We can also remove strict inequality by replacing it with non-strict equality and a dise

### Relation to Linear programming / Linear optimization
### The Simplex Algorithm

The Simplex Algorithm is a polular algorithm for solving linear optimization problems.
i.e, problems where one needs to optimize a certain quantity w.r.t some set of linear constraints.
The quantity we're trying to optimize along with the set of constraints is called a
linear program.

(XXX Visualize)

Since we're only interested in satisfiability and not optimization, we talk
about a variant of the simplex problem called the **general simplex** that does not
take an objective function and simply decides if the constraints are satisfiable.

http://math.uww.edu/~mcfarlat/simplex1.htm#step1
http://math.uww.edu/~mcfarlat/s-prob.htm

#### Inputs to simplex

The simplex algorithm accepts two types of inputs:

* Equalities: $a_1x_1 + a_2x_2 + \cdots + a_nx_n = 0$
* Bounds on variables: $l_i \le x_i \le u_i$

??? XXX This is called the general form.

This does not restrict types of equations we can pass to the program:

XXX Example

#### In terms of geometery




### Performan

At worst exponential, ellipsoid method is polynomial

### Matrix Representation of a linear system

### Implementation
### Can incrementally add more formulae to conjunction
### Generalizes to polynomial with ellipsoid method       
### Example

### Other methods

## Presburger (Sam)

### Example: Optimization problem in book
### Example: Subset sum problem
<!--
pandoc -s -f markdown src/cs576-automated-deduction/presentation.md --mathjax -o output.html --tocS
--> 
