+++
title = "P593"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_592/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_594/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Fleeting Medians</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 4th March 2017, 07:00 pm; Solved by 601;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=593">Problem 593</a></h3></div>
<div class="problem_content" role="problem">
<p>We define two sequences $S = \{S(1), S(2), ..., S(n)\}$ and $S_2 = \{S_2(1), S_2(2), ..., S_2(n)\}$:</p>

<p>$S(k) = (p_k)^k \bmod 10007$ where $p_k$ is the $k$th prime number.</p>

<p>$S_2(k) = S(k) + S(\lfloor\frac{k}{10000}\rfloor + 1)$ where $\lfloor \cdot \rfloor$ denotes the floor function.</p>

<p>Then let $M(i, j)$ be the median of elements $S_2(i)$ through $S_2(j)$, inclusive. For example, $M(1, 10) = 2021.5$ and $M(10^2, 10^3) = 4715.0$.</p>

<p>Let $F(n, k) = \sum_{i=1}^{n-k+1} M(i, i + k - 1)$. For example, $F(100, 10) = 463628.5$ and $F(10^5, 10^4) = 675348207.5$.</p>

<p>Find $F(10^7, 10^5)$. If the sum is not an integer, use $.5$ to denote a half. Otherwise, use $.0$ instead.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
