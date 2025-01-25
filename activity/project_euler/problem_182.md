+++
title = "P182"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_181/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_183/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>RSA Encryption</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 15th February 2008, 01:00 pm; Solved by 2890;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=182">Problem 182</a></h3></div>
<div class="problem_content" role="problem">
<p>The RSA encryption is based on the following procedure:</p>
<p>Generate two distinct primes $p$ and $q$.<br>Compute $n = pq$ and $\phi = (p - 1)(q - 1)$.<br>
Find an integer $e$, $1 \lt e \lt \phi$, such that $\gcd(e, \phi) = 1$.</p>
<p>A message in this system is a number in the interval $[0, n - 1]$.<br>
A text to be encrypted is then somehow converted to messages (numbers in the interval $[0, n - 1]$).<br>
To encrypt the text, for each message, $m$, $c = m^e \bmod n$ is calculated.</p>
<p>To decrypt the text, the following procedure is needed: calculate $d$ such that $ed = 1 \bmod \phi$, then for each encrypted message, $c$, calculate $m = c^d \bmod n$.</p>
<p>There exist values of $e$ and $m$ such that $m^e \bmod n = m$.<br>We call messages $m$ for which $m^e \bmod n = m$ unconcealed messages.</p>
<p>An issue when choosing $e$ is that there should not be too many unconcealed messages.<br>For instance, let $p = 19$ and $q = 37$.<br>
Then $n = 19 \cdot 37 = 703$ and $\phi = 18 \cdot 36 = 648$.<br>
If we choose $e = 181$, then, although $\gcd(181,648) = 1$ it turns out that all possible messages $m$ ($0 \le m \le n - 1$) are unconcealed when calculating $m^e \bmod n$.<br>
For any valid choice of $e$ there exist some unconcealed messages.<br>
It's important that the number of unconcealed messages is at a minimum.</p>
<p>Choose $p = 1009$ and $q = 3643$.<br>
Find the sum of all values of $e$, $1 \lt e \lt \phi(1009,3643)$ and $\gcd(e, \phi) = 1$, so that the number of unconcealed messages for this value of $e$ is at a minimum.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
