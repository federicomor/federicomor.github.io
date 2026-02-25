+++
title = "P968"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_967/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_969/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>5D Summation</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 9th November 2025, 01:00 am; Solved by 81;<br>Difficulty level: 33</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=968">Problem 968</a></h3></div>
<div class="problem_content" role="problem">
<p>
Define
$$P(X_{a,b},X_{a,c},X_{a,d},X_{a,e},X_{b,c},X_{b,d},X_{b,e},X_{c,d},X_{c,e},X_{d,e})$$
as the sum of $2^a3^b5^c7^d11^e$ over all quintuples of non-negative integers $(a, b, c, d, e)$ such that the sum of each two of the five variables is restricted by a given value. In other words, $a+b \le X_{a,b}$, $a+d \le X_{a,d}$, $b+e \le X_{b,e}$ etc.</p>

<p>
For example, $P(2,2,2,2,2,2,2,2,2,2)=7120$ and $P(1, 2, 3, 4, 5, 6, 7, 8, 9, 10) \equiv 799809376 \pmod{10^9 + 7}$.</p>

<p>
Define a sequence $A$ as follows:</p>
<ul>
<li>$A_0 = 1$, $A_1 = 7$;</li>
<li>$A_n =(7A_{n−1}+A_{n-2}^2) \bmod(10^9+7)$ for $n \ge 2$.</li></ul>
<p>
Also define $Q(n) = P(A_{10n}, A_{10n+1}, A_{10n+2}, \dots , A_{10n+9})$.</p>

<p>
Find $\displaystyle\sum_{0 \le n \lt 100}Q(n)$. Give your answer modulo $10^9+7$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
