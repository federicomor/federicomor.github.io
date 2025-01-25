+++
title = "P707"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_706/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_708/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Lights Out</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 22nd March 2020, 10:00 am; Solved by 250;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=707">Problem 707</a></h3></div>
<div class="problem_content" role="problem">
<p>
Consider a $w\times h$ grid. A cell is either ON or OFF. When a cell is selected, that cell and all cells connected to that cell by an edge are toggled on-off, off-on. See the diagram for the 3 cases of selecting a corner cell, an edge cell or central cell in a grid that has all cells on (white).
</p>
<div class="center">
<img src="https://projecteuler.net/project/images/p707_LightsOutPic.jpg" alt="LightsOut" /></div>
<p>The goal is to get every cell to be off simultaneously. This is not possible for all starting states. A state is solvable if, by a process of selecting cells, the goal can be achieved.
</p>
<p>
Let $F(w,h)$ be the number of solvable states for a $w\times h$ grid. 
You are given $F(1,2)=2$, $F(3,3) = 512$, $F(4,4) = 4096$ and $F(7,11) \equiv 270016253 \pmod{1\,000\,000\,007}$.
</p>
<p>
Let $f_1=f_2 = 1$ and $f_n=f_{n-1}+f_{n-2}, n \ge 3$ be the Fibonacci sequence and define 
$$ S(w,n) = \sum_{k=1}^n F(w,f_k)$$
You are given $S(3,3) = 32$, $S(4,5) = 1052960$ and $S(5,7) \equiv 346547294 \pmod{1\,000\,000\,007}$.
</p>
<p>
Find $S(199,199)$. Give your answer modulo $1\,000\,000\,007$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
