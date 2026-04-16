+++
title = "P769"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_768/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_770/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Binary Quadratic Form II</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 24th October 2021, 07:00 am; Solved by 170;<br>Difficulty rating: 90%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=769">Problem 769</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider the following binary quadratic form:</p>
$$
\begin{align}
f(x,y)=x^2+5xy+3y^2
\end{align}
$$
<p>A positive integer $q$ has a primitive representation if there exist positive integers $x$ and $y$ such that $q = f(x,y)$ and <span style="white-space:nowrap;">$\gcd(x,y)=1$.</span></p>

<p>We are interested in primitive representations of perfect squares. For example:<br>
$17^2=f(1,9)$<br>
$87^2=f(13,40) = f(46,19)$</p>

<p>Define $C(N)$ as the total number of primitive representations of $z^2$ for $0 &lt; z \leq N$.<br> 
Multiple representations are counted separately, so for example $z=87$ is counted twice.</p>

<p>You are given $C(10^3)=142$ and $C(10^{6})=142463$ </p>

<p>Find $C(10^{14})$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
