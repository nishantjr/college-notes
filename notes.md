- Introduction:
    * I'm going to talk about decision procedures on conjunctions of linear
      constraints
    * Conjunctions of inequalities / equalities with rational values
    * I'm going to talk about satisfiability of these formulae for rational
      solutions and Sam's going to talk about w.r.t. integer solns which
      essentially works out to presberger arithmetic.
- Syntax:
    * Build terms out of products of constants and variables
    * Relations between sums of terms form a constraint
    * Then we string a bunch of those together to get a formula using conjunctions
  
    * We don't really need negative numbers, since we can just move it...
    * similarly we can derive greater than from less than by multiplying be -1
    * To deal with disjunctions, we just split the problem into two sub-problems

- Simplex method
  - Hist
      * George Dantzig developed this algorithm in 1946 to mechanise the planning
        process for the USAF during WW2
      * The algorithm lets you optimize a quantity constrained to some linear
        constraints
      * Example: widgets and gadgets
      * Since solution set is convex and opt function is linear w.r.t variables
        - once found a vertex, walk edges, find local opt
        - local opt = global optimum
  - Satisfiability
      * only interested in satisfiability... general simplex
      * no objective function 
      * in terms of geometry: Just want to find the initial vertex

- Algorithm
    - Putting into normal form
      * equalities may have to be written as two inequalities
    - Matrix representation, tableau, assignments alpha
    - Invariants
    - pivoting

- Algorithm is incremental
  - Once we've got an solution, we can add additional constraints and continue
    running the algorithm
    * once satisfiable becomes unsatisfiable
  - The matrices before and after pivoting are similar, so they describe the
    same linear system
  - We can disable a constraint by simply removing the bounds  
    The equation in the tableau becomes redundant.

  - To add a bound for a non-basic assignment
    * Add the bounds
    * Change the assignment so that the var is in bounds
    * Recalculate the assignments for basic variables
    * Continue running the algorithm to find a new solution
    * I'm not sure how, but this is used for the $\mathrm{DPLL}(T)$ framework

- Simplex method is worst case exponential in number of variables
- There are polynomial time algorithms: Ellipsoid method
- Though in practice the simplex has an average polynomial-time complexity
- so it's often preferred
- Used as a part of the algorithm for satisfiability of Integer Linear Problems
