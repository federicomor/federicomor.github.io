+++
title = "P825"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_824/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_826/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Chasing Game</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 15th January 2023, 07:00 am; Solved by 162;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=825">Problem 825</a></h3></div>
<div class="problem_content" role="problem">
<p>Two cars are on a circular track of total length $2n$, facing the same direction, initially distance $n$ apart.<br />
They move in turn. At each turn, the moving car will advance a distance of $1$, $2$ or $3$, with equal probabilities.<br />
The chase ends when the moving car reaches or goes beyond the position of the other car. The moving car is declared the winner.</p>

<p>Let $S(n)$ be the difference between the winning probabilities of the two cars.<br />
For example, when $n = 2$, the winning probabilities of the two cars are $\frac 9 {11}$ and $\frac 2 {11}$, and thus $S(2) = \frac 7 {11}$.</p>

<p>Let $\displaystyle T(N) = \sum_{n = 2}^N S(n)$.</p>

<p>You are given that $T(10) = 2.38235282$ rounded to 8 digits after the decimal point.</p>

<p>Find $T(10^{14})$, rounded to 8 digits after the decimal point.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
