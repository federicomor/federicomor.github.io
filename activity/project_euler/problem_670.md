+++
title = "P670"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_669/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_671/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Colouring a Strip</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 19th May 2019, 01:00 am; Solved by 376;<br>Difficulty rating: 40%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=670">Problem 670</a></h3></div>
<div class="problem_content" role="problem">
<p>A certain type of tile comes in three different sizes - $1 \times 1$, $1 \times 2$, and $1 \times 3$ - and in four different colours: blue, green, red and yellow. There is an unlimited number of tiles available in each combination of size and colour.</p>

<p>These are used to tile a $2\times n$ rectangle, where $n$ is a positive integer, subject to the following conditions:</p>
<ul>
<li>The rectangle must be fully covered by non-overlapping tiles.</li>
<li>It is <i>not</i> permitted for four tiles to have their corners meeting at a single point.</li>
<li>Adjacent tiles must be of different colours.</li>
</ul>

<p>For example, the following is an acceptable tiling of a $2\times 12$ rectangle:</p>

<div class="center">
<img src="https://projecteuler.net/resources/images/0670_strip_acceptable.png?1678992054" alt="Acceptable colouring">
</div>

<p>but the following is not an acceptable tiling, because it violates the "no four corners meeting at a point" rule:</p>

<div class="center">
<img src="https://projecteuler.net/resources/images/0670_strip_unacceptable.png?1678992054" alt="Unacceptable colouring">
</div>

<p>Let $F(n)$ be the number of ways the $2\times n$ rectangle can be tiled subject to these rules. Where reflecting horizontally or vertically would give a different tiling, these tilings are to be counted separately.</p>

<p>For example, $F(2) = 120$, $F(5) = 45876$, and $F(100)\equiv 53275818 \pmod{1\,000\,004\,321}$.</p>
<p>Find $F(10^{16}) \bmod 1\,000\,004\,321$.</p>


</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
