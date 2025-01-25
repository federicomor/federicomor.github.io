+++
title = "P573"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_572/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_574/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Unfair Race</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 9th October 2016, 07:00 am; Solved by 228;<br>Difficulty rating: 80%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=573">Problem 573</a></h3></div>
<div class="problem_content" role="problem">
<p>$n$ runners in very different training states want to compete in a race. Each one of them is given a different starting number $k$ $(1\leq k \leq n)$ according to the runner's (constant) individual racing speed being $v_k=\frac{k}{n}$.<br>
In order to give the slower runners a chance to win the race, $n$ different starting positions are chosen randomly (with uniform distribution) and independently from each other within the racing track of length $1$. After this, the starting position nearest to the goal is assigned to runner $1$, the next nearest starting position to runner $2$ and so on, until finally the starting position furthest away from the goal is assigned to runner $n$. The winner of the race is the runner who reaches the goal first.</p>

<p>Interestingly, the expected running time for the winner is $\frac{1}{2}$, independently of the number of runners. Moreover, while it can be shown that all runners will have the same expected running time of $\frac{n}{n+1}$, the race is still unfair, since the winning chances may differ significantly for different starting numbers:</p>

<p>Let $P_{n,k}$ be the probability for runner $k$ to win a race with $n$ runners and $E_n = \sum_{k=1}^n k P_{n,k}$ be the expected starting number of the winner in that race. It can be shown that, for example,
$P_{3,1}=\frac{4}{9}$, $P_{3,2}=\frac{2}{9}$, $P_{3,3}=\frac{1}{3}$ and $E_3=\frac{17}{9}$ for a race with $3$ runners. <br>
You are given that $E_4=2.21875$, $E_5=2.5104$ and $E_{10}=3.66021568$.</p>

<p>Find $E_{1000000}$ rounded to $4$ digits after the decimal point.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
