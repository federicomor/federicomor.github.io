+++
title = "P812"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_811/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_813/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Dynamical Polynomials</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 15th October 2022, 05:00 pm; Solved by 154;<br>Difficulty rating: 100%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=812">Problem 812</a></h3></div>
<div class="problem_content" role="problem">
<p>A <dfn>dynamical polynomial</dfn> is a <strong class="tooltip">monic<span class="tooltiptext">leading coefficient is $1$</span></strong> polynomial $f(x)$ with integer coefficients such that $f(x)$ divides $f(x^2-2)$.</p>

<p>For example, $f(x) = x^2 - x - 2$ is a dynamical polynomial because $f(x^2-2) = x^4-5x^2+4 = (x^2 + x -2)f(x)$.</p>

<p>Let $S(n)$ be the number of dynamical polynomials of degree $n$.<br>
For example, $S(2)=6$, as there are six dynamical polynomials of degree $2$:</p>
$$ x^2-4x+4 \quad,\quad x^2-x-2 \quad,\quad x^2-4 \quad,\quad x^2-1 \quad,\quad x^2+x-1 \quad,\quad x^2+2x+1 $$
<p>Also, $S(5)=58$ and $S(20)=122087$.</p>

<p>Find $S(10\,000)$. Give your answer modulo $998244353$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
