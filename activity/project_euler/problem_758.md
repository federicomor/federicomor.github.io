+++
title = "P758"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_757/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_759/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Buckets of Water</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 29th May 2021, 08:00 pm; Solved by 237;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=758">Problem 758</a></h3></div>
<div class="problem_content" role="problem">
<p>
There are 3 buckets labelled $S$ (small) of 3 litres, $M$ (medium) of 5 litres and $L$ (large) of 8 litres.<br />
Initially $S$ and $M$ are full of water and $L$ is empty.
By pouring water between the buckets exactly one litre of water can be measured.<br />
Since there is no other way to measure, once a pouring starts it cannot stop until either the source bucket is empty or the destination bucket is full.<br />
At least four pourings are needed to get one litre:
</p>
<div style="text-align:center;">
$(3,5,0)\xrightarrow{M\to L} (3,0,5) \xrightarrow{S\to M} (0,3,5) \xrightarrow{L\to S}(3,3,2)
\xrightarrow{S\to M}(1,5,2)$</div>
<p>
After these operations, there is exactly one litre in bucket $S$.
</p>
<p>
In general the sizes of the buckets $S, M, L$ are $a$, $b$, $a + b$ litres, respectively. Initially $S$ and $M$ are full and $L$ is empty. If the above rule of pouring still applies and $a$ and $b$ are two coprime positive integers with $a\leq b$ then it is always possible to measure one litre in finitely many steps.
</p>
<p>
Let $P(a,b)$ be the minimal number of pourings needed to get one litre. Thus $P(3,5)=4$.<br />
Also, $P(7, 31)=20$ and $P(1234, 4321)=2780$.
</p>
<p>
Find the sum of $P(2^{p^5}-1, 2^{q^5}-1)$ for all pairs of prime numbers $p,q$ such that $p &lt; q &lt; 1000$.<br />
Give your answer modulo $1\,000\,000\,007$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
