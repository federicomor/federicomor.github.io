+++
title = "P526"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_525/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_527/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Largest Prime Factors of Consecutive Numbers</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 19th September 2015, 01:00 pm; Solved by 348;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=526">Problem 526</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $f(n)$ be the largest prime factor of $n$.</p>
<p>Let $g(n) = f(n) + f(n + 1) + f(n + 2) + f(n + 3) + f(n + 4) + f(n + 5) + f(n + 6) + f(n + 7) + f(n + 8)$, the sum of the largest prime factor of each of nine consecutive numbers starting with $n$.</p>
<p>Let $h(n)$ be the maximum value of $g(k)$ for $2 \le k \le n$.</p>
<p>You are given:</p>
<ul><li>$f(100) = 5$</li>
<li>$f(101) = 101$</li>
<li>$g(100) = 409$</li>
<li>$h(100) = 417$</li>
<li>$h(10^9) = 4896292593$</li></ul>
<p>Find $h(10^{16})$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
