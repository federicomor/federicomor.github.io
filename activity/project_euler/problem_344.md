+++
title = "P344"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_343/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_345/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Silver Dollar Game</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 25th June 2011, 07:00 pm; Solved by 374;<br>Difficulty rating: 100%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=344">Problem 344</a></h3></div>
<div class="problem_content" role="problem">
<p>One variant of N.G. de Bruijn's <strong>silver dollar</strong> game can be described as follows:</p>

<p>On a strip of squares a number of coins are placed, at most one coin per square. Only one coin, called the <strong>silver dollar</strong>, has any value. Two players take turns making moves. At each turn a player must make either a <dfn>regular</dfn> or a <dfn>special</dfn> move.</p>

<p>A <dfn>regular</dfn> move consists of selecting one coin and moving it one or more squares to the left. The coin cannot move out of the strip or jump on or over another coin.</p>

<p>Alternatively, the player can choose to make the <dfn>special</dfn> move of pocketing the leftmost coin rather than making a regular move. If no regular moves are possible, the player is forced to pocket the leftmost coin.</p>

<p>The winner is the player who pockets the silver dollar.</p>


<div align="center">
<img src="https://projecteuler.net/resources/images/0344_silverdollar.gif?1678992056" alt="0344_silverdollar.gif"><br></div>

<p>A <dfn>winning configuration</dfn> is an arrangement of coins on the strip where the first player can force a win no matter what the second player does.</p>

<p>Let $W(n,c)$ be the number of winning configurations for a strip of $n$ squares, $c$ worthless coins and one silver dollar.</p>

<p>You are given that $W(10,2) = 324$ and $W(100,10) = 1514704946113500$.</p>

<p>Find $W(1\,000\,000, 100)$ modulo the semiprime $1000\,036\,000\,099$ ($= 1\,000\,003 \cdot 1\,000\,033$).
</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
