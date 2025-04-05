+++
title = "P194"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_193/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_195/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Coloured Configurations</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 17th May 2008, 10:00 am; Solved by 1611;<br>Difficulty rating: 75%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=194">Problem 194</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider graphs built with the units $A$: <img src="https://projecteuler.net/resources/images/0194_GraphA.png?1678992052" style="vertical-align:middle;" class="dark_img" alt="">
and $B$: <img src="https://projecteuler.net/resources/images/0194_GraphB.png?1678992052" style="vertical-align:middle;" class="dark_img" alt="">, where the units are glued along
the vertical edges as in the graph <img src="https://projecteuler.net/resources/images/0194_Fig.png?1678992052" class="dark_img" style="vertical-align:middle;" alt="">.</p>

<p>A configuration of type $(a, b, c)$ is a graph thus built of $a$ units $A$ and $b$ units $B$, where the graph's vertices are coloured using up to $c$ colours, so that no two adjacent vertices have the same colour.<br>
The compound graph above is an example of a configuration of type $(2,2,6)$, in fact of type $(2,2,c)$ for all $c \ge 4$.</p>

<p>Let $N(a, b, c)$ be the number of configurations of type $(a, b, c)$.<br>
For example, $N(1,0,3) = 24$, $N(0,2,4) = 92928$ and $N(2,2,3) = 20736$.</p>

<p>Find the last $8$ digits of $N(25,75,1984)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
