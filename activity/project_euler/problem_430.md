+++
title = "P430"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_429/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_431/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Range Flips</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 2nd June 2013, 07:00 am; Solved by 932;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=430">Problem 430</a></h3></div>
<div class="problem_content" role="problem">
<p>$N$ disks are placed in a row, indexed $1$ to $N$ from left to right.<br>
Each disk has a black side and white side. Initially all disks show their white side.</p>

<p>At each turn, two, not necessarily distinct, integers $A$ and $B$ between $1$ and $N$ (inclusive) are chosen uniformly at random.<br>
All disks with an index from $A$ to $B$ (inclusive) are flipped.</p>

<p>The following example shows the case $N = 8$. At the first turn $A = 5$ and $B = 2$, and at the second turn $A = 4$ and $B = 6$.</p>

<p align="center"><img src="https://projecteuler.net/resources/images/0430_flips.gif?1678992057" class="dark_img" alt="0430_flips.gif"></p>

<p>Let $E(N, M)$ be the expected number of disks that show their white side after $M$ turns.<br>
We can verify that $E(3, 1) = 10/9$, $E(3, 2) = 5/3$, $E(10, 4) \approx 5.157$ and $E(100, 10) \approx 51.893$.</p>

<p>Find $E(10^{10}, 4000)$.<br>
Give your answer rounded to $2$ decimal places behind the decimal point.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
