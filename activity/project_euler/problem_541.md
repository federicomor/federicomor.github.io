+++
title = "P541"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_540/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_542/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Divisibility of Harmonic Number Denominators</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 3rd January 2016, 10:00 am; Solved by 229;<br>Difficulty rating: 90%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=541">Problem 541</a></h3></div>
<div class="problem_content" role="problem">
<p>The $n$<sup>th</sup> <strong>harmonic number</strong> $H_n$ is defined as the sum of the multiplicative inverses of the first $n$ positive integers, and can be written as a <strong>reduced fraction</strong> $a_n/b_n$.<br>
$H_n = \displaystyle \sum_{k=1}^n \frac 1 k = \frac {a_n} {b_n}$, with $\gcd(a_n, b_n)=1$.</p>

<p>Let $M(p)$ be the largest value of $n$ such that $b_n$ is not divisible by $p$.</p>

<p>For example, $M(3) = 68$ because $H_{68} = \frac {a_{68} } {b_{68} } = \frac {14094018321907827923954201611} {2933773379069966367528193600}$, $b_{68}=2933773379069966367528193600$ is not divisible by $3$, but all larger harmonic numbers have denominators divisible by $3$.</p>

<p>You are given $M(7) = 719102$.</p>

<p>Find $M(137)$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
