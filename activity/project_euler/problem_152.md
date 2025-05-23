+++
title = "P152"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_151/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_153/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Sums of Square Reciprocals</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 27th April 2007, 02:00 pm; Solved by 3061;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=152">Problem 152</a></h3></div>
<div class="problem_content" role="problem">
<p>There are several ways to write the number $\dfrac{1}{2}$ as a sum of square reciprocals using <i>distinct</i> integers.</p>
<p>For instance, the numbers $\{2,3,4,5,7,12,15,20,28,35\}$ can be used:</p>
<p>$$\begin{align}\dfrac{1}{2} &amp;= \dfrac{1}{2^2} + \dfrac{1}{3^2} + \dfrac{1}{4^2} + \dfrac{1}{5^2} +\\
&amp;\quad \dfrac{1}{7^2} + \dfrac{1}{12^2} + \dfrac{1}{15^2} + \dfrac{1}{20^2} +\\
&amp;\quad \dfrac{1}{28^2} + \dfrac{1}{35^2}\end{align}$$</p>
<p>In fact, only using integers between $2$ and $45$ inclusive, there are exactly three ways to do it, the remaining two being: $\{2,3,4,6,7,9,10,20,28,35,36,45\}$ and $\{2,3,4,6,7,9,12,15,28,30,35,36,45\}$.</p>
<p>How many ways are there to write $\dfrac{1}{2}$ as a sum of reciprocals of squares using distinct integers between $2$ and $80$ inclusive?</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
