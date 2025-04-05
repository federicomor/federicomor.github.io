+++
title = "P784"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_783/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_785/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Reciprocal Pairs</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 6th February 2022, 04:00 am; Solved by 435;<br>Difficulty rating: 30%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=784">Problem 784</a></h3></div>
<div class="problem_content" role="problem">
<p>
Let's call a pair of positive integers $p$, $q$ ($p \lt q$) <dfn>reciprocal</dfn>, if there is a positive integer $r\lt p$ such that $r$ equals both the inverse of $p$ modulo $q$ and the inverse of $q$ modulo $p$.</p>

<p>
For example, $(3,5)$ is one reciprocal pair for $r=2$.<br>
Let $F(N)$ be the total sum of $p+q$ for all reciprocal pairs $(p,q)$ where $p \le N$.</p>

<p>
$F(5)=59$ due to these four reciprocal pairs $(3,5)$, $(4,11)$, $(5,7)$ and $(5,19)$.<br>
You are also given $F(10^2) = 697317$.</p>

<p>
Find $F(2\cdot 10^6)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
