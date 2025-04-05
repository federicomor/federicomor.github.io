+++
title = "P260"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_259/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_261/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Stone Game</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 16th October 2009, 01:00 pm; Solved by 1469;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=260">Problem 260</a></h3></div>
<div class="problem_content" role="problem">
<p>A game is played with three piles of stones and two players.<br />
On each player's turn, the player may remove one or more stones from the piles. However, if the player takes stones from more than one pile, then the same number of stones must be removed from each of the selected piles.</p>

<p>In other words, the player chooses some $N \gt 0$ and removes:</p>

<ul><li>$N$ stones from any single pile; or</li>
<li>$N$ stones from each of any two piles ($2N$ total); or</li>
<li>$N$ stones from each of the three piles ($3N$ total).</li>
</ul><p>The player taking the last stone(s) wins the game.</p>

<p>A <dfn>winning configuration</dfn> is one where the first player can force a win.<br />
For example, $(0,0,13)$, $(0,11,11)$, and $(5,5,5)$ are winning configurations because the first player can immediately remove all stones.</p>

<p>A <dfn>losing configuration</dfn> is one where the second player can force a win, no matter what the first player does.<br />
For example, $(0,1,2)$ and $(1,3,3)$ are losing configurations: any legal move leaves a winning configuration for the second player.</p>

<p>Consider all losing configurations $(x_i, y_i, z_i)$ where $x_i \le y_i \le z_i \le 100$.<br />
We can verify that $\sum (x_i + y_i + z_i) = 173895$ for these.</p>

<p>Find $\sum (x_i + y_i + z_i)$ where $(x_i, y_i, z_i)$ ranges over the losing configurations with $x_i \le y_i \le z_i \le 1000$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
