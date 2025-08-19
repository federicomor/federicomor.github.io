+++
title = "P797"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_796/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_798/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Cyclogenic Polynomials</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 7th May 2022, 08:00 pm; Solved by 221;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=797">Problem 797</a></h3></div>
<div class="problem_content" role="problem">
<p>A <strong>monic polynomial</strong> is a single-variable polynomial in which the coefficient of highest degree is equal to $1$.</p>

<p>Define $\mathcal{F}$ to be the set of all monic polynomials with integer coefficients (including the constant polynomial $p(x)=1$). A polynomial $p(x)\in\mathcal{F}$ is <dfn>cyclogenic</dfn> if there exists $q(x)\in\mathcal{F}$ and a positive integer $n$ such that $p(x)q(x)=x^n-1$. If $n$ is the smallest such positive integer then $p(x)$ is <dfn>$n$-cyclogenic</dfn>.</p>

<p>Define $P_n(x)$ to be the sum of all $n$-cyclogenic polynomials. For example, there exist ten 6-cyclogenic polynomials (which divide $x^6-1$ and no smaller $x^k-1$):</p>
$$\begin{align*}
&amp;x^6-1&amp;&amp;x^4+x^3-x-1&amp;&amp;x^3+2x^2+2x+1&amp;&amp;x^2-x+1\\
&amp;x^5+x^4+x^3+x^2+x+1&amp;&amp;x^4-x^3+x-1&amp;&amp;x^3-2x^2+2x-1\\
&amp;x^5-x^4+x^3-x^2+x-1&amp;&amp;x^4+x^2+1&amp;&amp;x^3+1\end{align*}$$
<p>giving</p>
$$P_6(x)=x^6+2x^5+3x^4+5x^3+2x^2+5x$$
<p>Also define</p>
$$Q_N(x)=\sum_{n=1}^N P_n(x)$$
<p>It's given that
$Q_{10}(x)=x^{10}+3x^9+3x^8+7x^7+8x^6+14x^5+11x^4+18x^3+12x^2+23x$ and $Q_{10}(2) = 5598$.</p>

<p>Find $Q_{10^7}(2)$. Give your answer modulo $1\,000\,000\,007$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
