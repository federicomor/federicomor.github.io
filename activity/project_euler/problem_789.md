+++
title = "P789"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_788/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_790/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Minimal Pairing Modulo $p$</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 12th March 2022, 07:00 pm; Solved by 231;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=789">Problem 789</a></h3></div>
<div class="problem_content" role="problem">
<p>Given an odd prime $p$, put the numbers $1,...,p-1$ into $\frac{p-1}{2}$ pairs such that each number appears exactly once. Each pair $(a,b)$ has a cost of $ab \bmod p$. For example, if $p=5$ the pair $(3,4)$ has a cost of $12 \bmod 5 = 2$.</p>

<p>The <i>total cost</i> of a pairing is the sum of the costs of its pairs. We say that such pairing is optimal if its total cost is minimal for that $p$.</p>

<p>For example, if $p = 5$, then there is a unique optimal pairing: $(1, 2), (3, 4)$, with total cost of $2 + 2 = 4$.</p>

<p>The <dfn>cost product</dfn> of a pairing is the product of the costs of its pairs. For example, the cost product of the optimal pairing for $p = 5$ is $2 \cdot 2 = 4$.</p>

<p>It turns out that all optimal pairings for $p = 2\,000\,000\,011$ have the same cost product.</p>

<p>Find the value of this product.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
