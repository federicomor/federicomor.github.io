+++
title = "P963"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_962/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_964/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Removing Trits</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 5th October 2025, 11:00 am; Solved by 62;<br>Difficulty level: 37</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=963">Problem 963</a></h3></div>
<div class="problem_content" role="problem">
<p class="note"><b>NOTE</b>: This problem is related to <a href="https://projecteuler.net/problem=882">Problem 882</a>. It is recommended to solve that problem before doing this one.</p>

<p>
Two players are playing a game. When the game starts, each player holds a paper with two positive integers written on it.<br>
They make moves in turn. At a player's turn, the player can do one of the following:</p>
<ul>
<li>pick a number on the player's own paper and change it by removing a $0$ from its <strong class="tooltip">ternary expansion<span class="tooltiptext">base-$3$ expansion</span></strong>;</li>
<li>pick a number on the opponent's paper and change it by removing a $1$ from its ternary expansion;</li>
<li>pick a number on either paper and change it by removing a $2$ from its ternary expansion.</li></ul>
<p>
The player that is unable to make a move loses.<br>
Leading zeros are not allowed in any ternary expansion; in particular nobody can make a move on the number $0$.</p>

<p>
An initial setting is called <dfn>fair</dfn> if whichever player moves first will lose the game if both play optimally.</p>

<p>
For example, if initially the integers on the paper of the first player are $1, 5$ and those on the paper of the second player are $2, 4$, then this is a fair initial setting, which we can denote as $(1, 5 \mid 2, 4)$.<br>
Note that the order of the two integers on a paper does not matter, but the order of the two papers matter.<br>
Thus $(5, 1 \mid 4, 2)$ is considered the same as $(1, 5 \mid 2, 4)$, while $(2, 4 \mid 1, 5)$ is a different initial setting.</p>

<p>
Let $F(N)$ be the number of fair initial settings where each initial number does not exceed $N$.<br>
For example, $F(5) = 21$.</p>

<p>
Find $F(10^5)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
