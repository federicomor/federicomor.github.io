+++
title = "P718"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_717/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_719/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Unreachable Numbers</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 30th May 2020, 05:00 pm; Solved by 362;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=718">Problem 718</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider the equation
$17^pa+19^pb+23^pc = n$ where $a$, $b$, $c$ and $p$ are positive integers, i.e.
$a,b,c,p \gt 0$.</p>

<p>For a given $p$ there are some values of $n &gt; 0$ for which the equation cannot be solved. We call these <dfn>unreachable values</dfn>.</p>

<p>Define $G(p)$ to be the sum of all unreachable values of $n$ for the given value of $p$. For example $G(1) = 8253$ and $G(2)= 60258000$.</p>

<p>Find $G(6)$. Give your answer modulo $1\,000\,000\,007$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
