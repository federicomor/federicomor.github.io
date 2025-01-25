+++
title = "P331"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_330/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_332/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Cross Flips</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 3rd April 2011, 08:00 am; Solved by 465;<br>Difficulty rating: 100%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=331">Problem 331</a></h3></div>
<div class="problem_content" role="problem">
<p>$N \times N$ disks are placed on a square game board. Each disk has a black side and white side.</p>

<p>At each turn, you may choose a disk and flip all the disks in the same row and the same column as this disk: thus $2 \times N - 1$ disks are flipped. The game ends when all disks show their white side. The following example shows a game on a $5 \times 5$ board.</p>

<div align="center"><img src="https://projecteuler.net/resources/images/0331_crossflips3.gif?1678992056" alt="0331_crossflips3.gif"></div>

<p>It can be proven that $3$ is the minimal number of turns to finish this game.</p>

<p>The bottom left disk on the $N \times N$ board has coordinates $(0,0)$;<br>
the bottom right disk has coordinates $(N-1,0)$ and the top left disk has coordinates $(0,N-1)$. </p>

<p>Let $C_N$ be the following configuration of a board with $N \times N$ disks:<br>
A disk at $(x, y)$ satisfying $N - 1 \le \sqrt{x^2 + y^2} \lt N$, shows its black side; otherwise, it shows its white side. $C_5$ is shown above.</p>

<p>Let $T(N)$ be the minimal number of turns to finish a game starting from configuration $C_N$ or $0$ if configuration $C_N$ is unsolvable.<br>
We have shown that $T(5)=3$. You are also given that $T(10)=29$ and $T(1\,000)=395253$.</p>

<p>Find $\sum \limits_{i = 3}^{31} T(2^i - i)$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
