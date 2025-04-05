+++
title = "P301"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_300/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_302/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Nim</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 11th September 2010, 04:00 pm; Solved by 7137;<br>Difficulty rating: 15%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=301">Problem 301</a></h3></div>
<div class="problem_content" role="problem">
<p><dfn>Nim</dfn> is a game played with heaps of stones, where two players take it in turn to remove any number of stones from any heap until no stones remain.</p>

<p>We'll consider the three-heap normal-play version of Nim, which works as follows:</p>
<ul><li>At the start of the game there are three heaps of stones.</li>
<li>On each player's turn, the player may remove any positive number of stones from any single heap.</li>
<li>The first player unable to move (because no stones remain) loses.</li>
</ul><p>If $(n_1,n_2,n_3)$ indicates a Nim position consisting of heaps of size $n_1$, $n_2$, and $n_3$, then there is a simple function, which you may look up or attempt to deduce for yourself, $X(n_1,n_2,n_3)$ that returns:</p>

<ul><li>zero if, with perfect strategy, the player about to move will eventually lose; or</li>
<li>non-zero if, with perfect strategy, the player about to move will eventually win.</li>
</ul><p>For example $X(1,2,3) = 0$ because, no matter what the current player does, the opponent can respond with a move that leaves two heaps of equal size, at which point every move by the current player can be mirrored by the opponent until no stones remain; so the current player loses. To illustrate:</p>

<ul><li>current player moves to $(1,2,1)$</li>
<li>opponent moves to $(1,0,1)$</li>
<li>current player moves to $(0,0,1)$</li>
<li>opponent moves to $(0,0,0)$, and so wins.</li>
</ul><p>For how many positive integers $n \le 2^{30}$ does $X(n,2n,3n) = 0$ ?</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
