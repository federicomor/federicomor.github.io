+++
title = "P945"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_944/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_946/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>XOR-Equation C</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 18th May 2025, 08:00 am; Solved by 205;<br>Difficulty level: 16</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=945">Problem 945</a></h3></div>
<div class="problem_content" role="problem">
We use $x\oplus y$ for the bitwise XOR of $x$ and $y$.<br>
Define the <dfn>XOR-product</dfn> of $x$ and $y$, denoted by $x \otimes y$, similar to a long multiplication in base $2$, except that the intermediate results are XORed instead of the usual integer addition.<br>

For example, $7 \otimes 3 = 9$, or in base $2$, $111_2 \otimes 11_2 = 1001_2$:
<center>
$$\begin{align*}
\phantom{\otimes 111} 111_2 \\
\otimes \phantom{1111} 11_2 \\
\hline
\phantom{\otimes 111} 111_2 \\
\oplus \phantom{11} 111_2  \phantom{9} \\
\hline
\phantom{\otimes 11} 1001_2 \\
\end{align*}$$
</center>

We consider the equation:
<center>
$$\begin{align}
(a \otimes a) \oplus (2 \otimes a \otimes b) \oplus (b \otimes b) = c \otimes c
\end{align}$$
</center>
<p>
For example, $(a, b, c) = (1, 2, 1)$ is a solution to this equation, and so is $(1, 8, 13)$.
</p><p>
Let $F(N)$ be the number of solutions to this equation satisfying $0 \le a \le b \le N$. You are given $F(10)=21$.
</p><p>
Find $F(10^7)$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
