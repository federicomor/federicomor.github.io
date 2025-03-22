+++
title = "P929"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_928/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_930/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Odd-Run Compositions</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 26th January 2025, 07:00 am; Solved by 190</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=929">Problem 929</a></h3></div>
<div class="problem_content" role="problem">
<p>A <b>composition</b> of $n$ is a sequence of positive integers which sum to $n$. Such a sequence can be split into <i>runs</i>, where a run is a maximal contiguous subsequence of equal terms.</p>

<p>For example, $2,2,1,1,1,3,2,2$ is a composition of $14$ consisting of four runs:</p>
<center>$2, 2\quad 1, 1, 1\quad 3 \quad 2, 2$</center>

<p>Let $F(n)$ be the number of compositions of $n$ where every run has odd length.</p>

<p>For example, $F(5)=10$:</p>
\begin{align*}
&amp; 5 &amp;&amp;4,1  &amp;&amp; 3,2 &amp;&amp;2,3 &amp;&amp;2,1,2\\
&amp;2,1,1,1 &amp;&amp;1,4 &amp;&amp;1,3,1 &amp;&amp;1,1,1,2 &amp;&amp;1,1,1,1,1
\end{align*}
<p>Find $F(10^5)$. Give your answer modulo $1111124111$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
