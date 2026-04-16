+++
title = "P605"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_604/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_606/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Pairwise Coin-Tossing Game</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 28th May 2017, 07:00 am; Solved by 957;<br>Difficulty rating: 25%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=605">Problem 605</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider an $n$-player game played in consecutive pairs: Round $1$ takes place between players $1$ and $2$, round $2$ takes place between players $2$ and $3$, and so on and so forth, all the way up to round $n$, which takes place between players $n$ and $1$. Then round $n+1$ takes place between players $1$ and $2$ as the entire cycle starts again.</p>

<p>In other words, during round $r$, player $((r-1) \bmod n) + 1$ faces off against player $(r \bmod n) + 1$.</p>

<p>During each round, a fair coin is tossed to decide which of the two players wins that round. If any given player wins both rounds $r$ and $r+1$, then that player wins the entire game.</p>

<p>Let $P_n(k)$ be the probability that player $k$ wins in an $n$-player game, in the form of a reduced fraction. For example, $P_3(1) = 12/49$ and $P_6(2) = 368/1323$.</p>

<p>Let $M_n(k)$ be the product of the reduced numerator and denominator of $P_n(k)$. For example, $M_3(1) = 588$ and $M_6(2) = 486864$.</p>

<p>Find the last $8$ digits of $M_{10^8+7}(10^4+7)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
