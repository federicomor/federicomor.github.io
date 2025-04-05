+++
title = "P115"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_114/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_116/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Counting Block Combinations II</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 24th February 2006, 06:00 pm; Solved by 11056;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=115">Problem 115</a></h3></div>
<div class="problem_content" role="problem">
<p class="note">NOTE: This is a more difficult version of <a href="https://projecteuler.net/problem=114">Problem 114</a>.</p>
<p>A row measuring $n$ units in length has red blocks with a minimum length of $m$ units placed on it, such that any two red blocks (which are allowed to be different lengths) are separated by at least one black square.</p>
<p>Let the fill-count function, $F(m, n)$, represent the number of ways that a row can be filled.</p>
<p>For example, $F(3, 29) = 673135$ and $F(3, 30) = 1089155$.</p>
<p>That is, for $m = 3$, it can be seen that $n = 30$ is the smallest value for which the fill-count function first exceeds one million.</p>
<p>In the same way, for $m = 10$, it can be verified that $F(10, 56) = 880711$ and $F(10, 57) = 1148904$, so $n = 57$ is the least value for which the fill-count function first exceeds one million.</p>
<p>For $m = 50$, find the least value of $n$ for which the fill-count function first exceeds one million.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
