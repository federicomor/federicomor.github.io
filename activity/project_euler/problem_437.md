+++
title = "P437"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_436/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_438/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Fibonacci Primitive Roots</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 21st September 2013, 10:00 pm; Solved by 926;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=437">Problem 437</a></h3></div>
<div class="problem_content" role="problem">
<p>
When we calculate $8^n$ modulo $11$ for $n=0$ to $9$ we get: $1, 8, 9, 6, 4, 10, 3, 2, 5, 7$.<br>
As we see all possible values from $1$ to $10$ occur. So $8$ is a <strong>primitive root</strong> of $11$.<br>
But there is more:<br>
If we take a closer look we see:<br>
$1+8=9$<br>
$8+9=17 \equiv 6 \bmod 11$<br>
$9+6=15 \equiv 4 \bmod 11$<br>
$6+4=10$<br>
$4+10=14 \equiv 3 \bmod 11$<br>
$10+3=13 \equiv 2 \bmod 11$<br>
$3+2=5$<br>
$2+5=7$<br>
$5+7=12 \equiv 1 \bmod 11$.
</p>
So the powers of $8 \bmod 11$ are cyclic with period $10$, and $8^n + 8^{n+1} \equiv 8^{n+2} \pmod{11}$.<br>
$8$ is called a <strong>Fibonacci primitive root</strong> of $11$.<br>
Not every prime has a Fibonacci primitive root.<br>
There are $323$ primes less than $10000$ with one or more Fibonacci primitive roots and the sum of these primes is $1480491$.<br>
Find the sum of the primes less than $100\,000\,000$ with at least one Fibonacci primitive root.


</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
