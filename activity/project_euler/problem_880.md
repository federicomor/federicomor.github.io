+++
title = "P880"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_879/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_881/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Nested Radicals</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 2nd March 2024, 07:00 pm; Solved by 118;<br>Difficulty rating: 75%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=880">Problem 880</a></h3></div>
<div class="problem_content" role="problem">
<p>$(x,y)$ is called a <i>nested radical pair</i> if $x$ and $y$ are non-zero integers such that $\dfrac{x}{y}$ is not a cube of a rational number, and there exist integers $a$, $b$ and $c$ such that:</p>
$$\sqrt{\sqrt[3]{x}+\sqrt[3]{y} }=\sqrt[3]{a}+\sqrt[3]{b}+\sqrt[3]{c}$$
<p>For example, both $(-4,125)$ and $(5,5324)$ are nested radical pairs:</p>
$$
\begin{align*}
\begin{split}
\sqrt{\sqrt[3]{-4}+\sqrt[3]{125} }	&amp;= \sqrt[3]{-1}+\sqrt[3]{2}+\sqrt[3]{4}\\
\sqrt{\sqrt[3]{5}+\sqrt[3]{5324} }	&amp;= \sqrt[3]{-2}+\sqrt[3]{20}+\sqrt[3]{25}\\
\end{split}
\end{align*}
$$

<p>Let $H(N)$ be the sum of $|x|+|y|$ for all the nested radical pairs $(x, y)$ where $|x| \leq |y|\leq N$.<br> 
For example, $H(10^3)=2535$.</p>

<p>Find $H(10^{15})$. Give your answer modulo $1031^3+2$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
