+++
title = "Digital Root Sums of Factorisations"
hascode = true
hasplotly = true
+++

~~~
<p style="margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;">
<a href="/activity/project_euler/problem_158/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_160/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
</p>
~~~

~~~
<link rel="stylesheet" type="text/css" href="/activity/project_euler/style_main.1735430422.css">
<link rel="stylesheet" type="text/css" href="/activity/project_euler/style_default.1627113674.css">
<script src="https://projecteuler.net/js/mathjax_config.js"></script>
<script src="https://cdnjs.cloudflare.com/polyfill/v3/polyfill.min.js?version=4.8.0&features=es6"></script>
<script id="MathJax-script" async
src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js">
</script>
<div id="content">

<div class="center print"><img src="https://projecteuler.net/images/clipart/print_page_logo.png" alt="projecteuler.net"></div>
<h2>Digital Root Sums of Factorisations</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 30th June 2007, 02:00 pm; Solved by 3640;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=159">Problem 159</a></h3></div>
<div class="problem_content" role="problem">
<p>A composite number can be factored many different ways.  
For instance, not including multiplication by one, $24$ can be factored in $7$ distinct ways:</p>
\begin{align}
24 &amp;= 2 \times 2 \times 2 \times 3\\
24 &amp;= 2 \times 3 \times 4\\
24 &amp;= 2 \times 2 \times 6\\
24 &amp;= 4 \times 6\\
24 &amp;= 3 \times 8\\
24 &amp;= 2 \times 12\\
24 &amp;= 24
\end{align}

<p>Recall that the digital root of a number, in base $10$, is found by adding together the digits of that number, 
and repeating that process until a number is arrived at that is less than $10$.  
Thus the digital root of $467$ is $8$.</p>
<p>We shall call a Digital Root Sum (DRS) the sum of the digital roots of the individual factors of our number.<br>
The chart below demonstrates all of the DRS values for $24$.</p>
<table class="grid center">
<tr><th>Factorisation</th><th>Digital Root Sum</th></tr>
<tr><td>$2 \times 2 \times 2 \times 3$</td><td>$9$</td></tr>
<tr><td>$2 \times 3 \times 4$</td><td>$9$</td></tr>
<tr><td>$2 \times 2 \times 6$</td><td>$10$</td></tr>
<tr><td>$4 \times 6$</td><td>$10$</td></tr>
<tr><td>$3 \times 8$</td><td>$11$</td></tr>
<tr><td>$2 \times 12$</td><td>$5$</td></tr>
<tr><td>$24$</td><td>$6$</td></tr>
</table>
<p>The maximum Digital Root Sum of $24$ is $11$.<br>
The function $\operatorname{mdrs}(n)$ gives the maximum Digital Root Sum of $n$. So $\operatorname{mdrs}(24)=11$.<br>
Find $\sum \operatorname{mdrs}(n)$ for $1 \lt n \lt 1\,000\,000$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
