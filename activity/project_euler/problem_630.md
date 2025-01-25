+++
title = "P630"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_629/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_631/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Crossed Lines</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 1st July 2018, 07:00 am; Solved by 1111;<br>Difficulty rating: 20%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=630">Problem 630</a></h3></div>
<div class="problem_content" role="problem">
<p>
Given a set, $L$, of unique lines, let $M(L)$ be the number of lines in the set and let $S(L)$ be the sum over every line of the number of times that line is crossed by another line in the set.  For example, two sets of three lines are shown below:
</p>
<div align="center"><img src="https://projecteuler.net/resources/images/0630_threelines.png?1678992054" alt="crossed lines"></div>
<p>
In both cases $M(L)$ is $3$ and $S(L)$ is $6$: each of the three lines is crossed by two other lines. Note that even if the lines cross at a single point, all of the separate crossings of lines are counted.
</p>
<p>
Consider points $(T_{2k-1}, T_{2k})$, for integer $k \ge 1$, generated in the following way:
</p>
<p>
$S_0 	=  	290797$<br> 
$S_{n+1} 	=  	S_n^2 \bmod 50515093$<br>
$T_n 	=  	(S_n \bmod 2000) - 1000$
</p>
<p>
For example, the first three points are: $(527, 144)$, $(-488, 732)$, $(-454, -947)$. Given the first $n$ points generated in this manner, let $L_n$ be the set of <b>unique</b> lines that can be formed by joining each point with every other point, the lines being extended indefinitely in both directions.  We can then define $M(L_n)$ and $S(L_n)$ as described above.
</p>
<p>
For example, $M(L_3) = 3$ and $S(L_3) = 6$. Also $M(L_{100}) = 4948$ and $S(L_{100}) = 24477690$.
</p><p>
Find $S(L_{2500})$.
</p>


</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
