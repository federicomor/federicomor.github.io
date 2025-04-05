+++
title = "P720"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_719/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_721/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Unpredictable Permutations</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 13th June 2020, 11:00 pm; Solved by 331;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=720">Problem 720</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider all permutations of $\{1, 2, \ldots N\}$, listed in lexicographic order.<br>For example, for $N=4$, the list starts as follows:</p>
<div>
$$\displaylines{
(1, 2, 3, 4) \\
(1, 2, 4, 3) \\
(1, 3, 2, 4) \\
(1, 3, 4, 2) \\
(1, 4, 2, 3) \\
(1, 4, 3, 2) \\
(2, 1, 3, 4) \\
\vdots
}$$
</div>
<p>
Let us call a permutation $P$ <dfn>unpredictable</dfn> if there is no choice of three indices $i \lt j \lt k$ such that $P(i)$, $P(j)$ and $P(k)$ constitute an arithmetic progression.<br> For example, $P=(3, 4, 2, 1)$ is <i>not</i> unpredictable because $P(1), P(3), P(4)$ is an arithmetic progression.
</p>
<p>
Let $S(N)$ be the position within the list of the first unpredictable permutation.
</p>

<p>
For example, given $N = 4$, the first unpredictable permutation is $(1, 3, 2, 4)$ so $S(4) = 3$.<br>
You are also given that $S(8) = 2295$ and $S(32) \equiv 641839205 \pmod{1\,000\,000\,007}$.
</p>
<p>
Find $S(2^{25})$. Give your answer modulo $1\,000\,000\,007$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
