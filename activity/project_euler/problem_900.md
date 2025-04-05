+++
title = "P900"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_899/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_901/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>DistribuNim II</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 14th July 2024, 05:00 am; Solved by 141;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=900">Problem 900</a></h3></div>
<div class="problem_content" role="problem">
<p>
Two players play a game with at least two piles of stones. The players alternately take stones from one or more piles, subject to:</p>

<ol>
<li>the total number of stones taken is equal to the size of the smallest pile before the move;</li>

<li>the move cannot take all the stones from a pile.</li>
</ol>

<p>
The player that is unable to move loses.</p>

<p>
For example, if the piles are of sizes 2, 2 and 4 then there are four possible moves.
$$ (2,2,4)\xrightarrow{(1,1,0)}(1,1,4)\quad (2,2,4)\xrightarrow{(1,0,1)}(1,2,3)\quad
(2,2,4)\xrightarrow{(0,1,1)}(2,1,3)\quad (2,2,4)\xrightarrow{(0,0,2)}(2,2,2)$$</p>

<p>
Let $t(n)$ be the smallest nonnegative integer $k$ such that the position with $n$ piles of $n$ stones and a single pile of $n+k$ stones is losing for the first player assuming optimal play.  For example, $t(1) = t(2) = 0$ and $t(3) = 2$.</p>

<p>
Define $\displaystyle S(N) = \sum_{n=1}^{2^N} t(n)$.  You are given $S(10) = 361522$.</p>

<p>
Find $S(10^4)$. Give your answer modulo $900497239$.
</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
