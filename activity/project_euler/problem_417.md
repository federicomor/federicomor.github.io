+++
title = "P417"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_416/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_418/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Reciprocal Cycles II</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 2nd March 2013, 04:00 pm; Solved by 995;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=417">Problem 417</a></h3></div>
<div class="problem_content" role="problem">
<p>A unit fraction contains $1$ in the numerator. The decimal representation of the unit fractions with denominators $2$ to $10$ are given:</p>
\begin{align}
1/2 &amp;= 0.5\\
1/3 &amp;=0.(3)\\
1/4 &amp;=0.25\\
1/5 &amp;= 0.2\\
1/6 &amp;= 0.1(6)\\
1/7 &amp;= 0.(142857)\\
1/8 &amp;= 0.125\\
1/9 &amp;= 0.(1)\\
1/10 &amp;= 0.1
\end{align}

<p>Where $0.1(6)$ means $0.166666\cdots$, and has a $1$-digit recurring cycle. It can be seen that $1/7$ has a $6$-digit recurring cycle.</p>
<p>
Unit fractions whose denominator has no other prime factors than $2$ and/or $5$ are not considered to have a recurring cycle.<br>
We define the length of the recurring cycle of those unit fractions as $0$.
</p>
<p>
Let $L(n)$ denote the length of the recurring cycle of $1/n$.
You are given that $\sum L(n)$ for $3 \leq n \leq 1\,000\,000$ equals $55535191115$.
</p>
<p>
Find $\sum L(n)$ for $3 \leq n \leq 100\,000\,000$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
