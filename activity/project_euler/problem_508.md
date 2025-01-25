+++
title = "P508"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_507/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_509/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Integers in Base $i-1$</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 22nd March 2015, 10:00 am; Solved by 261;<br>Difficulty rating: 85%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=508">Problem 508</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider the Gaussian integer $i-1$. A <strong>base $i-1$ representation</strong> of a Gaussian integer $a+bi$ is a finite sequence of digits $d_{n - 1}d_{n - 2}\cdots d_1 d_0$ such that:</p>

<ul><li>$a+bi = d_{n - 1}(i - 1)^{n - 1} + d_{n - 2}(i - 1)^{n - 2} + \cdots + d_1(i - 1) + d_0$</li>
<li>Each $d_k$ is in $\{0,1\}$</li>
<li>There are no leading zeroes, i.e. $d_{n-1} \ne 0$, unless $a+bi$ is itself $0$</li>
</ul><p>Here are base $i-1$ representations of a few Gaussian integers:<br><br>
$11+24i \to 111010110001101$<br>
$24-11i \to 110010110011$<br>
$8+0i \to 111000000$<br>
$-5+0i \to 11001101$<br>
$0+0i \to 0$</p>

<p>
Remarkably, every Gaussian integer has a unique base $i-1$ representation!</p>

<p>
Define $f(a + bi)$ as the number of $1$s in the unique base $i-1$ representation of $a + bi$. For example, $f(11+24i) = 9$ and $f(24-11i) = 7$.</p>

<p>
Define $B(L)$ as the sum of $f(a + bi)$ for all integers $a, b$ such that $|a| \le L$ and $|b| \le L$. For example, $B(500) = 10795060$.</p>

<p>
Find $B(10^{15}) \bmod 1\,000\,000\,007$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
