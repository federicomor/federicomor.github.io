+++
title = "P212"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_211/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_213/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Combined Volume of Cuboids</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 11th October 2008, 06:00 am; Solved by 1561;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=212">Problem 212</a></h3></div>
<div class="problem_content" role="problem">
<p>An <dfn>axis-aligned cuboid</dfn>, specified by parameters $\{(x_0, y_0, z_0), (dx, dy, dz)\}$, consists of all points $(X,Y,Z)$ such that $x_0 \le X \le x_0 + dx$, $y_0 \le Y \le y_0 + dy$ and $z_0 \le Z \le z_0 + dz$.  The volume of the cuboid is the product, $dx \times dy \times dz$.  The <dfn>combined volume</dfn> of a collection of cuboids is the volume of their union and will be less than the sum of the individual volumes if any cuboids overlap.</p>

<p>Let $C_1, \dots, C_{50000}$ be a collection of $50000$ axis-aligned cuboids such that $C_n$ has parameters</p>

\begin{align}
x_0 &amp;= S_{6n - 5} \bmod 10000\\
y_0 &amp;= S_{6n - 4} \bmod 10000\\
z_0 &amp;= S_{6n - 3} \bmod 10000\\
dx &amp;= 1 + (S_{6n - 2} \bmod 399)\\
dy &amp;= 1 + (S_{6n - 1} \bmod 399)\\
dz &amp;= 1 + (S_{6n} \bmod 399)
\end{align}

<p>where $S_1,\dots,S_{300000}$ come from the "Lagged Fibonacci Generator":</p>

<ul style="list-style-type:none;"><li>For $1 \le k \le 55$, $S_k = [100003 - 200003k + 300007k^3] \pmod{1000000}$.</li><li>For $56 \le k$, $S_k = [S_{k -24} + S_{k - 55}] \pmod{1000000}$.</li></ul>

<p>Thus, $C_1$ has parameters $\{(7,53,183),(94,369,56)\}$, $C_2$ has parameters $\{(2383,3563,5079),(42,212,344)\}$, and so on.</p>

<p>The combined volume of the first $100$ cuboids, $C_1, \dots, C_{100}$, is $723581599$.</p>

<p>What is the combined volume of all $50000$ cuboids, $C_1, \dots, C_{50000}$?</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
