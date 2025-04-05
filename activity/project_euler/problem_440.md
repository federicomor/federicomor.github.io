+++
title = "P440"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_439/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_441/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>GCD and Tiling</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 13th October 2013, 07:00 am; Solved by 429;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=440">Problem 440</a></h3></div>
<div class="problem_content" role="problem">
<p>We want to tile a board of length $n$ and height $1$ completely, with either $1 \times 2$ blocks or $1 \times 1$ blocks with a single decimal digit on top:</p>
<div class="center">
<img src="https://projecteuler.net/resources/images/0440_tiles.png?1678992053" alt="0440_tiles.png">
</div>
<p>For example, here are some of the ways to tile a board of length $n = 8$:</p>

<div class="center">
<img src="https://projecteuler.net/resources/images/0440_some8.png?1678992053" alt="0440_some8.png">
</div>
<p>Let $T(n)$ be the number of ways to tile a board of length $n$ as described above.</p>

<p>For example, $T(1) = 10$ and $T(2) = 101$.</p>

<p>Let $S(L)$ be the triple sum $\sum_{a, b, c}\gcd(T(c^a), T(c^b))$ for $1 \leq a, b, c \leq L$.<br>
For example:<br>
$S(2) = 10444$<br>
$S(3) = 1292115238446807016106539989$<br>
$S(4) \bmod 987\,898\,789 = 670616280$.</p>

<p>Find $S(2000) \bmod 987\,898\,789$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
