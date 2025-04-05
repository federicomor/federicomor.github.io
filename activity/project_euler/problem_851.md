+++
title = "P851"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_850/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_852/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>SOP and POS</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 9th July 2023, 11:00 am; Solved by 151;<br>Difficulty rating: 85%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=851">Problem 851</a></h3></div>
<div class="problem_content" role="problem">
<p>
Let $n$ be a positive integer and let $E_n$ be the set of $n$-tuples of strictly positive integers.</p>

<p>
For $u = (u_1, \cdots, u_n)$ and $v = (v_1, \cdots, v_n)$ two elements of $E_n$, we define:</p>

<ul>
<li>the <dfn>Sum Of Products</dfn> of $u$ and $v$, denoted by $\langle u, v\rangle$, as the sum $\displaystyle\sum_{i = 1}^n u_i v_i$;</li>
<li>the <dfn>Product Of Sums</dfn> of $u$ and $v$, denoted by $u \star v$, as the product $\displaystyle\prod_{i = 1}^n (u_i + v_i)$.</li></ul>

<p>
Let $R_n(M)$ be the sum of $u \star v$ over all ordered pairs $(u, v)$ in $E_n$ such that $\langle u, v\rangle = M$.<br>
For example: $R_1(10) = 36$, $R_2(100) = 1873044$, $R_2(100!) \equiv 446575636 \bmod 10^9 + 7$.</p>

<p>
Find $R_6(10000!)$. Give your answer modulo $10^9+7$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
