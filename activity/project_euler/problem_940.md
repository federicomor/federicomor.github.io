+++
title = "P940"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_939/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_941/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Two-Dimensional Recurrence</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 12th April 2025, 05:00 pm; Solved by 593;<br>Difficulty level: 4</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=940">Problem 940</a></h3></div>
<div class="problem_content" role="problem">
<p>
The <b>Fibonacci sequence</b> $(f_i)$ is the unique sequence such that
</p>
<ul>
<li>$f_0=0$</li>
<li>$f_1=1$</li>
<li>$f_{i+1}=f_i+f_{i-1}$</li>
</ul>
<p>
Similarly, there is a unique function $A(m,n)$ such that
</p>
<ul>
<li>$A(0,0)=0$</li>
<li>$A(0,1)=1$</li>
<li>$A(m+1,n)=A(m,n+1)+A(m,n)$</li>
<li>$A(m+1,n+1)=2A(m+1,n)+A(m,n)$</li>
</ul>
<p>
Define $S(k)=\displaystyle\sum_{i=2}^k\sum_{j=2}^k A(f_i,f_j)$. For example
$$
\begin{align}
S(3)&amp;=A(1,1)+A(1,2)+A(2,1)+A(2,2)\\
&amp;=2+5+7+16\\
&amp;=30
\end{align}
$$You are also given $S(5)=10396$.
</p>

<p>
Find $S(50)$, giving your answer modulo $1123581313$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
