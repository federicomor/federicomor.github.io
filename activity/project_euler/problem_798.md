+++
title = "P798"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_797/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_799/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Card Stacking Game</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 14th May 2022, 11:00 pm; Solved by 138;<br>Difficulty rating: 100%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=798">Problem 798</a></h3></div>
<div class="problem_content" role="problem">
<p>
Two players play a game with a deck of cards which contains $s$ suits with each suit containing $n$ cards numbered from $1$ to $n$.</p>

<p>
Before the game starts, a set of cards (which may be empty) is picked from the deck and placed face-up on the table, with no overlap. These are called the visible cards.</p>

<p>
The players then make moves in turn.<br />
A move consists of choosing a card X from the rest of the deck and placing it face-up on top of a visible card Y, subject to the following restrictions:</p>
<ul>
<li>X and Y must be the same suit;</li>
<li>the value of X must be larger than the value of Y.</li>
</ul>
<p>
The card X then covers the card Y and replaces Y as a visible card.<br />
The player unable to make a valid move loses and play stops.</p>

<p>
Let $C(n, s)$ be the number of different initial sets of cards for which the first player will lose given best play for both players.</p>

<p>
For example, $C(3, 2) = 26$ and $C(13, 4) \equiv 540318329 \pmod {1\,000\,000\,007}$.</p>

<p>
Find $C(10^7, 10^7)$. Give your answer modulo $1\,000\,000\,007$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
