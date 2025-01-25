+++
title = "P574"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_573/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_575/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Verifying Primes</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 16th October 2016, 10:00 am; Solved by 290;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=574">Problem 574</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $q$ be a prime and $A \ge B &gt;0$ be two integers with the following properties:
</p><ul><li> $A$ and $B$ have no prime factor in common, that is $\gcd(A,B)=1$.</li>
<li> The product $AB$ is divisible by every prime less than q.</li>

</ul><p>It can be shown that, given these conditions, any sum $A+B&lt;q^2$ and any difference $1&lt;A-B&lt;q^2$ has to be a prime number. Thus you can verify that a number $p$ is prime by showing that either $p=A+B&lt;q^2$ or $p=A-B&lt;q^2$ for some $A,B,q$ fulfilling the conditions listed above.</p>

<p>Let $V(p)$ be the smallest possible value of $A$ in any sum $p=A+B$ and any difference $p=A-B$, that verifies $p$ being prime. Examples:<br>
$V(2)=1$, since $2=1+1&lt; 2^2$. <br>
$V(37)=22$, since $37=22+15=2 \cdot 11+3 \cdot 5&lt; 7^2$ is the associated sum with the smallest possible $A$.<br>
$V(151)=165$ since $151=165-14=3 \cdot 5 \cdot 11 - 2 \cdot 7&lt;13^2$ is the associated difference with the smallest possible $A$. </p>
<p>
Let $S(n)$ be the sum of $V(p)$ for all primes $p&lt;n$. For example, $S(10)=10$ and $S(200)=7177$.</p>
<p>
Find $S(3800)$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
