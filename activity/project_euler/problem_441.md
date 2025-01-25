+++
title = "P441"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_440/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_442/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>The Inverse Summation of Coprime Couples</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 20th October 2013, 10:00 am; Solved by 391;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=441">Problem 441</a></h3></div>
<div class="problem_content" role="problem">
<p>
For an integer $M$, we define $R(M)$ as the sum of $1/(p \cdot q)$ for all the integer pairs $p$ and $q$ which satisfy all of these conditions:
</p>
<ul><li> $1 \leq p \lt q \leq M$</li>
<li> $p + q \geq M$</li>
<li> $p$ and $q$ are coprime.</li>
</ul><p>
We also define $S(N)$ as the sum of $R(i)$ for $2 \leq i \leq N$.<br>
We can verify that $S(2) = R(2) = 1/2$, $S(10) \approx 6.9147$ and $S(100) \approx 58.2962$.
</p>
<p>
Find $S(10^7)$. Give your answer rounded to four decimal places.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
