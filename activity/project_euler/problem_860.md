+++
title = "P860"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_859/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_861/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Gold and Silver Coin Game</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 22nd October 2023, 11:00 am; Solved by 492;<br>Difficulty rating: 20%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=860">Problem 860</a></h3></div>
<div class="problem_content" role="problem">
<p>
Gary and Sally play a game using gold and silver coins arranged into a number of vertical stacks, alternating turns. On Gary's turn he chooses a gold coin and removes it from the game along with any other coins sitting on top. Sally does the same on her turn by removing a silver coin. The first player unable to make a move loses.</p>

<p>
An arrangement is called <dfn>fair</dfn> if the person moving first, whether it be Gary or Sally, will lose the game if both play optimally.</p>

<p>
Define $F(n)$ to be the number of fair arrangements of $n$ stacks, all of size $2$. Different orderings of the stacks are to be counted separately, so $F(2) = 4$ due to the following four arrangements:</p>

<div class="center">
<img src="https://projecteuler.net/resources/images/0860_diag3.jpg?1696883006" alt="0860_diag3.jpg">
</div>

<p>
You are also given $F(10) = 63594$.</p>

<p>
Find $F(9898)$. Give your answer modulo $989898989$</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
