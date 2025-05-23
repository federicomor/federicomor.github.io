+++
title = "P547"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_546/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_548/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Distance of Random Points Within Hollow Square Laminae</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 14th February 2016, 04:00 am; Solved by 250;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=547">Problem 547</a></h3></div>
<div class="problem_content" role="problem">
<p>Assuming that two points are chosen randomly (with <strong>uniform distribution</strong>) within a rectangle, it is possible to determine the <strong>expected value</strong> of the distance between these two points.</p>

<p>For example, the expected distance between two random points in a unit square is about $0.521405$, while the expected distance between two random points in a rectangle with side lengths $2$ and $3$ is about $1.317067$.</p>

<p>Now we define a <dfn>hollow square lamina</dfn> of size $n$ to be an integer sized square with side length $n \ge 3$ consisting of $n^2$ unit squares from which a rectangle consisting of $x \times y$ unit squares ($1 \le x,y \le n - 2$) within the original square has been removed.</p>

<p>For $n = 3$ there exists only one hollow square lamina:</p>

<p align="center"><img src="https://projecteuler.net/resources/images/0547-holes-1.png?1678992053" alt="0547-holes-1.png"></p>

<p>For $n = 4$ you can find $9$ distinct hollow square laminae, allowing shapes to reappear in rotated or mirrored form:</p>

<p align="center"><img src="https://projecteuler.net/resources/images/0547-holes-2.png?1678992053" alt="0547-holes-2.png"></p>

<p>Let $S(n)$ be the sum of the expected distance between two points chosen randomly within each of the possible hollow square laminae of size $n$. The two points have to lie within the area left after removing the inner rectangle, i.e. the gray-colored areas in the illustrations above.</p>

<p>For example, $S(3) = 1.6514$ and $S(4) = 19.6564$, rounded to four digits after the decimal point.</p>

<p>Find $S(40)$ rounded to four digits after the decimal point.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
