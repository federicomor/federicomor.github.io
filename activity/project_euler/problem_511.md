+++
title = "P511"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_510/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_512/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Sequences with Nice Divisibility Properties</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 11th April 2015, 07:00 pm; Solved by 488;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=511">Problem 511</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $Seq(n,k)$ be the number of positive-integer sequences $\{a_i\}_{1 \le i \le n}$ of length $n$ such that:</p>
<ul style="list-style-type:disc;"><li>$n$ is divisible by $a_i$ for $1 \le i \le n$, and</li>
  <li>$n + a_1 + a_2 + \cdots + a_n$ is divisible by $k$.</li>
</ul><p>Examples:</p>
<p>$Seq(3,4) = 4$, and the $4$ sequences are:<br>
$\{1, 1, 3\}$<br>
$\{1, 3, 1\}$<br>
$\{3, 1, 1\}$<br>
$\{3, 3, 3\}$</p>
<p>$Seq(4,11) = 8$, and the $8$ sequences are:<br>
$\{1, 1, 1, 4\}$<br>
$\{1, 1, 4, 1\}$<br>
$\{1, 4, 1, 1\}$<br>
$\{4, 1, 1, 1\}$<br>
$\{2, 2, 2, 1\}$<br>
$\{2, 2, 1, 2\}$<br>
$\{2, 1, 2, 2\}$<br>
$\{1, 2, 2, 2\}$</p>
<p>The last nine digits of $Seq(1111,24)$ are $840643584$.</p>
<p>Find the last nine digits of $Seq(1234567898765,4321)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
