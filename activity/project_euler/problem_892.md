+++
title = "P892"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_891/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_893/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Zebra Circles</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 26th May 2024, 08:00 am; Solved by 161;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=892">Problem 892</a></h3></div>
<div class="problem_content" role="problem">
<p>
Consider a circle where $2n$ distinct points have been marked on its circumference.</p>

<p>
A <i>cutting</i> $C$ consists of connecting the $2n$ points with $n$ line segments, so that no two line segments intersect, including on their end points. The $n$ line segments then cut the circle into $n + 1$ pieces.
Each piece is painted either black or white, so that adjacent pieces are opposite colours.
Let $d(C)$ be the absolute difference between the numbers of black and white pieces under the cutting $C$.</p>

<p>
Let $D(n)$ be the sum of $d(C)$ over all different cuttings $C$.
For example, there are five different cuttings with $n = 3$.</p>

<div style="text-align:center;">
<img src="https://projecteuler.net/resources/images/0892_Zebra.png?1714876283" alt="0892_Zebra.png"></div>

<p>
The upper three cuttings all have $d = 0$ because there are two black and two white pieces; the lower two cuttings both have $d = 2$ because there are three black and one white pieces.
Therefore $D(3) = 0 + 0 + 0 + 2 + 2 = 4$. 
You are also given $D(100) \equiv 1172122931\pmod{1234567891}$.</p>

<p>
Find $\displaystyle \sum_{n=1}^{10^7} D(n)$. Give your answer modulo $1234567891$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
