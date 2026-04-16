+++
title = "P973"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_972/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_974/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Random Dealings</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 6th December 2025, 01:00 pm; Solved by 94;<br>Difficulty level: 33</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=973">Problem 973</a></h3></div>
<div class="problem_content" role="problem">
<p>
A game is played with $n$ cards.
At the start the cards are dealt out onto a table to get $n$ piles of size one.</p>

<p>
Each round proceeds as follows:</p>
<ol>
<li>Select a pile at random and pick it up.</li>
<li>Randomly choose a pile from the table and add the top card of the picked-up pile to it.</li>
<li>Redistribute any remaining cards from the picked-up pile by dealing them into new single-card piles.</li></ol>

<p>
The game ends when all cards are in a single pile.</p>

<p>
At the end of each round a score is obtained by bitwise-XORing the size of each pile. The score is summed across the rounds. Let $X(n)$ be the expected total score at the end of the game.</p>

<p>
You are given $X(2) = 2$, $X(4) = 14$ and $X(10) = 1418$.</p>

<p>
Find $X(10^4)$. Give your answer modulo $10^9+7$.</p>


</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
