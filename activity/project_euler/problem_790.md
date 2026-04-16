+++
title = "P790"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_789/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_791/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Clock Grid</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 19th March 2022, 10:00 pm; Solved by 299;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=790">Problem 790</a></h3></div>
<div class="problem_content" role="problem">
<p>There is a grid of length and width $50515093$ points. A clock is placed on each grid point. The clocks are all analogue showing a single hour hand initially pointing at $12$.</p>  

<p>A sequence $S_t$ is created where:
$$
\begin{align}
S_0 &amp;= 290797\\
S_t &amp;= S_{t-1}^2 \bmod 50515093 &amp;t&gt;0
\end{align}
$$
The four numbers $N_t = (S_{4t-4}, S_{4t-3}, S_{4t-2}, S_{4t-1})$ represent a range within the grid, with the first pair of numbers representing the x-bounds and the second pair representing the y-bounds. For example, if $N_t = (3,9,47,20)$, the range would be $3\le x\le 9$ and $20\le y\le47$, and would include $196$ clocks.</p>

<p>For each $t$ $(t&gt;0)$, the clocks within the range represented by $N_t$ are moved to the next hour $12\rightarrow 1\rightarrow 2\rightarrow \cdots $.</p>

<p>We define $C(t)$ to be the sum of the hours that the clock hands are pointing to after timestep $t$.<br>
You are given $C(0) = 30621295449583788$, $C(1) =  30613048345941659$, $C(10) = 21808930308198471$ and $C(100) = 16190667393984172$.</p>

<p>Find $C(10^5)$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
