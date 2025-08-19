+++
title = "P382"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_381/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_383/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Generating Polygons</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 28th April 2012, 08:00 pm; Solved by 393;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=382">Problem 382</a></h3></div>
<div class="problem_content" role="problem">
<p>
A <strong>polygon</strong> is a flat shape consisting of straight line segments that are joined to form a closed chain or circuit. A polygon consists of at least three sides and does not self-intersect.
</p>

<p>
A set $S$ of positive numbers is said to <dfn>generate a polygon</dfn> $P$ if:</p><ul><li> no two sides of $P$ are the same length,
</li><li> the length of every side of $P$ is in $S$, and
</li><li> $S$ contains no other value.
</li></ul><p>
For example:<br>
The set $\{3, 4, 5\}$ generates a polygon with sides $3$, $4$, and $5$ (a triangle).<br>
The set $\{6, 9, 11, 24\}$ generates a polygon with sides $6$, $9$, $11$, and $24$ (a quadrilateral).<br>
The sets $\{1, 2, 3\}$ and $\{2, 3, 4, 9\}$ do not generate any polygon at all.<br></p>

<p>
Consider the sequence $s$, defined as follows:</p><ul><li>$s_1 = 1$, $s_2 = 2$, $s_3 = 3$
</li><li>$s_n = s_{n-1} + s_{n-3}$ for $n \gt 3$.
</li></ul><p>
Let $U_n$ be the set $\{s_1, s_2, \dots, s_n\}$. For example, $U_{10} = \{1, 2, 3, 4, 6, 9, 13, 19, 28, 41\}$.<br>
Let $f(n)$ be the number of subsets of $U_n$ which generate at least one polygon.<br>
For example, $f(5) = 7$, $f(10) = 501$ and $f(25) = 18635853$.
</p>

<p>
Find the last $9$ digits of $f(10^{18})$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
