+++
title = "Pizza Toppings"
hascode = true
hasplotly = true
+++

~~~
<p style="margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;">
<a href="/activity/project_euler/problem_280/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_282/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Pizza Toppings</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 5th March 2010, 01:00 pm; Solved by 1094;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=281">Problem 281</a></h3></div>
<div class="problem_content" role="problem">
<p>You are given a pizza (perfect circle) that has been cut into $m \cdot n$ equal pieces and you want to have exactly one topping on each slice.</p>

<p>Let $f(m, n)$ denote the number of ways you can have toppings on the pizza with $m$ different toppings ($m \ge 2$), using each topping on exactly $n$ slices ($n \ge 1$).<br>Reflections are considered distinct, rotations are not. </p>

<p>Thus, for instance, $f(2,1) = 1$, $f(2, 2) = f(3, 1) = 2$ and $f(3, 2) = 16$. <br>$f(3, 2)$ is shown below:</p>

<div align="center"><img src="https://projecteuler.net/resources/images/0281_pizza.gif?1678992056" class="dark_img" alt="0281_pizza.gif"></div>

<p>Find the sum of all $f(m, n)$ such that $f(m, n) \le 10^{15}$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
