+++
title = "P805"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_804/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_806/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Shifted Multiples</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 2nd July 2022, 08:00 pm; Solved by 203;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=805">Problem 805</a></h3></div>
<div class="problem_content" role="problem">
<p>
For a positive integer $n$, let $s(n)$ be the integer obtained by shifting the leftmost digit of the decimal representation of $n$ to the rightmost position.<br>
For example, $s(142857)=428571$ and $s(10)=1$.</p>

<p>
For a positive rational number $r$, we define $N(r)$ as the smallest positive integer $n$ such that $s(n)=r\cdot n$.<br>
If no such integer exists, then $N(r)$ is defined as zero.<br>
For example, $N(3)=142857$, $N(\tfrac 1{10})=10$ and $N(2) = 0$.</p>
<p>
Let $T(M)$ be the sum of $N(u^3/v^3)$ where $(u,v)$ ranges over all ordered pairs of coprime positive integers not exceeding $M$.<br>
For example, $T(3)\equiv 262429173 \pmod {1\,000\,000\,007}$.</p>

<p>
Find $T(200)$. Give your answer modulo $1\,000\,000\,007$. </p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
