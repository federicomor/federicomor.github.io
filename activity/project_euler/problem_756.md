+++
title = "P756"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_755/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_757/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Approximating a Sum</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 1st May 2021, 02:00 pm; Solved by 381;<br>Difficulty rating: 30%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=756">Problem 756</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider a function $f(k)$ defined for all positive integers $k&gt;0$. Let $S$ be the sum of the first $n$ values of $f$. That is,
$$S=f(1)+f(2)+f(3)+\cdots+f(n)=\sum_{k=1}^n f(k).$$</p>

<p>In this problem, we employ randomness to approximate this sum. That is, we choose a random, uniformly distributed, $m$-tuple of positive integers $(X_1,X_2,X_3,\cdots,X_m)$ such that $0=X_0 \lt X_1 \lt X_2 \lt \cdots \lt X_m \leq n$ and calculate a modified sum $S^*$ as follows.
$$S^* = \sum_{i=1}^m f(X_i)(X_i-X_{i-1})$$</p>

<p>We now define the error of this approximation to be $\Delta=S-S^*$.</p>

<p>Let $\mathbb{E}(\Delta|f(k),n,m)$ be the expected value of the error given the function $f(k)$, the number of terms $n$ in the sum and the length of random sample $m$.</p>

<p>For example, $\mathbb{E}(\Delta|k,100,50) = 2525/1326 \approx 1.904223$ and $\mathbb{E}(\Delta|\varphi(k),10^4,10^2)\approx 5842.849907$, where $\varphi(k)$ is Euler's totient function.</p>

<p>Find $\mathbb{E}(\Delta|\varphi(k),12345678,12345)$ rounded to six places after the decimal point.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
