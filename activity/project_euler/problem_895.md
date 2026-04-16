+++
title = "P895"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_894/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_896/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Gold &amp; Silver Coin Game II</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 15th June 2024, 05:00 pm; Solved by 102;<br>Difficulty rating: 100%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=895">Problem 895</a></h3></div>
<div class="problem_content" role="problem">
<p>
Gary and Sally play a game using gold and silver coins arranged into a number of vertical stacks, alternating turns. On Gary's turn he chooses a gold coin and removes it from the game along with any other coins sitting on top. Sally does the same on her turn by removing a silver coin. The first player unable to make a move loses.</p>

<p>
An arrangement is called <dfn>fair</dfn> if the person moving first, whether it be Gary or Sally, will lose the game if both play optimally.</p>

<p>
An arrangement is called <dfn>balanced</dfn> if the number of gold and silver coins are equal.</p>

<p>
Define $G(m)$ to be the number of fair and balanced arrangements consisting of three non-empty stacks, each not exceeding $m$ in size. Different orderings of the stacks are to be counted separately, so $G(2)=6$ due to the following six arrangements:</p>

<div style="text-align:center;"><img src="https://projecteuler.net/resources/images/0895_G2.png?1714251811" alt="0895_G2.png"></div>

<p>
You are also given $G(5)=348$ and $G(20)=125825982708$.</p>

<p>
Find $G(9898)$ giving your answer modulo $989898989$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
