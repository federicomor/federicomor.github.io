+++
title = "P661"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_660/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_662/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>A Long Chess Match</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 16th March 2019, 10:00 pm; Solved by 250;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=661">Problem 661</a></h3></div>
<div class="problem_content" role="problem">
<p>Two friends $A$ and $B$ are great fans of Chess. They both enjoy playing the game, but after each game the player who lost the game would like to continue (to get back at the other player) and the player who won would prefer to stop (to finish on a high).</p>

<p>So they come up with a plan. After every game, they would toss a (biased) coin with probability $p$ of Heads (and hence probability $1-p$ of Tails). If they get Tails, they will continue with the next game. Otherwise they end the match. Also, after every game the players make a note of who is leading in the match.</p>

<p>Let $p_A$ denote the probability of $A$ winning a game and $p_B$ the probability of $B$ winning a game. Accordingly $1-p_A-p_B$ is the probability that a game ends in a draw. Let $\mathbb{E}_A(p_A,p_B,p)$ denote the expected number of times $A$ was leading in the match.<br />

For example, $\mathbb{E}_A(0.25,0.25,0.5)\approx 0.585786$ and $\mathbb{E}_A(0.47,0.48,0.001)\approx 377.471736$, both rounded to six places after the decimal point.</p>

<p>Let $\displaystyle H(n)=\sum_{k=3}^n \mathbb{E}_A\left(\frac 1 {\sqrt{k+3} },\frac 1 {\sqrt{k+3} }+\frac 1 {k^2},\frac 1 {k^3}\right)$<br />
For example $H(3) \approx 6.8345$, rounded to 4 digits after the decimal point.</p>

<p>Find $H(50)$, rounded to 4 digits after the decimal point.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
