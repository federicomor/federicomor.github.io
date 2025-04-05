+++
title = "P252"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_251/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_253/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Convex Holes</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 27th June 2009, 01:00 pm; Solved by 965;<br>Difficulty rating: 80%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=252">Problem 252</a></h3></div>
<div class="problem_content" role="problem">
<p>
Given a set of points on a plane, we define a convex hole to be a convex polygon having as vertices any of the given points and not containing any of the given points in its interior (in addition to the vertices, other given points may lie on the perimeter of the polygon). 
</p>
<p>
As an example, the image below shows a set of twenty points and a few such convex holes. 
The convex hole shown as a red heptagon has an area equal to $1049694.5$ square units, which is the highest possible area for a convex hole on the given set of points.
</p>
<div class="center">
<img src="https://projecteuler.net/resources/images/0252_convexhole.gif?1678992056" class="dark_img" alt=""></div>
<p>
</p><p>For our example, we used the first $20$ points $(T_{2k - 1}, T_{2k})$, for $k = 1,2,\dots,20$, produced with the pseudo-random number generator:</p>

\begin{align}
S_0 &amp;= 290797\\
S_{n + 1} &amp;= S_n^2 \bmod 50515093\\
T_n &amp;= (S_n \bmod 2000) - 1000
\end{align}

<p>
<i>i.e.</i> $(527, 144), (-488, 732), (-454, -947), \dots$
</p>
<p>
What is the maximum area for a convex hole on the set containing the first $500$ points in the pseudo-random sequence?<br> Specify your answer including one digit after the decimal point.
</p>





</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
