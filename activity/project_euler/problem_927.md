+++
title = "P927"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_926/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_928/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Prime-ary Tree</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 12th January 2025, 01:00 am; Solved by 162;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=927">Problem 927</a></h3></div>
<div class="problem_content" role="problem">
<p>A full $k$-ary tree is a tree with a single root node, such that every node is either a leaf or has exactly $k$ ordered children.  The <b>height</b> of a $k$-ary tree is the number of edges in the longest path from the root to a leaf.</p>

<p>
For instance, there is one full 3-ary tree of height 0, one full 3-ary tree of height 1, and seven full 3-ary trees of height 2. These seven are shown below.</p>

<img src="https://projecteuler.net/resources/images/0927_PrimeTrees.jpg?1735590785" alt="0927_PrimeTrees.jpg">
<p>
For integers $n$ and $k$ with $n\ge 0$ and $k \ge 2$, define $t_k(n)$ to be the number of full $k$-ary trees of height $n$ or less.<br> 
Thus, $t_3(0) = 1$, $t_3(1) = 2$, and $t_3(2) = 9$. Also, $t_2(0) = 1$, $t_2(1) = 2$, and $t_2(2) = 5$.</p>

<p>
Define $S_k$ to be the set of positive integers $m$ such that $m$ divides $t_k(n)$ for some integer $n\ge 0$.  For instance, the above values show that 1, 2, and 5 are in $S_2$ and 1, 2, 3, and 9 are in $S_3$.</p>

<p>
Let $S = \bigcap_p S_p$ where the intersection is taken over all primes $p$.  Finally, define $R(N)$ to be the sum of all elements of $S$ not exceeding $N$.  You are given that $R(20) = 18$ and $R(1000) = 2089$.</p>

<p>
Find $R(10^7)$.</p>


</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
