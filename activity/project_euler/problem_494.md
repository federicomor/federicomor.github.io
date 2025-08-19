+++
title = "P494"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_493/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_495/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Collatz Prefix Families</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 20th December 2014, 07:00 pm; Solved by 253;<br>Difficulty rating: 100%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=494">Problem 494</a></h3></div>
<div class="problem_content" role="problem">
<p>
The Collatz sequence is defined as:
$a_{i+1} = \left\{  \large{\frac {a_i} 2 \atop 3 a_i+1} {\text{if }a_i\text{ is even} \atop \text{if }a_i\text{ is odd} } \right.$.
</p>
<p>
The Collatz conjecture states that starting from any positive integer, the sequence eventually reaches the cycle $1,4,2,1, \dots$.<br>
We shall define the sequence prefix $p(n)$ for the Collatz sequence starting with $a_1 = n$ as the sub-sequence of all numbers not a power of $2$ ($2^0=1$ is considered a power of $2$ for this problem). For example:<br>$p(13) = \{13, 40, 20, 10, 5\}$ <br>$p(8) = \{\}$<br>
Any number invalidating the conjecture would have an infinite length sequence prefix.
</p>
<p>
Let $S_m$ be the set of all sequence prefixes of length $m$. Two sequences $\{a_1, a_2, \dots, a_m\}$ and $\{b_1, b_2, \dots, b_m\}$ in $S_m$ are said to belong to the same prefix family if $a_i \lt a_j$ if and only if $b_i \lt b_j$ for all $1 \le i,j \le m$.
</p>
<p>
For example, in $S_4$, $\{6, 3, 10, 5\}$ is in the same family as $\{454, 227, 682, 341\}$, but not $\{113, 340, 170, 85\}$.<br>
Let $f(m)$ be the number of distinct prefix families in $S_m$.<br>
You are given $f(5) = 5$, $f(10) = 55$, $f(20) = 6771$.
</p>
<p>
Find $f(90)$.
</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
