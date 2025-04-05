+++
title = "P664"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_663/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_665/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>An Infinite Game</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 7th April 2019, 07:00 am; Solved by 212;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=664">Problem 664</a></h3></div>
<div class="problem_content" role="problem">
<p>Peter is playing a solitaire game on an infinite checkerboard, each square of which can hold an unlimited number of tokens.</p>

<p>Each move of the game consists of the following steps:</p>
<ol>
<li>Choose one token $T$ to move. This may be any token on the board, as long as not all of its four adjacent squares are empty.</li>
<li>Select and discard one token $D$ from a square adjacent to that of $T$.</li>
<li>Move $T$ to any one of its four adjacent squares (even if that square is already occupied).</li>
</ol>

<div class="center">
<img src="https://projecteuler.net/resources/images/0664_moves.gif?1678992057" alt="Allowed moves">
</div>

<p>The board is marked with a line called the <dfn>dividing line</dfn>. Initially, every square to the left of the dividing line contains a token, and every square to the right of the dividing line is empty:</p>

<div class="center">
<img src="https://projecteuler.net/resources/images/0664_starting_0.png?1678992054" alt="Initial setup">
</div>

<p>Peter's goal is to get a token as far as possible to the right in a finite number of moves. However, he quickly finds out that, even with his infinite supply of tokens, he cannot move a token more than four squares beyond the dividing line.</p>

<p>Peter then considers starting configurations with larger supplies of tokens: each square in the $d$th column to the left of the dividing line starts with $d^n$ tokens instead of $1$. This is illustrated below for $n=1$:</p>

<div class="center">
<img src="https://projecteuler.net/resources/images/0664_starting_1.png?1678992054" alt="Initial setup n=1">
</div>

<p>Let $F(n)$ be the maximum number of squares Peter can move a token beyond the dividing line. For example, $F(0)=4$.
You are also given that $F(1)=6$, $F(2)=9$, $F(3)=13$, $F(11)=58$ and $F(123)=1173$.</p>
<p>Find $F(1234567)$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
