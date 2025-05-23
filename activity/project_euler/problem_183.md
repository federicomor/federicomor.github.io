+++
title = "P183"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_182/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_184/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Maximum Product of Parts</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 22nd February 2008, 05:00 pm; Solved by 5139;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=183">Problem 183</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $N$ be a positive integer and let $N$ be split into $k$ equal parts, $r = N/k$, so that $N = r + r + \cdots + r$.<br>
Let $P$ be the product of these parts, $P = r \times r \times \cdots \times r = r^k$.</p>

<p>For example, if $11$ is split into five equal parts, $11 = 2.2 + 2.2 + 2.2 + 2.2 + 2.2$, then $P = 2.2^5 = 51.53632$.</p>

<p>Let $M(N) = P_{\mathrm{max} }$ for a given value of $N$.</p>

<p>It turns out that the maximum for $N = 11$ is found by splitting eleven into four equal parts which leads to $P_{\mathrm{max} } = (11/4)^4$; that is, $M(11) = 14641/256 = 57.19140625$, which is a terminating decimal.</p>

<p>However, for $N = 8$ the maximum is achieved by splitting it into three equal parts, so $M(8) = 512/27$, which is a non-terminating decimal.</p>

<p>Let $D(N) = N$ if $M(N)$ is a non-terminating decimal and $D(N) = -N$ if $M(N)$ is a terminating decimal.</p>

<p>For example, $\sum\limits_{N = 5}^{100} D(N)$ is $2438$.</p>

<p>Find $\sum\limits_{N = 5}^{10000} D(N)$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
