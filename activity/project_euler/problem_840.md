+++
title = "P840"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_839/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_841/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Sum of Products</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 23rd April 2023, 02:00 am; Solved by 419;<br>Difficulty rating: 25%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=840">Problem 840</a></h3></div>
<div class="problem_content" role="problem">
<p>A <strong>partition</strong> of $n$ is a set of positive integers for which the sum equals $n$.<br>
The partitions of 5 are:<br>
$\{5\},\{1,4\},\{2,3\},\{1,1,3\},\{1,2,2\},\{1,1,1,2\}$ and $\{1,1,1,1,1\}$.
</p>
<p>
Further we define the function $D(p)$ as:<br>
$$
\begin{align}
\begin{split}
D(1) &amp;= 1 \\
D(p) &amp;= 1, \text{ for any prime } p \\
D(pq) &amp;= D(p)q + pD(q), \text{ for any positive integers } p,q \gt 1.
\end{split}
\end{align}
$$
</p>
<p>
Now let $\{a_1, a_2,\ldots,a_k\}$ be a partition of $n$.<br>
We assign to this particular partition the value:<br> $$P=\prod_{j=1}^{k}D(a_j). $$
</p>
<p>
$G(n)$ is the sum of $P$ for all partitions of $n$.<br>
We can verify that $G(10) = 164$.
</p>
We also define:
$$S(N)=\sum_{n=1}^{N}G(n).$$
You are given $S(10)=396$.<br>
Find $S(5\times 10^4) \mod 999676999$.

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
