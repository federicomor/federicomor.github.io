+++
title = "P552"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_551/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_553/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Chinese Leftovers II</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 19th March 2016, 07:00 pm; Solved by 515;<br>Difficulty rating: 40%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=552">Problem 552</a></h3></div>
<div class="problem_content" role="problem">
<p>
Let $A_n$ be the smallest positive integer satisfying $A_n \bmod p_i = i$ for all $1 \le i \le n$, where $p_i$ is the
$i$-th prime.
<br>For example $A_2 = 5$, since this is the smallest positive solution of the system of equations</p>
<ul style="list-style-type:none;margin-left:2cm;"><li> $A_2 \bmod 2 = 1$ </li>
<li> $A_2 \bmod 3 = 2$ </li></ul>
<p>
The system of equations for $A_3$ adds another constraint. That is, $A_3$ is the smallest positive solution of</p>
<ul style="list-style-type:none;margin-left:2cm;"><li> $A_3 \bmod 2 = 1$ </li>
<li> $A_3 \bmod 3 = 2$ </li>
<li> $A_3 \bmod 5 = 3$ </li></ul>
<p>
and hence $A_3 = 23$. Similarly, one gets $A_4 = 53$ and $A_5 = 1523$.
</p>
<p>
Let $S(n)$ be the sum of all primes up to $n$ that divide at least one element in the sequence $A$.
<br>For example, $S(50) = 69 = 5 + 23 + 41$, since $5$ divides $A_2$, $23$ divides $A_3$ and $41$ divides $A_{10} = 5765999453$. No other prime number up to $50$ divides an element in $A$.
</p>
<p>
Find $S(300000)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
