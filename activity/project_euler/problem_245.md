+++
title = "Coresilience"
hascode = true
hasplotly = true
+++

~~~
<p style="margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;">
<a href="/activity/project_euler/problem_244/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_246/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Coresilience</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 15th May 2009, 02:00 pm; Solved by 925;<br>Difficulty rating: 80%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=245">Problem 245</a></h3></div>
<div class="problem_content" role="problem">
<p>We shall call a fraction that cannot be cancelled down a resilient fraction.<br> Furthermore we shall define the resilience of a denominator, $R(d)$, to be the ratio of its proper fractions that are resilient; for example, $R(12) = \dfrac{4}{11}$.</p>

<p>The resilience of a number $d \gt 1$ is then $\dfrac{\varphi(d)}{d - 1}$, where $\varphi$ is Euler's totient function.</p>

<p>We further define the <dfn>coresilience</dfn> of a number $n \gt 1$ as $C(n) = \dfrac{n - \varphi(n)}{n - 1}$.</p>

<p>The coresilience of a prime $p$ is $C(p) = \dfrac{1}{p - 1}$.</p>

<p>Find the sum of all <strong>composite</strong> integers $1 \lt n \le 2 \times 10^{11}$, for which $C(n)$ is a <strong class="tooltip">unit fraction<span class="tooltiptext">A fraction with numerator $1$</span></strong>.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
