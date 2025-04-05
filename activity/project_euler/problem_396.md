+++
title = "P396"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_395/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_397/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Weak Goodstein Sequence</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 30th September 2012, 02:00 am; Solved by 728;<br>Difficulty rating: 40%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=396">Problem 396</a></h3></div>
<div class="problem_content" role="problem">
<p>
For any positive integer $n$, the <strong>$n$th weak Goodstein sequence</strong> $\{g_1, g_2, g_3, \dots\}$ is defined as:
</p><ul><li> $g_1 = n$
</li><li> for $k \gt 1$, $g_k$ is obtained by writing $g_{k-1}$ in base $k$, interpreting it as a base $k + 1$ number, and subtracting $1$.
</li></ul>
The sequence terminates when $g_k$ becomes $0$.

<p>
For example, the $6$th weak Goodstein sequence is $\{6, 11, 17, 25, \dots\}$:
</p><ul><li> $g_1 = 6$.
</li><li> $g_2 = 11$ since $6 = 110_2$, $110_3 = 12$, and $12 - 1 = 11$.
</li><li> $g_3 = 17$ since $11 = 102_3$, $102_4 = 18$, and $18 - 1 = 17$.
</li><li> $g_4 = 25$ since $17 = 101_4$, $101_5 = 26$, and $26 - 1 = 25$.
</li></ul>
and so on.

<p>
It can be shown that every weak Goodstein sequence terminates.
</p>
<p>
Let $G(n)$ be the number of nonzero elements in the $n$th weak Goodstein sequence.<br>
It can be verified that $G(2) = 3$, $G(4) = 21$ and $G(6) = 381$.<br>
It can also be verified that $\sum G(n) = 2517$ for $1 \le n \lt 8$.
</p>
<p>
Find the last $9$ digits of $\sum G(n)$ for $1 \le n \lt 16$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
