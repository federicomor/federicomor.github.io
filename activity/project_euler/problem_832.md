+++
title = "P832"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_831/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_833/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Mex Sequence</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 5th March 2023, 04:00 am; Solved by 322;<br>Difficulty rating: 30%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=832">Problem 832</a></h3></div>
<div class="problem_content" role="problem">
<p>
In this problem $\oplus$ is used to represent the bitwise <strong>exclusive or</strong> of two numbers.<br />
Starting with blank paper repeatedly do the following:</p>

<ol type="1">
<li>Write down the smallest positive integer $a$ which is currently not on the paper;</li>

<li>Find the smallest positive integer $b$ such that neither $b$ nor $(a \oplus b)$ is currently on the paper. Then write down both $b$ and <span style="white-space:nowrap;">$(a \oplus b)$.</span></li>
</ol>

<p>
After the first round $\{1,2,3\}$ will be written on the paper. In the second round $a=4$ and because <span style="white-space:nowrap;">$(4 \oplus 5)$,</span> $(4 \oplus 6)$ and $(4 \oplus 7)$ are all already written $b$ must be <span style="white-space:nowrap;">$8$.</span></p>

<p>
After $n$ rounds there will be $3n$ numbers on the paper. Their sum is denoted by <span style="white-space:nowrap;">$M(n)$.</span><br />
For example, $M(10) = 642$ and <span style="white-space:nowrap;">$M(1000) = 5432148$.</span></p>

<p>
Find <span style="white-space:nowrap;">$M(10^{18})$.</span> Give your answer modulo <span style="white-space:nowrap;">$1\,000\,000\,007$.</span></p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
