+++
title = "P947"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_946/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_948/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Fibonacci Residues</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 31st May 2025, 02:00 pm; Solved by 156;<br>Difficulty level: 31</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=947">Problem 947</a></h3></div>
<div class="problem_content" role="problem">
<p>
The $(a,b,m)$-sequence, where $0 \leq a,b \lt m$, is defined as</p>

<div style="text-align:center;">
$\begin{align*}
g(0)&amp;=a\\
g(1)&amp;=b\\
g(n)&amp;= \big(g(n-1) + g(n-2)\big) \bmod m
\end{align*}$
</div>

<p>
All $(a,b,m)$-sequences are periodic with period denoted by $p(a,b,m)$.<br> 
The first few terms of the $(0,1,8)$-sequence are $(0,1,1,2,3,5,0,5,5,2,7,1,0,1,1,2,\ldots )$ and so $p(0,1,8)=12$.</p>

<p>
Let $\displaystyle s(m)=\sum_{a=0}^{m-1}\sum_{b=0}^{m-1} p(a,b,m)^2$. For example, $s(3)=513$ and $s(10)=225820$.</p>

<p>
Define $\displaystyle S(M)=\sum_{m=1}^{M}s(m)$. You are given, $S(3)=542$ and $S(10)=310897$.</p>

<p>
Find $S(10^6)$. Give your answer modulo $999\,999\,893$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
