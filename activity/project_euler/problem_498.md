+++
title = "P498"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_497/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_499/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Remainder of Polynomial Division</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 18th January 2015, 07:00 am; Solved by 569;<br>Difficulty rating: 40%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=498">Problem 498</a></h3></div>
<div class="problem_content" role="problem">
<p>For positive integers $n$ and $m$, we define two polynomials $F_n(x) = x^n$ and $G_m(x) = (x-1)^m$.<br>
We also define a polynomial $R_{n,m}(x)$ as the remainder of the division of $F_n(x)$ by $G_m(x)$.<br>
For example, $R_{6,3}(x) = 15x^2 - 24x + 10$.</p>

<p>Let $C(n, m, d)$ be the absolute value of the coefficient of the $d$-th degree term of $R_{n,m}(x)$.<br>
We can verify that $C(6, 3, 1) = 24$ and $C(100, 10, 4) = 227197811615775$.</p>

<p>Find $C(10^{13}, 10^{12}, 10^4) \bmod 999999937$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
