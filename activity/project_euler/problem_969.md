+++
title = "P969"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_968/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_970/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Kangaroo Hopping</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 16th November 2025, 04:00 am; Solved by 239;<br>Difficulty level: 13</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=969">Problem 969</a></h3></div>
<div class="problem_content" role="problem">
<p>
Starting at zero, a kangaroo hops along the real number line in the positive direction. Each successive hop takes the kangaroo forward a uniformly random distance between $0$ and $1$. Let $H(n)$ be the expected number of hops needed for the kangaroo to pass $n$ on the real line.
</p>
<p>
If we write $\alpha = H(1)$, then for all positive integers $n$, $H(n)$ can be expressed as a polynomial function of $\alpha$ with rational coefficients. For example $H(3)=\alpha^3-2\alpha^2+\frac{1}{2}\alpha$. Define $S(n)$ to be the sum of all <b>integer</b> coefficients in this polynomial form of $H(n)$. Therefore $S(1)=1$ and $S(3)=1+(-2)=-1$.<br>
You are also given $\displaystyle \sum_{n=1}^{10} S(n)=43$.<br>
Find $\displaystyle\sum_{n=1}^{10^{18} } S(n)$. Give your answer modulo $10^9+7$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
