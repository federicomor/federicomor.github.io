+++
title = "P255"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_254/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_256/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Rounded Square Roots</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 11th September 2009, 09:00 pm; Solved by 963;<br>Difficulty rating: 75%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=255">Problem 255</a></h3></div>
<div class="problem_content" role="problem">
<p>We define the <dfn>rounded-square-root</dfn> of a positive integer $n$ as the square root of $n$ rounded to the nearest integer.</p>

<p>The following procedure (essentially Heron's method adapted to integer arithmetic) finds the rounded-square-root of $n$:</p>
<p>Let $d$ be the number of digits of the number $n$.<br>
If $d$ is odd, set $x_0 = 2 \times 10^{(d-1)/2}$.<br>
If $d$ is even, set $x_0 = 7 \times 10^{(d-2)/2}$.<br>
Repeat:</p>
$$x_{k+1} = \Biggl\lfloor{\dfrac{x_k + \lceil{n / x_k}\rceil}{2}}\Biggr\rfloor$$

<p>until $x_{k+1} = x_k$.</p>
<p>As an example, let us find the rounded-square-root of $n = 4321$.<br>$n$ has $4$ digits, so $x_0 = 7 \times 10^{(4-2)/2} = 70$.<br>
$$x_1 = \Biggl\lfloor{\dfrac{70 + \lceil{4321 / 70}\rceil}{2}}\Biggr\rfloor = 66$$
$$x_2 = \Biggl\lfloor{\dfrac{66 + \lceil{4321 / 66}\rceil}{2}}\Biggr\rfloor = 66$$

Since $x_2 = x_1$, we stop here.<br>
So, after just two iterations, we have found that the rounded-square-root of $4321$ is $66$ (the actual square root is $65.7343137\cdots$).
</p>
<p>The number of iterations required when using this method is surprisingly low.<br>
For example, we can find the rounded-square-root of a $5$-digit integer ($10\,000 \le n \le 99\,999$) with an average of $3.2102888889$ iterations (the average value was rounded to $10$ decimal places).
</p>
<p>Using the procedure described above, what is the average number of iterations required to find the rounded-square-root of a $14$-digit number ($10^{13} \le n \lt 10^{14}$)?<br>
Give your answer rounded to $10$ decimal places.
</p>
<p>Note: The symbols $\lfloor x \rfloor$ and $\lceil x \rceil$ represent the <strong class="tooltip">floor function<span class="tooltiptext">the largest integer not greater than $x$</span></strong> and <strong class="tooltip">ceiling function<span class="tooltiptext">the smallest integer not less than $x$</span></strong> respectively.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
