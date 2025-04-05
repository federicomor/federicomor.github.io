+++
title = "P247"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_246/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_248/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Squares Under a Hyperbola</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 29th May 2009, 09:00 pm; Solved by 1641;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=247">Problem 247</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider the region constrained by $1 \le x$ and $0 \le y \le 1/x$.
</p><p>
Let $S_1$ be the largest square that can fit under the curve.<br>
Let $S_2$ be the largest square that fits in the remaining area, and so on. <br>
Let the <dfn>index</dfn> of $S_n$ be the pair $(\text{left}, \text{below})$ indicating the number of squares to the left of $S_n$ and the number of squares below $S_n$.
</p>
<div class="center">
<img src="https://projecteuler.net/resources/images/0247_hypersquares.gif?1678992055" class="dark_img" alt=""></div>
<p>
The diagram shows some such squares labelled by number. <br>
$S_2$ has one square to its left and none below, so the index of $S_2$ is $(1,0)$.<br>
It can be seen that the index of $S_{32}$ is $(1,1)$ as is the index of $S_{50}$. <br>
$50$ is the largest $n$ for which the index of $S_n$ is $(1,1)$.
</p>
<p>
What is the largest $n$ for which the index of $S_n$ is $(3,3)$?
</p>


</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
