+++
title = "P490"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_489/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_491/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Jumping Frog</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 23rd November 2014, 07:00 am; Solved by 368;<br>Difficulty rating: 95%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=490">Problem 490</a></h3></div>
<div class="problem_content" role="problem">
<p>There are $n$ stones in a pond, numbered $1$ to $n$. Consecutive stones are spaced one unit apart.</p>

<p>A frog sits on stone $1$. He wishes to visit each stone exactly once, stopping on stone $n$. However, he can only jump from one stone to another if they are at most $3$ units apart. In other words, from stone $i$, he can reach a stone $j$ if $1 \le j \le n$ and $j$ is in the set $\{i-3, i-2, i-1, i+1, i+2, i+3\}$.</p>

<p>Let $f(n)$ be the number of ways he can do this. For example, $f(6) = 14$, as shown below:<br>
$1 \to 2 \to 3 \to 4 \to 5 \to 6$ <br>
$1 \to 2 \to 3 \to 5 \to 4 \to 6$ <br>
$1 \to 2 \to 4 \to 3 \to 5 \to 6$ <br>
$1 \to 2 \to 4 \to 5 \to 3 \to 6$ <br>
$1 \to 2 \to 5 \to 3 \to 4 \to 6$ <br>
$1 \to 2 \to 5 \to 4 \to 3 \to 6$ <br>
$1 \to 3 \to 2 \to 4 \to 5 \to 6$ <br>
$1 \to 3 \to 2 \to 5 \to 4 \to 6$ <br>
$1 \to 3 \to 4 \to 2 \to 5 \to 6$ <br>
$1 \to 3 \to 5 \to 2 \to 4 \to 6$ <br>
$1 \to 4 \to 2 \to 3 \to 5 \to 6$ <br>
$1 \to 4 \to 2 \to 5 \to 3 \to 6$ <br>
$1 \to 4 \to 3 \to 2 \to 5 \to 6$ <br>
$1 \to 4 \to 5 \to 2 \to 3 \to 6$</p>

<p>Other examples are $f(10) = 254$ and $f(40) = 1439682432976$.</p>

<p>Let $S(L) = \sum f(n)^3$ for $1 \le n \le L$.<br>
Examples:<br>
$S(10) = 18230635$<br>
$S(20) = 104207881192114219$<br>
$S(1\,000) \bmod 10^9 = 225031475$<br>
$S(1\,000\,000) \bmod 10^9 = 363486179$</p>

<p>Find $S(10^{14}) \bmod 10^9$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
