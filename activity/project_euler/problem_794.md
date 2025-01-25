+++
title = "P794"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_793/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_795/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Seventeen Points</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 17th April 2022, 11:00 am; Solved by 328;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=794">Problem 794</a></h3></div>
<div class="problem_content" role="problem">
<p>This problem uses half open interval notation where $[a,b)$ represents $a \le x &lt; b$.</p>

<p>A real number, $x_1$, is chosen in the interval $[0,1)$.<br>
A second real number, $x_2$, is chosen such that each of $[0,\frac{1}{2})$ and $[\frac{1}{2},1)$ contains exactly one of $(x_1, x_2)$.<br>
Continue such that on the $n$-th step a real number, $x_n$, is chosen so that each of the intervals $[\frac{k-1}{n}, \frac{k}{n})$ for $k \in \{1, \dots, n\}$ contains exactly one of $(x_1, x_2, \dots, x_n)$.</p>

<p>Define $F(n)$ to be the minimal value of the sum $x_1 + x_2 + \cdots + x_n$ of a tuple $(x_1, x_2, \dots, x_n)$ chosen by such a procedure. For example, $F(4) = 1.5$ obtained with $(x_1, x_2, x_3, x_4) = (0, 0.75, 0.5, 0.25)$.</p>

<p>Surprisingly, no more than $17$ points can be chosen by this procedure. </p>

<p>Find $F(17)$ and give your answer rounded to 12 decimal places.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
