+++
title = "P922"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_921/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_923/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Young's Game A</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 21st December 2024, 04:00 pm; Solved by 94</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=922">Problem 922</a></h3></div>
<div class="problem_content" role="problem">
<p>
A <strong>Young diagram</strong> is a finite collection of (equally-sized) squares in a grid-like arrangement of rows and columns, such that</p>
<ul>
<li>the left-most squares of all rows are aligned vertically;
</li><li>the top squares of all columns are aligned horizontally;
</li><li>the rows are non-increasing in size as we move top to bottom;
</li><li>the columns are non-increasing in size as we move left to right.
</li></ul>
<p>
Two examples of Young diagrams are shown below.</p>
<div style="text-align:center;">
<img src="https://projecteuler.net/resources/images/0922_youngs_game_diagrams.png?1731534949" alt="0922_youngs_game_diagrams.png"></div>
<p>
Two players Right and Down play a game on several Young diagrams, all disconnected from each other. Initially, a token is placed in the top-left square of each diagram. Then they take alternating turns, starting with Right. On Right's turn, Right selects a token on one diagram and moves it <b>any number of squares</b> to the right. On Down's turn, Down selects a token on one diagram and moves it <b>any number of squares</b> downwards. A player unable to make a legal move on their turn loses the game.</p>

<p>
For $a,b,k\geq 1$ we define an <dfn>$(a,b,k)$-staircase</dfn> to be the Young diagram where the bottom-right frontier consists of $k$ <dfn>steps</dfn> of vertical height $a$ and horizontal length $b$. Shown below are four examples of staircases with $(a,b,k)$ respectively $(1,1,4),$ $(5,1,1),$ $(3,3,2),$ $(2,4,3)$.</p>
<div style="text-align:center;">
<img src="https://projecteuler.net/resources/images/0922_youngs_game_staircases.png?1731535243" alt="0922_youngs_game_staircases.png"></div>
<p>
Additionally, define the <dfn>weight</dfn> of an $(a,b,k)$-staircase to be $a+b+k$.</p>

<p>
Let $R(m, w)$ be the number ways of choosing $m$ staircases, each having weight not exceeding $w$, upon which Right (moving first in the game) will win the game assuming optimal play. Different orderings of the same set of staircases are to be counted separately.</p>

<p>
For example, $R(2, 4)=7$ is illustrated below, with tokens as grey circles drawn in their initial positions.</p>
<div style="text-align:center;">
<img src="https://projecteuler.net/resources/images/0922_youngs_game_example.png?1731535375" alt="0922_youngs_game_example.png"></div>

<p>
You are also given $R(3, 9)=314104$.</p>

<p>
Find $R(8, 64)$ giving your answer modulo $10^9+7$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
