+++
title = "P545"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_544/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="javascript:void(0)" onclick="getRandomProblem()" style="color: black; text-decoration: none;" title="random problem">🎲 </a>
<script>
  function getRandomProblem() {
    fetch('/activity/project_euler/data.txt') 
      .then(response => response.text())
      .then(data => {
        const maxProblems = parseInt(data.trim(), 10);
        const randomProblemNumber = Math.floor(Math.random() * maxProblems) + 1;
        window.location = '/activity/project_euler/problem_' + randomProblemNumber + '/';
      })
      .catch(err => console.error('Error fetching max problems:', err));
  }
</script>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_546/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Faulhaber's Formulas</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 30th January 2016, 10:00 pm; Solved by 599;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=545">Problem 545</a></h3></div>
<div class="problem_content" role="problem">
<p>The sum of the $k$<sup>th</sup> powers of the first $n$ positive integers can be expressed as a polynomial of degree $k+1$ with rational coefficients, the <strong>Faulhaber's Formulas</strong>:<br>
$1^k + 2^k + ... + n^k = \sum_{i=1}^n i^k = \sum_{i=1}^{k+1} a_{i} n^i = a_{1} n + a_{2} n^2 + ... + a_{k} n^k + a_{k+1} n^{k + 1}$,<br>
where $a_i$'s are rational coefficients that can be written as reduced fractions $p_i/q_i$ (if $a_i = 0$, we shall consider $q_i = 1$).</p>

<p>For example, $1^4 + 2^4 + ... + n^4 = -\frac 1 {30} n + \frac 1 3 n^3 + \frac 1 2 n^4 + \frac 1 5 n^5.$</p>

<p>Define $D(k)$ as the value of $q_1$ for the sum of $k$<sup>th</sup> powers (i.e. the denominator of the reduced fraction $a_1$).<br>
Define $F(m)$ as the $m$<sup>th</sup> value of $k \ge 1$ for which $D(k) = 20010$.<br>
You are given $D(4) = 30$ (since $a_1 = -1/30$), $D(308) = 20010$, $F(1) = 308$, $F(10) = 96404$.</p>

<p>Find $F(10^5)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
