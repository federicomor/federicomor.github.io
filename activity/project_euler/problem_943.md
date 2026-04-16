+++
title = "P943"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_942/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_944/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Self Describing Sequences</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 4th May 2025, 02:00 am; Solved by 102;<br>Difficulty level: 38</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=943">Problem 943</a></h3></div>
<div class="problem_content" role="problem">
<p>Given two unequal positive integers $a$ and $b$, we define a self-describing sequence consisting of alternating runs of $a$s and $b$s. The first element is $a$ and the sequence of run lengths is the original sequence.</p>

<p>For $a=2, b=3$, the sequence is: 
$$2, 2, 3, 3, 2, 2, 2, 3, 3, 3, 2, 2, 3, 3, 2, 2, 3, 3, 3, 2, 2, 2, 3, 3, 3,...$$
The sequence begins with <b>two</b> $2$s and <b>two</b> $3$s, then <b>three</b> $2$s and <b>three</b> $3$s, so the run lengths $2, 2, 3, 3, ...$ are given by the original sequence.</p>

<p>Let $T(a, b, N)$ be the sum of the first $N$ elements of the sequence. You are given $T(2,3,10) = 25$, $T(4,2,10^4) = 30004$, $T(5,8,10^6) = 6499871$.</p>

<p>Find $\sum T(a, b, 22332223332233)$ for $2 \le a \le 223$, $2 \le b \le 223$ and $a \neq b$. Give your answer modulo $2233222333$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
