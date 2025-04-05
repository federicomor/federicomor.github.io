+++
title = "P473"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_472/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_474/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Phigital Number Base</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 25th May 2014, 04:00 am; Solved by 801;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=473">Problem 473</a></h3></div>
<div class="problem_content" role="problem">
<p>
Let $\varphi$ be the golden ratio: $\varphi=\frac{1+\sqrt{5} }{2}.$<br>
Remarkably it is possible to write every positive integer as a sum of powers of $\varphi$ even if we require that every power of $\varphi$ is used at most once in this sum.<br>
Even then this representation is not unique.<br>
We can make it unique by requiring that no powers with consecutive exponents are used and that the representation is finite.<br>
E.g: 
$2=\varphi+\varphi^{-2}$ and $3=\varphi^{2}+\varphi^{-2}$
</p>
<p>
To represent this sum of powers of $\varphi$ we use a string of 0's and 1's with a point to indicate where the negative exponents start.<br>
We call this the representation in the <b>phigital numberbase</b>.<br>
So $1=1_{\varphi}$, $2=10.01_{\varphi}$, $3=100.01_{\varphi}$ and $14=100100.001001_{\varphi}$. <br>
The strings representing $1$, $2$ and $14$ in the phigital number base are palindromic, while the string representing $3$ is not.<br> (the phigital point is not the middle character).
</p>
<p>
The sum of the positive integers not exceeding $1000$ whose phigital representation is palindromic is $4345$.
</p>
<p>
Find the sum of the positive integers not exceeding $10^{10}$ whose phigital representation is palindromic.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
