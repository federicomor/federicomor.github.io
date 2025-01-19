+++
title = "Longest Collatz Sequence"
hascode = true
hasplotly = true
+++


~~~
<p style="margin-bottom: -40px; color: black; text-decoration: none; font-size: 20px; text-align: right;">
<a href="/activity/project_euler/problem_13/" style="color: black; text-decoration: none;">← </a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_15/" style="color: black; text-decoration: none;">→ </a>
</p>
~~~

## (P14) Longest Collatz Sequence


The following iterative sequence is defined for the set of positive integers:
$$
\begin{cases}
n \to n/2   &\text{if $n$ is even (pari)}\\
n \to 3n + 1 &\text{if $n$ is odd (dispari)}
\end{cases}
$$
Using the rule above and starting with $13$, we generate the following sequence:
$$13 \to 40 \to 20 \to 10 \to 5 \to 16 \to 8 \to 4 \to 2 \to 1.$$
It can be seen that this sequence (starting at $13$ and finishing at $1$) contains $10$ terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at $1$.
Which starting number, under one million, produces the longest chain?
<p class="note"><b>NOTE:</b> Once the chain starts the terms are allowed to go above one million.


>[Problema 14 su Project Euler](https://projecteuler.net/problem=14)

## Soluzione
