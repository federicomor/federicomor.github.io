+++
title = "P870"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_869/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_871/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Stone Game IV</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 30th December 2023, 04:00 pm; Solved by 144;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=870">Problem 870</a></h3></div>
<div class="problem_content" role="problem">
<p>
Two players play a game with a single pile of stones of initial size $n$. They take stones from the pile in turn, according to the following rules which depend on a fixed real number $r &gt; 0$:</p>

<ul>
<li>
In the first turn, the first player may take $k$ stones with $1 \le k \lt n$.</li>
<li>
If a player takes $m$ stones in a turn, then in the next turn the opponent may take $k$ stones with $1 \le k \le \lfloor r \cdot m \rfloor$.</li></ul>

<p>
Whoever cannot make a legal move loses the game.</p>

<p>
Let $L(r)$ be the set of initial pile sizes $n$ for which the second player has a winning strategy. For example, $L(0.5) = \{1\}$, $L(1) = \{1, 2, 4, 8, 16, \dots\}$, $L(2) = \{1, 2, 3, 5, 8, \dots\}$.</p>

<p>
A real number $q \gt 0$ is a <i>transition value</i> if $L(s)$ is different from $L(t)$ for all $s &lt; q &lt; t$.<br>
Let $T(i)$ be the $i$-th transition value. For example, $T(1) = 1$, $T(2) = 2$, $T(22) \approx 6.3043478261$.</p>

<p>
Find $T(123456)$ and give your answer rounded to $10$ digits after the decimal point.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
