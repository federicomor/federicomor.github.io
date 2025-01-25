+++
title = "P848"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_847/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_849/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Guessing with Sets</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 18th June 2023, 02:00 am; Solved by 210;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=848">Problem 848</a></h3></div>
<div class="problem_content" role="problem">
<p>Two players play a game. At the start of the game each player secretly chooses an integer; the first player from $1,...,n$ and the second player from $1,...,m$. Then they take alternate turns, starting with the first player. The player, whose turn it is, displays a set of numbers and the other player tells whether their secret number is in the set or not. The player to correctly guess a set with a single number is the winner and the game ends.</p>

<p>Let $p(m,n)$ be the winning probability of the first player assuming both players play optimally. For example $p(1, n) = 1$ and $p(m, 1) = 1/m$.</p>

<p>You are also given $p(7,5) \approx 0.51428571$.</p>

<p>Find $\displaystyle \sum_{i=0}^{20}\sum_{j=0}^{20} p(7^i, 5^j)$ and give your answer rounded to 8 digits after the decimal point.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
