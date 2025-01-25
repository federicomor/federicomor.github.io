+++
title = "P376"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_375/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_377/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Nontransitive Sets of Dice</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 18th March 2012, 01:00 am; Solved by 311;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=376">Problem 376</a></h3></div>
<div class="problem_content" role="problem">
<p>
Consider the following set of dice with nonstandard pips:
</p>

<p>
Die $A$: $1$ $4$ $4$ $4$ $4$ $4$<br>
Die $B$: $2$ $2$ $2$ $5$ $5$ $5$<br>
Die $C$: $3$ $3$ $3$ $3$ $3$ $6$<br></p>

<p>
A game is played by two players picking a die in turn and rolling it. The player who rolls the highest value wins.
</p>

<p>
If the first player picks die $A$ and the second player picks die $B$ we get<br>
$P(\text{second player wins}) = 7/12 \gt 1/2$.</p>

<p>
If the first player picks die $B$ and the second player picks die $C$ we get<br>
$P(\text{second player wins}) = 7/12 \gt 1/2$.</p>

<p>
If the first player picks die $C$ and the second player picks die $A$ we get<br>
$P(\text{second player wins}) = 25/36 \gt 1/2$.</p>

<p>
So whatever die the first player picks, the second player can pick another die and have a larger than $50\%$ chance of winning.<br>
A set of dice having this property is called a <strong>nontransitive set of dice</strong>.
</p>

<p>
We wish to investigate how many sets of nontransitive dice exist. We will assume the following conditions:</p><ul><li>There are three six-sided dice with each side having between $1$ and $N$ pips, inclusive.</li>
<li>Dice with the same set of pips are equal, regardless of which side on the die the pips are located.</li>
<li>The same pip value may appear on multiple dice; if both players roll the same value neither player wins.</li>
<li>The sets of dice $\{A,B,C\}$, $\{B,C,A\}$ and $\{C,A,B\}$ are the same set.</li>
</ul><p>
For $N = 7$ we find there are $9780$ such sets.<br>
How many are there for $N = 30$?
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
