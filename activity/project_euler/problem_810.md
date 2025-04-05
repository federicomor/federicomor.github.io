+++
title = "P810"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_809/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_811/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>XOR-Primes</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 2nd October 2022, 11:00 am; Solved by 794;<br>Difficulty rating: 20%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=810">Problem 810</a></h3></div>
<div class="problem_content" role="problem">
<p>We use $x\oplus y$ for the bitwise XOR of $x$ and $y$.</p>

<p>Define the <dfn>XOR-product</dfn> of $x$ and $y$, denoted by $x \otimes y$, similar to a long multiplication in base $2$, except that the intermediate results are XORed instead of the usual integer addition.</p>

<p>For example, $7 \otimes 3 = 9$, or in base $2$, $111_2 \otimes 11_2 = 1001_2$:</p>
$$
\begin{align*}
\phantom{\otimes 111} 111_2 \\
\otimes \phantom{1111} 11_2 \\
\hline
\phantom{\otimes 111} 111_2 \\
\oplus \phantom{11} 111_2  \phantom{9} \\
\hline
\phantom{\otimes 11} 1001_2 \\
\end{align*}
$$

<p>An <dfn>XOR-prime</dfn> is an integer $n$ greater than $1$ that is not an XOR-product of two integers greater than $1$. The above example shows that $9$ is not an XOR-prime. Similarly, $5 = 3 \otimes 3$ is not an XOR-prime. The first few XOR-primes are $2, 3, 7, 11, 13, ...$ and the 10th XOR-prime is $41$.</p>

<p>Find the $5\,000\,000$th XOR-prime.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
