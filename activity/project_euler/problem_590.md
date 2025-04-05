+++
title = "P590"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_589/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_591/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Sets with a Given Least Common Multiple</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 12th February 2017, 10:00 am; Solved by 290;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=590">Problem 590</a></h3></div>
<div class="problem_content" role="problem">
<p>
Let $H(n)$ denote the number of sets of positive integers such that the <strong>least common multiple</strong> of the integers in the set equals $n$.<br>
E.g.:<br>
The integers in the following ten sets all have a least common multiple of $6$:<br>
$\{2,3\}$, $\{1,2,3\}$, $\{6\}$, $\{1,6\}$, $\{2,6\}$, $\{1,2,6\}$, $\{3,6\}$, $\{1,3,6\}$, $\{2,3,6\}$ and $\{1,2,3,6\}$.<br>
Thus $H(6)=10$.
</p>
<p>
Let $L(n)$ denote the least common multiple of the numbers $1$ through $n$.<br>
E.g. $L(6)$ is the least common multiple of the numbers $1,2,3,4,5,6$ and $L(6)$ equals $60$.
</p>
<p>
Let $HL(n)$ denote $H(L(n))$.<br>
You are given $HL(4)=H(12)=44$.
</p>
<p>
Find $HL(50000)$. Give your answer modulo $10^9$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
