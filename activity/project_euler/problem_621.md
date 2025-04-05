+++
title = "P621"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_620/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_622/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Expressing an Integer as the Sum of Triangular Numbers</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 25th February 2018, 04:00 am; Solved by 613;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=621">Problem 621</a></h3></div>
<div class="problem_content" role="problem">
<p>Gauss famously proved that every positive integer can be expressed as the sum of three <strong>triangular numbers</strong> (including $0$ as the lowest triangular number). In fact most numbers can be expressed as a sum of three triangular numbers in several ways.</p>
<p>
Let $G(n)$ be the number of ways of expressing $n$ as the sum of three triangular numbers, regarding different arrangements of the terms of the sum as distinct.</p>
<p>
For example, $G(9) = 7$, as $9$ can be expressed as: $3+3+3$, $0+3+6$, $0+6+3$, $3+0+6$, $3+6+0$, $6+0+3$, $6+3+0$.<br>  
You are given $G(1000) = 78$ and $G(10^6) = 2106$.</p>
<p>
Find $G(17526 \times 10^9)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
