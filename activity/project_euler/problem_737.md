+++
title = "P737"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_736/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_738/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Coin Loops</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 6th December 2020, 04:00 am; Solved by 405;<br>Difficulty rating: 30%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=737">Problem 737</a></h3></div>
<div class="problem_content" role="problem">
<p>
A game is played with many identical, round coins on a flat table.
</p>
<p>
Consider a line perpendicular to the table.<br />
The first coin is placed on the table touching the line.<br />
Then, one by one, the coins are placed horizontally on top of the previous coin and touching the line.<br />
The complete stack of coins must be balanced after every placement.
</p>
<p>
The diagram below [not to scale] shows a possible placement of 8 coins where point $P$ represents the line.
</p>
<div style="text-align:center;">
<img src="https://projecteuler.net/project/images/p737_coinloop.jpg" class="dark_img" alt="" /></div>
<p>
It is found that a minimum of $31$ coins are needed to form a <i>coin loop</i> around the line, i.e. if in the projection of the coins on the table the centre of the $n$th coin is rotated $\theta_n$, about the line, from the centre of the $(n-1)$th coin then the sum of $\displaystyle\sum_{k=2}^n \theta_k$ is first larger than $360^\circ$ when $n=31$. In general, to loop $k$ times, $n$ is the smallest number for which the sum is greater than $360^\circ k$.
</p>
<p>
Also, $154$ coins are needed to loop two times around the line, and $6947$ coins to loop ten times.
</p>
<p>
Calculate the number of coins needed to loop $2020$ times around the line.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
