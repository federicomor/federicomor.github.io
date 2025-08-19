+++
title = "P404"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_403/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_405/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Crisscross Ellipses</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 2nd December 2012, 01:00 am; Solved by 369;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=404">Problem 404</a></h3></div>
<div class="problem_content" role="problem">
<p>
$E_a$ is an ellipse with an equation of the form $x^2 + 4y^2 = 4a^2$.<br>
$E_a^\prime$ is the rotated image of $E_a$ by $\theta$ degrees counterclockwise around the origin $O(0, 0)$ for $0^\circ \lt \theta \lt 90^\circ$.
</p>

<div align="center">
<img src="https://projecteuler.net/resources/images/0404_c_ellipse.gif?1678992056" alt="0404_c_ellipse.gif"></div>

<p>
$b$ is the distance to the origin of the two intersection points closest to the origin and $c$ is the distance of the two other intersection points.<br>
We call an ordered triplet $(a, b, c)$ a <dfn>canonical ellipsoidal triplet</dfn> if $a, b$ and $c$ are positive integers.<br>
For example, $(209, 247, 286)$ is a canonical ellipsoidal triplet.
</p>

<p>
Let $C(N)$ be the number of distinct canonical ellipsoidal triplets $(a, b, c)$ for $a \leq N$.<br>
It can be verified that $C(10^3) = 7$, $C(10^4) = 106$ and $C(10^6) = 11845$.
</p>

<p>
Find $C(10^{17})$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
