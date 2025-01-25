+++
title = "P747"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_746/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_748/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Triangular Pizza</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 14th February 2021, 10:00 am; Solved by 207;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=747">Problem 747</a></h3></div>
<div class="problem_content" role="problem">
<p>Mamma Triangolo baked a triangular pizza. She wants to cut the pizza into $n$ pieces. She first chooses a point $P$ in the interior (not boundary) of the triangle pizza, and then performs $n$ cuts, which all start from $P$ and extend straight to the boundary of the pizza so that the $n$ pieces are all triangles and all have the same area.</p>

<p>Let $\psi(n)$ be the number of different ways for Mamma Triangolo to cut the pizza, subject to the constraints.<br />
For example, $\psi(3)=7$.</p>

<div style="text-align:center;">
<img src="https://projecteuler.net/project/images/p747_PizzaDiag.jpg" class="dark_img" alt="" /></div>

<p>Also $\psi(6)=34$, and $\psi(10)=90$.</p>

<p>Let $\Psi(m)=\displaystyle\sum_{n=3}^m \psi(n)$. You are given $\Psi(10)=345$ and $\Psi(1000)=172166601$.</p>

<p>Find $\Psi(10^8)$. Give your answer modulo $1\,000\,000\,007$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
