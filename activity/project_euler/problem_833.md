+++
title = "P833"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_832/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_834/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Square Triangle Products</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 12th March 2023, 07:00 am; Solved by 179;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=833">Problem 833</a></h3></div>
<div class="problem_content" role="problem">
<p>Triangle numbers $T_k$ are integers of the form $\frac{k(k+1)} 2$.<br>
A few triangle numbers happen to be perfect squares like $T_1=1$ and $T_8=36$, but more can be found when considering the product of two triangle numbers. For example, $T_2 \cdot T_{24}=3 \cdot 300=30^2$.</p>

<p>Let $S(n)$ be the sum of $c$ for all integers triples $(a, b, c)$ with $0&lt;c \le n$, $c^2=T_a \cdot T_b$ and $0&lt;a&lt;b$.
For example, $S(100)= \sqrt{T_1 T_8}+\sqrt{T_2 T_{24} }+\sqrt{T_1 T_{49} }+\sqrt{T_3 T_{48} }=6+30+35+84=155$.</p>
<p>
You are given $S(10^5)=1479802$ and $S(10^9)=241614948794$.</p>
<p>
Find $S(10^{35})$. Give your answer modulo $136101521$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
