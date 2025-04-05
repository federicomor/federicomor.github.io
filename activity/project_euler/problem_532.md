+++
title = "P532"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_531/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_533/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Nanobots on Geodesics</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 1st November 2015, 07:00 am; Solved by 337;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=532">Problem 532</a></h3></div>
<div class="problem_content" role="problem">
<p>Bob is a manufacturer of nanobots and wants to impress his customers by giving them a ball coloured by his new nanobots as a present.</p>

<p>His nanobots can be programmed to select and locate exactly one other bot precisely and, after activation, move towards this bot along the shortest possible path and draw a coloured line onto the surface while moving. Placed on a plane, the bots will start to move towards their selected bots in a straight line. In contrast, being placed on a ball, they will start to move along a geodesic as the shortest possible path. However, in both cases, whenever their target moves they will adjust their direction instantaneously to the new shortest possible path. All bots will move at the same speed after their simultaneous activation until each bot reaches its goal.</p>

<p>Now Bob places $n$ bots on the ball (with radius $1$) equidistantly on a small circle with radius $0.999$ and programs each of them to move toward the next nanobot sitting counterclockwise on that small circle. After activation, the bots move in a sort of spiral until they finally meet at one point on the ball.</p>

<p>Using three bots, Bob finds that every bot will draw a line of length $2.84$, resulting in a total length of $8.52$ for all three bots, each time rounded to two decimal places. The coloured ball looks like this:</p>

<div align="center"><img src="https://projecteuler.net/resources/images/0532-nanobots.jpg?1678992054" alt="0532-nanobots.jpg"></div>

<p>In order to show off a little with his presents, Bob decides to use just enough bots to make sure that the line each bot draws is longer than $1000$. What is the total length of all lines drawn with this number of bots, rounded to two decimal places?</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
