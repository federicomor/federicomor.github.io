+++
title = "P736"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_735/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_737/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Paths to Equality</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 29th November 2020, 01:00 am; Solved by 241;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=736">Problem 736</a></h3></div>
<div class="problem_content" role="problem">
<p>Define two functions on lattice points:</p>
<center>$r(x,y) = (x+1,2y)$</center>
<center>$s(x,y) = (2x,y+1)$</center>
<p>A <i>path to equality</i> of length $n$ for a pair $(a,b)$ is a sequence $\Big((a_1,b_1),(a_2,b_2),\ldots,(a_n,b_n)\Big)$, where:</p>
<ul><li>$(a_1,b_1) = (a,b)$</li>
<li>$(a_k,b_k) = r(a_{k-1},b_{k-1})$ or $(a_k,b_k) = s(a_{k-1},b_{k-1})$ for $k &gt; 1$</li>
<li>$a_k \ne b_k$ for $k &lt; n$</li>
<li>$a_n = b_n$</li>
</ul><p>$a_n = b_n$ is called the <i>final value</i>.</p>
<p>For example,</p>
<center>$(45,90)\xrightarrow{r} (46,180)\xrightarrow{s}(92,181)\xrightarrow{s}(184,182)\xrightarrow{s}(368,183)\xrightarrow{s}(736,184)\xrightarrow{r}$</center>
<center>$(737,368)\xrightarrow{s}(1474,369)\xrightarrow{r}(1475,738)\xrightarrow{r}(1476,1476)$</center>
<p>This is a path to equality for $(45,90)$ and is of length 10 with final value 1476. There is no path to equality of $(45,90)$ with smaller length.</p>
<p>Find the unique path to equality for $(45,90)$ with smallest <b>odd</b> length. Enter the final value as your answer.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
