+++
title = "P161"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_160/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_162/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Triominoes</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 21st September 2007, 06:00 pm; Solved by 2430;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=161">Problem 161</a></h3></div>
<div class="problem_content" role="problem">
<p>A triomino is a shape consisting of three squares joined via the edges.
There are two basic forms:</p>

<p class="center"><img src="https://projecteuler.net/resources/images/0161_trio1.gif?1678992055" class="dark_img" alt=""></p>

<p>If all possible orientations are taken into account there are six:</p>

<p class="center"><img src="https://projecteuler.net/resources/images/0161_trio3.gif?1678992055" class="dark_img" alt=""></p>

<p>Any $n$ by $m$ grid for which $n \times m$ is divisible by $3$ can be tiled with triominoes.<br>
If we consider tilings that can be obtained by reflection or rotation from another tiling as different there are $41$ ways a $2$ by $9$ grid can be tiled with triominoes:</p>

<p class="center"><img src="https://projecteuler.net/resources/images/0161_k9.gif?1678992055" class="dark_img" alt=""></p>

<p>In how many ways can a $9$ by $12$ grid be tiled in this way by triominoes?</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
