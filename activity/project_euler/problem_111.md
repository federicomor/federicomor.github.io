+++
title = "P111"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_110/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_112/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Primes with Runs</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 16th December 2005, 06:00 pm; Solved by 8138;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=111">Problem 111</a></h3></div>
<div class="problem_content" role="problem">
<p>Considering $4$-digit primes containing repeated digits it is clear that they cannot all be the same: $1111$ is divisible by $11$, $2222$ is divisible by $22$, and so on. But there are nine $4$-digit primes containing three ones:
$$1117, 1151, 1171, 1181, 1511, 1811, 2111, 4111, 8111.$$</p>
<p>We shall say that $M(n, d)$ represents the maximum number of repeated digits for an $n$-digit prime where $d$ is the repeated digit, $N(n, d)$ represents the number of such primes, and $S(n, d)$ represents the sum of these primes.</p>
<p>So $M(4, 1) = 3$ is the maximum number of repeated digits for a $4$-digit prime where one is the repeated digit, there are $N(4, 1) = 9$ such primes, and the sum of these primes is $S(4, 1) = 22275$. It turns out that for $d = 0$, it is only possible to have $M(4, 0) = 2$ repeated digits, but there are $N(4, 0) = 13$ such cases.</p>
<p>In the same way we obtain the following results for $4$-digit primes.</p>
<div class="center">
<table align="center" border="1" cellspacing="0" cellpadding="5"><tr><td><b>Digit, <i>d</i></b></td>
<td><b>M(4, <i>d</i>)</b></td>
<td><b>N(4, <i>d</i>)</b></td>
<td><b>S(4, <i>d</i>)</b></td>
</tr><tr><td>0</td>
<td>2</td>
<td>13</td>
<td>67061</td>
</tr><tr><td>1</td>
<td>3</td>
<td>9</td>
<td>22275</td>
</tr><tr><td>2</td>
<td>3</td>
<td>1</td>
<td>2221</td>
</tr><tr><td>3</td>
<td>3</td>
<td>12</td>
<td>46214</td>
</tr><tr><td>4</td>
<td>3</td>
<td>2</td>
<td>8888</td>
</tr><tr><td>5</td>
<td>3</td>
<td>1</td>
<td>5557</td>
</tr><tr><td>6</td>
<td>3</td>
<td>1</td>
<td>6661</td>
</tr><tr><td>7</td>
<td>3</td>
<td>9</td>
<td>57863</td>
</tr><tr><td>8</td>
<td>3</td>
<td>1</td>
<td>8887</td>
</tr><tr><td>9</td>
<td>3</td>
<td>7</td>
<td>48073</td>
</tr></table></div>
<p>For $d = 0$ to $9$, the sum of all $S(4, d)$ is $273700$.</p>
<p>Find the sum of all $S(10, d)$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
