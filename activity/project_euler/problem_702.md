+++
title = "P702"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_701/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_703/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Jumping Flea</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 15th February 2020, 07:00 pm; Solved by 177;<br>Difficulty rating: 95%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=702">Problem 702</a></h3></div>
<div class="problem_content" role="problem">
<p>A regular hexagon table of side length $N$ is divided into equilateral triangles of side length $1$. The picture below is an illustration of the case $N = 3$.</p>

<div class="center">
<img src="https://projecteuler.net/project/images/p702_jumping_flea.png" alt="hexagonal table" /></div>

<p>An flea of negligible size is jumping on this table. The flea starts at the centre of the table. Thereafter, at each step, it chooses one of the six corners of the table, and jumps to the mid-point between its current position and the chosen corner.</p>

<p>For every triangle $T$, we denote by $J(T)$ the minimum number of jumps required for the flea to reach the interior of $T$. Landing on an edge or vertex of $T$ is not sufficient.</p>

<p>For example, $J(T) = 3$ for the triangle marked with a star in the picture: by jumping from the centre half way towards F, then towards C, then towards E.</p>

<p>Let $S(N)$ be the sum of $J(T)$ for all the upper-pointing triangles $T$ in the upper half of the table. For the case $N = 3$, these are the triangles painted black in the above picture.</p>

<p>You are given that $S(3) = 42$, $S(5) = 126$, $S(123) = 167178$, and $S(12345) = 3185041956$.</p>

<p>Find $S(123456789)$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
