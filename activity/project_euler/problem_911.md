+++
title = "P911"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_910/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_912/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Khinchin Exceptions</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 6th October 2024, 08:00 am; Solved by 169;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=911">Problem 911</a></h3></div>
<div class="problem_content" role="problem">
<p>
An irrational number $x$ can be uniquely expressed as a <b>continued fraction</b> $[a_0; a_1,a_2,a_3,\dots]$:
$$
x=a_{0}+\cfrac{1}{a_1+\cfrac{1}{a_2+\cfrac{1}{a_3+{_\ddots} } } }
$$where $a_0$ is an integer and $a_1,a_2,a_3,\dots$ are positive integers.
</p>
<p>
Define $k_j(x)$ to be the <b>geometric mean</b> of $a_1,a_2,\dots,a_j$.<br> That is, $k_j(x)=(a_1a_2 \cdots a_j)^{1/j}$.<br> Also define $k_\infty(x)=\lim_{j\to \infty} k_j(x)$.
</p>
<p>
Khinchin proved that <b>almost all</b> irrational numbers $x$ have the same value of $k_\infty(x)\approx2.685452\dots$ known as <b>Khinchin's constant</b>. However, there are some exceptions to this rule.
</p>
<p>
For $n\geq 0$ define
$$\rho_n = \sum_{i=0}^{\infty} \frac{2^n}{2^{2^i} }
$$For example $\rho_2$, with continued fraction beginning $[3; 3, 1, 3, 4, 3, 1, 3,\dots]$, has $k_\infty(\rho_2)\approx2.059767$.
</p>
<p>
Find the geometric mean of $k_{\infty}(\rho_n)$ for $0\leq n\leq 50$, giving your answer rounded to six digits after the decimal point.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
