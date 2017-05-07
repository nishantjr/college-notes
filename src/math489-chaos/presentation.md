Assume that the points $x_i$ do not lie within $d$ of the line $y = \frac 1 2$.
Let $S_i$ be a rectangle of size $2d\times 2d$ centered at $x_i = (x_i, y_i)$. $S_i$ is the set of points within $d$  of $x_i$ for each co-ordinate.
Then, for the bottom-left corner of the rectangle, at $(x_i - d, y_i - d)$, 
$$\begin{aligned}
B(x_i - d, y_i - d) &= (\frac {x_i - d} 3,  2(y_i -d))        &\text{OR } &=(\frac {x_i - d} {3} + \frac {2} {3}        , 2(y_i -d) - 1) \\
                    &= (\frac {x_i} 3 - \frac d 3, 2y_i - 2d) &\text{OR } &=(\frac {x_i} 3 + \frac 2 3 - \frac d 3, 2y_i - 1 -d) \\
                    &= (x_{i+1} - \frac d 3, y_{i+1} - 2d)    &           &\text{... since $x_i$ is not near } y= \frac 1 2 \\
                    &= x_{i+1} - (\frac d 3, 2d)
\end{aligned}$$

Similarly, we can calculate that the corners lie at 
$x_{i+1} + (\frac d 3, 2d)
,x_{i+1} + (\frac d 3, -2d)
,x_{i+1} + (\frac {-d} 3, 2d)
,x_{i+1} + (\frac {-d} 3, -2d)$.

This forms a $\frac 2 3 d \times 4d$ vertical rectangle centered at $x_{i+1}$.
So $B(S_i)$ lies across $S_{i+1}$. Since $B$ is a continuous function (when we aren't close to $y=1/2$), by step 4, we know that there is a point, $z_0$, such that $f^k(z_0) \in S_k$, i.e., $f^k(z_0)$ is within $d$ of $x_k$ for all $k \le i$. This $\{z_0, z_1, \ldots, z_n\}$ is the required orbit.
