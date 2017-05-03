## Satisfiability for Linear Arithmetic

## Outline

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

### Removing strict inequality and Negation
### Relation to Linear programming / Linear optimization
### The Simplex Algorithm
### Matrix Representation of a linear system

### Implementation
### Can incrementally add more formulae to conjunction
### Generalizes to polynomial with ellipsoid method       
### Example

<!--
pandoc -s -f markdown src/cs576-automated-deduction/presentation.md --mathjax -o output.html --tocS
--> 
