+++
title = "P715"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_714/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_716/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Sextuplet Norms</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 10th May 2020, 08:00 am; Solved by 215;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=715">Problem 715</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $f(n)$ be the number of $6$-tuples $(x_1,x_2,x_3,x_4,x_5,x_6)$ such that:</p>
<ul><li>All $x_i$ are integers with $0 \leq x_i &lt; n$</li>
<li>$\gcd(x_1^2+x_2^2+x_3^2+x_4^2+x_5^2+x_6^2,\ n^2)=1$</li>
</ul><p>Let $\displaystyle G(n)=\displaystyle\sum_{k=1}^n \frac{f(k)}{k^2\varphi(k)}$<br />
where $\varphi(n)$ is Euler's totient function.</p>

<p>For example, $G(10)=3053$ and $G(10^5) \equiv 157612967 \pmod{1\,000\,000\,007}$.</p>

<p>Find $G(10^{12})\bmod 1\,000\,000\,007$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
