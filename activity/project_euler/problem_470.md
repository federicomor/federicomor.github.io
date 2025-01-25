+++
title = "P470"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_469/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_471/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Super Ramvok</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 3rd May 2014, 07:00 pm; Solved by 255;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=470">Problem 470</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider a single game of Ramvok:</p>

<p>Let $t$ represent the maximum number of turns the game lasts. If $t = 0$, then the game ends immediately. Otherwise, on each turn $i$, the player rolls a die. After rolling, if $i \lt t$ the player can either stop the game and receive a prize equal to the value of the current roll, or discard the roll and try again next turn. If $i = t$, then the roll cannot be discarded and the prize must be accepted. Before the game begins, $t$ is chosen by the player, who must then pay an up-front cost $ct$ for some constant $c$. For $c = 0$, $t$ can be chosen to be infinite (with an up-front cost of $0$). Let $R(d, c)$ be the expected profit (i.e. net gain) that the player receives from a single game of optimally-played Ramvok, given a fair $d$-sided die and cost constant $c$. For example, $R(4, 0.2) = 2.65$. Assume that the player has sufficient funds for paying any/all up-front costs.</p>

<p>Now consider a game of Super Ramvok:</p>

<p>In Super Ramvok, the game of Ramvok is played repeatedly, but with a slight modification. After each game, the die is altered. The alteration process is as follows: The die is rolled once, and if the resulting face has its pips visible, then that face is altered to be blank instead. If the face is already blank, then it is changed back to its original value. After the alteration is made, another game of Ramvok can begin (and during such a game, at each turn, the die is rolled until a face with a value on it appears). The player knows which faces are blank and which are not at all times. The game of Super Ramvok ends once all faces of the die are blank.</p>

<p>Let $S(d, c)$ be the expected profit that the player receives from an optimally-played game of Super Ramvok, given a fair $d$-sided die to start (with all sides visible), and cost constant $c$. For example, $S(6, 1) = 208.3$.</p>

<p>Let $F(n) = \sum_{4 \le d \le n} \sum_{0 \le c \le n} S(d, c)$.</p>

<p>Calculate $F(20)$, rounded to the nearest integer.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
