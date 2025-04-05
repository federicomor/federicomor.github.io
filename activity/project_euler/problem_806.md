+++
title = "P806"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_805/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_807/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Nim on Towers of Hanoi</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 9th July 2022, 11:00 pm; Solved by 143;<br>Difficulty rating: 100%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=806">Problem 806</a></h3></div>
<div class="problem_content" role="problem">
<p>This problem combines the game of Nim with the Towers of Hanoi. For a brief introduction to the rules of these games, please refer to <a href="https://projecteuler.net/problem=301">Problem 301</a> and <a href="https://projecteuler.net/problem=497">Problem 497</a>, respectively.</p>

<p>The unique shortest solution to the Towers of Hanoi problem with $n$ disks and $3$ pegs requires $2^n-1$ moves. Number the positions in the solution from index 0 (starting position, all disks on the first peg) to index $2^n-1$ (final position, all disks on the third peg).</p>

<p>Each of these $2^n$ positions can be considered as the starting configuration for a game of Nim, in which two players take turns to select a peg and remove any positive number of disks from it. The winner is the player who removes the last disk.</p>

<p>We define $f(n)$ to be the sum of the indices of those positions for which, when considered as a Nim game, the first player will lose (assuming an optimal strategy from both players).</p>

<p>For $n=4$, the indices of losing positions in the shortest solution are 3,6,9 and 12. So we have $f(4) = 30$.</p>

<p>You are given that $f(10) = 67518$.</p>

<p>Find $f(10^5)$. Give your answer modulo $1\,000\,000\,007$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
