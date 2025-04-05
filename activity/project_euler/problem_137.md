+++
title = "P137"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_136/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_138/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Fibonacci Golden Nuggets</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 12th January 2007, 06:00 pm; Solved by 6258;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=137">Problem 137</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider the infinite polynomial series $A_F(x) = x F_1 + x^2 F_2 + x^3 F_3 + \dots$, where $F_k$ is the $k$th term in the Fibonacci sequence: $1, 1, 2, 3, 5, 8, \dots$; that is, $F_k = F_{k-1} + F_{k-2}$, $F_1 = 1$ and $F_2 = 1$.</p>
<p>For this problem we shall be interested in values of $x$ for which $A_F(x)$ is a positive integer.</p>

<table class="p236" cellpadding="0" cellspacing="0" border="0"><tr><td valign="top">Surprisingly</td><td>$\begin{align*} 
A_F(\tfrac{1}{2})
 &amp;= (\tfrac{1}{2})\times 1 + (\tfrac{1}{2})^2\times 1 + (\tfrac{1}{2})^3\times 2 + (\tfrac{1}{2})^4\times 3 + (\tfrac{1}{2})^5\times 5 + \cdots \\ 
 &amp;= \tfrac{1}{2} + \tfrac{1}{4} + \tfrac{2}{8} + \tfrac{3}{16} + \tfrac{5}{32} + \cdots \\
 &amp;= 2
\end{align*}$</td>
</tr></table>

<p>The corresponding values of $x$ for the first five natural numbers are shown below.</p>
<div class="center">
<table cellspacing="0" cellpadding="2" border="1" align="center"><tr><th>$x$</th><th width="50">$A_F(x)$</th>
</tr><tr><td>$\sqrt{2}-1$</td><td>$1$</td>
</tr><tr><td>$\tfrac{1}{2}$</td><td>$2$</td>
</tr><tr><td>$\frac{\sqrt{13}-2}{3}$</td><td>$3$</td>
</tr><tr><td>$\frac{\sqrt{89}-5}{8}$</td><td>$4$</td>
</tr><tr><td>$\frac{\sqrt{34}-3}{5}$</td><td>$5$</td>
</tr></table></div>
<p>We shall call $A_F(x)$ a golden nugget if $x$ is rational, because they become increasingly rarer; for example, the $10$th golden nugget is $74049690$.</p>
<p>Find the $15$th golden nugget.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
