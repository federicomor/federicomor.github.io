+++
title = "P333"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_332/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_334/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Special Partitions</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 16th April 2011, 01:00 pm; Solved by 1405;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=333">Problem 333</a></h3></div>
<div class="problem_content" role="problem">
<p>All positive integers can be partitioned in such a way that each and every term of the partition can be expressed as $2^i \times 3^j$, where $i,j \ge 0$.</p>

<p>Let's consider only such partitions where none of the terms can divide any of the other terms.
<br>For example, the partition of $17 = 2 + 6 + 9 = (2^1 \times 3^0 + 2^1 \times 3^1 + 2^0 \times 3^2)$ would not be valid since $2$ can divide $6$. Neither would the partition $17 = 16 + 1 = (2^4 \times 3^0 + 2^0 \times 3^0)$ since $1$ can divide $16$. The only valid partition of $17$ would be $8 + 9 = (2^3 \times 3^0 + 2^0 \times 3^2)$.</p>

<p>Many integers have more than one valid partition, the first being $11$ having the following two partitions.
<br>$11 = 2 + 9 = (2^1 \times 3^0 + 2^0 \times 3^2)$
<br>$11 = 8 + 3 = (2^3 \times 3^0 + 2^0 \times 3^1)$</p>

<p>Let's define $P(n)$ as the number of valid partitions of $n$. For example, $P(11) = 2$.</p>

<p>Let's consider only the prime integers $q$ which would have a single valid partition such as $P(17)$.</p>

<p>The sum of the primes $q \lt 100$ such that $P(q)=1$ equals $233$.</p>

<p>Find the sum of the primes $q \lt 1000000$ such that $P(q)=1$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
