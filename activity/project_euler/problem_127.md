+++
title = "P127"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_126/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_128/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>abc-hits</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 1st September 2006, 06:00 pm; Solved by 7060;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=127">Problem 127</a></h3></div>
<div class="problem_content" role="problem">
<p>The radical of $n$, $\operatorname{rad}(n)$, is the product of distinct prime factors of $n$. For example, $504 = 2^3 \times 3^2 \times 7$, so $\operatorname{rad}(504) = 2 \times 3 \times 7 = 42$.</p>
<p>We shall define the triplet of positive integers $(a, b, c)$ to be an abc-hit if:</p>
<ol><li>$\gcd(a, b) = \gcd(a, c) = \gcd(b, c) = 1$</li>
<li>$a \lt b$</li>
<li>$a + b = c$</li>
<li>$\operatorname{rad}(abc) \lt c$</li>
</ol><p>For example, $(5, 27, 32)$ is an abc-hit, because:</p>
<ol><li>$\gcd(5, 27) = \gcd(5, 32) = \gcd(27, 32) = 1$</li>
<li>$5 \lt 27$</li>
<li>$5 + 27 = 32$</li>
<li>$\operatorname{rad}(4320) = 30 \lt 32$</li>
</ol><p>It turns out that abc-hits are quite rare and there are only thirty-one abc-hits for $c \lt 1000$, with $\sum c = 12523$.</p>
<p>Find $\sum c$ for $c \lt 120000$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
