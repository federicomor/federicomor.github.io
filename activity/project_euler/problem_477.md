+++
title = "P477"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_476/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_478/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Number Sequence Game</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 23rd August 2014, 04:00 pm; Solved by 287;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=477">Problem 477</a></h3></div>
<div class="problem_content" role="problem">
<p>The number sequence game starts with a sequence $S$ of $N$ numbers written on a line.</p>
<p>Two players alternate turns. The players on their respective turns must select and remove either the first or the last number remaining in the sequence.</p>
<p>A player's own score is (determined by) the sum of all the numbers that player has taken. Each player attempts to maximize their own sum.</p>
If $N = 4$ and $S = \{1, 2, 10, 3\}$, then each player maximizes their own score as follows:
<ul><li>Player 1: removes the first number ($1$)</li>
<li>Player 2: removes the last number from the remaining sequence ($3$)</li>
<li>Player 1: removes the last number from the remaining sequence ($10$)</li>
<li>Player 2: removes the remaining number ($2$)</li>
</ul><p>Player 1 score is $1 + 10 = 11$.</p>
<p>Let $F(N)$ be the score of player 1 if both players follow the optimal strategy for the sequence $S = \{s_1, s_2, \dots, s_N\}$ defined as:</p>
<ul><li>$s_1 = 0$</li>
<li>$s_{i + 1} = (s_i^2 + 45)$ modulo $1\,000\,000\,007$</li>
</ul><p>The sequence begins with $S=\{0, 45, 2070, 4284945, 753524550, 478107844, 894218625, \dots\}$.</p>
<p>You are given $F(2)=45$, $F(4)=4284990$, $F(100)=26365463243$, $F(10^4)=2495838522951$.</p>
<p>Find $F(10^8)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
