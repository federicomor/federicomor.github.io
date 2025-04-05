+++
title = "P643"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_642/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_644/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>$2$-Friendly</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 17th November 2018, 07:00 pm; Solved by 694;<br>Difficulty rating: 25%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=643">Problem 643</a></h3></div>
<div class="problem_content" role="problem">
<p>Two positive integers $a$ and $b$ are <dfn>$2$-friendly</dfn> when $\gcd(a,b) = 2^t, t \gt 0$. For example, $24$ and $40$ are $2$-friendly because $\gcd(24,40) = 8 = 2^3$ while $24$ and $36$ are not because $\gcd(24,36) = 12 = 2^2\cdot 3$ not a power of $2$.</p>

<p>Let $f(n)$ be the number of pairs, $(p,q)$, of positive integers with $1\le p\lt q\le n$ such that $p$ and $q$ are $2$-friendly. You are given $f(10^2) = 1031$ and $f(10^6) = 321418433$ modulo $1\,000\,000\,007$.</p>

<p>Find $f(10^{11})$ modulo $1\,000\,000\,007$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
