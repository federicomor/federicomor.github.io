+++
title = "P644"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_643/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_645/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Squares on the Line</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 24th November 2018, 10:00 pm; Solved by 175;<br>Difficulty rating: 90%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=644">Problem 644</a></h3></div>
<div class="problem_content" role="problem">
<p>Sam and Tom are trying a game of (partially) covering a given line segment of length $L$ by taking turns in placing unit squares onto the line segment. </p>

<p>As illustrated below, the squares may be positioned in two different ways, either "straight" by placing the midpoints of two opposite sides on the line segment, or "diagonal" by placing two opposite corners on the line segment. Newly placed squares may touch other squares, but are not allowed to overlap any other square laid down before.<br>
The player who is able to place the last unit square onto the line segment wins.</p>
<div class="center">
<img src="https://projecteuler.net/resources/images/0644_squareline.png?1678992054" alt="0644_squareline.png">
</div>
<p>
With Sam starting each game by placing the first square, they quickly realise that Sam can easily win every time by placing the first square in the middle of the line segment, making the game boring. </p>
<p>
Therefore they decide to randomise Sam's first move, by first tossing a fair coin to determine whether the square will be placed straight or diagonal onto the line segment and then choosing the actual position on the line segment randomly with all possible positions being equally likely. Sam's gain of the game is defined to be 0 if he loses the game and $L$ if he wins. Assuming optimal play of both players after Sam's initial move, you can see that Sam's expected gain, called $e(L)$, is only dependent on the length of the line segment.</p>
<p>
For example, if $L=2$, Sam will win with a probability of $1$, so $e(2)= 2$. <br>
Choosing $L=4$, the winning probability will be $0.33333333$ for the straight case and $0.22654092$ for the diagonal case, leading to $e(4)=1.11974851$ (rounded to $8$ digits after the decimal point each).</p>
<p>
Being interested in the optimal value of $L$ for Sam, let's define $f(a,b)$ to be the maximum of $e(L)$ for some $L \in [a,b]$. <br>
You are given $f(2,10)=2.61969775$, being reached for $L= 7.82842712$, and $f(10,20)=
5.99374121$ (rounded to $8$ digits each).</p>
<p>
Find $f(200,500)$, rounded to $8$ digits after the decimal point.</p> 
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
