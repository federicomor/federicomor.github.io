+++
title = "P553"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_552/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_554/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Power Sets of Power Sets</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 26th March 2016, 10:00 pm; Solved by 234;<br>Difficulty rating: 85%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=553">Problem 553</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $P(n)$ be the set of the first $n$ positive integers $\{1, 2, \dots, n\}$.<br>
Let $Q(n)$ be the set of all the non-empty subsets of $P(n)$.<br>
Let $R(n)$ be the set of all the non-empty subsets of $Q(n)$.</p>

<p>An element $X \in R(n)$ is a non-empty subset of $Q(n)$, so it is itself a set.<br>
From $X$ we can construct a graph as follows:</p>

<ul>
<li>Each element $Y \in X$ corresponds to a vertex and labeled with $Y$;</li>
<li>Two vertices $Y_1$ and $Y_2$ are connected if $Y_1 \cap Y_2 \ne \emptyset$.</li>
</ul>

<p>For example, $X = \{\{1\},\{1,2,3\},\{3\},\{5,6\},\{6,7\}\}$ results in the following graph:</p>

<div align="center"><img src="https://projecteuler.net/resources/images/0553-power-sets.gif?1678992057" alt="0553-power-sets.gif"></div>

<p>This graph has two <strong>connected components</strong>.</p>

<p>Let $C(n, k)$ be the number of elements of $R(n)$ that have exactly $k$ connected components in their graph.<br>
You are given $C(2, 1) = 6$, $C(3, 1) = 111$, $C(4, 2) = 486$, $C(100, 10) \bmod 1\,000\,000\,007 = 728209718$.</p>

<p>Find $C(10^4, 10) \bmod 1\,000\,000\,007$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
