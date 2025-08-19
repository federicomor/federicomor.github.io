+++
title = "P556"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_555/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_557/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Squarefree Gaussian Integers</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 17th April 2016, 07:00 am; Solved by 292;<br>Difficulty rating: 85%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=556">Problem 556</a></h3></div>
<div class="problem_content" role="problem">
<p>A <b>Gaussian integer</b> is a number $z = a + bi$ where $a$, $b$ are integers and $i^2 = -1$.<br>
Gaussian integers are a subset of the complex numbers, and the integers are the subset of Gaussian integers for which $b = 0$.</p>

<p>A Gaussian integer <strong>unit</strong> is one for which $a^2 + b^2 = 1$, i.e. one of $1, i, -1, -i$.<br>
Let's define a <dfn>proper</dfn> Gaussian integer as one for which $a \gt 0$ and $b \ge 0$.</p>

<p>A Gaussian integer $z_1 = a_1 + b_1 i$ is said to be divisible by $z_2 = a_2 + b_2 i$ if $z_3 = a_3 + b_3 i = z_1 / z_2$ is a Gaussian integer.<br>
$\frac {z_1} {z_2} = \frac {a_1 + b_1 i} {a_2 + b_2 i} = \frac {(a_1 + b_1 i)(a_2 - b_2 i)} {(a_2 + b_2 i)(a_2 - b_2 i)} = \frac {a_1 a_2 + b_1 b_2} {a_2^2 + b_2^2} + \frac  {a_2 b_1 - a_1 b_2}  {a_2^2 + b_2^2}i = a_3 + b_3 i$<br>
So, $z_1$ is divisible by $z_2$ if $\frac {a_1 a_2 + b_1 b_2} {a_2^2 + b_2^2}$ and $\frac  {a_2 b_1 - a_1 b_2}  {a_2^2 + b_2^2}$ are integers.<br>
For example, $2$ is divisible by $1 + i$ because $2/(1 + i) = 1 - i$ is a Gaussian integer.</p>

<p>A <strong>Gaussian prime</strong> is a Gaussian integer that is divisible only by a unit, itself or itself times a unit.<br>
For example, $1 + 2i$ is a Gaussian prime, because it is only divisible by $1$, $i$, $-1$, $-i$, $1 + 2i$, $i(1 + 2i) = i - 2$, $-(1 + 2i) = -1 - 2i$ and $-i(1 + 2i) = 2 - i$.<br>
$2$ is not a Gaussian prime as it is divisible by $1 + i$.</p>

<p>A Gaussian integer can be uniquely factored as the product of a unit and proper Gaussian primes.<br>
For example $2 = -i(1 + i)^2$ and $1 + 3i = (1 + i)(2 + i)$.<br>
A Gaussian integer is said to be squarefree if its prime factorization does not contain repeated proper Gaussian primes.<br>
So $2$ is not squarefree over the Gaussian integers, but $1 + 3i$ is.<br>
Units and Gaussian primes are squarefree by definition.</p>

<p>Let $f(n)$ be the count of proper squarefree Gaussian integers with $a^2 + b^2 \le n$.<br>
For example $f(10) = 7$ because $1$, $1 + i$, $1 + 2i$, $1 + 3i = (1 + i)(2 + i)$, $2 + i$, $3$ and $3 + i = -i(1 + i)(1 + 2i)$ are squarefree, while $2 = -i(1 + i)^2$ and $2 + 2i = -i(1 + i)^3$ are not.<br>
You are given $f(10^2) = 54$, $f(10^4) = 5218$ and $f(10^8) = 52126906$.</p>

<p>Find $f(10^{14})$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
