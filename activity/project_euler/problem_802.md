+++
title = "P802"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_801/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_803/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Iterated Composition</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 12th June 2022, 11:00 am; Solved by 278;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=802">Problem 802</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $\Bbb R^2$ be the set of pairs of real numbers $(x, y)$. Let $\pi = 3.14159\cdots\ $.</p>

<p>Consider the function $f$ from $\Bbb R^2$ to $\Bbb R^2$ defined by $f(x, y) = (x^2 - x - y^2, 2xy - y + \pi)$, and its $n$-th iterated composition $f^{(n)}(x, y) = f(f(\cdots f(x, y)\cdots))$. For example $f^{(3)}(x, y) = f(f(f(x, y)))$. A pair $(x, y)$ is said to have period $n$ if $n$ is the smallest positive integer such that $f^{(n)}(x, y) = (x, y)$.</p>

<p>Let $P(n)$ denote the sum of $x$-coordinates of all points having period not exceeding $n$.
Interestingly, $P(n)$ is always an integer. For example, $P(1) = 2$, $P(2) = 2$, $P(3) = 4$.</p>

<p>Find $P(10^7)$ and give your answer modulo $1\,020\,340\,567$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
