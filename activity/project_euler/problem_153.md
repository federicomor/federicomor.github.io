+++
title = "P153"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_152/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_154/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Investigating Gaussian Integers</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 5th May 2007, 10:00 am; Solved by 2964;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=153">Problem 153</a></h3></div>
<div class="problem_content" role="problem">
<p>As we all know the equation $x^2=-1$ has no solutions for real $x$.
<br>
If we however introduce the imaginary number $i$ this equation has two solutions: $x=i$ and $x=-i$.
<br>
If we go a step further the equation $(x-3)^2=-4$ has two complex solutions: $x=3+2i$ and $x=3-2i$.
<br>$x=3+2i$ and $x=3-2i$ are called each others' complex conjugate.
<br>
Numbers of the form $a+bi$ are called complex numbers.
<br>
In general $a+bi$ and $a-bi$ are each other's complex conjugate.</p>
<p>A Gaussian Integer is a complex number $a+bi$ such that both $a$ and $b$ are integers.
<br>
The regular integers are also Gaussian integers (with $b=0$).
<br>
To distinguish them from Gaussian integers with $b \ne 0$ we call such integers "rational integers."
<br>
A Gaussian integer $a+bi$ is called a divisor of a rational integer $n$ if the result $\dfrac n {a + bi}$ is also a Gaussian integer.
<br>
If for example we divide $5$ by $1+2i$ we can simplify $\dfrac{5}{1 + 2i}$ in the following manner:
<br>
Multiply numerator and denominator by the complex conjugate of $1+2i$: $1-2i$.
<br>
The result is $\dfrac{5}{1 + 2i} = \dfrac{5}{1 + 2i}\dfrac{1 - 2i}{1 - 2i} = \dfrac{5(1 - 2i)}{1 - (2i)^2} = \dfrac{5(1 - 2i)}{1 - (-4)} = \dfrac{5(1 - 2i)}{5} = 1 - 2i$.
<br>
So $1+2i$ is a divisor of $5$.
<br>
Note that $1+i$ is not a divisor of $5$ because $\dfrac{5}{1 + i} = \dfrac{5}{2} - \dfrac{5}{2}i$.
<br>
Note also that if the Gaussian Integer $(a+bi)$ is a divisor of a rational integer $n$, then its complex conjugate $(a-bi)$ is also a divisor of $n$.</p>
<p>In fact, $5$ has six divisors such that the real part is positive: $\{1, 1 + 2i, 1 - 2i, 2 + i, 2 - i, 5\}$.
<br>
The following is a table of all of the divisors for the first five positive rational integers:</p>
<table align="center" border="1"><tr><td width="20">
$n$</td><td> Gaussian integer divisors<br>
with positive real part</td><td>Sum $s(n)$ of <br>these
divisors</td></tr><tr><td>$1$</td><td>$1$</td><td>$1$</td>
</tr><tr><td>$2$</td><td>$1, 1+i, 1-i, 2$</td><td>$5$</td>
</tr><tr><td>$3$</td><td>$1, 3$</td><td>$4$</td>
</tr><tr><td>$4$</td><td>$1, 1+i, 1-i, 2, 2+2i, 2-2i,4$</td><td>$13$</td>
</tr><tr><td>$5$</td><td>$1, 1+2i, 1-2i, 2+i, 2-i, 5$</td><td>$12$</td>
</tr></table><p>For divisors with positive real parts, then, we have: $\sum \limits_{n = 1}^{5} {s(n)} = 35$.</p>
<p>$\sum \limits_{n = 1}^{10^5} {s(n)} = 17924657155$.</p>
<p>What is $\sum \limits_{n = 1}^{10^8} {s(n)}$?</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
