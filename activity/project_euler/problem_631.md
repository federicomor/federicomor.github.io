+++
title = "P631"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_630/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_632/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Constrained Permutations</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 15th July 2018, 10:00 am; Solved by 213;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=631">Problem 631</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $(p_1 p_2 \ldots p_k)$ denote the permutation of the set ${1, ..., k}$ that maps $p_i\mapsto i$. Define the length of the permutation to be $k$; note that the empty permutation $()$ has length zero.</p>

<p>Define an <dfn>occurrence</dfn> of a permutation $p=(p_1 p_2 \cdots p_k)$ in a permutation $P=(P_1 P_2 \cdots P_n)$ to be a sequence $1\leq t_1 \lt t_2 \lt \cdots \lt t_k \leq n$ such that $p_i \lt p_j$ if and only if $P_{t_i} \lt P_{t_j}$ for all $i,j \in \{1, \dots, k\}$.</p>

<p>For example, $(1243)$ occurs twice in the permutation $(314625)$: once as the 1st, 3rd, 4th and 6th elements $(3\,\,46\,\,5)$, and once as the 2nd, 3rd, 4th and 6th elements $(\,\,146\,\,5)$.</p>

<p>Let $f(n, m)$ be the number of permutations $P$ of length at most $n$ such that there is no occurrence of the permutation $1243$ in $P$ and there are at most $m$ occurrences of the permutation $21$ in $P$.</p>

<p>For example, $f(2,0) = 3$, with the permutations $()$, $(1)$, $(1,2)$ but not $(2,1)$.</p>

<p>You are also given that $f(4, 5) = 32$ and $f(10, 25) = 294\,400$.</p>

<p>Find $f(10^{18}, 40)$ modulo $1\,000\,000\,007$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
