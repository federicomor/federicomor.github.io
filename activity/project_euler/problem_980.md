+++
title = "P980"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_979/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_981/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>The Quaternion Group I</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 25th January 2026, 10:00 am; Solved by 252</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=980">Problem 980</a></h3></div>
<div class="problem_content" role="problem">
<p>
Starting from an empty string, we want to build a string with letters "x", "y", "z". At each step, one of the following operations is performed:</p>
<ul>
<li>insert two consecutive identical letters "xx", "yy" or "zz" anywhere into the string;</li>
<li>replace one letter in the string with two consecutive letters, according to the rule: "x" $\to$ "yz", "y" $\to$ "zx", "z" $\to$ "xy";</li>
<li>exchange two consecutive <b>different</b> letters in the string, e.g. "xy" $\to$ "yx", "zx" $\to$ "xz", etc.</li></ul>
<p>
A string is called <dfn>neutral</dfn> if it is possible to produce the string from the empty string after an <b>even</b> number of steps.</p>

<p>
We define a sequence $(a_n)_{n \ge 0}$: $a_0=88\,888\,888$ and $a_n=(8888\cdot a_{n-1})\bmod 888\,888\,883$ for $n \gt 0$.</p>

<p>
Let $b_n = a_n \bmod 3$. For each $i \ge 0$, a string $c(i)$ of length $50$ is defined by translating the finite sequence $b_{50i},b_{50i+1},\dots,b_{50i+49}$ via the rule: $0 \to$ "x", $1 \to$ "y", $2 \to$ "z".</p>

<p>
Let $F(N)$ be the number of ordered pairs $(i, j)$ with $0 \le i, j \lt N$ such that the concatenated string $c(i)c(j)$ is neutral.<br>
For example, $F(10) = 13$ and $F(100) = 1224$.</p>

<p>
Find $F(10^6)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
