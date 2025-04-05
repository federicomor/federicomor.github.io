+++
title = "P319"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_318/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_320/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Bounded Sequences</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 8th January 2011, 07:00 pm; Solved by 453;<br>Difficulty rating: 90%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=319">Problem 319</a></h3></div>
<div class="problem_content" role="problem">
<p>
Let $x_1, x_2, \dots, x_n$ be a sequence of length $n$ such that:
</p><ul><li>$x_1 = 2$</li>
<li>for all $1 \lt i \le n$: $x_{i - 1} \lt x_i$</li>
<li>for all $i$ and $j$ with $1 \le i, j \le n$: $(x_i)^j \lt (x_j + 1)^i$.</li>
</ul><p>
There are only five such sequences of length $2$, namely:
$\{2,4\}$, $\{2,5\}$, $\{2,6\}$, $\{2,7\}$ and $\{2,8\}$.<br>
There are $293$ such sequences of length $5$; three examples are given below:<br>
$\{2,5,11,25,55\}$, $\{2,6,14,36,88\}$, $\{2,8,22,64,181\}$.
</p>
<p>
Let $t(n)$ denote the number of such sequences of length $n$.<br>
You are given that $t(10) = 86195$ and $t(20) = 5227991891$.
</p>
<p>
Find $t(10^{10})$ and give your answer modulo $10^9$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
