+++
title = "P406"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_405/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_407/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Guessing Game</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 16th December 2012, 07:00 am; Solved by 422;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=406">Problem 406</a></h3></div>
<div class="problem_content" role="problem">
<p>We are trying to find a hidden number selected from the set of integers $\{1, 2, \dots, n\}$ by asking questions. 
Each number (question) we ask, we get one of three possible answers:<br></p><ul><li> "Your guess is lower than the hidden number" (and you incur a cost of $a$), or</li>
<li> "Your guess is higher than the hidden number" (and you incur a cost of $b$), or</li>
<li> "Yes, that's it!" (and the game ends).</li>
</ul><p>Given the value of $n$, $a$, and $b$, an <dfn>optimal strategy</dfn> minimizes the total cost <u>for the worst possible case</u>.</p>

<p>For example, if $n = 5$, $a = 2$, and $b = 3$, then we may begin by asking "<b>2</b>" as our first question.</p>

<p>If we are told that 2 is higher than the hidden number (for a cost of <var>b</var>=3), then we are sure that "<b>1</b>" is the hidden number (for a total cost of <span style="color:#3333ff;"><b>3</b></span>).<br>
If we are told that 2 is lower than the hidden number (for a cost of <var>a</var>=2), then our next question will be "<b>4</b>".<br>
If we are told that 4 is higher than the hidden number (for a cost of <var>b</var>=3), then we are sure that "<b>3</b>" is the hidden number (for a total cost of 2+3=<span style="color:#3333ff;"><b>5</b></span>).<br>
If we are told that 4 is lower than the hidden number (for a cost of <var>a</var>=2), then we are sure that "<b>5</b>" is the hidden number (for a total cost of 2+2=<span style="color:#3333ff;"><b>4</b></span>).<br>
Thus, the worst-case cost achieved by this strategy is <span style="color:#FF0000;"><b>5</b></span>. It can also be shown that this is the lowest worst-case cost that can be achieved. 
So, in fact, we have just described an optimal strategy for the given values of $n$, $a$, and $b$.</p>

<p>Let $C(n, a, b)$ be the worst-case cost achieved by an optimal strategy for the given values of $n$, $a$ and $b$.</p>

<p>Here are a few examples:<br>
$C(5, 2, 3) = 5$<br>
$C(500, \sqrt 2, \sqrt 3) = 13.22073197\dots$<br>
$C(20000, 5, 7) = 82$<br>
$C(2000000, \sqrt 5, \sqrt 7) = 49.63755955\dots$</p>

<p>Let $F_k$ be the Fibonacci numbers: $F_k=F_{k-1}+F_{k-2}$ with base cases $F_1=F_2= 1$.<br>Find $\displaystyle \sum \limits_{k = 1}^{30} {C \left (10^{12}, \sqrt{k}, \sqrt{F_k} \right )}$, and give your answer rounded to 8 decimal places behind the decimal point.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
