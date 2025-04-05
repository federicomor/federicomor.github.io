+++
title = "P343"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_342/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_344/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Fractional Sequences</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 18th June 2011, 04:00 pm; Solved by 1552;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=343">Problem 343</a></h3></div>
<div class="problem_content" role="problem">
<p>For any positive integer $k$, a finite sequence $a_i$ of fractions $x_i/y_i$ is defined by:<br>
$a_1 = 1/k$ and<br>
$a_i = (x_{i - 1} + 1) / (y_{i - 1} - 1)$ reduced to lowest terms for $i \gt 1$.<br>
When $a_i$ reaches some integer $n$, the sequence stops. (That is, when $y_i = 1$.)<br>
Define $f(k) = n$. <br>
For example, for $k = 20$:
</p>

<p>
$1/20 \to 2/19 \to 3/18 = 1/6 \to 2/5 \to 3/4 \to 4/3 \to 5/2 \to 6/1 = 6$
</p>

<p>
So $f(20) = 6$.
</p>

<p>
Also $f(1) = 1$, $f(2) = 2$, $f(3) = 1$ and $\sum f(k^3) = 118937$ for $1 \le k \le 100$.
</p>

<p>
Find $\sum f(k^3)$ for $1 \le k \le 2 \times 10^6$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
