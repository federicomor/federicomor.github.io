+++
title = "P842"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_841/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_843/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Irregular Star Polygons</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 7th May 2023, 08:00 am; Solved by 132;<br>Difficulty rating: 75%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=842">Problem 842</a></h3></div>
<div class="problem_content" role="problem">
<p>
Given $n$ equally spaced points on a circle, we define an <dfn>$n$-star polygon</dfn> as an $n$-gon having those $n$ points as vertices. Two $n$-star polygons differing by a rotation/reflection are considered <b>different</b>.</p>

<p>
For example, there are twelve $5$-star polygons shown below.</p>
<img src="https://projecteuler.net/resources/images/0842_5-agons.jpg?1680461480" alt="0842_5-agons.jpg">
<p>
For an $n$-star polygon $S$, let $I(S)$ be the number of its self intersection points.<br>
Let $T(n)$ be the sum of $I(S)$ over all $n$-star polygons $S$.<br>
For the example above $T(5) = 20$ because in total there are $20$ self intersection points.</p>

<p>
Some star polygons may have intersection points made from more than two lines. These are only counted once. For example, <span style="white-space:nowrap;">$S$,</span> shown below is one of the sixty $6$-star polygons. This one has $I(S) = 4$.</p>
<img src="https://projecteuler.net/resources/images/0842_6-agon.jpg?1680461493" alt="0842_6-agon.jpg">
<p>
You are also given that $T(8) = 14640$.</p>

<p>
Find $\displaystyle \sum_{n = 3}^{60}T(n)$. Give your answer modulo $(10^9 + 7)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
