+++
title = "P468"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_467/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_469/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Smooth Divisors of Binomial Coefficients</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 19th April 2014, 01:00 pm; Solved by 311;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=468">Problem 468</a></h3></div>
<div class="problem_content" role="problem">
<p>An integer is called <strong><var>B</var>-smooth</strong> if none of its prime factors is greater than $B$.</p>

<p>Let $S_B(n)$ be the largest $B$-smooth divisor of $n$.<br>
Examples:<br>
$S_1(10)=1$<br>
$S_4(2100) = 12$<br>
$S_{17}(2496144) = 5712$</p>
<p>Define $\displaystyle F(n)=\sum_{B=1}^n \sum_{r=0}^n S_B(\binom n r)$. Here, $\displaystyle \binom n r$ denotes the binomial coefficient.<br>
Examples:<br>
$F(11) = 3132$<br>
$F(1111) \mod 1\,000\,000\,993 = 706036312$<br>
$F(111\,111) \mod 1\,000\,000\,993 = 22156169$</p>

<p>Find $F(11\,111\,111)  \mod 1\,000\,000\,993$.</p>




</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
