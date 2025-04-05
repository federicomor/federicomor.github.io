+++
title = "P399"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_398/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_400/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Squarefree Fibonacci Numbers</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 21st October 2012, 11:00 am; Solved by 638;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=399">Problem 399</a></h3></div>
<div class="problem_content" role="problem">
<p>
The first $15$ Fibonacci numbers are:<br>
$1,1,2,3,5,8,13,21,34,55,89,144,233,377,610$.<br>
It can be seen that $8$ and $144$ are not squarefree: $8$ is divisible by $4$ and $144$ is divisible by $4$ and by $9$.<br> 
So the first $13$ squarefree Fibonacci numbers are:<br>
$1,1,2,3,5,13,21,34,55,89,233,377$ and $610$.
</p>
<p>
The $200$th squarefree Fibonacci number is:
$971183874599339129547649988289594072811608739584170445$.<br>
The last sixteen digits of this number are: $1608739584170445$ and in scientific notation this number can be written as $9.7\mathrm e53$.
</p>
<p>
Find the $100\,000\,000$th squarefree Fibonacci number.<br>
Give as your answer its last sixteen digits followed by a comma followed by the number in scientific notation (rounded to one digit after the decimal point).<br>
For the $200$th squarefree number the answer would have been: 1608739584170445,9.7e53
</p>
<p>
<font size="-1">
Note:<br> 
For this problem, assume that for every prime $p$, the first fibonacci number divisible by $p$ is not divisible by $p^2$ (this is part of <strong>Wall's conjecture</strong>). This has been verified for primes $\le 3 \cdot 10^{15}$, but has not been proven in general.<br>

If it happens that the conjecture is false, then the accepted answer to this problem isn't guaranteed to be the $100\,000\,000$th squarefree Fibonacci number, rather it represents only a lower bound for that number.
</font>
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
