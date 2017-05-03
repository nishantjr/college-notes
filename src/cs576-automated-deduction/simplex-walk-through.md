## Step 1


Find a solution to: 

\begin{matrix} 
2 x_1 &+   x_2 &+   x_3   &\le 14 \\
4 x_1 &+ 2 x_2 &+ 3 x_3   &\le 28 \\
2 x_1 &+ 5 x_2 &+ 5 x_3   &\le 30 \\
  x_1 &        &          &\ge 0  \\
      &   x_2  &          &\ge 0  \\
      &        &   x_3    &\ge 0
\end{matrix}

The first thing we need to do is put these equations in the general form:
We need inputs as:

 1. Equalities: $a_1 x_1 + \cdots + a_n x_n = 0$
 2. Bounds on variables: $l_i \le x_i \le u_i$

That gives us:

\begin{matrix} 
2 x_1 &+   x_2 &+   x_3  & +s_1 &       &       &=   0 \\
4 x_1 &+ 2 x_2 &+ 3 x_3  &      & +s_2  &       &=   0  \\
2 x_1 &+ 5 x_2 &+ 5 x_3  &      &       & +s_3  &=   0  \\
\end{matrix}

\begin{matrix} 
s_1 &\ge 14             &\quad   x_1    \ge 0  \\
s_2 &\ge 28             &\quad   x_2    \ge 0  \\
s_3 &\ge 3              &\quad   x_3    \ge 0
\end{matrix}
