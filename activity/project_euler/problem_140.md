+++
title = "P140"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_139/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_141/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Modified Fibonacci Golden Nuggets</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 3rd February 2007, 07:00 am; Solved by 4929;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=140">Problem 140</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider the infinite polynomial series $A_G(x) = x G_1 + x^2 G_2 + x^3 G_3 + \cdots$, where $G_k$ is the $k$th term of the second order recurrence relation $G_k = G_{k-1} + G_{k-2}$, $G_1 = 1$ and $G_2 = 4$; that is, $1, 4, 5, 9, 14, 23, \dots$.</p>
<p>For this problem we shall be concerned with values of $x$ for which $A_G(x)$ is a positive integer.</p>
<p>The corresponding values of $x$ for the first five natural numbers are shown below.</p>
<div class="center">
<table cellspacing="0" cellpadding="2" border="1" align="center"><tr><th>$x$</th><th width="50">$A_G(x)$</th>
</tr><tr><td>$\frac{\sqrt{5}-1}{4}$</td><td>$1$</td>
</tr><tr><td>$\tfrac{2}{5}$</td><td>$2$</td>
</tr><tr><td>$\frac{\sqrt{22}-2}{6}$</td><td>$3$</td>
</tr><tr><td>$\frac{\sqrt{137}-5}{14}$</td><td>$4$</td>
</tr><tr><td>$\tfrac{1}{2}$</td><td>$5$</td>
</tr></table></div>
<p>We shall call $A_G(x)$ a golden nugget if $x$ is rational, because they become increasingly rarer; for example, the $20$th golden nugget is $211345365$.</p>
<p>Find the sum of the first thirty golden nuggets.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
