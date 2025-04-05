+++
title = "P672"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_671/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_673/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>One More One</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 26th May 2019, 04:00 am; Solved by 292;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=672">Problem 672</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider the following process that can be applied recursively to any positive integer $n$:</p>
<ul>
<li>if $n = 1$ do nothing and the process stops,</li>
<li>if $n$ is divisible by $7$ divide it by $7$,</li>
<li>otherwise add $1$.</li>
</ul>
<p>Define $g(n)$ to be the number of $1$'s that must be added before the process ends. For example:</p>
<center>$125\xrightarrow{\scriptsize{+1} } 126\xrightarrow{\scriptsize{\div 7} } 18\xrightarrow{\scriptsize{+1} } 19\xrightarrow{\scriptsize{+1} } 20\xrightarrow{\scriptsize{+1} } 21\xrightarrow{\scriptsize{\div 7} } 3\xrightarrow{\scriptsize{+1} } 4\xrightarrow{\scriptsize{+1} } 5\xrightarrow{\scriptsize{+1} } 6\xrightarrow{\scriptsize{+1} } 7\xrightarrow{\scriptsize{\div 7} } 1$.</center>
<p>Eight $1$'s are added so $g(125) = 8$. Similarly $g(1000) = 9$ and $g(10000) = 21$.</p>
<p>Define $S(N) = \sum_{n=1}^N g(n)$ and $H(K) = S\left(\frac{7^K-1}{11}\right)$. You are given $H(10) = 690409338$.</p>
<p>Find $H(10^9)$ modulo $1\,117\,117\,717$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
