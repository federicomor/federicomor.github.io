+++
title = "P946"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_945/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_947/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Continued Fraction Fraction</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 25th May 2025, 11:00 am; Solved by 255;<br>Difficulty level: 10</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=946">Problem 946</a></h3></div>
<div class="problem_content" role="problem">
<p>Given the representation of a continued fraction
$$ a_0+ \cfrac 1{a_1+ \cfrac 1{a_2+\cfrac 1{a_3+\ddots } } }= [a_0;a_1,a_2,a_3,\ldots] $$</p>

<p>
$\alpha$ is a real number with continued fraction representation:
$\alpha = [2;1,1,2,1,1,1,2,1,1,1,1,1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,2,\ldots]$<br> where the number of $1$'s between each of the $2$'s are consecutive prime numbers.</p>

<p>
$\beta$ is another real number defined as
$$	\beta = \frac{2\alpha+3}{3\alpha+2} $$</p>

<p>
The first ten coefficients of the continued fraction of $\beta$ are $[0;1,5,6,16,9,1,10,16,11]$ with sum $75$.</p>

<p>
Find the sum of the first $10^8$ coefficients of the continued fraction of $\beta$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
