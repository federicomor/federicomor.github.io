+++
title = "P841"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_840/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_842/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Regular Star Polygons</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 30th April 2023, 05:00 am; Solved by 209;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=841">Problem 841</a></h3></div>
<div class="problem_content" role="problem">
<p>The regular star polygon $\{p/q\}$, for coprime integers $p,q$ with $p \gt 2q \gt 0$, is a polygon formed from $p$ edges of equal length and equal internal angles, such that tracing the complete polygon wraps $q$ times around the centre. For example, $\{8/3\}$ is illustrated below:</p>
<div align="center"><img src="https://projecteuler.net/resources/images/0841_star_polygon_8_3.png?1680515338" alt="{8/3}" height="250"></div>

<p>The edges of a regular star polygon intersect one another, dividing the interior into several regions. Define the <dfn>alternating shading</dfn> of a regular star polygon to be a selection of such regions to shade, such that every piece of every edge has a shaded region on one side and an unshaded region on the other, with the exterior of the polygon unshaded. For example, the above image shows the alternating shading (in green) of $\{8/3\}$.</p>

<p>Let $A(p, q)$ be the area of the alternating shading of $\{p/q\}$, assuming that its inradius is $1$. (The <strong>inradius</strong> of a regular polygon, star or otherwise, is the distance from its centre to the midpoint of any of its edges.) For example, in the diagram above, it can be shown that central shaded octagon has area $8(\sqrt{2}-1)$ and each point's shaded kite has area $2(\sqrt{2}-1)$, giving $A(8,3) = 24(\sqrt{2}-1) \approx 9.9411254970$.</p>

<p>You are also given that $A(130021, 50008)\approx 10.9210371479$, rounded to $10$ digits after the decimal point.</p>

<p>Find $\sum_{n=3}^{34} A(F_{n+1},F_{n-1})$, where $F_j$ is the Fibonacci sequence with $F_1=F_2=1$ (so $A(F_{5+1},F_{5-1}) = A(8,3)$). Give your answer rounded to $10$ digits after the decimal point.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
