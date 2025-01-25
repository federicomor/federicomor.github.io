+++
title = "P334"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_333/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_335/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
</div>
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
<h2>Spilling the Beans</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 23rd April 2011, 04:00 pm; Solved by 521;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=334">Problem 334</a></h3></div>
<div class="problem_content" role="problem">
<p>In Plato's heaven, there exist an infinite number of bowls in a straight line.<br>
Each bowl either contains some or none of a finite number of beans.<br>
A child plays a game, which allows only one kind of move: removing two beans from any bowl, and putting one in each of the two adjacent bowls.<br> The game ends when each bowl contains either one or no beans.</p>

<p>For example, consider two adjacent bowls containing $2$ and $3$ beans respectively, all other bowls being empty. The following eight moves will finish the game:</p>

<div align="center"><img src="https://projecteuler.net/resources/images/0334_beans.gif?1678992056" class="dark_img" alt="0334_beans.gif"></div>

<p>You are given the following sequences:<br></p>

<p>
$\def\htmltext#1{\style{font-family:inherit;}{\text{#1}}}$
$
\begin{align}
\qquad t_0 &amp;= 123456,\cr
\qquad t_i &amp;= \cases{
\;\;\frac{t_{i-1}}{2},&amp;$\htmltext{if }t_{i-1}\htmltext{ is even}$\cr
\left\lfloor\frac{t_{i-1}}{2}\right\rfloor\oplus 926252,&amp;$\htmltext{if }t_{i-1}\htmltext{ is odd}$\cr}\cr
&amp;\qquad\htmltext{where }\lfloor x\rfloor\htmltext{ is the floor function }\cr
&amp;\qquad\!\htmltext{and }\oplus\htmltext{is the bitwise XOR operator.}\cr
\qquad b_i &amp;= (t_i\bmod2^{11}) + 1.\cr
\end{align}
$
</p>

<p>The first two terms of the last sequence are $b_1 = 289$ and $b_2 = 145$.<br>
If we start with $b_1$ and $b_2$ beans in two adjacent bowls, $3419100$ moves would be required to finish the game.</p>

<p>Consider now $1500$ adjacent bowls containing $b_1, b_2, \ldots, b_{1500}$ beans respectively, all other bowls being empty. Find how many moves it takes before the game ends.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
