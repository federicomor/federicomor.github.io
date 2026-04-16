+++
title = "P385"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_384/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_386/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Ellipses Inside Triangles</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 20th May 2012, 05:00 am; Solved by 329;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=385">Problem 385</a></h3></div>
<div class="problem_content" role="problem">
<p>
For any triangle $T$ in the plane, it can be shown that there is a unique ellipse with largest area that is completely inside $T$.
</p><p align="center">
<img src="https://projecteuler.net/resources/images/0385_ellipsetriangle.png?1678992053" alt="0385_ellipsetriangle.png"></p>
<p>
For a given $n$, consider triangles $T$ such that:<br>
- the vertices of $T$ have integer coordinates with absolute value $\le n$, and <br>
- the <strong>foci</strong><sup>1</sup> of the largest-area ellipse inside $T$ are $(\sqrt{13},0)$ and $(-\sqrt{13},0)$.<br>
Let $A(n)$ be the sum of the areas of all such triangles.
</p>
<p>
For example, if $n = 8$, there are two such triangles. Their vertices are $(-4,-3),(-4,3),(8,0)$ and $(4,3),(4,-3),(-8,0)$, and the area of each triangle is $36$. Thus $A(8) = 36 + 36 = 72$.
</p>
<p>
It can be verified that $A(10) = 252$, $A(100) = 34632$ and $A(1000) = 3529008$.
</p>
<p>
Find $A(1\,000\,000\,000)$.
</p>
<p>

<span style="font-size:smaller;"><sup>1</sup>The <strong>foci</strong> (plural of <strong>focus</strong>) of an ellipse are two points $A$ and $B$ such that for every point $P$ on the boundary of the ellipse, $AP + PB$ is constant.</span>


</p>



</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
