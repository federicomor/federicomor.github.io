+++
title = "P958"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_957/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_959/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Euclid's Labour</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 30th August 2025, 08:00 pm; Solved by 202;<br>Difficulty level: 29</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=958">Problem 958</a></h3></div>
<div class="problem_content" role="problem">
<p>The <b>Euclidean algorithm</b> can be used to find the <b>greatest common divisor</b> of two positive integers. At each step of the algorithm the smaller number is subtracted from the larger one. The algorithm terminates when the numbers are equal, which is then the greatest common divisor of the original numbers.</p>

<p>For two numbers $n$ and $m$, let $d(n, m)$ be the number of subtraction steps used by the Euclidean algorithm for computing the greatest common divisor of $n$ and $m$.</p>

<p>For a number $n$, let $f(n)$ be the positive number $m$ coprime to $n$ that minimizes $d(n, m)$. If more than one number attains the minimum, the minimal $m$ is chosen.</p>

<p>For example, at least four steps are needed for computing the GCD of $7$ and any positive number $m$ coprime to $7$. This number of steps is obtained by $m=2,3,4,5$, yielding $f(7)=2$. You are also given $f(89)=34$ and $f(8191) = 1856$.</p>

<p>Find $f(10^{12}+39)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
