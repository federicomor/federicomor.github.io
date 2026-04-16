+++
title = "P703"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_702/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_704/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Circular Logic II</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 22nd February 2020, 10:00 pm; Solved by 370;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=703">Problem 703</a></h3></div>
<div class="problem_content" role="problem">
<p>Given an integer $n$, $n \geq 3$, let $B=\{\mathrm{false},\mathrm{true}\}$ and let $B^n$ be the set of sequences of $n$ values from $B$. The function $f$ from $B^n$ to $B^n$ is defined by $f(b_1 \dots b_n) = c_1 \dots c_n$ where:</p>
<ul>
<li>$c_i = b_{i+1}$ for $1 \leq i &lt; n$.</li>
<li>$c_n = b_1 \;\mathrm{AND}\; (b_2 \;\mathrm{XOR}\; b_3)$, where $\mathrm{AND}$ and $\mathrm{XOR}$ are the logical $\mathrm{AND}$ and exclusive $\mathrm{OR}$ operations.</li>
</ul>

<p>Let $S(n)$ be the number of functions $T$ from $B^n$ to $B$ such that for all $x$ in $B^n$, $T(x) ~\mathrm{AND}~ T(f(x)) = \mathrm{false}$.
You are given that $S(3) = 35$ and $S(4) = 2118$.</p>

<p>Find $S(20)$. Give your answer modulo $1\,001\,001\,011$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
