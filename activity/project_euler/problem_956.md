+++
title = "P956"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_955/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_957/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Super Duper Sum</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 26th July 2025, 02:00 pm; Solved by 446;<br>Difficulty level: 4</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=956">Problem 956</a></h3></div>
<div class="problem_content" role="problem">
<p>
The total number of prime factors of $n$, counted with multiplicity, is denoted $\Omega(n)$.<br>
For example, $\Omega(12)=3$, counting the factor $2$ twice, and the factor $3$ once.</p>

<p>
Define $D(n, m)$ to be the sum of all divisors $d$ of $n$ where $\Omega(d)$ is divisible by $m$. <br>
For example, $D(24, 3)=1+8+12=21$.</p>

<p>
The <b>superfactorial</b> of $n$, often written as $n\$$, is defined as the product of the first $n$ factorials:
$$n\$=1!\times 2! \times\cdots\times n!$$
The <b>superduperfactorial</b> of $n$, we write as $n\bigstar$, is defined as the product of the first $n$ superfactorials:
$$n\bigstar=1\$ \times 2\$ \times\cdots\times n\$ $$
</p>

<p>
You are given $D(6\bigstar, 6)=6368195719791280$.</p>

<p>
Find $D(1\,000\bigstar, 1\,000)$. 
Give your answer modulo $999\,999\,001$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
