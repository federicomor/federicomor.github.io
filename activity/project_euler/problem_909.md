+++
title = "P909"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_908/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_910/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>L-expressions I</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 29th September 2024, 05:00 am; Solved by 150;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=909">Problem 909</a></h3></div>
<div class="problem_content" role="problem">
<p>
An <dfn>L-expression</dfn> is defined as any one of the following:</p>
<ul>
<li>a natural number;</li>
<li>the symbol $A$;</li>
<li>the symbol $Z$;</li>
<li>the symbol $S$;</li>
<li>a pair of L-expressions $u, v$, which is written as $u(v)$.</li>
</ul>

<p>
An L-expression can be transformed according to the following rules:</p>
<ul>
<li>$A(x) \to x + 1$ for any natural number $x$;</li>
<li>$Z(u)(v) \to v$ for any L-expressions $u, v$;</li>
<li>$S(u)(v)(w) \to v(u(v)(w))$ for any L-expressions $u, v, w$.</li>
</ul>
<p>
For example, after applying all possible rules, the L-expression $S(Z)(A)(0)$ is transformed to the number $1$:
$$S(Z)(A)(0) \to A(Z(A)(0)) \to A(0) \to 1.$$
Similarly, the L-expression $S(S)(S(S))(S(Z))(A)(0)$ is transformed to the number $6$ after applying all possible rules.</p>

<p>
Find the result of the L-expression $S(S)(S(S))(S(S))(S(Z))(A)(0)$ after applying all possible rules. Give the last nine digits as your answer.</p>

<p class="note"><b>Note:</b> it can be proved that the L-expression in question can only be transformed a finite number of times, and the final result does not depend on the order of the transformations.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
