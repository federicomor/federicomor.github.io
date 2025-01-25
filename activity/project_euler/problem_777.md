+++
title = "P777"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_776/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_778/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Lissajous Curves</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 19th December 2021, 07:00 am; Solved by 135;<br>Difficulty rating: 95%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=777">Problem 777</a></h3></div>
<div class="problem_content" role="problem">
<p>For coprime positive integers $a$ and $b$, let $C_{a,b}$ be the curve defined by:
\[
\begin{align}
x &amp;= \cos \left(at\right) \\
y &amp;= \cos \left(b\left(t-\frac{\pi}{10}\right)\right)
\end{align}
\]
where $t$ varies between 0 and $2\pi$.</p>

<p>For example, the images below show $C_{2,5}$ (left) and $C_{7,4}$ (right):</p>
<div style="text-align:center;">
<img src="https://projecteuler.net/project/images/p777_lissajous-pair-25-74.png" class="dark_img" alt="" height="300" />
</div>
<p>Define $d(a,b) = \sum (x^2 + y^2)$, where the sum is over all points (x, y) at which $C_{a,b}$ crosses itself.</p>

<p>For example, in the case of $C_{2,5}$ illustrated above, the curve crosses itself at two points: (0.31, 0) and (-0.81, 0), rounding coordinates to two decimal places, yielding $d(2, 5)=0.75$. Some other examples are $d(2,3)=4.5$, $d(7,4)=39.5$, <span style="white-space:nowrap;">$d(7,5)=52$,</span> and $d(10,7)=23.25$.</p>

<p>Let $s(m) = \sum d(a,b)$, where this sum is over all pairs of coprime integers $a,b$ with $2\le a\le m$ and $2\le b\le m$.<br />
You are given that $s(10) = 1602.5$ and $s(100) = 24256505$.</p>

<p>Find $s(10^6)$. Give your answer in scientific notation rounded to 10 significant digits; for example $s(100)$ would be given as 2.425650500e7.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
