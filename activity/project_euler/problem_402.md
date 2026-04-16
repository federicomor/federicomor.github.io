+++
title = "P402"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_401/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_403/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Integer-valued Polynomials</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 17th November 2012, 07:00 pm; Solved by 484;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=402">Problem 402</a></h3></div>
<div class="problem_content" role="problem">
<p>
It can be shown that the polynomial $n^4 + 4n^3 + 2n^2 + 5n$ is a multiple of $6$ for every integer $n$. It can also be shown that $6$ is the largest integer satisfying this property.
</p>
<p>
Define $M(a, b, c)$ as the maximum $m$ such that $n^4 + an^3 + bn^2 + cn$ is a multiple of $m$ for all integers $n$. For example, $M(4, 2, 5) = 6$.
</p>
<p>
Also, define $S(N)$ as the sum of $M(a, b, c)$ for all $0 \lt a, b, c \leq N$.
</p>
<p>
We can verify that $S(10) = 1972$ and $S(10000) = 2024258331114$.
</p>
<p>
Let $F_k$ be the Fibonacci sequence:<br>
$F_0 = 0$, $F_1 = 1$ and<br>
$F_k = F_{k-1} + F_{k-2}$ for $k \geq 2$.
</p>
<p>
Find the last $9$ digits of $\sum S(F_k)$ for $2 \leq k \leq 1234567890123$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
