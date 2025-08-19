+++
title = "P558"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_557/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_559/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Irrational Base</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 30th April 2016, 01:00 pm; Solved by 281;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=558">Problem 558</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $r$ be the real root of the equation $x^3 = x^2 + 1$.<br>
Every positive integer can be written as the sum of distinct increasing powers of $r$.<br>
If we require the number of terms to be finite and the difference between any two exponents to be three or more, then the representation is unique.<br>
For example, $3 = r^{-10} + r^{-5} + r^{-1} + r^2$ and $10 = r^{-10} + r^{-7} + r^6$.<br>
Interestingly, the relation holds for the complex roots of the equation.</p>

<p>Let $w(n)$ be the number of terms in this unique representation of $n$. Thus $w(3) = 4$ and $w(10) = 3$.</p>

<p>More formally, for all positive integers $n$, we have:<br>
$n = \displaystyle \sum_{k=-\infty}^\infty b_k r^k$<br>
under the conditions that:<br>
$b_k$ is $0$ or $1$ for all $k$;<br>
$b_k + b_{k + 1} + b_{k + 2} \le 1$ for all $k$;<br>
$w(n) = \displaystyle \sum_{k=-\infty}^\infty b_k$ is finite.</p>

<p>Let $S(m) = \displaystyle \sum_{j=1}^m w(j^2)$.<br>
You are given $S(10) = 61$ and $S(1000) = 19403$.</p>

<p>Find $S(5\,000\,000)$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
