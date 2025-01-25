+++
title = "P207"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_206/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_208/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Integer Partition Equations</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 6th September 2008, 02:00 pm; Solved by 5117;<br>Difficulty rating: 40%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=207">Problem 207</a></h3></div>
<div class="problem_content" role="problem">
<p>For some positive integers $k$, there exists an integer partition of the form $4^t = 2^t + k$,<br>
where $4^t$, $2^t$, and $k$ are all positive integers and $t$ is a real number.</p>

<p>The first two such partitions are $4^1 = 2^1 + 2$ and $4^{1.5849625\cdots} = 2^{1.5849625\cdots} + 6$.</p>

<p>Partitions where $t$ is also an integer are called <dfn>perfect</dfn>.<br> 
For any $m \ge 1$ let $P(m)$ be the proportion of such partitions that are perfect with $k \le m$.<br>
Thus $P(6) = 1/2$.</p>

<p>In the following table are listed some values of $P(m)$.</p>
\begin{align}
P(5) &amp;= 1/1\\
P(10) &amp;= 1/2\\
P(15) &amp;= 2/3\\
P(20) &amp;= 1/2\\
P(25) &amp;= 1/2\\
P(30) &amp;= 2/5\\
\cdots &amp;\\
P(180) &amp;= 1/4\\
P(185) &amp;= 3/13
\end{align}


<p>Find the smallest $m$ for which $P(m) \lt 1/12345$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
