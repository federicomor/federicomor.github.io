+++
title = "P157"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_156/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_158/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Base-10 Diophantine Reciprocal</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 1st June 2007, 06:00 pm; Solved by 3067;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=157">Problem 157</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider the diophantine equation $\frac 1 a + \frac 1 b = \frac p {10^n}$ with $a, b, p, n$ positive integers and $a \le b$.<br>
For $n=1$ this equation has $20$ solutions that are listed below:
\begin{matrix}
\frac 1 1 + \frac 1 1 = \frac{20}{10} &amp; \frac 1 1 + \frac 1 2 = \frac{15}{10} &amp; \frac 1 1 + \frac 1 5 = \frac{12}{10} &amp; \frac 1 1 + \frac 1 {10} = \frac{11}{10} &amp; \frac 1 2 + \frac 1 2 = \frac{10}{10}\\
\frac 1 2 + \frac 1 5 = \frac 7 {10} &amp; \frac 1 2 + \frac 1 {10} = \frac 6 {10} &amp; \frac 1 3 + \frac 1 6 = \frac 5 {10} &amp; \frac 1 3 + \frac 1 {15} = \frac 4 {10} &amp; \frac 1 4 + \frac 1 4 = \frac 5 {10}\\
\frac 1 4 + \frac 1 {20} = \frac 3 {10} &amp; \frac 1 5 + \frac 1 5 = \frac 4 {10} &amp; \frac 1 5 + \frac 1 {10} = \frac 3 {10} &amp; \frac 1 6 + \frac 1 {30} = \frac 2 {10} &amp; \frac 1 {10} + \frac 1 {10} = \frac 2 {10}\\
\frac 1 {11} + \frac 1 {110} = \frac 1 {10} &amp; \frac 1 {12} + \frac 1 {60} = \frac 1 {10} &amp; \frac 1 {14} + \frac 1 {35} = \frac 1 {10} &amp; \frac 1 {15} + \frac 1 {30} = \frac 1 {10} &amp; \frac 1 {20} + \frac 1 {20} = \frac 1 {10}
\end{matrix}
</p>
<p>How many solutions has this equation for $1 \le n \le 9$?</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
