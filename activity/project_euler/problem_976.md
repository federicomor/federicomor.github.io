+++
title = "P976"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_975/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_977/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>XO Game</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 27th December 2025, 10:00 pm; Solved by 77</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=976">Problem 976</a></h3></div>
<div class="problem_content" role="problem">
<p>
Two players X and O play a game with $k$ strips of squares of lengths $n_1,\dots,n_k$, originally all blank.</p>

<p>
Starting with X, they make moves in turn. At X's turn, X draws an "X" symbol; at O's turn, O draws an "O" symbol.<br>
The symbol must be drawn in one blank square with either red or blue pen, subject to the following restrictions:</p>
<ol>
<li>two symbols in adjacent squares on one strip must be different symbols <b>and</b> must have different colour;</li>
<li>if there is at least one blank strip, then one must draw on a blank strip.</li></ol>
<p>
Whoever does not have a valid move loses the game.</p>

<p>
Let $P(K, N)$ be the number of tuples $(n_1,\dots,n_k)$ such that $1 \leq k \leq K$, $1\leq n_1\leq\cdots\leq n_k\leq N$ and that X has a winning strategy to the corresponding game.<br>
For example, $P(2, 4)=7$ and $P(5, 10) = 901$.</p>

<p>
Find $P(10^7, 10^7)\bmod 1234567891$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
