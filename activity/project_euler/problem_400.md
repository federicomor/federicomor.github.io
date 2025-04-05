+++
title = "P400"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_399/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_401/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Fibonacci Tree Game</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 27th October 2012, 02:00 pm; Solved by 531;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=400">Problem 400</a></h3></div>
<div class="problem_content" role="problem">
<p>
A <b>Fibonacci tree</b> is a binary tree recursively defined as:</p><ul><li>$T(0)$ is the empty tree.
</li><li>$T(1)$ is the binary tree with only one node.
</li><li>$T(k)$ consists of a root node that has $T(k-1)$ and $T(k-2)$ as children.
</li></ul><p>
On such a tree two players play a take-away game. On each turn a player selects a node and removes that node along with the subtree rooted at that node.<br>
The player who is forced to take the root node of the entire tree loses.</p><p>

</p><p>
Here are the winning moves of the first player on the first turn for $T(k)$ from $k=1$ to $k=6$.
</p><p align="center"><img src="https://projecteuler.net/resources/images/0400_winning.png?1678992053" class="dark_img" alt="0400_winning.png"></p>



Let $f(k)$ be the number of winning moves of the first player (i.e. the moves for which the second player has no winning strategy) on the first turn of the game when this game is played on $T(k)$.


<p>
For example, $f(5) = 1$ and $f(10) = 17$.
</p>

<p>
Find $f(10000)$. Give the last $18$ digits of your answer.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
