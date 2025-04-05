+++
title = "P421"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_420/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_422/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Prime Factors of $n^{15}+1$</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 31st March 2013, 04:00 am; Solved by 747;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=421">Problem 421</a></h3></div>
<div class="problem_content" role="problem">
<p>
Numbers of the form $n^{15}+1$ are composite for every integer $n \gt 1$.<br>
For positive integers $n$ and $m$ let $s(n,m)$ be defined as the sum of the <i>distinct</i> prime factors of $n^{15}+1$ not exceeding $m$.
</p>
E.g. $2^{15}+1 = 3 \times 3 \times 11 \times 331$.<br>
So $s(2,10) = 3$ and $s(2,1000) = 3+11+331 = 345$.<br><br>

Also $10^{15}+1 = 7 \times 11 \times 13 \times 211 \times 241 \times 2161 \times 9091$.<br>
So $s(10,100) = 31$ and $s(10,1000) = 483$.<br><p>
Find $\sum s(n,10^8)$ for $1 \leq n \leq 10^{11}$.
</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
