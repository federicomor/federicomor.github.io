+++
title = "P459"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_458/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_460/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Flipping Game</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 16th February 2014, 10:00 am; Solved by 260;<br>Difficulty rating: 100%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=459">Problem 459</a></h3></div>
<div class="problem_content" role="problem">
<p>The flipping game is a two player game played on an $N$ by $N$ square board.<br>
Each square contains a disk with one side white and one side black.<br>
The game starts with all disks showing their white side.</p>

<p>A turn consists of flipping all disks in a rectangle with the following properties:
</p><p></p><ul><li>the upper right corner of the rectangle contains a white disk</li>
<li>the rectangle width is a perfect square ($1$, $4$, $9$, $16$, ...)</li>
<li>the rectangle height is a <strong class="tooltip">triangular number<span class="tooltiptext">The triangular numbers are defined as $\frac 1 2 n(n + 1)$ for positive integer $n$.</span></strong> ($1$, $3$, $6$, $10$, ...)</li>
</ul>
<p class="center"><img src="https://projecteuler.net/resources/images/0459-flipping-game-0.png?1678992053" alt="0459-flipping-game-0.png"></p>

<p>Players alternate turns. A player wins by turning the grid all black.</p>

<p>Let $W(N)$ be the number of <strong class="tooltip">winning moves<span class="tooltiptext">The first move of a strategy that ensures a win no matter what the opponent plays.</span></strong> for the first player on an $N$ by $N$ board with all disks white, assuming perfect play.<br>
$W(1) = 1$, $W(2) = 0$, $W(5) = 8$ and $W(10^2) = 31395$.</p>

<p>For $N=5$, the first player's eight winning first moves are:</p>

<p class="center"><img src="https://projecteuler.net/resources/images/0459-flipping-game-1.png?1678992053" class="dark_img" alt="0459-flipping-game-1.png"></p>

<p>Find $W(10^6)$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
