+++
title = "P497"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_496/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_498/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Drunken Tower of Hanoi</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 11th January 2015, 04:00 am; Solved by 609;<br>Difficulty rating: 40%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=497">Problem 497</a></h3></div>
<div class="problem_content" role="problem">
<p>Bob is very familiar with the famous mathematical puzzle/game, "Tower of Hanoi," which consists of three upright rods and disks of different sizes that can slide onto any of the rods. The game begins with a stack of $n$ disks placed on the leftmost rod in descending order by size. The objective of the game is to move all of the disks from the leftmost rod to the rightmost rod, given the following restrictions:</p>

<ol><li>Only one disk can be moved at a time.</li>
<li>A valid move consists of taking the top disk from one stack and placing it onto another stack (or an empty rod).</li>
<li>No disk can be placed on top of a smaller disk.</li>
</ol><p>Moving on to a variant of this game, consider a long room $k$ units (square tiles) wide, labeled from $1$ to $k$ in ascending order. Three rods are placed at squares $a$, $b$, and $c$, and a stack of $n$ disks is placed on the rod at square $a$.</p>

<p>Bob begins the game standing at square $b$. His objective is to play the Tower of Hanoi game by moving all of the disks to the rod at square $c$. However, Bob can only pick up or set down a disk if he is on the same square as the rod/stack in question.</p>

<p>Unfortunately, Bob is also drunk. On a given move, Bob will either stumble one square to the left or one square to the right with equal probability, unless Bob is at either end of the room, in which case he can only move in one direction. Despite Bob's inebriated state, he is still capable of following the rules of the game itself, as well as choosing when to pick up or put down a disk.</p>

<p>The following animation depicts a side-view of a sample game for $n = 3$, $k = 7$, $a = 2$, $b = 4$, and $c = 6$:</p>

<p align="center"><img src="https://projecteuler.net/resources/images/0497_hanoi.gif?1678992057" alt="0497_hanoi.gif"></p>

<p>Let $E(n, k, a, b, c)$ be the expected number of squares that Bob travels during a single optimally-played game. A game is played optimally if the number of disk-pickups is minimized.</p>

<p>Interestingly enough, the result is always an integer. For example, $E(2,5,1,3,5) = 60$ and $E(3,20,4,9,17) = 2358$.</p>

<p>Find the last nine digits of $\sum_{1\le n \le 10000} E(n,10^n,3^n,6^n,9^n)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
