+++
title = "P242"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_241/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_243/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Odd Triplets</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 25th April 2009, 06:00 am; Solved by 1199;<br>Difficulty rating: 75%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=242">Problem 242</a></h3></div>
<div class="problem_content" role="problem">
<p>Given the set $\{1,2,\dots,n\}$, we define $f(n, k)$ as the number of its $k$-element subsets with an odd sum of elements. For example, $f(5,3) = 4$, since the set $\{1,2,3,4,5\}$ has four $3$-element subsets having an odd sum of elements, i.e.: $\{1,2,4\}$, $\{1,3,5\}$, $\{2,3,4\}$ and $\{2,4,5\}$.</p>

<p>When all three values $n$, $k$ and $f(n, k)$ are odd, we say that they make
an <dfn>odd-triplet</dfn> $[n,k,f(n, k)]$.</p>

<p>There are exactly five odd-triplets with $n \le 10$, namely:<br>
$[1,1,f(1,1) = 1]$, $[5,1,f(5,1) = 3]$, $[5,5,f(5,5) = 1]$, $[9,1,f(9,1) = 5]$ and $[9,9,f(9,9) = 1]$.</p>

<p>How many odd-triplets are there with $n \le 10^{12}$?</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
