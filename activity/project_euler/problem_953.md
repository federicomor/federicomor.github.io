+++
title = "P953"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_952/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_954/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Factorisation Nim</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 6th July 2025, 05:00 am; Solved by 208;<br>Difficulty level: 23</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=953">Problem 953</a></h3></div>
<div class="problem_content" role="problem">
<p>In the classical game of <b>Nim</b> two players take turns removing stones from piles. A player may remove any positive number of stones from a single pile. If there are no remaining stones, the next player to move loses.</p>

<p>In Factorisation Nim the initial position of the game is chosen according to the prime factorisation of a given natural number $n$ by setting a pile for each prime factor, including multiplicity. For example, if $n=12=2 \times 2 \times 3$ the game starts with three piles: two piles with two stones and one pile with three stones.</p>

<p>It can be verified that the first player to move loses for $n=1$ and for $n=70$, assuming both players play optimally.</p>

<p>Let $S(N)$ be the sum of $n$ for $1 \le n \le N$ such that the first player to move loses, assuming both players play optimally. You are given $S(10) = 14$ and $S(100) = 455$.</p>

<p>Find $S(10^{14})$. Give your answer modulo $10^9 + 7$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
